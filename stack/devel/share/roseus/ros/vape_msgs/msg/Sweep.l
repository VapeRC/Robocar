;; Auto-generated. Do not edit!


(when (boundp 'vape_msgs::Sweep)
  (if (not (find-package "VAPE_MSGS"))
    (make-package "VAPE_MSGS"))
  (shadow 'Sweep (find-package "VAPE_MSGS")))
(unless (find-package "VAPE_MSGS::SWEEP")
  (make-package "VAPE_MSGS::SWEEP"))

(in-package "ROS")
;;//! \htmlinclude Sweep.msg.html


(defclass vape_msgs::Sweep
  :super ros::object
  :slots (_i ))

(defmethod vape_msgs::Sweep
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

(setf (get vape_msgs::Sweep :md5sum-) "fe8f8503cfe379ff4fb978ea4ca6f246")
(setf (get vape_msgs::Sweep :datatype-) "vape_msgs/Sweep")
(setf (get vape_msgs::Sweep :definition-)
      "uint32 i

")



(provide :vape_msgs/Sweep "fe8f8503cfe379ff4fb978ea4ca6f246")


