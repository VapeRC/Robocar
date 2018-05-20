/** Implementation of controls_base.h **/
#include <ros/ros.h>
#include <vape/Path.h>  // TODO: Add message type Path.h

#include "controls_base.h"

void pathReceived(const vape::Path& pth) {
    // TODO: Use path to calculate steering, velocity
    // TODO: Send steering, velocity to Arduino to execute
    // TODO: ROS_INFO_STREAM("steering (in °), velocity (in %)")
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "controls_base"); // Initialize the ROS System, Declare Node
    ros::NodeHandle nh; // Establish this program as a ROS node

    ROS_INFO_STREAM("Base-Controller Node is starting up..."); // Log startup

    // Create subscriber of "ROS-Topic", callback pathReceived and queuesize 1000
    ros::Subscriber sub = nh.subscribe("/robocar/paths/", 1000, &pathReceived);

    // Start cycle of listening for messages, then responding
    ros::spin();
}
