
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (do-close_sd6-condeffs) (do-close_sd5-condeffs) (closed-sd5)
  (do-normal) (done-2) (not-closed-sd4) (updated-cb2) (done-1)
  (not-updated-cb3) (closed-sd7) (closed-cb3) (updated-cb3) (not-closed-cb3)
  (not-closed-sd6) (do-wait_cb1-condeffs) (do-close_sd1-condeffs)
  (not-closed-cb1) (do-close_sd7-condeffs) (not-closed-sd7) (closed-sd2)
  (done-0) (do-wait_cb3-condeffs) (do-close_sd4-condeffs) (closed-sd3)
  (closed-cb2) (closed-sd4) (updated-cb1) (closed-sd1) (not-updated-cb1)
  (not-closed-sd2) (not-closed-sd5) (not-closed-sd3) (not-closed-cb2)
  (do-close_sd3-condeffs) (closed-sd6) (goal-reached) (not-closed-sd1)
  (closed-cb1) (done-3) (do-close_sd2-condeffs) (not-updated-cb2))
 (:action ugly1close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly2close_sd2-condeff3-no-4 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-cb3)) :effect (and (done-3)))
 (:action ugly3close_sd6-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-cb3)) :effect (and (done-1)))
 (:action ugly4close_sd5-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly5close_sd5-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly6wait_cb3-condeff2-yes :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd6)) :effect
  (and (done-2) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly7wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd6) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly8close_sd2-condeff2-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd3) (closed-sd1) (closed-cb3)) :effect
  (and (done-2) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly9close_sd1-condeff1-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd3) (closed-sd2) (closed-cb3)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly10wait_cb1-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd3)) :effect (and (done-1)))
 (:action ugly11open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly12close_sd6-endof-condeffs :parameters () :precondition
  (and (do-close_sd6-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly13reach-goal-15 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-sd2) (closed-sd4) (closed-cb1) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly14reach-goal-25 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-cb1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly15wait_cb3-condeff2-no-0 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd6)) :effect (and (done-2)))
 (:action ugly16reach-goal-24 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd2) (closed-sd4) (closed-cb3) (closed-sd1) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly17wait_cb3-condeff1-no-4 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd1)) :effect (and (done-1)))
 (:action ugly18reach-goal-13 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-cb1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly19reach-goal-29 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-cb1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly20close_sd3-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd2)) :effect (and (done-1)))
 (:action ugly21open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly22close_sd2-condeff2-no-2 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-cb3)) :effect (and (done-2)))
 (:action ugly23close_sd1-condeff0-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd6) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly24close_sd5-endof-condeffs :parameters () :precondition
  (and (do-close_sd5-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly25close_sd7-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd2)) :effect (and (done-1)))
 (:action ugly26close_sd1-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb3)) :effect (and (done-1)))
 (:action ugly27reach-goal-22 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb3) (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly28close_sd3-condeff0-yes :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd2) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly29close_sd7-endof-condeffs :parameters () :precondition
  (and (do-close_sd7-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly30wait_cb1-condeff1-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd3) (closed-sd2)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly31close_sd5-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd1)) :effect (and (done-1)))
 (:action ugly32close_sd1-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly33close_sd2-condeff0-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd3) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly34wait_cb3-condeff1-no-3 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd2)) :effect (and (done-1)))
 (:action ugly35close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly36reach-goal-4 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd2) (closed-cb3) (closed-sd1) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly37close_sd3-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd1)) :effect (and (done-1)))
 (:action ugly38close_sd3-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-cb3)) :effect (and (done-1)))
 (:action ugly39close_sd6-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly40wait_cb1-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly41close_sd5-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly42close_sd2-condeff3-no-0 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd7)) :effect (and (done-3)))
 (:action ugly43close_sd4-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly44reach-goal-17 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-cb1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly45wait_cb1-condeff2-no-2 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd4)) :effect (and (done-2)))
 (:action ugly46open-cb3 :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly47close_sd5-condeff1-yes :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-sd7) (closed-sd4) (closed-sd2)
       (closed-sd1) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly48open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly49close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly50close_sd2-condeff2-no-0 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd3)) :effect (and (done-2)))
 (:action ugly51close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly52close_sd4-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly53wait_cb3-endof-condeffs :parameters () :precondition
  (and (do-wait_cb3-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly54wait_cb3-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd5)) :effect (and (done-1)))
 (:action ugly55reach-goal-14 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb3) (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly56close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly57open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly58reach-goal-1 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-cb1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly59close_sd4-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd2)) :effect (and (done-1)))
 (:action ugly60wait_cb3-condeff0-yes :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd3) (closed-sd2) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly61reach-goal-9 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-cb1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly62close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action ugly63close_sd2-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd5)) :effect (and (done-1)))
 (:action ugly64close_sd4-condeff0-yes :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd7) (closed-sd5) (closed-sd2)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly65reach-goal-2 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb3) (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly66close_sd6-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly67open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly68close_sd7-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly69open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly70close_sd5-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd4)) :effect (and (done-1)))
 (:action ugly71close_sd7-condeff1-yes :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd5) (closed-sd4) (closed-sd2)
       (closed-sd1) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly72wait_cb3-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly73wait_cb1-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect (and (done-1)))
 (:action ugly74reach-goal-27 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-sd2) (closed-cb1) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly75close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly76close_sd2-condeff3-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd7) (closed-sd5) (closed-sd4)
       (closed-sd1) (closed-cb3))
  :effect (and (done-3) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly77close_sd7-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly78close_sd1-condeff2-no-1 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd5)) :effect (and (done-2)))
 (:action ugly79reach-goal-16 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd2) (closed-sd4) (closed-sd1) (closed-cb3) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly80reach-goal-6 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb3) (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly81wait_cb3 :parameters () :precondition
  (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action ugly82close_sd3-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly83close_sd2-condeff1-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd7) (closed-sd5) (closed-sd4)
       (closed-cb1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly84wait_cb1-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly85close_cb3 :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly86close_sd2-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly87close_sd1-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd2)) :effect (and (done-1)))
 (:action ugly88wait_cb3-condeff1-yes :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd7) (closed-sd5) (closed-sd4)
       (closed-sd2) (closed-sd1))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly89close_sd1-condeff2-no-4 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb3)) :effect (and (done-2)))
 (:action ugly90wait_cb3-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly91close_sd5-condeff0-yes :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-sd7) (closed-sd4) (closed-sd2)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly92reach-goal-28 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd2) (closed-cb3) (closed-sd1) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly93reach-goal-11 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-sd2) (closed-cb1) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly94close_sd5-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly95close_sd4-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd1)) :effect (and (done-1)))
 (:action ugly96close_sd2-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly97reach-goal-3 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-sd2) (closed-cb1) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly98reach-goal-5 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-cb1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly99close_sd2-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd4)) :effect (and (done-1)))
 (:action ugly100close_sd1-condeff2-no-2 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd4)) :effect (and (done-2)))
 (:action ugly101close_sd3-condeff1-yes :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd2) (closed-sd1) (closed-cb3)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly102reach-goal-7 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-sd2) (closed-sd4) (closed-cb1) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly103close_sd7-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly104reach-goal-26 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb3) (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly105reach-goal-8 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd2) (closed-sd4) (closed-cb3) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly106close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly107close_sd7-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd5)) :effect (and (done-1)))
 (:action ugly108close_sd5-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd2)) :effect (and (done-1)))
 (:action ugly109close_sd1-condeff2-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd7) (closed-sd5) (closed-sd4)
       (closed-sd2) (closed-cb3))
  :effect (and (done-2) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly110close_sd7-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd4)) :effect (and (done-1)))
 (:action ugly111reach-goal-23 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-sd2) (closed-sd4) (closed-cb1) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly112reach-goal-10 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb3) (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly113reach-goal-31 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly114close_sd4-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly115close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly116close_sd3-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly117close_sd7-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd1)) :effect (and (done-1)))
 (:action ugly118close_sd1-condeff2-no-3 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd2)) :effect (and (done-2)))
 (:action ugly119open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly120wait_cb1-condeff2-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd7)) :effect (and (done-2)))
 (:action ugly121open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly122close_sd4-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly123close_sd2-condeff3-no-1 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd5)) :effect (and (done-3)))
 (:action ugly124close_sd2-endof-condeffs :parameters () :precondition
  (and (do-close_sd2-condeffs) (done-0) (done-1) (done-2) (done-3)) :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2)) (not (done-3))))
 (:action ugly125close_sd3-endof-condeffs :parameters () :precondition
  (and (do-close_sd3-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly126close_sd7-condeff0-yes :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd5) (closed-sd4) (closed-sd2)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly127close_sd4-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-cb3)) :effect (and (done-1)))
 (:action ugly128reach-goal-12 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd2) (closed-cb3) (closed-sd1) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly129wait_cb1-endof-condeffs :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly130close_sd7-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly131close_sd4-condeff1-yes :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd7) (closed-sd5) (closed-sd2)
       (closed-sd1) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly132reach-goal-20 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd2) (closed-cb3) (closed-sd1) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly133reach-goal-19 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-sd2) (closed-cb1) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly134wait_cb1-condeff2-no-3 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect (and (done-2)))
 (:action ugly135close_sd1-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd3)) :effect (and (done-1)))
 (:action ugly136close_sd6-condeff0-yes :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd1) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly137wait_cb3-condeff0-no-2 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly138reach-goal-0 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd2) (closed-sd4) (closed-sd1) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly139close_sd2-condeff2-no-1 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd1)) :effect (and (done-2)))
 (:action ugly140wait_cb1-condeff2-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd7) (closed-sd5) (closed-sd4)
       (closed-sd2))
  :effect (and (done-2) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly141wait_cb3-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly142reach-goal-18 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb3) (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly143close_sd2-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly144close_sd1-condeff2-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd7)) :effect (and (done-2)))
 (:action ugly145close_sd4-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly146wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly147close_sd5-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-cb3)) :effect (and (done-1)))
 (:action ugly148open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly149wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not-closed-cb2) (updated-cb2) (not (closed-cb2))
       (not (not-updated-cb2))))
 (:action ugly150wait_cb1-condeff2-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd5)) :effect (and (done-2)))
 (:action ugly151close_sd5-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly152close_sd1-endof-condeffs :parameters () :precondition
  (and (do-close_sd1-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly153wait_cb3-condeff1-no-2 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd4)) :effect (and (done-1)))
 (:action ugly154close_sd4-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd5)) :effect (and (done-1)))
 (:action ugly155reach-goal-21 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-cb1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly156close_sd4-endof-condeffs :parameters () :precondition
  (and (do-close_sd4-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly157close_sd2-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-cb1)) :effect (and (done-1)))
 (:action ugly158close_sd2-condeff3-no-2 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd4)) :effect (and (done-3)))
 (:action ugly159close_sd2-condeff3-no-3 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd1)) :effect (and (done-3)))
 (:action ugly160close_sd1-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly161close_sd7-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-cb3)) :effect (and (done-1)))
 (:action ugly162close_sd6-condeff1-yes :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-cb3)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly163reach-goal-30 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb3) (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))) 