docker pull ros:kinetic-ros-base | 
   grep "Image is up to date" ||
   (echo Already up to date. Exiting... && exit 0)

docker run -it --mount src="$(pwd)",dst=/home/Robocar,type=bind ros:kinetic-ros-base
