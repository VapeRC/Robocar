#include "base_controller.h"
#include <ros/ros.h>
#include <vape_msgs/Path.h>  // TODO: Add message type Path.h


void pathReceived(const vape_msgs::Path& pth) {
    // TODO: Use path to calculate steering, velocity
    // TODO: Send steering, velocity to Arduino to execute
    // TODO: ROS_INFO_STREAM("steering (in °), velocity (in %)")
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "base_mp"); // Initialize the ROS System, Declare Node
    ros::NodeHandle nh; // Establish this program as a ROS node

    ROS_INFO_STREAM("Base-Controller Node is starting up..."); // Log startup

    // Create subscriber of "ROS-Topic", callback pathReceived and queuesize 1000
    ros::Subscriber sub = nh.subscribe("paths/", 1000, &pathReceived);

    // Start cycle of listening for messages, then responding
    ros::spin();
}
