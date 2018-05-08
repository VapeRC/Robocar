#include "camera.h"
#include <ros/ros.h>
#include <vape/Image.h> // TODO: Add message type Image.h

int main(int argc, char** argv) {
    ros::init(argc, argv, "camera"); // Initialize the ROS System, Declare Node
    ros::NodeHandle nh; // Establish this program as a ROS node

    ROS_INFO_STREAM("Camera Node is starting up...");     // Log startup

    // Create publisher with <Message_Type>, "ROS-TOPIC" and queue_size 1000
    ros::Publisher pub = nh.advertise<vape::Image>( "/robocar/images/", 1000);

    // Specify rate of posting to topic in Hz
    ros::Rate rate(10);
    while (ros::ok()) {
        // TODO: Get image from camera and save as image message_type
        // vape_msgs::Image message = ;
        // pub.publish(message);
        // rate.sleep () ;
    }
}
