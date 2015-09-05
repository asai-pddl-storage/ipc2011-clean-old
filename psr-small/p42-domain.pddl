
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (not-closed-sd6) (done-2) (not-updated-cb1) (closed-sd6)
  (do-close_sd2-condeffs) (do-wait_cb2-condeffs) (done-0) (not-closed-sd4)
  (goal-reached) (updated-cb3) (closed-cb3) (do-close_sd5-condeffs)
  (updated-cb1) (not-closed-sd1) (not-updated-cb2) (do-close_sd1-condeffs)
  (do-wait_cb1-condeffs) (not-closed-sd5) (closed-cb1) (not-closed-sd9)
  (not-closed-cb3) (do-close_sd7-condeffs) (not-closed-sd3) (closed-sd11)
  (closed-sd10) (closed-sd3) (updated-cb2) (not-closed-sd10) (closed-sd1)
  (closed-sd7) (closed-sd9) (not-closed-cb1) (closed-cb2) (not-closed-sd8)
  (closed-sd5) (not-closed-sd11) (do-close_sd8-condeffs) (not-closed-cb2)
  (do-normal) (closed-sd2) (closed-sd4) (closed-sd8) (done-1) (not-updated-cb3)
  (not-closed-sd7) (not-closed-sd2) (done-3))
 (:action ugly1wait_cb2-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly2wait_cb1-condeff2-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect (and (done-2)))
 (:action ugly3wait_cb2-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd5)) :effect (and (done-1)))
 (:action ugly4close_cb3 :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly5reach-goal-2 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb2))
  :effect (and (goal-reached)))
 (:action ugly6close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd9) (not (not-closed-sd9))))
 (:action ugly7wait_cb2-condeff2-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd7)) :effect (and (done-2)))
 (:action ugly8wait_cb1-condeff3-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd5)) :effect
  (and (done-3) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly9close_sd8-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly10close_sd7-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly11close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly12close_sd2-condeff0-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly13close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly14close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly15close_sd2-endof-condeffs :parameters () :precondition
  (and (do-close_sd2-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly16close_sd10 :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd10) (not (not-closed-sd10))))
 (:action ugly17close_sd2-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly18close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action ugly19wait_cb3 :parameters () :precondition
  (and (do-normal) (not-updated-cb3)) :effect
  (and (not-closed-cb3) (updated-cb3) (not (closed-cb3))
       (not (not-updated-cb3))))
 (:action ugly20open-cb3 :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly21close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly22open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly23close_sd1-condeff2-no-1 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb2)) :effect (and (done-2)))
 (:action ugly24wait_cb2-condeff2-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd7)) :effect
  (and (done-2) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly25close_sd1-condeff2-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd2)) :effect (and (done-2)))
 (:action ugly26open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly27close_sd7-condeff1-yes :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly28close_sd1-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly29open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly30close_sd5-endof-condeffs :parameters () :precondition
  (and (do-close_sd5-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly31close_sd1-condeff3-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd5) (closed-cb2)) :effect
  (and (done-3) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly32close_sd5-condeff1-yes :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-sd1) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly33close_sd1-condeff3-no-1 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb2)) :effect (and (done-3)))
 (:action ugly34close_sd1-endof-condeffs :parameters () :precondition
  (and (do-close_sd1-condeffs) (done-0) (done-1) (done-2) (done-3)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2)) (not (done-3))))
 (:action ugly35close_sd5-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly36wait_cb2-condeff1-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd5) (closed-sd1)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly37open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly38close_sd1-condeff1-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd8) (closed-cb1)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly39close_sd7-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly40wait_cb2-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly41wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly42wait_cb1-endof-condeffs :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0) (done-1) (done-2) (done-3)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2)) (not (done-3))))
 (:action ugly43wait_cb1-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-1)))
 (:action ugly44wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly45close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly46close_sd8-condeff0-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd1) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly47close_sd8-condeff1-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly48wait_cb1-condeff3-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd5)) :effect (and (done-3)))
 (:action ugly49wait_cb1-condeff1-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd8) (closed-sd1)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly50reach-goal-3 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb2)
       (closed-sd1))
  :effect (and (goal-reached)))
 (:action ugly51close_sd2-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly52wait_cb1-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly53close_sd1-condeff2-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd2) (closed-cb2)) :effect
  (and (done-2) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly54close_sd1-condeff0-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd7) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly55wait_cb2-condeff3-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd8)) :effect (and (done-3)))
 (:action ugly56wait_cb2-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd1)) :effect (and (done-1)))
 (:action ugly57wait_cb1-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly58reach-goal-1 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb2)
       (closed-sd1) (closed-cb1))
  :effect (and (goal-reached)))
 (:action ugly59open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly60open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly61close_sd7-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly62open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly63close_sd5-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd1)) :effect (and (done-1)))
 (:action ugly64open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly65close_sd8-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly66open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly67close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly68wait_cb1-condeff2-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd2)) :effect
  (and (done-2) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly69close_sd1-condeff3-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd5)) :effect (and (done-3)))
 (:action ugly70close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly71open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly72close_sd8-endof-condeffs :parameters () :precondition
  (and (do-close_sd8-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly73wait_cb2-condeff0-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd2) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly74reach-goal-0 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd1))
  :effect (and (goal-reached)))
 (:action ugly75close_sd5-condeff0-yes :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly76close_sd1-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly77wait_cb2-condeff3-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd8)) :effect
  (and (done-3) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly78close_sd2-condeff1-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd1) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly79close_sd1-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-1)))
 (:action ugly80close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly81close_sd5-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly82wait_cb2-endof-condeffs :parameters () :precondition
  (and (do-wait_cb2-condeffs) (done-0) (done-1) (done-2) (done-3)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2)) (not (done-3))))
 (:action ugly83open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly84open-sd11 :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly85wait_cb1-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly86close_sd11 :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd11) (not (not-closed-sd11))))
 (:action ugly87close_sd1-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly88open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly89close_sd7-condeff0-yes :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd1) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly90close_sd7-endof-condeffs :parameters () :precondition
  (and (do-close_sd7-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly91close_sd2-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd1)) :effect (and (done-1)))
 (:action ugly92close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly93wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd7) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly94close_sd8-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-cb1)) :effect (and (done-0)))) 