#include <gtest/gtest.h>
#include <ros/ros.h>

#include <mp/Sensors.h>
#include <mp/Controls.h>

#include "mp_heuristic.h"

struct CallbackHelper {

    CallbackHelper(): count(0) {}

    int count;

    void callback(const mp::Controls &msg) {
        count++;
    }
};
TEST(DriveTest, testSteeringLeft) {
    mp::Sensors testSensor;
    mp::Controls testControl;
    testSensor.angleRad = 1.0; // Facing right
    testSensor.distNormalized = 0.0;
    testControl = drive(testSensor);
    EXPECT_GT(testControl.steeringNormalized, 0);
    testSensor.angleRad = 0.0;
    testSensor.distNormalized = -1.0; // On the right edge
    testControl = drive(testSensor);
    EXPECT_GT(testControl.steeringNormalized, 0);
}

TEST(DriveTest, testSteeringRight) {
    mp::Sensors testSensor;
    mp::Controls testControl;
    testSensor.angleRad = -1.0; // Facing left
    testSensor.distNormalized = 0.0;
    testControl = drive(testSensor);
    EXPECT_LT(testControl.steeringNormalized, 0);
    testSensor.angleRad = 0.0;
    testSensor.distNormalized = 1.0; // On the left edge
    testControl = drive(testSensor);
    EXPECT_LT(testControl.steeringNormalized, 0);
}

// Somehow this test does not work. We should figure out how to do a node black-box testing though.
TEST(PublishTest, DISABLED_testPublishedResult) {
    CallbackHelper cbHelper;
    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<mp::Sensors>("mp/sensors", 0);
    ros::Subscriber sub = nh.subscribe("mp/controls", 0, &CallbackHelper::callback, &cbHelper);
    EXPECT_EQ(pub.getNumSubscribers(), 1);
    EXPECT_EQ(sub.getNumPublishers(), 1);
    mp::Sensors testMsg;

    pub.publish(testMsg);
    ros::spinOnce();
    EXPECT_EQ(cbHelper.count, 1);
}

int main(int argc, char **argv) {
    testing::InitGoogleTest(&argc, argv);
    ros::init(argc, argv, "mp_heuristic_test");
    ros::NodeHandle nh;
    return RUN_ALL_TESTS();
}