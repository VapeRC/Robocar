/** Implementation of controls_base.h **/
#include <ros/ros.h>
#include <vape/Path.h>

#include "controls_base.h"

ros::Publisher *pub = nullptr;

void process(const vape::Path& pth) {
    // TODO: Use path to calculate steering, velocity
    // TODO: pub->publish(controls);
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "controls_PID"); // Initialize the ROS System, Declare Node
    ros::NodeHandle nh; // Establish this program as a ROS node

    ROS_INFO_STREAM("Base-Controller Node is starting up..."); // Log startup

    // Setup publisher with <Message_Type>, "ROS-TOPIC" and queue = 1000
    pub = &nh.advertise<vape::Controls>("/robocar/controls/", 1000);

    // Create subscriber of "ROS-Topic", callback pathReceived and queuesize 1000
    ros::Subscriber sub = nh.subscribe("/robocar/paths/", 1000, &process);

    // Start cycle of listening for messages, then responding
    ros::spin();
}
