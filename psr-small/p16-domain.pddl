
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (closed-sd9) (done-2) (do-close_sd11-condeffs) (closed-cb1)
  (closed-sd3) (not-closed-sd5) (do-close_sd7-condeffs) (not-closed-sd4)
  (do-wait_cb1-condeffs) (not-closed-sd12) (closed-sd8) (closed-sd1)
  (do-close_sd6-condeffs) (do-close_sd1-condeffs) (not-closed-sd2)
  (not-closed-sd3) (not-updated-cb2) (done-1) (not-updated-cb1) (updated-cb2)
  (closed-sd7) (not-closed-cb1) (not-closed-sd9) (not-closed-sd10)
  (not-closed-sd7) (not-closed-cb2) (not-closed-sd11) (not-closed-sd1)
  (not-closed-sd8) (do-close_sd9-condeffs) (closed-cb2) (not-closed-sd6)
  (updated-cb1) (closed-sd6) (closed-sd11) (closed-sd12) (do-normal)
  (closed-sd10) (closed-sd5) (do-wait_cb2-condeffs) (closed-sd2) (done-0)
  (closed-sd4) (goal-reached))
 (:action ugly1ugly67reach-goal-3 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd9)
       (closed-sd6) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly2ugly102close_sd6-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly3ugly103reach-goal-8 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd6)
       (closed-sd9) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly4ugly77reach-goal-5 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd9)
       (closed-sd6) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly5ugly94close_sd11-endof-condeffs :parameters () :precondition
  (and (do-close_sd11-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly6ugly79close_sd9-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly7ugly33wait_cb1-endof-condeffs :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly8ugly105close_sd11-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly9ugly80close_sd6-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd1)) :effect (and (done-1)))
 (:action ugly10ugly11close_sd6-condeff1-yes :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd1) (closed-sd9) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly11ugly83wait_cb1-condeff2-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd7)) :effect
  (and (done-2) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly12ugly96close_sd9-condeff2-no-0 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd7)) :effect (and (done-2)))
 (:action ugly13ugly53close_sd9-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly14ugly17close_sd9-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly15ugly58reach-goal-7 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd9)
       (closed-sd6) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly16ugly28close_sd6-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly17ugly35close_sd10 :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd10) (not (not-closed-sd10))))
 (:action ugly18ugly27open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly19ugly7close_sd9-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd1)) :effect (and (done-1)))
 (:action ugly20ugly10reach-goal-10 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd6) (closed-sd9) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly21ugly29open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly22ugly19reach-goal-6 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd9) (closed-sd6) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly23ugly74reach-goal-14 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd9) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly24ugly48reach-goal-4 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd6)
       (closed-sd9) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly25ugly12wait_cb2-condeff0-no-2 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly26ugly43wait_cb1-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly27ugly69close_sd9-condeff2-no-2 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-cb2)) :effect (and (done-2)))
 (:action ugly28ugly82close_sd9-endof-condeffs :parameters () :precondition
  (and (do-close_sd9-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly29ugly68close_sd1-condeff0-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly30ugly46wait_cb2-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly31ugly100wait_cb1-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly32ugly20reach-goal-9 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd9)
       (closed-sd6) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly33ugly113close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2)) :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly34ugly1open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly35ugly26close_sd7-condeff0-yes :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly36ugly3wait_cb2-endof-condeffs :parameters () :precondition
  (and (do-wait_cb2-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly37ugly99close_sd7-endof-condeffs :parameters () :precondition
  (and (do-close_sd7-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly38ugly107close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly39ugly23open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly40ugly75close_sd6-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly41ugly50close_sd1-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly42ugly81reach-goal-15 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd9)
       (closed-sd6) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly43ugly108close_sd6-condeff2-no-2 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-cb2)) :effect (and (done-2)))
 (:action ugly44ugly59close_sd11 :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action ugly45ugly87close_sd6-condeff2-no-1 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd9)) :effect (and (done-2)))
 (:action ugly46ugly98wait_cb1-condeff2-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd7)) :effect (and (done-2)))
 (:action ugly47ugly38wait_cb1-condeff1-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd11) (closed-sd9) (closed-sd6)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly48ugly5wait_cb2-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly49ugly76open-sd11 :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly50ugly60close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2)) :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly51ugly13close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly52ugly56open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly53ugly30close_sd7-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly54ugly92close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly55ugly97open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly56ugly66reach-goal-13 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd9)
       (closed-sd6) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly57ugly93close_sd11-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly58ugly8wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly59ugly18close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action ugly60ugly63reach-goal-1 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd9)
       (closed-sd6) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly61ugly45close_sd6-condeff2-yes :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd7) (closed-sd9) (closed-cb2)) :effect
  (and (done-2) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly62ugly32close_sd11-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly63ugly2wait_cb2-condeff2-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd11)) :effect (and (done-2)))
 (:action ugly64ugly54wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly65ugly51reach-goal-12 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd6)
       (closed-sd9) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly66ugly14close_sd12 :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd12) (not (not-closed-sd12))))
 (:action ugly67ugly4open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly68ugly55wait_cb2-condeff1-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd7) (closed-sd6) (closed-sd9)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly69ugly39close_sd11-condeff1-yes :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly70ugly101close_sd1-endof-condeffs :parameters () :precondition
  (and (do-close_sd1-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly71ugly110close_sd9-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly72ugly95wait_cb1-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly73ugly88wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly74ugly15close_sd1-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly75ugly85open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly76ugly65close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly77ugly6close_sd6-condeff0-yes :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd11) (closed-sd9) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly78ugly24close_sd7-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly79ugly34reach-goal-0 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd6)
       (closed-sd9) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly80ugly84close_sd9-condeff2-yes :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd7) (closed-sd6) (closed-cb2)) :effect
  (and (done-2) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly81ugly16close_sd9-condeff0-yes :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd11) (closed-sd6) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly82ugly40open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly83ugly111open-sd12 :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd12) (not (closed-sd12))))
 (:action ugly84ugly36reach-goal-2 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd6) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly85ugly70wait_cb2-condeff2-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd11)) :effect
  (and (done-2) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly86ugly47close_sd9-condeff2-no-1 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd6)) :effect (and (done-2)))
 (:action ugly87ugly89open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly88ugly104close_sd7-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly89ugly72wait_cb2-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly90ugly91close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd8) (not (not-closed-sd8))))
 (:action ugly91ugly41close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly92ugly52close_sd1-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly93ugly21close_sd9-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly94ugly25reach-goal-11 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd9)
       (closed-sd6) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly95ugly109close_sd1-condeff1-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd6) (closed-sd9) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly96ugly37wait_cb2-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly97ugly73close_sd6-condeff2-no-0 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd7)) :effect (and (done-2)))
 (:action ugly98ugly112close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly99ugly49open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly100ugly106open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly101ugly61close_sd7-condeff1-yes :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd6) (closed-sd9) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly102ugly86close_sd7-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly103ugly9close_sd6-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly104ugly44close_sd1-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly105ugly22close_sd11-condeff0-yes :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd9) (closed-sd6) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly106ugly71wait_cb1-condeff1-no-2 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly107ugly42close_sd6-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly108ugly90close_sd6-endof-condeffs :parameters () :precondition
  (and (do-close_sd6-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly109ugly57wait_cb2-condeff0-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd1) (closed-sd6) (closed-sd9)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly110ugly31wait_cb2-condeff1-no-2 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly111ugly64close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly112ugly78close_sd11-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly113ugly62close_sd9-condeff1-yes :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd1) (closed-sd6) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))) 