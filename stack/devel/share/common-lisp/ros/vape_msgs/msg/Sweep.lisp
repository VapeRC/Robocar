; Auto-generated. Do not edit!


(cl:in-package vape_msgs-msg)


;//! \htmlinclude Sweep.msg.html

(cl:defclass <Sweep> (roslisp-msg-protocol:ros-message)
  ((i
    :reader i
    :initarg :i
    :type cl:integer
    :initform 0))
)

(cl:defclass Sweep (<Sweep>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Sweep>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Sweep)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vape_msgs-msg:<Sweep> is deprecated: use vape_msgs-msg:Sweep instead.")))

(cl:ensure-generic-function 'i-val :lambda-list '(m))
(cl:defmethod i-val ((m <Sweep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vape_msgs-msg:i-val is deprecated.  Use vape_msgs-msg:i instead.")
  (i m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Sweep>) ostream)
  "Serializes a message object of type '<Sweep>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'i)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'i)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'i)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'i)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Sweep>) istream)
  "Deserializes a message object of type '<Sweep>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'i)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Sweep>)))
  "Returns string type for a message object of type '<Sweep>"
  "vape_msgs/Sweep")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sweep)))
  "Returns string type for a message object of type 'Sweep"
  "vape_msgs/Sweep")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Sweep>)))
  "Returns md5sum for a message object of type '<Sweep>"
  "fe8f8503cfe379ff4fb978ea4ca6f246")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Sweep)))
  "Returns md5sum for a message object of type 'Sweep"
  "fe8f8503cfe379ff4fb978ea4ca6f246")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Sweep>)))
  "Returns full string definition for message of type '<Sweep>"
  (cl:format cl:nil "uint32 i~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Sweep)))
  "Returns full string definition for message of type 'Sweep"
  (cl:format cl:nil "uint32 i~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Sweep>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Sweep>))
  "Converts a ROS message object to a list"
  (cl:list 'Sweep
    (cl:cons ':i (i msg))
))
