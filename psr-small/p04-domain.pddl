
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (do-normal) (not-updated-cb1) (not-closed-sd3) (closed-cb1)
  (not-closed-sd4) (do-close_sd5-condeffs) (closed-sd6) (closed-sd2)
  (not-closed-sd6) (do-close_sd1-condeffs) (closed-sd5) (do-close_sd2-condeffs)
  (not-closed-sd2) (not-closed-cb1) (done-1) (not-closed-sd1)
  (do-close_sd4-condeffs) (do-close_sd3-condeffs) (updated-cb1)
  (do-wait_cb1-condeffs) (closed-sd4) (closed-sd1) (not-closed-sd5)
  (closed-sd3) (done-0))
 (:action ugly1close_sd1-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly2close_sd4-endof-condeffs :parameters () :precondition
  (and (do-close_sd4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))))
 (:action ugly3wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly4wait_cb1-endof-condeffs :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly5close_sd3-endof-condeffs :parameters () :precondition
  (and (do-close_sd3-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))))
 (:action ugly6close_sd4-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly7close_sd3-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly8wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd3) (closed-sd2) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly9close_sd5-condeff0-yes :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-sd4) (closed-sd2) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly10close_sd2-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly11close_sd2-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd4)) :effect (and (done-1)))
 (:action ugly12close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly13close_sd5-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly14close_sd2-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly15close_sd4-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly16wait_cb1-condeff1-no-3 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-1)))
 (:action ugly17wait_cb1-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly18open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1)) :effect
  (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly19close_sd2-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-cb1)) :effect (and (done-1)))
 (:action ugly20close_sd2-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd5)) :effect (and (done-1)))
 (:action ugly21close_sd1-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd4)) :effect (and (done-1)))
 (:action ugly22close_sd1-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd5)) :effect (and (done-1)))
 (:action ugly23open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1)) :effect
  (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly24close_sd3-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly25close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action ugly26close_sd1-condeff0-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd3) (closed-sd2) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly27close_sd1-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-1)))
 (:action ugly28close_sd5-endof-condeffs :parameters () :precondition
  (and (do-close_sd5-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))))
 (:action ugly29close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1)) :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly30wait_cb1-condeff0-no-2 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly31close_sd1-condeff1-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd5) (closed-sd4) (closed-sd2)
       (closed-cb1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly32open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1)) :effect
  (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly33close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly34close_sd5-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly35close_sd4-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly36open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1)) :effect
  (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly37wait_cb1-condeff1-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd5) (closed-sd4) (closed-sd2)
       (closed-sd1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly38close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly39close_sd4-condeff0-yes :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd5) (closed-sd2) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly40open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1)) :effect
  (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly41close_sd2-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly42wait_cb1-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly43close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly44close_sd2-endof-condeffs :parameters () :precondition
  (and (do-close_sd2-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly45wait_cb1-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd4)) :effect (and (done-1)))
 (:action ugly46open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1)) :effect
  (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly47close_sd1-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly48close_sd1-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly49open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1)) :effect
  (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly50wait_cb1-condeff1-no-2 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect (and (done-1)))
 (:action ugly51close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1)) :effect
  (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly52close_sd3-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly53close_sd2-condeff1-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd5) (closed-sd4) (closed-sd1)
       (closed-cb1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly54close_sd2-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd1)) :effect (and (done-1)))
 (:action ugly55close_sd2-condeff0-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd3) (closed-sd1) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly56close_sd3-condeff0-yes :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd2) (closed-sd1) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly57wait_cb1-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd5)) :effect (and (done-1)))
 (:action ugly58close_sd1-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd2)) :effect (and (done-1)))
 (:action ugly59close_sd5-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly60close_sd5-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly61close_sd1-endof-condeffs :parameters () :precondition
  (and (do-close_sd1-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly62close_sd4-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd5)) :effect (and (done-0)))) 