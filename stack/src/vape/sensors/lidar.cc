#include "lidar.h"
#include <ros/ros.h>
#include <vape/Sweep.h> // TODO: Add message type Sweep.h

int main(int argc, char** argv) {
    ros::init(argc, argv, "lidar"); // Initialize the ROS System, Declare Node
    ros::NodeHandle nh; // Establish this program as a ROS node

    ROS_INFO_STREAM("Lidar Node is starting up...");     // Log startup

    // Create publisher with <Message_Type>, "ROS-TOPIC" and queue_size 1000
    ros::Publisher pub = nh.advertise<vape::Sweep>( "/robocar/sweeps/", 1000);

    // Specify rate of posting to topic in Hz
    ros::Rate rate(10);
    while (ros::ok()) {
        // TODO: Get sweep from lidar, format it to sweep message_type
        // vape_msgs::Sweep message = ;
        // pub.publish(message);
        // rate.sleep () ;
    }
}
