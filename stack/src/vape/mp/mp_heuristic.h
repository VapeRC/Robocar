/**
    Heuristic MP := Heuristic Motion Planner. Focus on simplicity and runtime.

    Uses Proportional Control to adjust sterring angle.
    Then, using current velocity and infered steering, adjusts velocity through acceleration

    Might be used as a baseline for MP regression testing.

    Listens for messages on ROS Topic /mph_input, then runs Motion Planning
    and publishes path to take to ROS Topic /controls.
*/

#ifndef MP_MP_HEURISTIC_H
#define MP_MP_HEURISTIC_H

#include <vape/MPH_Input.h>
#include <vape/Controls.h>

vape::Controls drive(const vape::MPH_Input& input);

#endif //MP_MP_HEURISTIC_H
