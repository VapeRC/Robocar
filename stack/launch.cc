#include <stdio.h>
#include <iostream>
#include <fstream>


int main(int argc, char *argv[]) {
    if( argc == 2 ) {
        char* bp_name = argv[1];
        std::cout << "Using Blueprint: " << bp_name << std::endl << std::endl;

        std::ifstream blueprint(bp_name);
        std::string task_name;

        while (std::getline(blueprint, task_name)) {
            std::cout << "Launching Task: " << task_name << std::endl;
            // Launch Corresponding Task
        }

        std::cout << std::endl << "Robocar is starting up" << std::endl;

    }

    else if( argc > 2 ) { printf("Too many arguments supplied.\n"); }
    else { printf("One argument expected.\n"); }
}
