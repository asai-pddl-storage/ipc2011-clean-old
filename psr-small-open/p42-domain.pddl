
(define (domain grounded-strips-psr) (:requirements :strips :action-costs)
 (:predicates (done-0) (closed-cb3) (not-closed-sd10) (closed-sd5)
  (not-updated-cb1) (closed-sd10) (not-closed-cb1) (do-close_sd8-condeffs)
  (closed-sd11) (closed-sd4) (closed-sd6) (do-normal) (not-closed-sd2)
  (do-close_sd7-condeffs) (closed-cb1) (closed-sd3) (updated-cb3) (done-2)
  (updated-cb1) (closed-cb2) (not-closed-cb2) (do-wait_cb1-condeffs)
  (not-closed-sd3) (not-updated-cb2) (do-close_sd2-condeffs)
  (do-close_sd5-condeffs) (goal-reached) (closed-sd2) (not-updated-cb3)
  (closed-sd7) (not-closed-sd11) (closed-sd1) (not-closed-sd5)
  (do-close_sd1-condeffs) (not-closed-sd9) (closed-sd8) (done-1)
  (not-closed-sd8) (not-closed-sd7) (not-closed-sd4) (not-closed-cb3)
  (do-wait_cb2-condeffs) (not-closed-sd1) (not-closed-sd6) (closed-sd9)
  (updated-cb2) (done-3))
 (:functions (total-cost) - number)
 (:action ugly1ugly74ugly1wait_cb2-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly2ugly91ugly27close_sd7-condeff1-yes :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly3ugly76ugly59open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd10) (not (closed-sd10))))
 (:action ugly4ugly30ugly21close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly5ugly3ugly76close_sd1-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly6ugly7ugly79close_sd1-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-1)))
 (:action ugly7ugly79ugly62open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly8ugly92ugly47close_sd8-condeff1-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly9ugly49ugly87close_sd1-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly10ugly13ugly31close_sd1-condeff3-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd5) (closed-cb2)) :effect
  (and (done-3) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly11ugly54ugly57wait_cb1-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly12ugly24ugly78close_sd2-condeff1-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd1) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly13ugly31ugly66open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly14ugly23ugly65close_sd8-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd8-condeffs) (not-closed-cb2)) :effect
  (and (done-1)))
 (:action ugly15ugly29ugly37open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd6) (not (closed-sd6))))
 (:action ugly16ugly6ugly7wait_cb2-condeff2-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd7)) :effect (and (done-2)))
 (:action ugly17ugly25ugly64open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd3) (not (closed-sd3))))
 (:action ugly18ugly15ugly29open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd7) (not (closed-sd7))))
 (:action ugly19ugly70ugly32close_sd5-condeff1-yes :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-sd1) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly20ugly44ugly71open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd4) (not (closed-sd4))))
 (:action ugly21ugly8ugly92close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly22ugly39ugly11close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly23ugly65ugly52wait_cb1-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly24ugly78ugly26open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd2) (not (closed-sd2))))
 (:action ugly25ugly64ugly41wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly26ugly42ugly94close_sd8-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd8-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly27ugly12ugly24wait_cb2-condeff2-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd7)) :effect
  (and (done-2) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly28ugly61ugly10close_sd7-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-cb2)) :effect
  (and (done-1)))
 (:action ugly29ugly37ugly38close_sd1-condeff1-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd8) (closed-cb1)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly30ugly21ugly8wait_cb1-condeff3-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd5)) :effect
  (and (done-3) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly31ugly66ugly45close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly32ugly18ugly15close_sd2-endof-condeffs :parameters ()
  :precondition (and (do-close_sd2-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly33ugly68ugly90close_sd7-endof-condeffs :parameters ()
  :precondition (and (do-close_sd7-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly34ugly69ugly67close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly35ugly20ugly44wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly36ugly75ugly16close_sd10 :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd10) (not (not-closed-sd10))))
 (:action ugly37ugly38ugly60open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd1) (not (closed-sd1))))
 (:action ugly38ugly60ugly43wait_cb1-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-1)))
 (:action ugly39ugly11ugly54close_sd1-condeff0-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd7) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly40ugly73ugly72close_sd8-endof-condeffs :parameters ()
  :precondition (and (do-close_sd8-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly41ugly83ugly36wait_cb2-condeff1-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd5) (closed-sd1)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly42ugly94ugly50reach-goal-3 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb2)
       (closed-sd1))
  :effect (and (goal-reached)))
 (:action ugly43ugly89ugly9close_sd8-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly44ugly71ugly40wait_cb2-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly45ugly55ugly81close_sd5-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly46ugly48ugly93wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd7) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly47ugly51ugly28close_sd1-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-sd8)) :effect
  (and (done-1)))
 (:action ugly48ugly93ugly84open-sd11 :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd11) (not (closed-sd11))))
 (:action ugly49ugly87ugly58reach-goal-1 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb2)
       (closed-sd1) (closed-cb1))
  :effect (and (goal-reached)))
 (:action ugly50ugly4ugly30close_sd5-endof-condeffs :parameters ()
  :precondition (and (do-close_sd5-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly51ugly28ugly61close_sd7-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly52ugly88ugly35close_sd5-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-cb2)) :effect
  (and (done-1)))
 (:action ugly53ugly63ugly19wait_cb3 :parameters () :precondition
  (and (do-normal) (not-updated-cb3)) :effect
  (and (not-closed-cb3) (updated-cb3) (not (closed-cb3))
       (not (not-updated-cb3))))
 (:action ugly54ugly57ugly85wait_cb1-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly55ugly81ugly17close_sd2-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly56ugly77ugly80close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly57ugly85ugly86close_sd11 :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd11) (not (not-closed-sd11))))
 (:action ugly58ugly2ugly91close_sd2-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd1)) :effect (and (done-1)))
 (:action ugly59ugly34ugly69close_sd1-condeff3-no-0 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-sd5)) :effect
  (and (done-3)))
 (:action ugly60ugly43ugly89close_sd7-condeff0-yes :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd1) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly61ugly10ugly13close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly62ugly46ugly48wait_cb1-condeff3-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd5)) :effect (and (done-3)))
 (:action ugly63ugly19ugly70close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly64ugly41ugly83open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd8) (not (closed-sd8))))
 (:action ugly65ugly52ugly88open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd9) (not (closed-sd9))))
 (:action ugly66ugly45ugly55wait_cb2-condeff3-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd8)) :effect (and (done-3)))
 (:action ugly67ugly56ugly77wait_cb2-condeff3-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd8)) :effect
  (and (done-3) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly68ugly90ugly14close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly69ugly67ugly56wait_cb2-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd1)) :effect (and (done-1)))
 (:action ugly70ugly32ugly18close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action ugly71ugly40ugly73wait_cb2-condeff0-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd2) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly72ugly53ugly63close_sd5-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-sd1)) :effect
  (and (done-1)))
 (:action ugly73ugly72ugly53close_sd1-condeff2-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd2) (closed-cb2)) :effect
  (and (done-2) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly74ugly1ugly74reach-goal-0 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd1))
  :effect (and (goal-reached)))
 (:action ugly75ugly16ugly6close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd9) (not (not-closed-sd9))))
 (:action ugly76ugly59ugly34close_sd1-endof-condeffs :parameters ()
  :precondition
  (and (do-close_sd1-condeffs) (done-0) (done-1) (done-2) (done-3)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2)) (not (done-3))))
 (:action ugly77ugly80ugly22open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd5) (not (closed-sd5))))
 (:action ugly78ugly26ugly42wait_cb1-endof-condeffs :parameters ()
  :precondition
  (and (do-wait_cb1-condeffs) (done-0) (done-1) (done-2) (done-3)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2)) (not (done-3))))
 (:action ugly79ugly62ugly46close_sd8-condeff0-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd1) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly80ugly22ugly39close_sd7-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly81ugly17ugly25close_sd1-condeff2-no-0 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-sd2)) :effect
  (and (done-2)))
 (:action ugly82ugly82ugly82wait_cb2-endof-condeffs :parameters ()
  :precondition
  (and (do-wait_cb2-condeffs) (done-0) (done-1) (done-2) (done-3)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2)) (not (done-3))))
 (:action ugly83ugly36ugly75close_sd5-condeff0-yes :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly84ugly33ugly68wait_cb1-condeff2-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd2)) :effect
  (and (done-2) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly85ugly86ugly5reach-goal-2 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb2))
  :effect (and (goal-reached)))
 (:action ugly86ugly5ugly3wait_cb2-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd5)) :effect (and (done-1)))
 (:action ugly87ugly58ugly2wait_cb1-condeff2-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect (and (done-2)))
 (:action ugly88ugly35ugly20open-cb3 :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly89ugly9ugly49wait_cb1-condeff1-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd8) (closed-sd1)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly90ugly14ugly23close_sd1-condeff2-no-1 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-cb2)) :effect
  (and (done-2)))
 (:action ugly91ugly27ugly12close_sd2-condeff0-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly92ugly47ugly51close_sd2-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-cb2)) :effect
  (and (done-1)))
 (:action ugly93ugly84ugly33close_sd1-condeff3-no-1 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-cb2)) :effect
  (and (done-3)))
 (:action ugly94ugly50ugly4close_cb3 :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))) 