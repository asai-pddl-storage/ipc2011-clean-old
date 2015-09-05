
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (do-normal) (not-closed-sd5) (closed-sd1) (not-closed-sd7)
  (not-closed-sd3) (not-closed-sd2) (closed-cb1) (closed-sd4) (not-closed-sd6)
  (do-close_sd4-condeffs) (closed-sd7) (do-close_sd6-condeffs) (not-closed-sd1)
  (not-closed-cb1) (done-1) (closed-sd5) (not-updated-cb1)
  (do-close_sd3-condeffs) (updated-cb1) (do-wait_cb1-condeffs) (closed-sd6)
  (closed-sd3) (not-closed-sd4) (closed-sd2) (done-0))
 (:action ugly1open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1)) :effect
  (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly2close_sd3-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly3close_sd4-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly4close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly5close_sd3-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly6close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1)) :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly7close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly8close_sd3-condeff0-yes :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd4) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly9close_sd6-endof-condeffs :parameters () :precondition
  (and (do-close_sd6-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))))
 (:action ugly10open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1)) :effect
  (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly11close_sd6-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly12wait_cb1-endof-condeffs :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly13close_sd3-endof-condeffs :parameters () :precondition
  (and (do-close_sd3-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly14close_sd3-condeff1-yes :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd6) (closed-cb1)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly15open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1)) :effect
  (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly16close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1)) :effect
  (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly17close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1)) :effect
  (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly18wait_cb1-condeff1-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd6) (closed-sd3)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly19close_sd6-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly20close_sd4-endof-condeffs :parameters () :precondition
  (and (do-close_sd4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))))
 (:action ugly21close_sd4-condeff0-yes :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd3) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly22close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1)) :effect
  (and (closed-sd7) (not (not-closed-sd7))))
 (:action ugly23open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1)) :effect
  (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly24open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1)) :effect
  (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly25close_sd6-condeff0-yes :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd3) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly26close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly27close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1)) :effect
  (and (closed-sd1) (not (not-closed-sd1))))
 (:action ugly28wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly29wait_cb1-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd3)) :effect (and (done-1)))
 (:action ugly30close_sd4-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly31open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1)) :effect
  (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly32close_sd3-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly33close_sd3-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-cb1)) :effect (and (done-1)))
 (:action ugly34wait_cb1-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly35wait_cb1-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly36wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd4) (closed-sd3)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly37wait_cb1-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly38open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1)) :effect
  (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly39open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1)) :effect
  (and (not-closed-sd2) (not (closed-sd2))))) 