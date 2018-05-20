/** Implementation of controls_base.h **/
#include <ros/ros.h>
#include <vape/Controls.h>

#include "hw_communication.h"

void infer(const vape::Controls& cnt) {
    // TODO: Put Controls on Serial
    // TODO: Log sterring, vel
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "hw_comm"); // Initialize the ROS System, Declare Node
    ros::NodeHandle nh; // Establish this program as a ROS node

    ROS_INFO_STREAM("Hardware-Communication Node is starting up..."); // Log startup

    // Create subscriber of "ROS-Topic", callback pathReceived and queuesize 1000
    ros::Subscriber sub = nh.subscribe("/robocar/paths/", 1000, &infer);

    // Start cycle of listening for messages, then responding
    ros::spin();
}
