/** Implementation of mp_heuristic.h **/
#include <ros/ros.h>
#include <vape/MPH_Input.h>
#include <vape/Controls.h>
#include <math.h>

#include "mp_heuristic.h"

const float TARGET_SPEED_MS = 5.5;
const float MIN_SPEED_MS = 1.0;

float lastAcceleration = .0;

ros::Publisher *pub;

float bound(float val, float minVal, float maxVal) {
    if (val < minVal) return minVal;
    if (val > maxVal) return maxVal;
    return val;
}

void inputReceived(const vape::MPH_Input& input) {
    float angle = input.angleRAD;
    float dist = input.distNormalized;
    float vel = input.velocityMS;

    // Steer to compensate the angle between the car and the track axis
    float steering = angle * 10.0 / M_PI;

    // Steer to compensate the distance from the track axis. Proportional Control
    steering -= dist * .10;
    steering = bound(steering, -1.0, 1.0); // TODO: Replace BOUND

    // Throttle control
    float acceleration = lastAcceleration;
    if (vel < TARGET_SPEED_MS - steering * 50.0)
        acceleration += .1;
    else acceleration -= .1;

    if (vel < MIN_SPEED_MS)
        acceleration += 1.0 / (speed + .1);

    acceleration = bound(acceleration, 0, 1);
    lastAcceleration = acceleration;

    vape::Controls controls;
    controls.steering = steering;
    controls.acceleration = acceleration;

    pub->publish(controls);
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "mp_heuristic"); // Initialize the ROS System, Declare Node
    ros::NodeHandle nh; // Establish this program as a ROS node

    ROS_INFO_STREAM("MP-Heuristic Node is starting up..."); // Log startup

    // Setup publisher with <Message_Type>, "ROS-TOPIC" and queue = 1000
    pub = &nh.advertise<vape::Controls>("/robocar/controls/", 1000);

    // Create subscriber of "ROS-Topic", callback inputReceived and queuesize 1000
    ros::Subscriber sub = nh.subscribe("/robocar/lanes/", 1000, &inputReceived);

    // Start cycle of listening for messages, then responding
    ros::spin();
}
