
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (closed-sd1) (goal-reached) (not-closed-sd3)
  (do-close_sd1-condeffs) (do-wait_cb1-condeffs) (done-1) (not-closed-sd7)
  (do-close_sd11-condeffs) (closed-sd6) (closed-sd4) (do-close_sd7-condeffs)
  (not-closed-cb1) (not-updated-cb1) (updated-cb2) (closed-sd5)
  (not-closed-cb2) (do-normal) (not-closed-sd1) (not-closed-sd9)
  (not-closed-sd10) (do-close_sd9-condeffs) (not-closed-sd8) (closed-sd12)
  (closed-sd11) (not-closed-sd2) (not-closed-sd12) (do-wait_cb2-condeffs)
  (closed-cb2) (closed-sd9) (closed-sd10) (closed-sd2) (do-close_sd6-condeffs)
  (done-2) (not-closed-sd4) (closed-sd7) (closed-sd8) (closed-cb1)
  (not-closed-sd6) (not-closed-sd11) (closed-sd3) (not-updated-cb2) (done-0)
  (not-closed-sd5) (updated-cb1))
 (:action ugly1open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly2wait_cb2-condeff2-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd11)) :effect (and (done-2)))
 (:action ugly3wait_cb2-endof-condeffs :parameters () :precondition
  (and (do-wait_cb2-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly4open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly5wait_cb2-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly6close_sd6-condeff0-yes :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd11) (closed-sd9) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly7close_sd9-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd1)) :effect (and (done-1)))
 (:action ugly8wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly9close_sd6-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly10reach-goal-10 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd6) (closed-sd9) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly11close_sd6-condeff1-yes :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd1) (closed-sd9) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly12wait_cb2-condeff0-no-2 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly13close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly14close_sd12 :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd12) (not (not-closed-sd12))))
 (:action ugly15close_sd1-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly16close_sd9-condeff0-yes :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd11) (closed-sd6) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly17close_sd9-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly18close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action ugly19reach-goal-6 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd9) (closed-sd6) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly20reach-goal-9 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd9)
       (closed-sd6) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly21close_sd9-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly22close_sd11-condeff0-yes :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd9) (closed-sd6) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly23open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly24close_sd7-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly25reach-goal-11 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd9)
       (closed-sd6) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly26close_sd7-condeff0-yes :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly27open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly28close_sd6-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly29open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly30close_sd7-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly31wait_cb2-condeff1-no-2 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly32close_sd11-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly33wait_cb1-endof-condeffs :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly34reach-goal-0 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd6)
       (closed-sd9) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly35close_sd10 :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd10) (not (not-closed-sd10))))
 (:action ugly36reach-goal-2 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd6) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly37wait_cb2-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly38wait_cb1-condeff1-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd11) (closed-sd9) (closed-sd6)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly39close_sd11-condeff1-yes :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly40open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly41close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly42close_sd6-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly43wait_cb1-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly44close_sd1-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly45close_sd6-condeff2-yes :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd7) (closed-sd9) (closed-cb2)) :effect
  (and (done-2) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly46wait_cb2-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly47close_sd9-condeff2-no-1 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd6)) :effect (and (done-2)))
 (:action ugly48reach-goal-4 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd6)
       (closed-sd9) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly49open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly50close_sd1-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly51reach-goal-12 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd6)
       (closed-sd9) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly52close_sd1-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly53close_sd9-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly54wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly55wait_cb2-condeff1-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd7) (closed-sd6) (closed-sd9)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly56open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly57wait_cb2-condeff0-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd1) (closed-sd6) (closed-sd9)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly58reach-goal-7 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd9)
       (closed-sd6) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly59close_sd11 :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action ugly60close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2)) :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly61close_sd7-condeff1-yes :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd6) (closed-sd9) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly62close_sd9-condeff1-yes :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd1) (closed-sd6) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly63reach-goal-1 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd9)
       (closed-sd6) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly64close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly65close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly66reach-goal-13 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd9)
       (closed-sd6) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly67reach-goal-3 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd9)
       (closed-sd6) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly68close_sd1-condeff0-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly69close_sd9-condeff2-no-2 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-cb2)) :effect (and (done-2)))
 (:action ugly70wait_cb2-condeff2-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd11)) :effect
  (and (done-2) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly71wait_cb1-condeff1-no-2 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly72wait_cb2-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly73close_sd6-condeff2-no-0 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd7)) :effect (and (done-2)))
 (:action ugly74reach-goal-14 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd9) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly75close_sd6-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly76open-sd11 :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly77reach-goal-5 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd9)
       (closed-sd6) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly78close_sd11-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly79close_sd9-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly80close_sd6-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd1)) :effect (and (done-1)))
 (:action ugly81reach-goal-15 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd9)
       (closed-sd6) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly82close_sd9-endof-condeffs :parameters () :precondition
  (and (do-close_sd9-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly83wait_cb1-condeff2-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd7)) :effect
  (and (done-2) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly84close_sd9-condeff2-yes :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd7) (closed-sd6) (closed-cb2)) :effect
  (and (done-2) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly85open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly86close_sd7-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly87close_sd6-condeff2-no-1 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd9)) :effect (and (done-2)))
 (:action ugly88wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly89open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly90close_sd6-endof-condeffs :parameters () :precondition
  (and (do-close_sd6-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly91close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd8) (not (not-closed-sd8))))
 (:action ugly92close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly93close_sd11-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly94close_sd11-endof-condeffs :parameters () :precondition
  (and (do-close_sd11-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly95wait_cb1-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly96close_sd9-condeff2-no-0 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd7)) :effect (and (done-2)))
 (:action ugly97open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly98wait_cb1-condeff2-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd7)) :effect (and (done-2)))
 (:action ugly99close_sd7-endof-condeffs :parameters () :precondition
  (and (do-close_sd7-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly100wait_cb1-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly101close_sd1-endof-condeffs :parameters () :precondition
  (and (do-close_sd1-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly102close_sd6-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly103reach-goal-8 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd6)
       (closed-sd9) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly104close_sd7-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly105close_sd11-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly106open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly107close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly108close_sd6-condeff2-no-2 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-cb2)) :effect (and (done-2)))
 (:action ugly109close_sd1-condeff1-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd6) (closed-sd9) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly110close_sd9-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly111open-sd12 :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd12) (not (closed-sd12))))
 (:action ugly112close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly113close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2)) :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))) 