/**
    Base MP := Base Motion Planner. Focus on simplicity and runtime.
    Will be used as a baseline for MP regression testing.

    Listens for messages on ROS Topic /lanes, then runs Motion Planning
    and publishes path to take to ROS Topic /paths.
*/

#ifndef _mp_bmp_h
#define _mp_bmp_h
#include <vape/Lane.h>

void laneReceived(const vape::Lane&);

int main(int, char**);

#endif
