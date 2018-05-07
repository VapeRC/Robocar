
(cl:in-package :asdf)

(defsystem "vape_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Image" :depends-on ("_package_Image"))
    (:file "_package_Image" :depends-on ("_package"))
    (:file "Lanes" :depends-on ("_package_Lanes"))
    (:file "_package_Lanes" :depends-on ("_package"))
    (:file "Path" :depends-on ("_package_Path"))
    (:file "_package_Path" :depends-on ("_package"))
    (:file "Sweep" :depends-on ("_package_Sweep"))
    (:file "_package_Sweep" :depends-on ("_package"))
  ))