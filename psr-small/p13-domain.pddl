
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (do-close_sd1-condeffs) (closed-cb2) (closed-sd2)
  (not-closed-sd5) (closed-sd3) (not-closed-sd3) (not-closed-sd6) (closed-sd5)
  (not-closed-sd4) (done-0) (not-closed-sd1) (updated-cb1)
  (do-close_sd2-condeffs) (do-wait_cb1-condeffs) (closed-sd6) (closed-sd1)
  (not-updated-cb1) (do-normal) (do-close_sd4-condeffs) (not-closed-cb2)
  (updated-cb2) (not-closed-sd2) (not-updated-cb2) (closed-sd4)
  (not-closed-cb1) (done-1) (closed-cb1))
 (:action ugly1close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly2close_sd2-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly3open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly4wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd4) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly5open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly6close_sd4-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly7close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2)) :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly8close_sd4-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly9close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly10open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly11open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly12open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly13close_sd1-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly14wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not-closed-cb2) (updated-cb2) (not (closed-cb2))
       (not (not-updated-cb2))))
 (:action ugly15wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly16wait_cb1-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect (and (done-1)))
 (:action ugly17close_sd4-endof-condeffs :parameters () :precondition
  (and (do-close_sd4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))))
 (:action ugly18close_sd1-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly19open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly20close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly21open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly22close_sd1-condeff0-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd4) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly23close_sd1-endof-condeffs :parameters () :precondition
  (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly24close_sd2-endof-condeffs :parameters () :precondition
  (and (do-close_sd2-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))))
 (:action ugly25close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly26wait_cb1-endof-condeffs :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly27close_sd2-condeff0-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly28close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2)) :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly29wait_cb1-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly30wait_cb1-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly31close_sd4-condeff0-yes :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd1) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly32close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly33wait_cb1-condeff1-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd2)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly34open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly35close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))) 