
(define (domain grounded-strips-psr) (:requirements :strips :action-costs)
 (:predicates (not-closed-sd12) (closed-sd3) (not-closed-cb3) (done-1)
  (not-closed-cb1) (not-closed-sd3) (closed-cb2) (closed-cb4) (updated-cb1)
  (not-closed-cb2) (done-0) (not-closed-sd11) (do-close_sd13-condeffs)
  (not-closed-sd4) (updated-cb4) (closed-sd2) (updated-cb2)
  (do-wait_cb4-condeffs) (not-closed-sd10) (not-closed-sd6) (closed-cb3)
  (do-wait_cb3-condeffs) (closed-sd4) (do-wait_cb1-condeffs) (closed-sd11)
  (not-updated-cb3) (not-closed-sd7) (not-updated-cb1) (not-closed-cb4)
  (closed-cb1) (closed-sd6) (goal-reached) (not-closed-sd2) (updated-cb3)
  (closed-sd1) (closed-sd8) (not-closed-sd8) (do-close_sd4-condeffs)
  (not-closed-sd5) (do-close_sd1-condeffs) (closed-sd5)
  (do-close_sd11-condeffs) (do-close_sd12-condeffs) (done-2) (closed-sd7)
  (not-closed-sd13) (do-close_sd10-condeffs) (closed-sd12) (not-updated-cb4)
  (not-updated-cb2) (not-closed-sd9) (closed-sd13) (closed-sd9) (closed-sd10)
  (do-normal) (not-closed-sd1))
 (:functions (total-cost) - number)
 (:action ugly1ugly74close_sd12-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-cb4)) :effect (and (done-1)))
 (:action ugly2ugly91close_sd4-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly3ugly76close_sd13-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-cb4)) :effect (and (done-1)))
 (:action ugly4ugly30wait_cb3-condeff2-no-0 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd13)) :effect (and (done-2)))
 (:action ugly5ugly102close_sd13-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly6ugly77wait_cb3 :parameters () :precondition
  (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action ugly7ugly117close_sd10-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-cb4)) :effect (and (done-1)))
 (:action ugly8ugly9close_sd11-endof-condeffs :parameters () :precondition
  (and (do-close_sd11-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly9ugly81close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd8) (not (not-closed-sd8))))
 (:action ugly10ugly94wait_cb4-condeff2-no-0 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd13)) :effect (and (done-2)))
 (:action ugly11ugly51open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd10) (not (closed-sd10))))
 (:action ugly12ugly114open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd5) (not (closed-sd5))))
 (:action ugly13ugly16close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly14ugly57close_sd12-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-cb4)) :effect (and (done-0)))
 (:action ugly15ugly27close_sd11 :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action ugly16ugly34open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly17ugly26wait_cb3-condeff1-yes :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd10)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly18ugly32close_sd10-condeff0-yes :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly19ugly82close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly20ugly28close_sd12-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly21ugly18close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly22ugly73wait_cb3-condeff0-yes :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd4)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly23ugly47close_sd1-endof-condeffs :parameters () :precondition
  (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly24ugly95close_sd1-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly25ugly12wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly26ugly43wait_cb4-condeff1-no-2 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly27ugly69close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly28ugly19close_sd10 :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action ugly29ugly68close_sd12-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly30ugly46close_sd4-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-cb4)) :effect (and (done-1)))
 (:action ugly31ugly100close_sd11-condeff2-no-0 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd10)) :effect (and (done-2)))
 (:action ugly32ugly83wait_cb4-endof-condeffs :parameters () :precondition
  (and (do-wait_cb4-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb4-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly33ugly113wait_cb3-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly34ugly67open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd9) (not (closed-sd9))))
 (:action ugly35ugly17close_sd12-condeff2-yes :parameters () :precondition
  (and (do-close_sd12-condeffs) (closed-sd13) (closed-cb4)) :effect
  (and (done-2) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly36ugly103wait_cb3-condeff2-yes :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd13) (closed-sd11)) :effect
  (and (done-2) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly37ugly99wait_cb4-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly38ugly107reach-goal-1 :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb1) (closed-cb4) (closed-sd12) (closed-sd11) (closed-cb3))
  :effect (and (goal-reached)))
 (:action ugly39ugly1close_sd11-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd4)) :effect (and (done-1)))
 (:action ugly40ugly75reach-goal-5 :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb1) (closed-cb4) (closed-sd12) (closed-sd11) (closed-cb3))
  :effect (and (goal-reached)))
 (:action ugly41ugly50open-sd13 :parameters () :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd13) (not (closed-sd13))))
 (:action ugly42ugly8close_sd13 :parameters () :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd13-condeffs) (closed-sd13)
       (not (not-closed-sd13))))
 (:action ugly43ugly108open-cb3 :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly44ugly59reach-goal-3 :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb1) (closed-cb4) (closed-sd12) (closed-sd11) (closed-cb3))
  :effect (and (goal-reached)))
 (:action ugly45ugly87close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly46ugly98close_sd11-condeff0-yes :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd13) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly47ugly38wait_cb4-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly48ugly10close_sd4-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly49ugly3close_sd11-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-cb4)) :effect (and (done-1)))
 (:action ugly50ugly52open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd3) (not (closed-sd3))))
 (:action ugly51ugly55open-cb4 :parameters () :precondition
  (and (do-normal) (closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly52ugly62close_sd12-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly53ugly89open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd2) (not (closed-sd2))))
 (:action ugly54ugly101close_sd10-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly55ugly65wait_cb3-endof-condeffs :parameters () :precondition
  (and (do-wait_cb3-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly56ugly44open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd6) (not (closed-sd6))))
 (:action ugly57ugly21close_sd12-condeff0-yes :parameters () :precondition
  (and (do-close_sd12-condeffs) (closed-sd4) (closed-sd11) (closed-cb4))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly58ugly79close_sd11-condeff2-no-2 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-cb4)) :effect (and (done-2)))
 (:action ugly59ugly4close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd9) (not (not-closed-sd9))))
 (:action ugly60ugly7wait_cb1-endof-condeffs :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0))))
 (:action ugly61ugly53close_sd10-endof-condeffs :parameters () :precondition
  (and (do-close_sd10-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly62ugly24close_sd4-condeff1-yes :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd11) (closed-sd12) (closed-cb4))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly63ugly105close_sd12-condeff1-yes :parameters () :precondition
  (and (do-close_sd12-condeffs) (closed-sd10) (closed-sd11) (closed-cb4))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly64ugly39reach-goal-0 :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb1) (closed-cb3) (closed-sd11) (closed-sd12))
  :effect (and (goal-reached)))
 (:action ugly65ugly48close_sd13-condeff0-yes :parameters () :precondition
  (and (do-close_sd13-condeffs) (closed-sd11) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly66ugly71reach-goal-4 :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb1) (closed-cb3) (closed-sd11) (closed-sd12) (closed-cb4))
  :effect (and (goal-reached)))
 (:action ugly67ugly56wait_cb3-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly68ugly23wait_cb3-condeff2-no-1 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd11)) :effect (and (done-2)))
 (:action ugly69ugly92close_sd4-condeff0-yes :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly70ugly85open-sd11 :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd11) (not (closed-sd11))))
 (:action ugly71ugly5wait_cb4-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly72ugly20close_sd12-condeff2-no-1 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-cb4)) :effect (and (done-2)))
 (:action ugly73ugly41close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly74ugly25close_sd13-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly75ugly6close_sd11-condeff2-yes :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd10) (closed-sd12) (closed-cb4))
  :effect (and (done-2) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly76ugly15close_sd12-condeff2-no-0 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd13)) :effect (and (done-2)))
 (:action ugly77ugly40close_sd11-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly78ugly72close_sd12-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly79ugly80wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly80ugly115close_sd12-endof-condeffs :parameters () :precondition
  (and (do-close_sd12-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-close_sd12-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly81ugly31wait_cb4 :parameters () :precondition
  (and (do-normal) (not-updated-cb4)) :effect
  (and (not (do-normal)) (do-wait_cb4-condeffs) (updated-cb4)
       (not (not-updated-cb4))))
 (:action ugly82ugly33wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not-closed-cb2) (updated-cb2) (not (closed-cb2))
       (not (not-updated-cb2))))
 (:action ugly83ugly112wait_cb4-condeff2-yes :parameters () :precondition
  (and (do-wait_cb4-condeffs) (closed-sd13) (closed-sd12)) :effect
  (and (done-2) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly84ugly64close_cb4 :parameters () :precondition
  (and (do-normal) (not-closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb4) (not-updated-cb4) (not (not-closed-cb4))
       (not (updated-cb4))))
 (:action ugly85ugly54wait_cb4-condeff0-yes :parameters () :precondition
  (and (do-wait_cb4-condeffs) (closed-sd4) (closed-sd11) (closed-sd12)) :effect
  (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly86ugly116close_sd13-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly87ugly35close_sd12 :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd12-condeffs) (closed-sd12)
       (not (not-closed-sd12))))
 (:action ugly88ugly90close_sd10-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly89ugly63wait_cb4-condeff1-yes :parameters () :precondition
  (and (do-wait_cb4-condeffs) (closed-sd10) (closed-sd11) (closed-sd12))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly90ugly86wait_cb1-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly91ugly97wait_cb4-condeff2-no-1 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd12)) :effect (and (done-2)))
 (:action ugly92ugly93wait_cb4-condeff0-no-2 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd12)) :effect (and (done-0)))
 (:action ugly93ugly104close_cb3 :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly94ugly110open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd4) (not (closed-sd4))))
 (:action ugly95ugly37close_sd4-endof-condeffs :parameters () :precondition
  (and (do-close_sd4-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly96ugly13close_sd13-endof-condeffs :parameters () :precondition
  (and (do-close_sd13-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd13-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly97ugly111open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd7) (not (closed-sd7))))
 (:action ugly98ugly70close_sd10-condeff1-yes :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-sd11) (closed-sd12) (closed-cb4))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly99ugly106close_sd4-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly100ugly78close_sd11-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly101ugly84open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd1) (not (closed-sd1))))
 (:action ugly102ugly11close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly103ugly45close_sd10-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly104ugly49reach-goal-2 :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb1) (closed-cb3) (closed-cb4) (closed-sd11))
  :effect (and (goal-reached)))
 (:action ugly105ugly22close_sd11-condeff1-yes :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd4) (closed-sd12) (closed-cb4))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly106ugly96close_sd13-condeff1-yes :parameters () :precondition
  (and (do-close_sd13-condeffs) (closed-sd12) (closed-cb4)) :effect
  (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly107ugly2close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly108ugly66close_sd11-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd13)) :effect (and (done-0)))
 (:action ugly109ugly36wait_cb4-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly110ugly61open-sd12 :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd12) (not (closed-sd12))))
 (:action ugly111ugly58close_sd11-condeff2-no-1 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd12)) :effect (and (done-2)))
 (:action ugly112ugly109close_sd1-condeff0-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly113ugly42reach-goal-7 :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb1) (closed-cb4) (closed-sd12) (closed-sd11))
  :effect (and (goal-reached)))
 (:action ugly114ugly60reach-goal-6 :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb1) (closed-cb3) (closed-cb4) (closed-sd12))
  :effect (and (goal-reached)))
 (:action ugly115ugly29open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly116ugly14open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd8) (not (closed-sd8))))
 (:action ugly117ugly88close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd7) (not (not-closed-sd7))))) 