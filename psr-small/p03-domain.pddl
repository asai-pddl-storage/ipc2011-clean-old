
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (do-wait_cb1-condeffs) (do-close_sd1-condeffs) (done-1)
  (closed-sd3) (not-closed-sd4) (do-normal) (not-closed-sd1) (closed-sd1)
  (updated-cb1) (not-closed-sd2) (do-close_sd4-condeffs) (not-updated-cb1)
  (done-0) (not-closed-cb1) (closed-sd4) (closed-sd2) (closed-cb1)
  (not-closed-sd3))
 (:action ugly1wait_cb1-condeff1-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd4)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly2open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1)) :effect
  (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly3wait_cb1-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd4)) :effect (and (done-1)))
 (:action ugly4wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly5wait_cb1-endof-condeffs :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly6close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly7open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1)) :effect
  (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly8close_sd4-endof-condeffs :parameters () :precondition
  (and (do-close_sd4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))))
 (:action ugly9close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1)) :effect
  (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly10close_sd4-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly11wait_cb1-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly12close_sd1-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly13open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1)) :effect
  (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly14close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1)) :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly15close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly16close_sd1-endof-condeffs :parameters () :precondition
  (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly17close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1)) :effect
  (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly18close_sd1-condeff0-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly19wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly20open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1)) :effect
  (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly21open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1)) :effect
  (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly22close_sd4-condeff0-yes :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))) 