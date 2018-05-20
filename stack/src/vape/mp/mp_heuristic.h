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

int main(int, char**); 

#endif //MP_MP_HEURISTIC_H
