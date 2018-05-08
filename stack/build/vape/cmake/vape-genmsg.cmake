# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "vape: 4 messages, 0 services")

set(MSG_I_FLAGS "-Ivape:/home/Robocar/stack/src/vape/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Ivape:/home/Robocar/stack/src/vape/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(vape_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/Robocar/stack/src/vape/msg/Sweep.msg" NAME_WE)
add_custom_target(_vape_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vape" "/home/Robocar/stack/src/vape/msg/Sweep.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/Robocar/stack/src/vape/msg/Image.msg" NAME_WE)
add_custom_target(_vape_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vape" "/home/Robocar/stack/src/vape/msg/Image.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/Robocar/stack/src/vape/msg/Path.msg" NAME_WE)
add_custom_target(_vape_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vape" "/home/Robocar/stack/src/vape/msg/Path.msg" "geometry_msgs/Point32:std_msgs/Header"
)

get_filename_component(_filename "/home/Robocar/stack/src/vape/msg/Lane.msg" NAME_WE)
add_custom_target(_vape_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vape" "/home/Robocar/stack/src/vape/msg/Lane.msg" "geometry_msgs/Point32:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(vape
  "/home/Robocar/stack/src/vape/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vape
)
_generate_msg_cpp(vape
  "/home/Robocar/stack/src/vape/msg/Image.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vape
)
_generate_msg_cpp(vape
  "/home/Robocar/stack/src/vape/msg/Sweep.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vape
)
_generate_msg_cpp(vape
  "/home/Robocar/stack/src/vape/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vape
)

### Generating Services

### Generating Module File
_generate_module_cpp(vape
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vape
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(vape_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(vape_generate_messages vape_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/Robocar/stack/src/vape/msg/Sweep.msg" NAME_WE)
add_dependencies(vape_generate_messages_cpp _vape_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/Robocar/stack/src/vape/msg/Image.msg" NAME_WE)
add_dependencies(vape_generate_messages_cpp _vape_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/Robocar/stack/src/vape/msg/Path.msg" NAME_WE)
add_dependencies(vape_generate_messages_cpp _vape_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/Robocar/stack/src/vape/msg/Lane.msg" NAME_WE)
add_dependencies(vape_generate_messages_cpp _vape_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vape_gencpp)
add_dependencies(vape_gencpp vape_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vape_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(vape
  "/home/Robocar/stack/src/vape/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vape
)
_generate_msg_eus(vape
  "/home/Robocar/stack/src/vape/msg/Image.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vape
)
_generate_msg_eus(vape
  "/home/Robocar/stack/src/vape/msg/Sweep.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vape
)
_generate_msg_eus(vape
  "/home/Robocar/stack/src/vape/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vape
)

### Generating Services

### Generating Module File
_generate_module_eus(vape
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vape
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(vape_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(vape_generate_messages vape_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/Robocar/stack/src/vape/msg/Sweep.msg" NAME_WE)
add_dependencies(vape_generate_messages_eus _vape_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/Robocar/stack/src/vape/msg/Image.msg" NAME_WE)
add_dependencies(vape_generate_messages_eus _vape_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/Robocar/stack/src/vape/msg/Path.msg" NAME_WE)
add_dependencies(vape_generate_messages_eus _vape_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/Robocar/stack/src/vape/msg/Lane.msg" NAME_WE)
add_dependencies(vape_generate_messages_eus _vape_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vape_geneus)
add_dependencies(vape_geneus vape_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vape_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(vape
  "/home/Robocar/stack/src/vape/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vape
)
_generate_msg_lisp(vape
  "/home/Robocar/stack/src/vape/msg/Image.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vape
)
_generate_msg_lisp(vape
  "/home/Robocar/stack/src/vape/msg/Sweep.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vape
)
_generate_msg_lisp(vape
  "/home/Robocar/stack/src/vape/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vape
)

### Generating Services

### Generating Module File
_generate_module_lisp(vape
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vape
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(vape_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(vape_generate_messages vape_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/Robocar/stack/src/vape/msg/Sweep.msg" NAME_WE)
add_dependencies(vape_generate_messages_lisp _vape_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/Robocar/stack/src/vape/msg/Image.msg" NAME_WE)
add_dependencies(vape_generate_messages_lisp _vape_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/Robocar/stack/src/vape/msg/Path.msg" NAME_WE)
add_dependencies(vape_generate_messages_lisp _vape_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/Robocar/stack/src/vape/msg/Lane.msg" NAME_WE)
add_dependencies(vape_generate_messages_lisp _vape_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vape_genlisp)
add_dependencies(vape_genlisp vape_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vape_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(vape
  "/home/Robocar/stack/src/vape/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vape
)
_generate_msg_nodejs(vape
  "/home/Robocar/stack/src/vape/msg/Image.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vape
)
_generate_msg_nodejs(vape
  "/home/Robocar/stack/src/vape/msg/Sweep.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vape
)
_generate_msg_nodejs(vape
  "/home/Robocar/stack/src/vape/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vape
)

### Generating Services

### Generating Module File
_generate_module_nodejs(vape
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vape
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(vape_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(vape_generate_messages vape_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/Robocar/stack/src/vape/msg/Sweep.msg" NAME_WE)
add_dependencies(vape_generate_messages_nodejs _vape_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/Robocar/stack/src/vape/msg/Image.msg" NAME_WE)
add_dependencies(vape_generate_messages_nodejs _vape_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/Robocar/stack/src/vape/msg/Path.msg" NAME_WE)
add_dependencies(vape_generate_messages_nodejs _vape_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/Robocar/stack/src/vape/msg/Lane.msg" NAME_WE)
add_dependencies(vape_generate_messages_nodejs _vape_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vape_gennodejs)
add_dependencies(vape_gennodejs vape_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vape_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(vape
  "/home/Robocar/stack/src/vape/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vape
)
_generate_msg_py(vape
  "/home/Robocar/stack/src/vape/msg/Image.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vape
)
_generate_msg_py(vape
  "/home/Robocar/stack/src/vape/msg/Sweep.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vape
)
_generate_msg_py(vape
  "/home/Robocar/stack/src/vape/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vape
)

### Generating Services

### Generating Module File
_generate_module_py(vape
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vape
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(vape_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(vape_generate_messages vape_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/Robocar/stack/src/vape/msg/Sweep.msg" NAME_WE)
add_dependencies(vape_generate_messages_py _vape_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/Robocar/stack/src/vape/msg/Image.msg" NAME_WE)
add_dependencies(vape_generate_messages_py _vape_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/Robocar/stack/src/vape/msg/Path.msg" NAME_WE)
add_dependencies(vape_generate_messages_py _vape_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/Robocar/stack/src/vape/msg/Lane.msg" NAME_WE)
add_dependencies(vape_generate_messages_py _vape_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vape_genpy)
add_dependencies(vape_genpy vape_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vape_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vape)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vape
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(vape_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(vape_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET vape_generate_messages_cpp)
  add_dependencies(vape_generate_messages_cpp vape_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vape)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vape
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(vape_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(vape_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET vape_generate_messages_eus)
  add_dependencies(vape_generate_messages_eus vape_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vape)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vape
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(vape_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(vape_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET vape_generate_messages_lisp)
  add_dependencies(vape_generate_messages_lisp vape_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vape)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vape
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(vape_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(vape_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET vape_generate_messages_nodejs)
  add_dependencies(vape_generate_messages_nodejs vape_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vape)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vape\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vape
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(vape_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(vape_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET vape_generate_messages_py)
  add_dependencies(vape_generate_messages_py vape_generate_messages_py)
endif()
