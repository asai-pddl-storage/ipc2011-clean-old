
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (not-closed-sd1) (do-close_sd8-condeffs) (closed-sd1)
  (do-wait_cb1-condeffs) (do-close_sd1-condeffs) (done-0) (not-closed-sd3)
  (do-close_sd7-condeffs) (not-closed-cb4) (closed-cb2) (do-close_sd3-condeffs)
  (done-2) (not-updated-cb4) (updated-cb2) (do-close_sd5-condeffs) (closed-sd5)
  (do-close_sd4-condeffs) (do-normal) (done-1) (not-closed-sd7)
  (not-closed-sd8) (not-closed-cb1) (not-closed-sd6) (closed-sd8) (closed-sd7)
  (updated-cb3) (closed-cb1) (closed-sd2) (updated-cb1) (closed-sd4)
  (closed-sd6) (not-closed-cb2) (do-close_sd2-condeffs) (not-closed-sd4)
  (do-wait_cb4-condeffs) (closed-cb3) (closed-sd3) (closed-cb4)
  (not-updated-cb3) (not-updated-cb1) (not-closed-sd2) (not-updated-cb2)
  (updated-cb4) (not-closed-sd5) (not-closed-cb3))
 (:action ugly1close_sd2-endof-condeffs :parameters () :precondition
  (and (do-close_sd2-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly2wait_cb4-endof-condeffs :parameters () :precondition
  (and (do-wait_cb4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb4-condeffs)) (not (done-0))))
 (:action ugly3wait_cb3 :parameters () :precondition
  (and (do-normal) (not-updated-cb3)) :effect
  (and (not-closed-cb3) (updated-cb3) (not (closed-cb3))
       (not (not-updated-cb3))))
 (:action ugly4wait_cb1-condeff1-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd3) (closed-sd4) (closed-sd2)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly5close_sd8-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly6close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly7open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly8close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly9close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action ugly10close_sd3-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly11wait_cb1-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly12close_sd3-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly13wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly14wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not-closed-cb2) (updated-cb2) (not (closed-cb2))
       (not (not-updated-cb2))))
 (:action ugly15close_sd3-endof-condeffs :parameters () :precondition
  (and (do-close_sd3-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))))
 (:action ugly16wait_cb4-condeff0-yes :parameters () :precondition
  (and (do-wait_cb4-condeffs) (closed-sd7)) :effect
  (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly17wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly18close_sd2-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly19close_sd1-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly20open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly21close_sd8-condeff0-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd5) (closed-sd2) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly22close_sd7-condeff0-yes :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-cb4)) :effect
  (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly23close_sd2-condeff1-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd8) (closed-sd5) (closed-cb1)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly24wait_cb4 :parameters () :precondition
  (and (do-normal) (not-updated-cb4)) :effect
  (and (not (do-normal)) (do-wait_cb4-condeffs) (updated-cb4)
       (not (not-updated-cb4))))
 (:action ugly25open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly26open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly27close_sd1-condeff0-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly28close_cb4 :parameters () :precondition
  (and (do-normal) (not-closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb4) (not-updated-cb4) (not (not-closed-cb4))
       (not (updated-cb4))))
 (:action ugly29close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly30open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly31wait_cb1-condeff2-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd5)) :effect (and (done-2)))
 (:action ugly32open-cb4 :parameters () :precondition
  (and (do-normal) (closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-cb4) (not (closed-cb4))))
 (:action ugly33close_sd5-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly34close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly35wait_cb1-condeff1-no-2 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect (and (done-1)))
 (:action ugly36close_sd3-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly37close_sd4-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly38open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly39close_sd5-endof-condeffs :parameters () :precondition
  (and (do-close_sd5-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))))
 (:action ugly40close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly41close_sd8-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly42wait_cb1-condeff2-no-2 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect (and (done-2)))
 (:action ugly43close_sd7-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-cb4)) :effect (and (done-0)))
 (:action ugly44open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly45wait_cb1-condeff2-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd8) (closed-sd5) (closed-sd2)) :effect
  (and (done-2) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly46close_sd2-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly47wait_cb1-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd4)) :effect (and (done-1)))
 (:action ugly48close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly49close_sd4-condeff0-yes :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd3) (closed-sd2) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly50close_sd2-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly51wait_cb1-endof-condeffs :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly52close_sd5-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly53close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly54wait_cb1-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd3)) :effect (and (done-1)))
 (:action ugly55open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly56close_sd2-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-cb1)) :effect (and (done-1)))
 (:action ugly57close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly58close_sd2-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly59wait_cb4-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly60close_sd3-condeff0-yes :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd4) (closed-sd2) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly61close_cb3 :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly62close_sd4-endof-condeffs :parameters () :precondition
  (and (do-close_sd4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))))
 (:action ugly63close_sd7-endof-condeffs :parameters () :precondition
  (and (do-close_sd7-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))))
 (:action ugly64close_sd1-endof-condeffs :parameters () :precondition
  (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly65close_sd2-condeff0-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd3) (closed-sd4) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly66close_sd5-condeff0-yes :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-sd8) (closed-sd2) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly67open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly68close_sd4-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly69close_sd8-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly70close_sd4-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly71close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly72close_sd8-endof-condeffs :parameters () :precondition
  (and (do-close_sd8-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))))
 (:action ugly73open-cb3 :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly74close_sd5-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly75wait_cb1-condeff2-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd8)) :effect (and (done-2)))
 (:action ugly76open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly77close_sd2-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd5)) :effect (and (done-1)))) 