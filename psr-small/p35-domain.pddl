
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (closed-cb2) (do-wait_cb3-condeffs) (closed-sd11)
  (not-updated-cb5) (closed-sd4) (not-updated-cb1) (do-close_sd8-condeffs)
  (goal-reached) (closed-sd8) (not-closed-cb3) (closed-sd13)
  (do-close_sd3-condeffs) (do-wait_cb1-condeffs) (not-updated-cb3)
  (do-close_sd5-condeffs) (do-normal) (not-closed-sd6) (closed-sd9) (done-1)
  (updated-cb2) (not-updated-cb2) (updated-cb3) (not-closed-cb4)
  (not-closed-sd10) (not-closed-sd5) (do-wait_cb2-condeffs) (not-closed-sd13)
  (closed-sd2) (closed-sd6) (closed-cb3) (not-closed-sd11) (closed-sd12)
  (not-closed-sd14) (not-closed-sd8) (closed-sd1) (do-close_sd1-condeffs)
  (not-closed-cb5) (do-close_sd7-condeffs) (closed-cb4) (updated-cb5)
  (do-close_sd11-condeffs) (closed-cb1) (do-close_sd14-condeffs) (updated-cb4)
  (not-closed-cb1) (not-closed-sd7) (do-close_sd10-condeffs) (not-closed-sd1)
  (not-closed-cb2) (not-closed-sd4) (closed-sd10) (do-wait_cb4-condeffs)
  (do-close_sd12-condeffs) (closed-sd3) (closed-sd14) (done-0) (not-closed-sd3)
  (not-closed-sd12) (do-close_sd9-condeffs) (not-closed-sd2) (not-updated-cb4)
  (not-closed-sd9) (done-2) (updated-cb1) (closed-sd5) (closed-cb5)
  (do-close_sd6-condeffs) (closed-sd7))
 (:action ugly1447857ugly82ugly80ugly105ugly73close_cb2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly1447858ugly81ugly30ugly116ugly54close_sd7-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd3) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1447859ugly33ugly75ugly19ugly123close_sd11-condeff0-no-0
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd14))
  :effect (and (done-0)))
 (:action ugly1447860ugly65ugly35ugly95ugly21close_sd5-condeff0-yes :parameters
  () :precondition
  (and (do-close_sd5-condeffs) (closed-sd1) (closed-sd6) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1447861ugly78ugly53ugly76ugly38close_sd3-endof-condeffs
  :parameters () :precondition (and (do-close_sd3-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))))
 (:action ugly1447862ugly34ugly86ugly29ugly14open-cb1 :parameters ()
  :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1447863ugly50ugly55ugly77ugly102close_sd7-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd8) (closed-cb3)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1447864ugly113ugly45ugly66ugly39close_sd7-condeff1-no-0
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd8))
  :effect (and (done-1)))
 (:action ugly1447865ugly108ugly50ugly55ugly77close_sd5 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action ugly1447866ugly36ugly82ugly80ugly105wait_cb2-endof-condeffs
  :parameters () :precondition (and (do-wait_cb2-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0))))
 (:action ugly1447867ugly109ugly70ugly118ugly100wait_cb1-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1447868ugly23ugly7ugly122ugly120wait_cb4-endof-condeffs
  :parameters () :precondition (and (do-wait_cb4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb4-condeffs)) (not (done-0))))
 (:action ugly1447869ugly124ugly109ugly70ugly118close_sd14-endof-condeffs
  :parameters () :precondition (and (do-close_sd14-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd14-condeffs)) (not (done-0))))
 (:action ugly1447870ugly115ugly33ugly75ugly19wait_cb3-condeff2-no-0
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd10))
  :effect (and (done-2)))
 (:action ugly1447871ugly10ugly49ugly42ugly78close_sd1-condeff0-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1447872ugly35ugly95ugly21ugly103close_sd3-condeff0-no-1
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1447873ugly20ugly87ugly57ugly108close_sd4 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly1447874ugly89ugly23ugly7ugly122wait_cb3-condeff1-no-0 :parameters
  () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd8)) :effect
  (and (done-1)))
 (:action ugly1447875ugly100ugly128ugly99ugly114close_sd11-endof-condeffs
  :parameters () :precondition (and (do-close_sd11-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0))))
 (:action ugly1447876ugly112ugly16ugly10ugly49close_sd7-condeff1-no-1
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-cb3))
  :effect (and (done-1)))
 (:action ugly1447877ugly25ugly60ugly124ugly109wait_cb2-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1447878ugly54ugly37ugly13ugly64close_sd10-endof-condeffs
  :parameters () :precondition (and (do-close_sd10-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))))
 (:action ugly1447879ugly70ugly118ugly100ugly128close_sd14-condeff0-no-2
  :parameters () :precondition (and (do-close_sd14-condeffs) (not-closed-cb4))
  :effect (and (done-0)))
 (:action ugly1447880ugly49ugly42ugly78ugly53open-sd14 :parameters ()
  :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd14) (not (closed-sd14))))
 (:action ugly1447881ugly102ugly40ugly44ugly47close_sd5-condeff0-no-0
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1447882ugly43ugly9ugly117ugly127reach-goal-0 :parameters ()
  :precondition
  (and (do-normal) (updated-cb5) (updated-cb4) (updated-cb3) (updated-cb2)
       (updated-cb1) (closed-cb1) (closed-sd5) (closed-sd6) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-cb4) (closed-sd11) (closed-sd12))
  :effect (and (goal-reached)))
 (:action ugly1447883ugly99ugly114ugly20ugly87close_sd1-condeff1-no-2
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb2))
  :effect (and (done-1)))
 (:action ugly1447884ugly60ugly124ugly109ugly70wait_cb3-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action ugly1447885ugly66ugly39ugly41ugly51close_sd12-condeff0-no-0
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-sd14))
  :effect (and (done-0)))
 (:action ugly1447886ugly80ugly105ugly73ugly74close_sd8 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly1447887ugly14ugly94ugly56ugly96open-sd2 :parameters ()
  :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly1447888ugly13ugly64ugly25ugly60wait_cb3-condeff2-no-1 :parameters
  () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd9)) :effect
  (and (done-2)))
 (:action ugly1447889ugly74ugly31ugly46ugly85close_sd5-endof-condeffs
  :parameters () :precondition (and (do-close_sd5-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))))
 (:action ugly1447890ugly52ugly91ugly79ugly24reach-goal-3 :parameters ()
  :precondition
  (and (do-normal) (updated-cb5) (updated-cb4) (updated-cb3) (updated-cb2)
       (updated-cb1) (closed-cb2) (closed-sd6) (closed-sd5) (closed-cb1)
       (closed-sd7) (closed-cb3) (closed-sd9) (closed-cb4) (closed-sd11)
       (closed-sd12))
  :effect (and (goal-reached)))
 (:action ugly1447891ugly106ugly113ugly45ugly66close_sd7-condeff0-no-1
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1447892ugly111ugly6ugly48ugly58reach-goal-2 :parameters ()
  :precondition
  (and (do-normal) (updated-cb5) (updated-cb4) (updated-cb3) (updated-cb2)
       (updated-cb1) (closed-cb1) (closed-cb2) (closed-sd5) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-cb4) (closed-sd11) (closed-sd12))
  :effect (and (goal-reached)))
 (:action ugly1447893ugly39ugly41ugly51ugly11close_sd9-condeff0-yes :parameters
  () :precondition (and (do-close_sd9-condeffs) (closed-sd10) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1447894ugly53ugly76ugly38ugly112close_sd11-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd14) (closed-sd12) (closed-cb4))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1447895ugly90ugly8ugly62ugly63close_sd14-condeff0-no-1
  :parameters () :precondition (and (do-close_sd14-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action ugly1447896ugly107ugly2ugly106ugly113close_sd6-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd1) (closed-sd5) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1447897ugly101ugly34ugly86ugly29close_sd12-endof-condeffs
  :parameters () :precondition (and (do-close_sd12-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd12-condeffs)) (not (done-0))))
 (:action ugly1447898ugly64ugly25ugly60ugly124close_sd3-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd7) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1447899ugly88ugly119ugly83ugly90reach-goal-7 :parameters ()
  :precondition
  (and (do-normal) (updated-cb5) (updated-cb4) (updated-cb3) (updated-cb2)
       (updated-cb1) (closed-cb2) (closed-sd6) (closed-sd5) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-cb4) (closed-sd11) (closed-sd12))
  :effect (and (goal-reached)))
 (:action ugly1447900ugly22ugly84ugly28ugly67close_sd14-condeff0-no-0
  :parameters () :precondition (and (do-close_sd14-condeffs) (not-closed-sd12))
  :effect (and (done-0)))
 (:action ugly1447901ugly2ugly106ugly113ugly45close_cb4 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (closed-cb4) (not-updated-cb4) (not (not-closed-cb4))
       (not (updated-cb4))))
 (:action ugly1447902ugly123ugly17ugly15ugly101close_sd8-condeff0-no-1
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1447903ugly7ugly122ugly120ugly65close_sd8-endof-condeffs
  :parameters () :precondition (and (do-close_sd8-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))))
 (:action ugly1447904ugly87ugly57ugly108ugly50close_sd1-condeff1-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd5))
  :effect (and (done-1)))
 (:action ugly1447905ugly41ugly51ugly11ugly27close_sd7 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly1447906ugly73ugly74ugly31ugly46open-sd5 :parameters ()
  :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly1447907ugly4ugly93ugly5ugly22open-sd6 :parameters ()
  :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly1447908ugly96ugly88ugly119ugly83open-cb5 :parameters ()
  :precondition
  (and (do-normal) (closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-cb5) (not (closed-cb5))))
 (:action ugly1447909ugly94ugly56ugly96ugly88wait_cb3-condeff1-yes :parameters
  () :precondition (and (do-wait_cb3-condeffs) (closed-sd8) (closed-sd7))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1447910ugly117ugly127ugly1ugly72close_sd3-condeff0-no-0
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action ugly1447911ugly128ugly99ugly114ugly20open-sd3 :parameters ()
  :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly1447912ugly57ugly108ugly50ugly55open-sd13 :parameters ()
  :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd13) (not (closed-sd13))))
 (:action ugly1447913ugly8ugly62ugly63ugly98close_sd7-endof-condeffs
  :parameters () :precondition (and (do-close_sd7-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1447914ugly67ugly97ugly126ugly89close_sd10-condeff0-no-0
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action ugly1447915ugly129ugly68ugly121ugly69wait_cb2-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd5))
  :effect (and (done-0)))
 (:action ugly1447916ugly18ugly26ugly61ugly32wait_cb1-endof-condeffs
  :parameters () :precondition (and (do-wait_cb1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0))))
 (:action ugly1447917ugly63ugly98ugly43ugly9wait_cb3-condeff0-no-0 :parameters
  () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly1447918ugly38ugly112ugly16ugly10close_sd6-endof-condeffs
  :parameters () :precondition (and (do-close_sd6-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))))
 (:action ugly1447919ugly97ugly126ugly89ugly23reach-goal-6 :parameters ()
  :precondition
  (and (do-normal) (updated-cb5) (updated-cb4) (updated-cb3) (updated-cb2)
       (updated-cb1) (closed-cb1) (closed-cb2) (closed-sd6) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-cb4) (closed-sd11) (closed-sd12))
  :effect (and (goal-reached)))
 (:action ugly1447920ugly24ugly4ugly93ugly5close_sd10-condeff0-yes :parameters
  () :precondition (and (do-close_sd10-condeffs) (closed-sd9) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1447921ugly114ugly20ugly87ugly57close_sd3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly1447922ugly30ugly116ugly54ugly37close_sd12-condeff0-no-2
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-cb4))
  :effect (and (done-0)))
 (:action ugly1447923ugly48ugly58ugly3ugly115close_sd8-condeff0-no-0
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action ugly1447924ugly98ugly43ugly9ugly117wait_cb1-condeff0-yes :parameters
  () :precondition (and (do-wait_cb1-condeffs) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1447925ugly71ugly18ugly26ugly61close_sd8-condeff0-yes :parameters
  () :precondition (and (do-close_sd8-condeffs) (closed-sd7) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1447926ugly19ugly123ugly17ugly15close_sd13 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (closed-sd13) (not (not-closed-sd13))))
 (:action ugly1447927ugly84ugly28ugly67ugly97wait_cb1 :parameters ()
  :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly1447928ugly32ugly129ugly68ugly121wait_cb2-condeff0-yes
  :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd1) (closed-sd5) (closed-sd6)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1447929ugly17ugly15ugly101ugly34open-sd4 :parameters ()
  :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly1447930ugly76ugly38ugly112ugly16close_sd12-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd12-condeffs) (closed-sd14) (closed-sd11) (closed-cb4))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1447931ugly91ugly79ugly24ugly4open-cb2 :parameters ()
  :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1447932ugly56ugly96ugly88ugly119open-sd7 :parameters ()
  :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly1447933ugly3ugly115ugly33ugly75close_sd11-condeff0-no-2
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-cb4))
  :effect (and (done-0)))
 (:action ugly1447934ugly26ugly61ugly32ugly129wait_cb2 :parameters ()
  :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly1447935ugly27ugly36ugly82ugly80close_sd5-condeff0-no-1
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd6))
  :effect (and (done-0)))
 (:action ugly1447936ugly104ugly12ugly81ugly30wait_cb3-condeff0-yes :parameters
  () :precondition (and (do-wait_cb3-condeffs) (closed-sd3) (closed-sd7))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1447937ugly16ugly10ugly49ugly42open-sd12 :parameters ()
  :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd12) (not (closed-sd12))))
 (:action ugly1447938ugly45ugly66ugly39ugly41close_sd1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly1447939ugly68ugly121ugly69ugly71close_sd11-condeff0-no-1
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd12))
  :effect (and (done-0)))
 (:action ugly1447940ugly28ugly67ugly97ugly126open-sd1 :parameters ()
  :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly1447941ugly11ugly27ugly36ugly82open-sd10 :parameters ()
  :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly1447942ugly118ugly100ugly128ugly99wait_cb5 :parameters ()
  :precondition (and (do-normal) (not-updated-cb5)) :effect
  (and (not-closed-cb5) (updated-cb5) (not (closed-cb5))
       (not (not-updated-cb5))))
 (:action ugly1447943ugly12ugly81ugly30ugly116close_sd1-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd5) (closed-sd6) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1447944ugly5ugly22ugly84ugly28close_cb3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly1447945ugly122ugly120ugly65ugly35close_sd14 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd14-condeffs) (closed-sd14)
       (not (not-closed-sd14))))
 (:action ugly1447946ugly86ugly29ugly14ugly94close_sd1-condeff1-no-1
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd6))
  :effect (and (done-1)))
 (:action ugly1447947ugly46ugly85ugly107ugly2close_sd5-condeff0-no-2
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly1447948ugly37ugly13ugly64ugly25wait_cb4 :parameters ()
  :precondition (and (do-normal) (not-updated-cb4)) :effect
  (and (not (do-normal)) (do-wait_cb4-condeffs) (updated-cb4)
       (not (not-updated-cb4))))
 (:action ugly1447949ugly31ugly46ugly85ugly107reach-goal-1 :parameters ()
  :precondition
  (and (do-normal) (updated-cb5) (updated-cb4) (updated-cb3) (updated-cb2)
       (updated-cb1) (closed-cb2) (closed-sd6) (closed-sd5) (closed-cb1)
       (closed-sd7) (closed-cb3) (closed-sd9) (closed-cb4) (closed-sd11)
       (closed-sd12))
  :effect (and (goal-reached)))
 (:action ugly1447950ugly77ugly102ugly40ugly44close_sd6-condeff0-no-1
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd5))
  :effect (and (done-0)))
 (:action ugly1447951ugly125ugly92ugly59ugly125open-cb3 :parameters ()
  :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1447952ugly75ugly19ugly123ugly17close_sd11 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action ugly1447953ugly93ugly5ugly22ugly84close_sd9-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd9-condeffs) (not-closed-sd10)) :effect
  (and (done-0)))
 (:action ugly1447954ugly95ugly21ugly103ugly111reach-goal-5 :parameters ()
  :precondition
  (and (do-normal) (updated-cb5) (updated-cb4) (updated-cb3) (updated-cb2)
       (updated-cb1) (closed-cb2) (closed-sd6) (closed-sd5) (closed-cb1)
       (closed-sd7) (closed-cb3) (closed-sd9) (closed-cb4) (closed-sd11)
       (closed-sd12))
  :effect (and (goal-reached)))
 (:action ugly1447955ugly58ugly3ugly115ugly33close_cb1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly1447956ugly47ugly104ugly12ugly81close_sd9-endof-condeffs
  :parameters () :precondition (and (do-close_sd9-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0))))
 (:action ugly1447957ugly127ugly1ugly72ugly110close_sd1-condeff0-yes
  :parameters () :precondition (and (do-close_sd1-condeffs) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1447958ugly79ugly24ugly4ugly93reach-goal-4 :parameters ()
  :precondition
  (and (do-normal) (updated-cb5) (updated-cb4) (updated-cb3) (updated-cb2)
       (updated-cb1) (closed-cb1) (closed-sd5) (closed-sd6) (closed-cb2)
       (closed-sd7) (closed-cb3) (closed-sd9) (closed-cb4) (closed-sd11)
       (closed-sd12))
  :effect (and (goal-reached)))
 (:action ugly1447959ugly42ugly78ugly53ugly76close_sd7-condeff0-no-0
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1447960ugly126ugly89ugly23ugly7wait_cb3-condeff2-yes :parameters
  () :precondition (and (do-wait_cb3-condeffs) (closed-sd10) (closed-sd9))
  :effect (and (done-2) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1447961ugly116ugly54ugly37ugly13wait_cb4-condeff0-no-2
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action ugly1447962ugly121ugly69ugly71ugly18close_sd9 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action ugly1447963ugly83ugly90ugly8ugly62wait_cb4-condeff0-no-1 :parameters
  () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd12)) :effect
  (and (done-0)))
 (:action ugly1447964ugly105ugly73ugly74ugly31close_sd6-condeff0-no-0
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1447965ugly9ugly117ugly127ugly1wait_cb2-condeff0-no-2 :parameters
  () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd6)) :effect
  (and (done-0)))
 (:action ugly1447966ugly44ugly47ugly104ugly12open-sd9 :parameters ()
  :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly1447967ugly15ugly101ugly34ugly86close_sd9-condeff0-no-1
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1447968ugly92ugly59ugly125ugly92close_cb5 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (closed-cb5) (not-updated-cb5) (not (not-closed-cb5))
       (not (updated-cb5))))
 (:action ugly1447969ugly62ugly63ugly98ugly43close_sd12 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd12-condeffs) (closed-sd12)
       (not (not-closed-sd12))))
 (:action ugly1447970ugly29ugly14ugly94ugly56close_sd14-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd14-condeffs) (closed-sd12) (closed-sd11) (closed-cb4))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1447971ugly120ugly65ugly35ugly95close_sd10 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action ugly1447972ugly61ugly32ugly129ugly68wait_cb3-condeff1-no-1
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action ugly1447973ugly55ugly77ugly102ugly40close_sd6 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly1447974ugly119ugly83ugly90ugly8wait_cb4-condeff0-no-0 :parameters
  () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd14)) :effect
  (and (done-0)))
 (:action ugly1447975ugly6ugly48ugly58ugly3wait_cb3 :parameters ()
  :precondition (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action ugly1447976ugly21ugly103ugly111ugly6close_sd6-condeff0-no-2
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly1447977ugly40ugly44ugly47ugly104close_sd12-condeff0-no-1
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action ugly1447978ugly51ugly11ugly27ugly36open-sd8 :parameters ()
  :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly1447979ugly69ugly71ugly18ugly26wait_cb4-condeff0-yes :parameters
  () :precondition
  (and (do-wait_cb4-condeffs) (closed-sd14) (closed-sd12) (closed-sd11))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1447980ugly110ugly52ugly91ugly79close_sd10-condeff0-no-1
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1447981ugly72ugly110ugly52ugly91open-sd11 :parameters ()
  :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly1447982ugly59ugly125ugly92ugly59wait_cb3-endof-condeffs
  :parameters () :precondition
  (and (do-wait_cb3-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly1447983ugly85ugly107ugly2ugly106close_sd2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly1447984ugly1ugly72ugly110ugly52open-cb4 :parameters ()
  :precondition
  (and (do-normal) (closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1447985ugly103ugly111ugly6ugly48close_sd1-endof-condeffs
  :parameters () :precondition (and (do-close_sd1-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))
       (not (done-1))))) 