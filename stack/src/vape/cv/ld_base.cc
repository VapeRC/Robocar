/** Implementation of ld_base.h **/
#include <ros/ros.h>
#include <vape/Image.h>
#include <vape/Lane.h>

#include "ld_base.h"

ros::Publisher *pub = nullptr;

void process(const vape::Image& img) {
    // TODO: Use img to infer Lanes
    // TODO: vape_msgs::Lanes msg = ...;
    // TODO: pub->publish(msg);
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "ld_base"); // Initialize the ROS System, Declare Node
    ros::NodeHandle nh; // Establish this program as a ROS node

    ROS_INFO_STREAM("LD-Base Node is starting up...");     // Log startup

    // Setup publisher with <Message_Type>, "ROS-TOPIC" and queue = 1000
    pub = &nh.advertise<vape::Lane>("/robocar/lanes/", 1000);

    // Create subscriber of "ROS-Topic", callback imageReceived and queue = 1000
    ros::Subscriber sub = nh.subscribe("/robocar/images/", 1000, &process);

    // Start cycle of listening for messages, then responding
    ros::spin();
}
