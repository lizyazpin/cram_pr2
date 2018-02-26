;;; Copyright (c) 2010, Lorenz Moesenlechner <moesenle@in.tum.de>
;;; All rights reserved.
;;; 
;;; Redistribution and use in source and binary forms, with or without
;;; modification, are permitted provided that the following conditions are met:
;;; 
;;;     * Redistributions of source code must retain the above copyright
;;;       notice, this list of conditions and the following disclaimer.
;;;     * Redistributions in binary form must reproduce the above copyright
;;;       notice, this list of conditions and the following disclaimer in the
;;;       documentation and/or other materials provided with the distribution.
;;;     * Neither the name of Willow Garage, Inc. nor the names of its
;;;       contributors may be used to endorse or promote products derived from
;;;       this software without specific prior written permission.
;;; 
;;; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
;;; AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
;;; IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;;; ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
;;; LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
;;; CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
;;; SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
;;; INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
;;; CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
;;; ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
;;; POSSIBILITY OF SUCH DAMAGE.

(in-package :cl-user)

(desig-props:def-desig-package pr2-manipulation-process-module
  (:nicknames :pr2-manip-pm)
  (:use #:common-lisp
        #:prolog
        #:cut
        #:desig
        #:cram-tf
        #:cram-process-modules
        #:cram-common-failures
        #:cram-plan-occasions-events
        #:cram-occasions-events
        #:cram-robot-interfaces
        #:cl-transforms-stamped)
  (:import-from alexandria ignore-some-conditions)
  (:import-from roslisp ros-info ros-warn ros-error ros-time)
  (:shadowing-import-from #:cram-designators object object-designator)
  (:export pr2-manipulation-process-module
           wait-for-controller
           reorient-object
           close-radius)
  (:desig-properties #:trajectory #:type #:to #:open #:obj #:side #:sides #:close
                     #:grasp #:put-down #:pose #:parked #:lift
                     #:carry #:at #:orientation #:in #:gripper #:both-grippers
                     #:z-offset #:distance #:obstacle #:handle #:name
                     #:goal #:navigation #:grasped-by #:radius #:pot #:shape
                     #:collision-part #:cylinder #:length #:min-handles #:park
                     #:distance #:direction #:pull #:push #:location #:angle
                     #:joint #:joint-axis #:lower-bound #:upper-bound #:open
                     #:shape #:dimensions #:debug #:max-handles #:grasp-type
                     #:top-slide-down))
