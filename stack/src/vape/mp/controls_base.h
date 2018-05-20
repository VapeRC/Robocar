/**
    Base Controller. Heuristic implementation, focus on simplicity and runtime.
    Will be used as a baseline for Controls regression testing.

    Listens for messages on ROS Topic /lanes, then runs Motion Planning
    and publishes path to take to ROS Topic /paths.
*/

#ifndef _mp_bct_h
#define _mp_bct_h
#include <vape/Path.h>


void pathReceived(const vape::Path&);

int main(int, char**);

#endif
