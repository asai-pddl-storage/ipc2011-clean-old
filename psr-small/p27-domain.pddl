
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (not-closed-sd7) (not-updated-cb2) (closed-sd5)
  (do-close_sd1-condeffs) (do-wait_cb2-condeffs) (done-0) (not-closed-sd2)
  (not-updated-cb1) (not-closed-cb3) (closed-sd2) (do-close_sd6-condeffs)
  (done-2) (not-closed-sd5) (updated-cb1) (do-close_sd7-condeffs)
  (not-closed-sd1) (do-close_sd8-condeffs) (do-normal) (done-1)
  (not-closed-sd8) (not-closed-sd9) (closed-sd3) (not-closed-sd6) (closed-sd11)
  (closed-sd10) (updated-cb2) (not-closed-sd11) (closed-sd7) (closed-cb1)
  (closed-sd8) (closed-sd9) (not-closed-cb1) (do-close_sd3-condeffs)
  (not-closed-sd4) (do-wait_cb1-condeffs) (closed-sd4) (closed-sd6)
  (closed-cb2) (not-closed-sd3) (not-closed-sd10) (closed-cb3)
  (not-updated-cb3) (updated-cb3) (closed-sd1) (not-closed-cb2))
 (:action ugly1close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd9) (not (not-closed-sd9))))
 (:action ugly2open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly3close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly4close_sd6-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly5open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly6close_sd6-endof-condeffs :parameters () :precondition
  (and (do-close_sd6-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly7open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly8close_sd7-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly9close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly10wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly11wait_cb2-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly12close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly13close_sd1-endof-condeffs :parameters () :precondition
  (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly14open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly15wait_cb2-condeff1-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd7) (closed-sd6)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly16wait_cb2-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly17close_sd1-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly18close_sd6-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly19open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly20close_sd10 :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd10) (not (not-closed-sd10))))
 (:action ugly21close_sd8-condeff0-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly22open-cb3 :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly23close_sd1-condeff0-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly24open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly25close_sd3-endof-condeffs :parameters () :precondition
  (and (do-close_sd3-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))))
 (:action ugly26close_sd8-endof-condeffs :parameters () :precondition
  (and (do-close_sd8-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))))
 (:action ugly27wait_cb2-condeff0-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd3) (closed-sd6)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly28close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly29open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly30close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly31close_sd3-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly32close_sd6-condeff0-yes :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd3) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly33close_sd6-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly34wait_cb2-condeff2-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd8)) :effect
  (and (done-2) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly35close_sd8-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly36close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly37open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly38close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly39close_sd6-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly40close_sd7-endof-condeffs :parameters () :precondition
  (and (do-close_sd7-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))))
 (:action ugly41close_sd3-condeff0-yes :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd6) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly42open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly43close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly44wait_cb2-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly45open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly46close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly47wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly48open-sd11 :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly49wait_cb2-condeff2-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd8)) :effect (and (done-2)))
 (:action ugly50open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly51wait_cb1-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly52wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly53close_sd7-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly54wait_cb2-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly55close_sd3-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly56close_sd7-condeff0-yes :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd6) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly57close_sd6-condeff1-yes :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd7) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly58wait_cb2-endof-condeffs :parameters () :precondition
  (and (do-wait_cb2-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly59close_cb3 :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly60wait_cb3 :parameters () :precondition
  (and (do-normal) (not-updated-cb3)) :effect
  (and (not-closed-cb3) (updated-cb3) (not (closed-cb3))
       (not (not-updated-cb3))))
 (:action ugly61wait_cb1-endof-condeffs :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0))))
 (:action ugly62close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly63open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly64close_sd11 :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd11) (not (not-closed-sd11))))) 