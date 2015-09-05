
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (do-close_sd1-condeffs) (closed-sd3) (closed-sd4)
  (not-closed-sd5) (not-closed-sd1) (closed-sd1) (not-closed-sd6) (closed-sd6)
  (not-closed-sd4) (do-normal) (not-closed-sd2) (updated-cb1)
  (do-close_sd5-condeffs) (do-wait_cb2-condeffs) (closed-cb1) (closed-sd2)
  (not-updated-cb1) (do-wait_cb1-condeffs) (do-close_sd6-condeffs)
  (not-closed-cb2) (updated-cb2) (not-closed-sd3) (not-updated-cb2)
  (closed-sd5) (not-closed-cb1) (done-0) (closed-cb2))
 (:action ugly1close_sd5-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly2close_sd5-endof-condeffs :parameters () :precondition
  (and (do-close_sd5-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))))
 (:action ugly3close_sd1-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly4open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly5close_sd6-endof-condeffs :parameters () :precondition
  (and (do-close_sd6-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))))
 (:action ugly6close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly7close_sd6-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly8open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly9close_sd6-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly10close_sd1-endof-condeffs :parameters () :precondition
  (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly11close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly12open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly13close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly14wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly15wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly16wait_cb1-endof-condeffs :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0))))
 (:action ugly17close_sd1-condeff0-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly18close_sd6-condeff0-yes :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd5) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly19open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly20open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly21close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly22open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly23close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly24close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2)) :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly25wait_cb2-condeff0-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd6) (closed-sd5)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly26wait_cb1-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly27close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2)) :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly28open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly29close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action ugly30close_sd5-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly31wait_cb2-endof-condeffs :parameters () :precondition
  (and (do-wait_cb2-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0))))
 (:action ugly32wait_cb2-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly33wait_cb2-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly34wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly35close_sd5-condeff0-yes :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-sd6) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly36open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd1) (not (closed-sd1))))) 