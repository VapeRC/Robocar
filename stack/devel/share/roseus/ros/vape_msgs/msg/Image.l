;; Auto-generated. Do not edit!


(when (boundp 'vape_msgs::Image)
  (if (not (find-package "VAPE_MSGS"))
    (make-package "VAPE_MSGS"))
  (shadow 'Image (find-package "VAPE_MSGS")))
(unless (find-package "VAPE_MSGS::IMAGE")
  (make-package "VAPE_MSGS::IMAGE"))

(in-package "ROS")
;;//! \htmlinclude Image.msg.html


(defclass vape_msgs::Image
  :super ros::object
  :slots (_i ))

(defmethod vape_msgs::Image
  (:init
   (&key
    ((:i __i) 0)
    )
   (send-super :init)
   (setq _i (round __i))
   self)
  (:i
   (&optional __i)
   (if __i (setq _i __i)) _i)
  (:serialization-length
   ()
   (+
    ;; uint32 _i
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _i
       (write-long _i s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _i
     (setq _i (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get vape_msgs::Image :md5sum-) "fe8f8503cfe379ff4fb978ea4ca6f246")
(setf (get vape_msgs::Image :datatype-) "vape_msgs/Image")
(setf (get vape_msgs::Image :definition-)
      "uint32 i

")



(provide :vape_msgs/Image "fe8f8503cfe379ff4fb978ea4ca6f246")


