; Auto-generated. Do not edit!


(cl:in-package vape_msgs-msg)


;//! \htmlinclude Image.msg.html

(cl:defclass <Image> (roslisp-msg-protocol:ros-message)
  ((i
    :reader i
    :initarg :i
    :type cl:integer
    :initform 0))
)

(cl:defclass Image (<Image>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Image>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Image)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vape_msgs-msg:<Image> is deprecated: use vape_msgs-msg:Image instead.")))

(cl:ensure-generic-function 'i-val :lambda-list '(m))
(cl:defmethod i-val ((m <Image>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vape_msgs-msg:i-val is deprecated.  Use vape_msgs-msg:i instead.")
  (i m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Image>) ostream)
  "Serializes a message object of type '<Image>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'i)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'i)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'i)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'i)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Image>) istream)
  "Deserializes a message object of type '<Image>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'i)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Image>)))
  "Returns string type for a message object of type '<Image>"
  "vape_msgs/Image")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Image)))
  "Returns string type for a message object of type 'Image"
  "vape_msgs/Image")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Image>)))
  "Returns md5sum for a message object of type '<Image>"
  "fe8f8503cfe379ff4fb978ea4ca6f246")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Image)))
  "Returns md5sum for a message object of type 'Image"
  "fe8f8503cfe379ff4fb978ea4ca6f246")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Image>)))
  "Returns full string definition for message of type '<Image>"
  (cl:format cl:nil "uint32 i~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Image)))
  "Returns full string definition for message of type 'Image"
  (cl:format cl:nil "uint32 i~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Image>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Image>))
  "Converts a ROS message object to a list"
  (cl:list 'Image
    (cl:cons ':i (i msg))
))
