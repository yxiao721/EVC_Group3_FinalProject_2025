# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "jetson_camera: 3 messages, 0 services")

set(MSG_I_FLAGS "-Ijetson_camera:/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(jetson_camera_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/QRdata.msg" NAME_WE)
add_custom_target(_jetson_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jetson_camera" "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/QRdata.msg" ""
)

get_filename_component(_filename "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/ImagePair.msg" NAME_WE)
add_custom_target(_jetson_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jetson_camera" "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/ImagePair.msg" "sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/FACEdata.msg" NAME_WE)
add_custom_target(_jetson_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jetson_camera" "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/FACEdata.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(jetson_camera
  "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/QRdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetson_camera
)
_generate_msg_cpp(jetson_camera
  "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/ImagePair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetson_camera
)
_generate_msg_cpp(jetson_camera
  "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/FACEdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetson_camera
)

### Generating Services

### Generating Module File
_generate_module_cpp(jetson_camera
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetson_camera
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(jetson_camera_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(jetson_camera_generate_messages jetson_camera_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/QRdata.msg" NAME_WE)
add_dependencies(jetson_camera_generate_messages_cpp _jetson_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/ImagePair.msg" NAME_WE)
add_dependencies(jetson_camera_generate_messages_cpp _jetson_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/FACEdata.msg" NAME_WE)
add_dependencies(jetson_camera_generate_messages_cpp _jetson_camera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jetson_camera_gencpp)
add_dependencies(jetson_camera_gencpp jetson_camera_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jetson_camera_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(jetson_camera
  "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/QRdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetson_camera
)
_generate_msg_eus(jetson_camera
  "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/ImagePair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetson_camera
)
_generate_msg_eus(jetson_camera
  "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/FACEdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetson_camera
)

### Generating Services

### Generating Module File
_generate_module_eus(jetson_camera
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetson_camera
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(jetson_camera_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(jetson_camera_generate_messages jetson_camera_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/QRdata.msg" NAME_WE)
add_dependencies(jetson_camera_generate_messages_eus _jetson_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/ImagePair.msg" NAME_WE)
add_dependencies(jetson_camera_generate_messages_eus _jetson_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/FACEdata.msg" NAME_WE)
add_dependencies(jetson_camera_generate_messages_eus _jetson_camera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jetson_camera_geneus)
add_dependencies(jetson_camera_geneus jetson_camera_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jetson_camera_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(jetson_camera
  "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/QRdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetson_camera
)
_generate_msg_lisp(jetson_camera
  "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/ImagePair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetson_camera
)
_generate_msg_lisp(jetson_camera
  "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/FACEdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetson_camera
)

### Generating Services

### Generating Module File
_generate_module_lisp(jetson_camera
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetson_camera
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(jetson_camera_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(jetson_camera_generate_messages jetson_camera_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/QRdata.msg" NAME_WE)
add_dependencies(jetson_camera_generate_messages_lisp _jetson_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/ImagePair.msg" NAME_WE)
add_dependencies(jetson_camera_generate_messages_lisp _jetson_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/FACEdata.msg" NAME_WE)
add_dependencies(jetson_camera_generate_messages_lisp _jetson_camera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jetson_camera_genlisp)
add_dependencies(jetson_camera_genlisp jetson_camera_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jetson_camera_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(jetson_camera
  "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/QRdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetson_camera
)
_generate_msg_nodejs(jetson_camera
  "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/ImagePair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetson_camera
)
_generate_msg_nodejs(jetson_camera
  "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/FACEdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetson_camera
)

### Generating Services

### Generating Module File
_generate_module_nodejs(jetson_camera
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetson_camera
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(jetson_camera_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(jetson_camera_generate_messages jetson_camera_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/QRdata.msg" NAME_WE)
add_dependencies(jetson_camera_generate_messages_nodejs _jetson_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/ImagePair.msg" NAME_WE)
add_dependencies(jetson_camera_generate_messages_nodejs _jetson_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/FACEdata.msg" NAME_WE)
add_dependencies(jetson_camera_generate_messages_nodejs _jetson_camera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jetson_camera_gennodejs)
add_dependencies(jetson_camera_gennodejs jetson_camera_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jetson_camera_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(jetson_camera
  "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/QRdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetson_camera
)
_generate_msg_py(jetson_camera
  "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/ImagePair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetson_camera
)
_generate_msg_py(jetson_camera
  "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/FACEdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetson_camera
)

### Generating Services

### Generating Module File
_generate_module_py(jetson_camera
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetson_camera
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(jetson_camera_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(jetson_camera_generate_messages jetson_camera_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/QRdata.msg" NAME_WE)
add_dependencies(jetson_camera_generate_messages_py _jetson_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/ImagePair.msg" NAME_WE)
add_dependencies(jetson_camera_generate_messages_py _jetson_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetbot/EVC/workshops/FINALPROJECT/src/jetson_camera/msg/FACEdata.msg" NAME_WE)
add_dependencies(jetson_camera_generate_messages_py _jetson_camera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jetson_camera_genpy)
add_dependencies(jetson_camera_genpy jetson_camera_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jetson_camera_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetson_camera)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jetson_camera
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(jetson_camera_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(jetson_camera_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetson_camera)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jetson_camera
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(jetson_camera_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(jetson_camera_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetson_camera)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jetson_camera
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(jetson_camera_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(jetson_camera_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetson_camera)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jetson_camera
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(jetson_camera_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(jetson_camera_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetson_camera)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetson_camera\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jetson_camera
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(jetson_camera_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(jetson_camera_generate_messages_py sensor_msgs_generate_messages_py)
endif()
