
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (not-closed-sd9) (do-close_sd1-condeffs) (not-closed-cb1)
  (closed-sd7) (not-closed-sd5) (not-closed-sd12) (closed-sd3) (closed-sd5)
  (not-closed-sd3) (closed-sd9) (do-close_sd6-condeffs) (not-closed-sd7)
  (closed-sd11) (closed-sd12) (closed-sd10) (not-closed-cb2) (not-closed-sd8)
  (not-updated-cb1) (do-close_sd9-condeffs) (done-0) (closed-sd1) (do-normal)
  (do-close_sd11-condeffs) (do-close_sd7-condeffs) (not-closed-sd4)
  (not-updated-cb2) (not-closed-sd1) (not-closed-sd2) (updated-cb1)
  (closed-sd2) (closed-sd4) (not-closed-sd11) (not-closed-sd6)
  (do-wait_cb1-condeffs) (not-closed-sd10) (closed-cb2) (closed-sd8) (done-2)
  (do-wait_cb2-condeffs) (closed-sd6) (done-1) (goal-reached) (updated-cb2)
  (closed-cb1))
 (:action ugly1436393ugly105ugly22ugly19ugly7close_sd9-condeff1-no-0
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd1))
  :effect (and (done-1)))
 (:action ugly1436394ugly44ugly59ugly18ugly27open-sd7 :parameters ()
  :precondition (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly1436395ugly93ugly21ugly29ugly68close_sd1-condeff0-yes :parameters
  () :precondition (and (do-close_sd1-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1436396ugly47ugly38ugly107ugly42close_sd6-condeff0-no-1
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action ugly1436397ugly102ugly86ugly47ugly38wait_cb1-condeff1-yes :parameters
  () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd11) (closed-sd9) (closed-sd6)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1436398ugly35ugly26ugly43ugly108close_sd6-condeff2-no-2
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-cb2))
  :effect (and (done-2)))
 (:action ugly1436399ugly60ugly63ugly2ugly102close_sd6-condeff1-no-2
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-cb2))
  :effect (and (done-1)))
 (:action ugly1436400ugly9ugly80ugly84ugly36reach-goal-2 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd6) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly1436401ugly41ugly50ugly60ugly63reach-goal-1 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd9)
       (closed-sd6) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly1436402ugly29ugly68ugly55ugly97open-sd3 :parameters ()
  :precondition (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly1436403ugly31ugly100ugly106ugly71wait_cb1-condeff1-no-2
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd6))
  :effect (and (done-1)))
 (:action ugly1436404ugly53ugly30ugly46ugly98wait_cb1-condeff2-no-0 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd7)) :effect
  (and (done-2)))
 (:action ugly1436405ugly16ugly28ugly82ugly40open-sd1 :parameters ()
  :precondition (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly1436406ugly110ugly31ugly100ugly106open-sd5 :parameters ()
  :precondition (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly1436407ugly99ugly49ugly76ugly65close_sd4 :parameters ()
  :precondition (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly1436408ugly46ugly98ugly112ugly78close_sd11-condeff1-no-0
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-cb2))
  :effect (and (done-1)))
 (:action ugly1436409ugly14ugly17ugly35ugly26close_sd7-condeff0-yes :parameters
  () :precondition (and (do-close_sd7-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1436410ugly30ugly46ugly98ugly112close_sd6 :parameters ()
  :precondition (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly1436411ugly56ugly66ugly14ugly17close_sd9-condeff1-no-2
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-cb2))
  :effect (and (done-1)))
 (:action ugly1436412ugly51ugly13ugly53ugly30close_sd7-condeff1-no-0
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd6))
  :effect (and (done-1)))
 (:action ugly1436413ugly104ugly44ugly59ugly18close_sd9 :parameters ()
  :precondition (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2))
  :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action ugly1436414ugly40ugly75ugly85ugly70wait_cb2-condeff2-yes :parameters
  () :precondition (and (do-wait_cb2-condeffs) (closed-sd11)) :effect
  (and (done-2) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1436415ugly24ugly48ugly5ugly94close_sd11-endof-condeffs
  :parameters () :precondition (and (do-close_sd11-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1436416ugly3ugly103ugly9ugly80close_sd6-condeff1-no-0 :parameters
  () :precondition (and (do-close_sd6-condeffs) (not-closed-sd1)) :effect
  (and (done-1)))
 (:action ugly1436417ugly7ugly33ugly113ugly62close_sd9-condeff1-yes :parameters
  () :precondition
  (and (do-close_sd9-condeffs) (closed-sd1) (closed-sd6) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1436418ugly19ugly7ugly33ugly113close_cb2 :parameters ()
  :precondition (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly1436419ugly101ugly61ugly45ugly87close_sd6-condeff2-no-1
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd9))
  :effect (and (done-2)))
 (:action ugly1436420ugly80ugly84ugly36ugly3wait_cb2-endof-condeffs :parameters
  () :precondition (and (do-wait_cb2-condeffs) (done-0) (done-1) (done-2))
  :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly1436421ugly96ugly37ugly99ugly49open-cb2 :parameters ()
  :precondition (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1436422ugly81ugly16ugly28ugly82close_sd9-endof-condeffs
  :parameters () :precondition
  (and (do-close_sd9-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly1436423ugly17ugly35ugly26ugly43wait_cb1-condeff1-no-0 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd11)) :effect
  (and (done-1)))
 (:action ugly1436424ugly27ugly69ugly39ugly23open-sd2 :parameters ()
  :precondition (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly1436425ugly13ugly53ugly30ugly46wait_cb2-condeff1-no-0 :parameters
  () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd7)) :effect
  (and (done-1)))
 (:action ugly1436426ugly100ugly106ugly71ugly110close_sd9-condeff0-no-2
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1436427ugly25ugly12ugly96ugly37wait_cb2-condeff1-no-1 :parameters
  () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd6)) :effect
  (and (done-1)))
 (:action ugly1436428ugly49ugly76ugly65ugly51reach-goal-12 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd6)
       (closed-sd9) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly1436429ugly113ugly62ugly32ugly20reach-goal-9 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd9)
       (closed-sd6) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly1436430ugly78ugly24ugly48ugly5wait_cb2-condeff0-no-0 :parameters
  () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly1436431ugly68ugly55ugly97ugly73close_sd6-condeff2-no-0
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd7))
  :effect (and (done-2)))
 (:action ugly1436432ugly91ugly41ugly50ugly60close_cb1 :parameters ()
  :precondition (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly1436433ugly50ugly60ugly63ugly2wait_cb2-condeff2-no-0 :parameters
  () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd11)) :effect
  (and (done-2)))
 (:action ugly1436434ugly52ugly56ugly66ugly14close_sd12 :parameters ()
  :precondition (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd12) (not (not-closed-sd12))))
 (:action ugly1436435ugly87ugly89ugly72ugly95wait_cb1-condeff1-no-1 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd9)) :effect
  (and (done-1)))
 (:action ugly1436436ugly86ugly47ugly38ugly107close_sd7 :parameters ()
  :precondition (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly1436437ugly1ugly67ugly4ugly77reach-goal-5 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd9)
       (closed-sd6) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly1436438ugly21ugly29ugly68ugly55wait_cb2-condeff1-yes :parameters
  () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd7) (closed-sd6) (closed-sd9)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1436439ugly55ugly97ugly73ugly88wait_cb1 :parameters ()
  :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly1436440ugly57ugly93ugly21ugly29open-sd8 :parameters ()
  :precondition (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly1436441ugly109ugly57ugly93ugly21close_sd9-condeff0-no-0
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action ugly1436442ugly65ugly51ugly13ugly53close_sd9-condeff0-no-1
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd6))
  :effect (and (done-0)))
 (:action ugly1436443ugly64ugly54ugly92ugly52close_sd1-condeff0-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1436444ugly90ugly91ugly41ugly50close_sd1-condeff1-no-2
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb2))
  :effect (and (done-1)))
 (:action ugly1436445ugly54ugly92ugly52ugly56open-sd10 :parameters ()
  :precondition (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly1436446ugly45ugly87ugly89ugly72wait_cb2-condeff0-no-1 :parameters
  () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd6)) :effect
  (and (done-0)))
 (:action ugly1436447ugly59ugly18ugly27ugly69close_sd9-condeff2-no-2
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-cb2))
  :effect (and (done-2)))
 (:action ugly1436448ugly75ugly85ugly70ugly101close_sd1-endof-condeffs
  :parameters () :precondition (and (do-close_sd1-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1436449ugly84ugly36ugly3ugly103reach-goal-8 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd6)
       (closed-sd9) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly1436450ugly72ugly95ugly109ugly57wait_cb2-condeff0-yes :parameters
  () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd1) (closed-sd6) (closed-sd9)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1436451ugly98ugly112ugly78ugly24close_sd7-condeff1-no-2
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-cb2))
  :effect (and (done-1)))
 (:action ugly1436452ugly69ugly39ugly23ugly74reach-goal-14 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd9) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly1436453ugly77ugly6ugly79ugly34reach-goal-0 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd6)
       (closed-sd9) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly1436454ugly4ugly77ugly6ugly79close_sd9-condeff1-no-1 :parameters
  () :precondition (and (do-close_sd9-condeffs) (not-closed-sd6)) :effect
  (and (done-1)))
 (:action ugly1436455ugly82ugly40ugly75ugly85open-sd6 :parameters ()
  :precondition (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly1436456ugly2ugly102ugly86ugly47close_sd9-condeff2-no-1
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd6))
  :effect (and (done-2)))
 (:action ugly1436457ugly74ugly15ugly58ugly8wait_cb1-condeff0-yes :parameters
  () :precondition (and (do-wait_cb1-condeffs) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1436458ugly92ugly52ugly56ugly66reach-goal-13 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd9)
       (closed-sd6) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly1436459ugly15ugly58ugly8ugly105close_sd11-condeff0-no-2
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1436460ugly36ugly3ugly103ugly9close_sd6-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd6-condeffs) (not-closed-sd11)) :effect
  (and (done-0)))
 (:action ugly1436461ugly34ugly1ugly67ugly4open-cb1 :parameters ()
  :precondition (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1436462ugly20ugly10ugly11ugly83wait_cb1-condeff2-yes :parameters
  () :precondition (and (do-wait_cb1-condeffs) (closed-sd7)) :effect
  (and (done-2) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1436463ugly42ugly81ugly16ugly28close_sd6-condeff0-no-2
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1436464ugly18ugly27ugly69ugly39close_sd11-condeff1-yes
  :parameters () :precondition (and (do-close_sd11-condeffs) (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1436465ugly48ugly5ugly94ugly25reach-goal-11 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd9)
       (closed-sd6) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly1436466ugly103ugly9ugly80ugly84close_sd9-condeff2-yes :parameters
  () :precondition
  (and (do-close_sd9-condeffs) (closed-sd7) (closed-sd6) (closed-cb2)) :effect
  (and (done-2) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1436467ugly71ugly110ugly31ugly100wait_cb1-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1436468ugly43ugly108ugly90ugly91close_sd8 :parameters ()
  :precondition (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd8) (not (not-closed-sd8))))
 (:action ugly1436469ugly66ugly14ugly17ugly35close_sd10 :parameters ()
  :precondition (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd10) (not (not-closed-sd10))))
 (:action ugly1436470ugly22ugly19ugly7ugly33wait_cb1-endof-condeffs :parameters
  () :precondition (and (do-wait_cb1-condeffs) (done-0) (done-1) (done-2))
  :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly1436471ugly94ugly25ugly12ugly96close_sd9-condeff2-no-0
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd7))
  :effect (and (done-2)))
 (:action ugly1436472ugly12ugly96ugly37ugly99close_sd7-endof-condeffs
  :parameters () :precondition (and (do-close_sd7-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1436473ugly111ugly64ugly54ugly92close_sd3 :parameters ()
  :precondition (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly1436474ugly26ugly43ugly108ugly90close_sd6-endof-condeffs
  :parameters () :precondition
  (and (do-close_sd6-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly1436475ugly107ugly42ugly81ugly16close_sd9-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd11) (closed-sd6) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1436476ugly67ugly4ugly77ugly6close_sd6-condeff0-yes :parameters
  () :precondition
  (and (do-close_sd6-condeffs) (closed-sd11) (closed-sd9) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1436477ugly88ugly104ugly44ugly59close_sd11 :parameters ()
  :precondition (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2))
  :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action ugly1436478ugly76ugly65ugly51ugly13close_sd2 :parameters ()
  :precondition (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly1436479ugly63ugly2ugly102ugly86close_sd7-condeff1-no-1
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd9))
  :effect (and (done-1)))
 (:action ugly1436480ugly108ugly90ugly91ugly41close_sd5 :parameters ()
  :precondition (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly1436481ugly62ugly32ugly20ugly10reach-goal-10 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd6) (closed-sd9) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly1436482ugly106ugly71ugly110ugly31wait_cb2-condeff1-no-2
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd9))
  :effect (and (done-1)))
 (:action ugly1436483ugly38ugly107ugly42ugly81reach-goal-15 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd9)
       (closed-sd6) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly1436484ugly97ugly73ugly88ugly104close_sd7-condeff0-no-0
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1436485ugly95ugly109ugly57ugly93close_sd11-condeff0-no-1
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd6))
  :effect (and (done-0)))
 (:action ugly1436486ugly85ugly70ugly101ugly61close_sd7-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd6) (closed-sd9) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1436487ugly10ugly11ugly83ugly111open-sd12 :parameters ()
  :precondition (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd12) (not (closed-sd12))))
 (:action ugly1436488ugly70ugly101ugly61ugly45close_sd6-condeff2-yes
  :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd7) (closed-sd9) (closed-cb2)) :effect
  (and (done-2) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1436489ugly11ugly83ugly111ugly64close_sd1 :parameters ()
  :precondition (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly1436490ugly5ugly94ugly25ugly12wait_cb2-condeff0-no-2 :parameters
  () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd9)) :effect
  (and (done-0)))
 (:action ugly1436491ugly39ugly23ugly74ugly15close_sd1-condeff1-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd6))
  :effect (and (done-1)))
 (:action ugly1436492ugly6ugly79ugly34ugly1open-sd9 :parameters ()
  :precondition (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly1436493ugly79ugly34ugly1ugly67reach-goal-3 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd9)
       (closed-sd6) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly1436494ugly83ugly111ugly64ugly54wait_cb2 :parameters ()
  :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly1436495ugly58ugly8ugly105ugly22close_sd11-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd9) (closed-sd6) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1436496ugly32ugly20ugly10ugly11close_sd6-condeff1-yes :parameters
  () :precondition
  (and (do-close_sd6-condeffs) (closed-sd1) (closed-sd9) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1436497ugly8ugly105ugly22ugly19reach-goal-6 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd9) (closed-sd6) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly1436498ugly89ugly72ugly95ugly109close_sd1-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd6) (closed-sd9) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1436499ugly112ugly78ugly24ugly48reach-goal-4 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd6)
       (closed-sd9) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly1436500ugly23ugly74ugly15ugly58reach-goal-7 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd9)
       (closed-sd6) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly1436501ugly33ugly113ugly62ugly32close_sd11-condeff0-no-0
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action ugly1436502ugly28ugly82ugly40ugly75close_sd6-condeff1-no-1
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd9))
  :effect (and (done-1)))
 (:action ugly1436503ugly73ugly88ugly104ugly44close_sd1-condeff1-no-1
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd9))
  :effect (and (done-1)))
 (:action ugly1436504ugly37ugly99ugly49ugly76open-sd11 :parameters ()
  :precondition (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly1436505ugly61ugly45ugly87ugly89open-sd4 :parameters ()
  :precondition (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd4) (not (closed-sd4))))) 