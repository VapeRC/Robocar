/** Implementation of mp_base.h **/
#include <ros/ros.h>
#include <vape/Lane.h>
#include <vape/Path.h>

#include "base_mp.h"

ros::Publisher *pub = nullptr;

void process(const vape::Lane& lns) {
    // TODO: Use lns to calculate output Path
    // TODO: vape_msgs::Path msg = ...;
    // TODO: pub->publish(msg);
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "mp_base"); // Initialize the ROS System, Declare Node
    ros::NodeHandle nh; // Establish this program as a ROS node

    ROS_INFO_STREAM("MP-Base Node is starting up..."); // Log startup

    // Setup publisher with <Message_Type>, "ROS-TOPIC" and queue = 1000
    pub = &nh.advertise<vape::Path>("/robocar/paths/", 1000);

    // Create subscriber of "ROS-Topic", callback lanesReceived and queuesize 1000
    ros::Subscriber sub = nh.subscribe("/robocar/lanes/", 1000, &process);

    // Start cycle of listening for messages, then responding
    ros::spin();
}
