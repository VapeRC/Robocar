;; Auto-generated. Do not edit!


(when (boundp 'vape_msgs::Path)
  (if (not (find-package "VAPE_MSGS"))
    (make-package "VAPE_MSGS"))
  (shadow 'Path (find-package "VAPE_MSGS")))
(unless (find-package "VAPE_MSGS::PATH")
  (make-package "VAPE_MSGS::PATH"))

(in-package "ROS")
;;//! \htmlinclude Path.msg.html


(defclass vape_msgs::Path
  :super ros::object
  :slots (_i ))

(defmethod vape_msgs::Path
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

(setf (get vape_msgs::Path :md5sum-) "fe8f8503cfe379ff4fb978ea4ca6f246")
(setf (get vape_msgs::Path :datatype-) "vape_msgs/Path")
(setf (get vape_msgs::Path :definition-)
      "uint32 i

")



(provide :vape_msgs/Path "fe8f8503cfe379ff4fb978ea4ca6f246")


