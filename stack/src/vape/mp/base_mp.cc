#include "base_mp.h"
#include <ros/ros.h>
#include <vape/Lane.h> // TODO: Add message type Lanes.h
#include <vape/Path.h>  // TODO: Add message type Path.h


ros::Publisher pub;

void laneReceived(const vape::Lane& lns) {
    // TODO: Use lns to calculate output Path
    // TODO: vape_msgs::Path msg = ...;
    // TODO: pub.publish(msg);
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "base_mp"); // Initialize the ROS System, Declare Node
    ros::NodeHandle nh; // Establish this program as a ROS node

    ROS_INFO_STREAM("Base-MP Node is starting up..."); // Log startup

    // Setup publisher with <Message_Type>, "ROS-TOPIC" and queue = 1000
    pub = nh.advertise<vape::Path>("paths/", 1000);

    // Create subscriber of "ROS-Topic", callback lanesReceived and queuesize 1000
    ros::Subscriber sub = nh.subscribe("/robocar/lanes/", 1000, &laneReceived);

    // Start cycle of listening for messages, then responding
    ros::spin();
}
