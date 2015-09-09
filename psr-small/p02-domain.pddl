
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (do-close_sd1-condeffs) (closed-sd4) (closed-sd5)
  (not-closed-sd7) (not-closed-sd4) (closed-sd3) (not-closed-sd8) (closed-sd7)
  (not-closed-sd6) (done-0) (closed-sd2) (updated-cb1) (do-close_sd7-condeffs)
  (do-wait_cb1-condeffs) (closed-sd8) (not-closed-sd3) (not-updated-cb1)
  (do-normal) (do-close_sd8-condeffs) (not-closed-sd1) (not-closed-sd2)
  (not-closed-sd5) (closed-sd1) (closed-sd6) (not-closed-cb1) (done-1)
  (closed-cb1))
 (:action ugly1close_sd7-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly2close_sd7-endof-condeffs :parameters () :precondition
  (and (do-close_sd7-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))))
 (:action ugly3close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1)) :effect
  (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly4close_sd1-endof-condeffs :parameters () :precondition
  (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly5close_sd8-endof-condeffs :parameters () :precondition
  (and (do-close_sd8-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))))
 (:action ugly6close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1)) :effect
  (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly7close_sd8-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly8open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1)) :effect
  (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly9close_sd8-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly10close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly11close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1)) :effect
  (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly12open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1)) :effect
  (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly13open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1)) :effect
  (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly14open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1)) :effect
  (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly15wait_cb1-condeff1-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd8) (closed-sd7)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly16wait_cb1-endof-condeffs :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly17close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1)) :effect
  (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly18close_sd8-condeff0-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd7) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly19open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1)) :effect
  (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly20open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1)) :effect
  (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly21close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly22close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1)) :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly23close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1)) :effect
  (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly24close_sd1-condeff0-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly25open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1)) :effect
  (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly26wait_cb1-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly27close_sd1-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly28open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1)) :effect
  (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly29close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly30close_sd7-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly31wait_cb1-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly32wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly33wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly34wait_cb1-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly35close_sd7-condeff0-yes :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd8) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly36open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1)) :effect
  (and (not-closed-sd5) (not (closed-sd5))))) 