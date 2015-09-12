
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (closed-sd5) (closed-sd7) (not-updated-cb2) (closed-sd3)
  (closed-sd13) (not-closed-sd11) (not-closed-cb4) (closed-cb1) (closed-sd8)
  (closed-sd9) (closed-sd12) (not-closed-sd8) (do-close_sd12-condeffs)
  (closed-cb4) (done-2) (closed-sd6) (not-closed-sd10) (not-closed-sd7)
  (not-closed-cb2) (not-closed-sd6) (not-closed-sd2) (closed-sd11)
  (do-wait_cb3-condeffs) (not-updated-cb3) (not-closed-sd1) (not-closed-sd12)
  (updated-cb4) (closed-sd10) (updated-cb1) (not-closed-sd5)
  (do-close_sd4-condeffs) (updated-cb3) (not-closed-sd4) (goal-reached)
  (not-closed-cb3) (not-updated-cb4) (updated-cb2) (not-closed-sd13)
  (do-wait_cb4-condeffs) (done-0) (not-closed-sd3) (do-wait_cb1-condeffs)
  (do-close_sd11-condeffs) (not-updated-cb1) (not-closed-cb1) (closed-sd4)
  (do-normal) (closed-sd1) (closed-sd2) (closed-cb2) (done-1)
  (do-close_sd1-condeffs) (do-close_sd10-condeffs) (do-close_sd13-condeffs)
  (not-closed-sd9) (closed-cb3))
 (:action ugly1447667ugly59ugly4ugly30ugly46close_sd4-condeff1-no-2 :parameters
  () :precondition (and (do-close_sd4-condeffs) (not-closed-cb4)) :effect
  (and (done-1)))
 (:action ugly1447668ugly6ugly77ugly40ugly75reach-goal-5 :parameters ()
  :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb1) (closed-cb4) (closed-sd12) (closed-sd11) (closed-cb3))
  :effect (and (goal-reached)))
 (:action ugly1447669ugly14ugly57ugly21ugly18close_sd5 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly1447670ugly62ugly24ugly95ugly37close_sd4-endof-condeffs
  :parameters () :precondition (and (do-close_sd4-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1447671ugly64ugly39ugly1ugly74close_sd12-condeff1-no-2
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-cb4))
  :effect (and (done-1)))
 (:action ugly1447672ugly37ugly99ugly106ugly96close_sd13-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd13-condeffs) (closed-sd12) (closed-cb4)) :effect
  (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1447673ugly7ugly117ugly88ugly90close_sd10-condeff1-no-0
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd11))
  :effect (and (done-1)))
 (:action ugly1447674ugly5ugly102ugly11ugly51open-sd10 :parameters ()
  :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly1447675ugly111ugly58ugly79ugly80wait_cb1-condeff0-yes :parameters
  () :precondition (and (do-wait_cb1-condeffs) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1447676ugly71ugly5ugly102ugly11close_cb1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly1447677ugly84ugly64ugly39ugly1close_sd11-condeff1-no-0
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd4))
  :effect (and (done-1)))
 (:action ugly1447678ugly95ugly37ugly99ugly106close_sd4-condeff1-no-0
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd11))
  :effect (and (done-1)))
 (:action ugly1447679ugly108ugly66ugly71ugly5wait_cb4-condeff0-no-0 :parameters
  () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd4)) :effect
  (and (done-0)))
 (:action ugly1447680ugly85ugly54ugly101ugly84open-sd1 :parameters ()
  :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly1447681ugly12ugly114ugly60ugly7wait_cb1-endof-condeffs
  :parameters () :precondition (and (do-wait_cb1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0))))
 (:action ugly1447682ugly29ugly68ugly23ugly47close_sd1-endof-condeffs
  :parameters () :precondition (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly1447683ugly51ugly55ugly65ugly48close_sd13-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd13-condeffs) (closed-sd11) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1447684ugly30ugly46ugly98ugly70close_sd10-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-sd11) (closed-sd12) (closed-cb4))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1447685ugly114ugly60ugly7ugly117close_sd10-condeff1-no-2
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-cb4))
  :effect (and (done-1)))
 (:action ugly1447686ugly103ugly45ugly87ugly35close_sd12 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd12-condeffs) (closed-sd12)
       (not (not-closed-sd12))))
 (:action ugly1447687ugly74ugly25ugly12ugly114open-sd5 :parameters ()
  :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly1447688ugly104ugly49ugly3ugly76close_sd13-condeff1-no-1
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-cb4))
  :effect (and (done-1)))
 (:action ugly1447689ugly34ugly67ugly56ugly44open-sd6 :parameters ()
  :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly1447690ugly69ugly92ugly93ugly104close_cb3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly1447691ugly39ugly1ugly74ugly25close_sd13-condeff0-no-1
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1447692ugly46ugly98ugly70ugly85open-sd11 :parameters ()
  :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly1447693ugly79ugly80ugly115ugly29open-cb1 :parameters ()
  :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1447694ugly17ugly26ugly43ugly108open-cb3 :parameters ()
  :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1447695ugly81ugly31ugly100ugly78close_sd11-condeff0-no-1
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1447696ugly18ugly32ugly83ugly112wait_cb4-condeff2-yes :parameters
  () :precondition (and (do-wait_cb4-condeffs) (closed-sd13) (closed-sd12))
  :effect (and (done-2) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1447697ugly115ugly29ugly68ugly23wait_cb3-condeff2-no-1
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd11))
  :effect (and (done-2)))
 (:action ugly1447698ugly87ugly35ugly17ugly26wait_cb3-condeff1-yes :parameters
  () :precondition (and (do-wait_cb3-condeffs) (closed-sd10)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1447699ugly93ugly104ugly49ugly3close_sd11-condeff1-no-2
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-cb4))
  :effect (and (done-1)))
 (:action ugly1447700ugly92ugly93ugly104ugly49reach-goal-2 :parameters ()
  :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb1) (closed-cb3) (closed-cb4) (closed-sd11))
  :effect (and (goal-reached)))
 (:action ugly1447701ugly58ugly79ugly80ugly115close_sd12-endof-condeffs
  :parameters () :precondition
  (and (do-close_sd12-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-close_sd12-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly1447702ugly23ugly47ugly38ugly107reach-goal-1 :parameters ()
  :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb1) (closed-cb4) (closed-sd12) (closed-sd11) (closed-cb3))
  :effect (and (goal-reached)))
 (:action ugly1447703ugly44ugly59ugly4ugly30wait_cb3-condeff2-no-0 :parameters
  () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd13)) :effect
  (and (done-2)))
 (:action ugly1447704ugly112ugly109ugly36ugly103wait_cb3-condeff2-yes
  :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd13) (closed-sd11)) :effect
  (and (done-2) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1447705ugly33ugly113ugly42ugly8close_sd13 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd13-condeffs) (closed-sd13)
       (not (not-closed-sd13))))
 (:action ugly1447706ugly68ugly23ugly47ugly38wait_cb4-condeff1-no-1 :parameters
  () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd11)) :effect
  (and (done-1)))
 (:action ugly1447707ugly15ugly27ugly69ugly92close_sd4-condeff0-yes :parameters
  () :precondition (and (do-close_sd4-condeffs) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1447708ugly26ugly43ugly108ugly66close_sd11-condeff0-no-0
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd13))
  :effect (and (done-0)))
 (:action ugly1447709ugly16ugly34ugly67ugly56wait_cb3-condeff1-no-0 :parameters
  () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd10)) :effect
  (and (done-1)))
 (:action ugly1447710ugly117ugly88ugly90ugly86wait_cb1-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1447711ugly98ugly70ugly85ugly54wait_cb4-condeff0-yes :parameters
  () :precondition
  (and (do-wait_cb4-condeffs) (closed-sd4) (closed-sd11) (closed-sd12)) :effect
  (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1447712ugly70ugly85ugly54ugly101close_sd10-condeff0-no-0
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1447713ugly55ugly65ugly48ugly10close_sd4-condeff0-no-0
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1447714ugly56ugly44ugly59ugly4close_sd9 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd9) (not (not-closed-sd9))))
 (:action ugly1447715ugly65ugly48ugly10ugly94wait_cb4-condeff2-no-0 :parameters
  () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd13)) :effect
  (and (done-2)))
 (:action ugly1447716ugly97ugly111ugly58ugly79close_sd11-condeff2-no-2
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-cb4))
  :effect (and (done-2)))
 (:action ugly1447717ugly9ugly81ugly31ugly100close_sd11-condeff2-no-0
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd10))
  :effect (and (done-2)))
 (:action ugly1447718ugly99ugly106ugly96ugly13close_sd13-endof-condeffs
  :parameters () :precondition (and (do-close_sd13-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd13-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1447719ugly76ugly15ugly27ugly69close_sd4 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly1447720ugly20ugly28ugly19ugly82close_sd3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly1447721ugly49ugly3ugly76ugly15close_sd12-condeff2-no-0
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-sd13))
  :effect (and (done-2)))
 (:action ugly1447722ugly96ugly13ugly16ugly34open-cb2 :parameters ()
  :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1447723ugly113ugly42ugly8ugly9close_sd11-endof-condeffs
  :parameters () :precondition
  (and (do-close_sd11-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly1447724ugly73ugly41ugly50ugly52open-sd3 :parameters ()
  :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly1447725ugly77ugly40ugly75ugly6close_sd11-condeff2-yes :parameters
  () :precondition
  (and (do-close_sd11-condeffs) (closed-sd10) (closed-sd12) (closed-cb4))
  :effect (and (done-2) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1447726ugly35ugly17ugly26ugly43wait_cb4-condeff1-no-2 :parameters
  () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd12)) :effect
  (and (done-1)))
 (:action ugly1447727ugly21ugly18ugly32ugly83wait_cb4-endof-condeffs
  :parameters () :precondition
  (and (do-wait_cb4-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb4-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly1447728ugly42ugly8ugly9ugly81close_sd8 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd8) (not (not-closed-sd8))))
 (:action ugly1447729ugly63ugly105ugly22ugly73wait_cb3-condeff0-yes :parameters
  () :precondition (and (do-wait_cb3-condeffs) (closed-sd4)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1447730ugly72ugly20ugly28ugly19close_sd10 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action ugly1447731ugly88ugly90ugly86ugly116close_sd13-condeff1-no-0
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-sd12))
  :effect (and (done-1)))
 (:action ugly1447732ugly75ugly6ugly77ugly40close_sd11-condeff1-no-1
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd12))
  :effect (and (done-1)))
 (:action ugly1447733ugly89ugly63ugly105ugly22close_sd11-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd4) (closed-sd12) (closed-cb4))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1447734ugly22ugly73ugly41ugly50open-sd13 :parameters ()
  :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd13) (not (closed-sd13))))
 (:action ugly1447735ugly41ugly50ugly52ugly62close_sd12-condeff1-no-1
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-sd11))
  :effect (and (done-1)))
 (:action ugly1447736ugly109ugly36ugly103ugly45close_sd10-condeff1-no-1
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd12))
  :effect (and (done-1)))
 (:action ugly1447737ugly2ugly91ugly97ugly111open-sd7 :parameters ()
  :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly1447738ugly82ugly33ugly113ugly42reach-goal-7 :parameters ()
  :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb1) (closed-cb4) (closed-sd12) (closed-sd11))
  :effect (and (goal-reached)))
 (:action ugly1447739ugly13ugly16ugly34ugly67open-sd9 :parameters ()
  :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly1447740ugly45ugly87ugly35ugly17close_sd12-condeff2-yes
  :parameters () :precondition
  (and (do-close_sd12-condeffs) (closed-sd13) (closed-cb4)) :effect
  (and (done-2) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1447741ugly86ugly116ugly14ugly57close_sd12-condeff0-no-2
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-cb4))
  :effect (and (done-0)))
 (:action ugly1447742ugly4ugly30ugly46ugly98close_sd11-condeff0-yes :parameters
  () :precondition (and (do-close_sd11-condeffs) (closed-sd13) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1447743ugly47ugly38ugly107ugly2close_sd6 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly1447744ugly94ugly110ugly61ugly53close_sd10-endof-condeffs
  :parameters () :precondition (and (do-close_sd10-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1447745ugly91ugly97ugly111ugly58close_sd11-condeff2-no-1
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd12))
  :effect (and (done-2)))
 (:action ugly1447746ugly36ugly103ugly45ugly87close_sd1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly1447747ugly83ugly112ugly109ugly36wait_cb4-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action ugly1447748ugly54ugly101ugly84ugly64close_cb4 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb4) (not-updated-cb4) (not (not-closed-cb4))
       (not (updated-cb4))))
 (:action ugly1447749ugly38ugly107ugly2ugly91close_sd4-condeff1-no-1
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd12))
  :effect (and (done-1)))
 (:action ugly1447750ugly116ugly14ugly57ugly21close_sd12-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd12-condeffs) (closed-sd4) (closed-sd11) (closed-cb4))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1447751ugly8ugly9ugly81ugly31wait_cb4 :parameters ()
  :precondition (and (do-normal) (not-updated-cb4)) :effect
  (and (not (do-normal)) (do-wait_cb4-condeffs) (updated-cb4)
       (not (not-updated-cb4))))
 (:action ugly1447752ugly40ugly75ugly6ugly77wait_cb3 :parameters ()
  :precondition (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action ugly1447753ugly11ugly51ugly55ugly65wait_cb3-endof-condeffs
  :parameters () :precondition
  (and (do-wait_cb3-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly1447754ugly52ugly62ugly24ugly95close_sd1-condeff0-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1447755ugly50ugly52ugly62ugly24close_sd4-condeff1-yes :parameters
  () :precondition
  (and (do-close_sd4-condeffs) (closed-sd11) (closed-sd12) (closed-cb4))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1447756ugly31ugly100ugly78ugly72close_sd12-condeff0-no-1
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action ugly1447757ugly60ugly7ugly117ugly88close_sd7 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd7) (not (not-closed-sd7))))
 (:action ugly1447758ugly3ugly76ugly15ugly27close_sd11 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action ugly1447759ugly32ugly83ugly112ugly109close_sd1-condeff0-yes
  :parameters () :precondition (and (do-close_sd1-condeffs) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1447760ugly102ugly11ugly51ugly55open-cb4 :parameters ()
  :precondition
  (and (do-normal) (closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1447761ugly53ugly89ugly63ugly105close_sd12-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd12-condeffs) (closed-sd10) (closed-sd11) (closed-cb4))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1447762ugly106ugly96ugly13ugly16close_sd2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly1447763ugly57ugly21ugly18ugly32close_sd10-condeff0-yes
  :parameters () :precondition (and (do-close_sd10-condeffs) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1447764ugly19ugly82ugly33ugly113wait_cb3-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action ugly1447765ugly100ugly78ugly72ugly20close_sd12-condeff2-no-1
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-cb4))
  :effect (and (done-2)))
 (:action ugly1447766ugly110ugly61ugly53ugly89open-sd2 :parameters ()
  :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly1447767ugly66ugly71ugly5ugly102close_sd13-condeff0-no-0
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action ugly1447768ugly80ugly115ugly29ugly68close_sd12-condeff1-no-0
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-sd10))
  :effect (and (done-1)))
 (:action ugly1447769ugly78ugly72ugly20ugly28close_sd12-condeff0-no-0
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action ugly1447770ugly10ugly94ugly110ugly61open-sd12 :parameters ()
  :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd12) (not (closed-sd12))))
 (:action ugly1447771ugly1ugly74ugly25ugly12wait_cb1 :parameters ()
  :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly1447772ugly28ugly19ugly82ugly33wait_cb2 :parameters ()
  :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not-closed-cb2) (updated-cb2) (not (closed-cb2))
       (not (not-updated-cb2))))
 (:action ugly1447773ugly90ugly86ugly116ugly14open-sd8 :parameters ()
  :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly1447774ugly105ugly22ugly73ugly41close_cb2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly1447775ugly43ugly108ugly66ugly71reach-goal-4 :parameters ()
  :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb1) (closed-cb3) (closed-sd11) (closed-sd12) (closed-cb4))
  :effect (and (goal-reached)))
 (:action ugly1447776ugly48ugly10ugly94ugly110open-sd4 :parameters ()
  :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly1447777ugly25ugly12ugly114ugly60reach-goal-6 :parameters ()
  :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb1) (closed-cb3) (closed-cb4) (closed-sd12))
  :effect (and (goal-reached)))
 (:action ugly1447778ugly61ugly53ugly89ugly63wait_cb4-condeff1-yes :parameters
  () :precondition
  (and (do-wait_cb4-condeffs) (closed-sd10) (closed-sd11) (closed-sd12))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1447779ugly101ugly84ugly64ugly39reach-goal-0 :parameters ()
  :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb1) (closed-cb3) (closed-sd11) (closed-sd12))
  :effect (and (goal-reached)))
 (:action ugly1447780ugly107ugly2ugly91ugly97wait_cb4-condeff2-no-1 :parameters
  () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd12)) :effect
  (and (done-2)))
 (:action ugly1447781ugly27ugly69ugly92ugly93wait_cb4-condeff0-no-2 :parameters
  () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd12)) :effect
  (and (done-0)))
 (:action ugly1447782ugly24ugly95ugly37ugly99wait_cb4-condeff1-no-0 :parameters
  () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd10)) :effect
  (and (done-1)))
 (:action ugly1447783ugly67ugly56ugly44ugly59reach-goal-3 :parameters ()
  :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb1) (closed-cb4) (closed-sd12) (closed-sd11) (closed-cb3))
  :effect (and (goal-reached)))) 