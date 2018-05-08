#include <ros/ros.h>
#include <mp/Sensors.h>
#include <mp/Controls.h>
#include <iomanip>
#include <math.h>

#include "mp_heuristic.h"

const float TARGET_SPEED_KMH = 20.0;
const float MIN_TOLERATED_SPEED_KMH = 4.0;
const int SENSOR_PUBLISHING_RATE_SEC = .01; // 10 msec

float lastAcceleration = .0;

ros::Publisher *pubPtr;

float clip(float val, float minVal, float maxVal) {
    if (val > maxVal) {
        return maxVal;
    } else if (val < minVal) {
        return minVal;
    }
    return val;
}

mp::Controls drive(const mp::Sensors& sensors) {
    float angle = sensors.angleRad;
    float dist = sensors.distNormalized;
    float speed = sensors.speedXKmh;

    // Steer to compensate the angle between the car and the track axis
    float steering = angle * 10.0 / M_PI;

    // Steer to compensate the distance from the track axis
    steering -= dist * .10;
    steering = clip(steering, -1.0, 1.0);

    // Throttle control
    float acceleration = lastAcceleration;
    if (speed < TARGET_SPEED_KMH - steering * 50.0) {
        acceleration += .1;
    } else {
        acceleration -= .1;
    }
    if (speed < MIN_TOLERATED_SPEED_KMH) {
        acceleration += 1.0 / (speed + .1);
    }
    acceleration = clip(acceleration, 0, 1);
    mp::Controls controls;
    controls.steeringNormalized = steering;
    controls.accelerationNormalized = acceleration;
    return controls;
}

void sensorInputsCallback(const mp::Sensors& msg) {
    ROS_DEBUG_STREAM(std::setprecision(2) << "Received sensor values: angle=" << msg.angleRad
                                          << "; dist=" << msg.distNormalized << "; speedX=" << msg.speedXKmh);
    mp::Controls controls = drive(msg);
    ROS_DEBUG_STREAM(std::setprecision(2) << "Sending controls: steering=" << controls.steeringNormalized
                                          << "; acceleration=" << controls.accelerationNormalized);

    pubPtr->publish(controls);
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "mp_heuristic");
    ros::NodeHandle nh;
    ROS_INFO_STREAM("Motion Planning module initialized");
    // Use subscriber and subscriber without a queue, because we are interested in the latest sensor inputs.
    ros::Publisher pub = nh.advertise<mp::Controls>("mp/controls", 0);
    pubPtr = &pub;
    ros::Subscriber sub = nh.subscribe("mp/sensors", 0, &sensorInputsCallback);
    ros::spin();
}
