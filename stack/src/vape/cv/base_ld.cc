#include "base_ld.h"
#include <ros/ros.h>
#include <vape_msgs/Image.h> // TODO: Add message type Image.h
#include <vape_msgs/Lanes.h> // TODO: Add message type Lanes.h


ros::Publisher pub;

void imageReceived(const vape_msgs::Image& img) {
    // TODO: Use img to infer Lanes
    // TODO: vape_msgs::Lanes msg = ...;
    // TODO: pub.publish(msg);
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "base_ld"); // Initialize the ROS System, Declare Node
    ros::NodeHandle nh; // Establish this program as a ROS node

    ROS_INFO_STREAM("Base-LD Node is starting up...");     // Log startup

    // Setup publisher with <Message_Type>, "ROS-TOPIC" and queue = 1000
    pub = nh.advertise<vape_msgs::Lanes>("lanes/", 1000);

    // Create subscriber of "ROS-Topic", callback imageReceived and queue = 1000
    ros::Subscriber sub = nh.subscribe("images/", 1000, &imageReceived);

    // Start cycle of listening for messages, then responding
    ros::spin();
}
