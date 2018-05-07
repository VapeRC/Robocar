/**
    Base LD := Base Lane Detector. Focus on simplicity and runtime.
    Will be used as a baseline for CV regression testing.

    Listens for messages on ROS Topic /images, then runs Lane Detection
    and publishes to ROS Topic /lanes.

*/

#ifndef _cv_bld_h
#define _cv_bld_h
#include <vape_msgs/Image.h>


void imageReceived(const vape_msgs::Image&);

int main(int, char**);

#endif
