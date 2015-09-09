
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (closed-sd8) (done-2) (do-close_sd10-condeffs)
  (do-close_sd11-condeffs) (not-closed-sd10) (closed-sd10) (not-updated-cb4)
  (do-wait_cb4-condeffs) (do-close_sd13-condeffs) (do-wait_cb3-condeffs)
  (not-closed-sd3) (not-closed-sd6) (closed-sd6) (closed-sd5) (done-0)
  (do-wait_cb1-condeffs) (not-updated-cb1) (closed-sd4) (not-closed-cb4)
  (closed-sd11) (do-close_sd12-condeffs) (closed-sd7) (not-closed-sd9)
  (not-closed-sd5) (not-closed-sd13) (goal-reached) (do-normal)
  (not-closed-sd8) (not-closed-sd12) (not-closed-sd4) (not-closed-sd1)
  (closed-sd13) (not-updated-cb2) (do-close_sd1-condeffs)
  (do-close_sd4-condeffs) (not-closed-cb1) (closed-sd9) (not-closed-sd11)
  (closed-cb1) (closed-cb2) (not-closed-sd2) (updated-cb2) (not-updated-cb3)
  (updated-cb1) (closed-cb3) (updated-cb3) (not-closed-cb2) (done-1)
  (not-closed-cb3) (closed-sd1) (closed-cb4) (closed-sd2) (not-closed-sd7)
  (updated-cb4) (closed-sd12) (closed-sd3))
 (:action ugly1close_sd11-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd4)) :effect (and (done-1)))
 (:action ugly2close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly3close_sd11-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-cb4)) :effect (and (done-1)))
 (:action ugly4close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd9) (not (not-closed-sd9))))
 (:action ugly5wait_cb4-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly6close_sd11-condeff2-yes :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd10) (closed-sd12) (closed-cb4))
  :effect (and (done-2) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly7wait_cb1-endof-condeffs :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0))))
 (:action ugly8close_sd13 :parameters () :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd13-condeffs) (closed-sd13)
       (not (not-closed-sd13))))
 (:action ugly9close_sd11-endof-condeffs :parameters () :precondition
  (and (do-close_sd11-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly10close_sd4-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly11close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly12wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly13close_sd13-endof-condeffs :parameters () :precondition
  (and (do-close_sd13-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd13-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly14open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly15close_sd12-condeff2-no-0 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd13)) :effect (and (done-2)))
 (:action ugly16close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly17close_sd12-condeff2-yes :parameters () :precondition
  (and (do-close_sd12-condeffs) (closed-sd13) (closed-cb4)) :effect
  (and (done-2) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly18close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly19close_sd10 :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action ugly20close_sd12-condeff2-no-1 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-cb4)) :effect (and (done-2)))
 (:action ugly21close_sd12-condeff0-yes :parameters () :precondition
  (and (do-close_sd12-condeffs) (closed-sd4) (closed-sd11) (closed-cb4))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly22close_sd11-condeff1-yes :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd4) (closed-sd12) (closed-cb4))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly23wait_cb3-condeff2-no-1 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd11)) :effect (and (done-2)))
 (:action ugly24close_sd4-condeff1-yes :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd11) (closed-sd12) (closed-cb4))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly25close_sd13-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly26wait_cb3-condeff1-yes :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd10)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly27close_sd11 :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action ugly28close_sd12-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly29open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly30wait_cb3-condeff2-no-0 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd13)) :effect (and (done-2)))
 (:action ugly31wait_cb4 :parameters () :precondition
  (and (do-normal) (not-updated-cb4)) :effect
  (and (not (do-normal)) (do-wait_cb4-condeffs) (updated-cb4)
       (not (not-updated-cb4))))
 (:action ugly32close_sd10-condeff0-yes :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly33wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not-closed-cb2) (updated-cb2) (not (closed-cb2))
       (not (not-updated-cb2))))
 (:action ugly34open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly35close_sd12 :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd12-condeffs) (closed-sd12)
       (not (not-closed-sd12))))
 (:action ugly36wait_cb4-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly37close_sd4-endof-condeffs :parameters () :precondition
  (and (do-close_sd4-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly38wait_cb4-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly39reach-goal-0 :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb1) (closed-cb3) (closed-sd11) (closed-sd12))
  :effect (and (goal-reached)))
 (:action ugly40close_sd11-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly41close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly42reach-goal-7 :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb1) (closed-cb4) (closed-sd12) (closed-sd11))
  :effect (and (goal-reached)))
 (:action ugly43wait_cb4-condeff1-no-2 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly44open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly45close_sd10-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly46close_sd4-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-cb4)) :effect (and (done-1)))
 (:action ugly47close_sd1-endof-condeffs :parameters () :precondition
  (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly48close_sd13-condeff0-yes :parameters () :precondition
  (and (do-close_sd13-condeffs) (closed-sd11) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly49reach-goal-2 :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb1) (closed-cb3) (closed-cb4) (closed-sd11))
  :effect (and (goal-reached)))
 (:action ugly50open-sd13 :parameters () :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd13) (not (closed-sd13))))
 (:action ugly51open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly52open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly53close_sd10-endof-condeffs :parameters () :precondition
  (and (do-close_sd10-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly54wait_cb4-condeff0-yes :parameters () :precondition
  (and (do-wait_cb4-condeffs) (closed-sd4) (closed-sd11) (closed-sd12)) :effect
  (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly55open-cb4 :parameters () :precondition
  (and (do-normal) (closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-cb4) (not (closed-cb4))))
 (:action ugly56wait_cb3-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly57close_sd12-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-cb4)) :effect (and (done-0)))
 (:action ugly58close_sd11-condeff2-no-1 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd12)) :effect (and (done-2)))
 (:action ugly59reach-goal-3 :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb1) (closed-cb4) (closed-sd12) (closed-sd11) (closed-cb3))
  :effect (and (goal-reached)))
 (:action ugly60reach-goal-6 :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb1) (closed-cb3) (closed-cb4) (closed-sd12))
  :effect (and (goal-reached)))
 (:action ugly61open-sd12 :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd12) (not (closed-sd12))))
 (:action ugly62close_sd12-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly63wait_cb4-condeff1-yes :parameters () :precondition
  (and (do-wait_cb4-condeffs) (closed-sd10) (closed-sd11) (closed-sd12))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly64close_cb4 :parameters () :precondition
  (and (do-normal) (not-closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb4) (not-updated-cb4) (not (not-closed-cb4))
       (not (updated-cb4))))
 (:action ugly65wait_cb3-endof-condeffs :parameters () :precondition
  (and (do-wait_cb3-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly66close_sd11-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd13)) :effect (and (done-0)))
 (:action ugly67open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly68close_sd12-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly69close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly70close_sd10-condeff1-yes :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-sd11) (closed-sd12) (closed-cb4))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly71reach-goal-4 :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb1) (closed-cb3) (closed-sd11) (closed-sd12) (closed-cb4))
  :effect (and (goal-reached)))
 (:action ugly72close_sd12-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly73wait_cb3-condeff0-yes :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd4)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly74close_sd12-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-cb4)) :effect (and (done-1)))
 (:action ugly75reach-goal-5 :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb1) (closed-cb4) (closed-sd12) (closed-sd11) (closed-cb3))
  :effect (and (goal-reached)))
 (:action ugly76close_sd13-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-cb4)) :effect (and (done-1)))
 (:action ugly77wait_cb3 :parameters () :precondition
  (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action ugly78close_sd11-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly79close_sd11-condeff2-no-2 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-cb4)) :effect (and (done-2)))
 (:action ugly80wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly81close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd8) (not (not-closed-sd8))))
 (:action ugly82close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly83wait_cb4-endof-condeffs :parameters () :precondition
  (and (do-wait_cb4-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb4-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly84open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly85open-sd11 :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly86wait_cb1-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly87close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly88close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd7) (not (not-closed-sd7))))
 (:action ugly89open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly90close_sd10-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly91close_sd4-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly92close_sd4-condeff0-yes :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly93wait_cb4-condeff0-no-2 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd12)) :effect (and (done-0)))
 (:action ugly94wait_cb4-condeff2-no-0 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd13)) :effect (and (done-2)))
 (:action ugly95close_sd1-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly96close_sd13-condeff1-yes :parameters () :precondition
  (and (do-close_sd13-condeffs) (closed-sd12) (closed-cb4)) :effect
  (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly97wait_cb4-condeff2-no-1 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd12)) :effect (and (done-2)))
 (:action ugly98close_sd11-condeff0-yes :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd13) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly99wait_cb4-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly100close_sd11-condeff2-no-0 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd10)) :effect (and (done-2)))
 (:action ugly101close_sd10-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly102close_sd13-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly103wait_cb3-condeff2-yes :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd13) (closed-sd11)) :effect
  (and (done-2) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly104close_cb3 :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly105close_sd12-condeff1-yes :parameters () :precondition
  (and (do-close_sd12-condeffs) (closed-sd10) (closed-sd11) (closed-cb4))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly106close_sd4-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly107reach-goal-1 :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb1) (closed-cb4) (closed-sd12) (closed-sd11) (closed-cb3))
  :effect (and (goal-reached)))
 (:action ugly108open-cb3 :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly109close_sd1-condeff0-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly110open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly111open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly112wait_cb4-condeff2-yes :parameters () :precondition
  (and (do-wait_cb4-condeffs) (closed-sd13) (closed-sd12)) :effect
  (and (done-2) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly113wait_cb3-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly114open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly115close_sd12-endof-condeffs :parameters () :precondition
  (and (do-close_sd12-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-close_sd12-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly116close_sd13-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly117close_sd10-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-cb4)) :effect (and (done-1)))) 