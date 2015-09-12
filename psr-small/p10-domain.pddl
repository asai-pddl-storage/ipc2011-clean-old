
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (not-closed-sd6) (not-closed-sd8) (done-1) (closed-sd11)
  (do-close_sd3-condeffs) (closed-sd4) (updated-cb2) (not-closed-sd3)
  (not-closed-sd1) (closed-sd10) (closed-cb2) (closed-sd1) (not-closed-cb1)
  (updated-cb1) (do-close_sd7-condeffs) (do-close_sd2-condeffs)
  (not-closed-sd4) (closed-sd7) (not-updated-cb1) (not-closed-cb2)
  (not-closed-sd7) (not-closed-sd10) (do-close_sd9-condeffs) (closed-sd2)
  (not-updated-cb2) (not-closed-sd5) (closed-sd3) (do-wait_cb1-condeffs)
  (closed-sd5) (closed-cb1) (do-close_sd11-condeffs) (done-0) (closed-sd8)
  (not-closed-sd9) (not-closed-sd2) (do-close_sd8-condeffs) (closed-sd9)
  (not-closed-sd11) (do-normal) (closed-sd6))
 (:action ugly1435445ugly6ugly95ugly27ugly78open-sd10 :parameters ()
  :precondition (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly1435446ugly12ugly85ugly15ugly16close_sd3-condeff0-no-3
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1435447ugly75ugly64ugly22ugly31close_sd9-condeff0-no-2
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1435448ugly89ugly43ugly29ugly46close_sd2-condeff1-no-4
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-cb1))
  :effect (and (done-1)))
 (:action ugly1435449ugly14ugly12ugly85ugly15close_sd9-condeff0-no-4
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1435450ugly1ugly53ugly68ugly17close_sd11-condeff0-no-4
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1435451ugly21ugly2ugly13ugly39close_sd11-condeff0-no-3
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1435452ugly22ugly31ugly14ugly12close_sd3-condeff0-no-0
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action ugly1435453ugly61ugly38ugly20ugly32open-sd9 :parameters ()
  :precondition (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly1435454ugly4ugly66ugly91ugly75wait_cb1-condeff1-no-2 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd8)) :effect
  (and (done-1)))
 (:action ugly1435455ugly72ugly1ugly53ugly68close_sd9-endof-condeffs
  :parameters () :precondition (and (do-close_sd9-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0))))
 (:action ugly1435456ugly7ugly9ugly57ugly26close_sd8-condeff0-no-3 :parameters
  () :precondition (and (do-close_sd8-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly1435457ugly11ugly84ugly54ugly24close_sd3-condeff0-no-2
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1435458ugly36ugly28ugly52ugly74wait_cb1-condeff1-no-1 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd9)) :effect
  (and (done-1)))
 (:action ugly1435459ugly95ugly27ugly78ugly70close_sd2-condeff0-no-3
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1435460ugly84ugly54ugly24ugly87open-sd7 :parameters ()
  :precondition (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly1435461ugly79ugly77ugly40ugly60wait_cb2 :parameters ()
  :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not-closed-cb2) (updated-cb2) (not (closed-cb2))
       (not (not-updated-cb2))))
 (:action ugly1435462ugly65ugly30ugly72ugly1close_sd1 :parameters ()
  :precondition (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd1) (not (not-closed-sd1))))
 (:action ugly1435463ugly42ugly82ugly35ugly86wait_cb1 :parameters ()
  :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly1435464ugly20ugly32ugly71ugly10open-sd4 :parameters ()
  :precondition (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly1435465ugly24ugly87ugly73ugly92wait_cb1-endof-condeffs
  :parameters () :precondition (and (do-wait_cb1-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly1435466ugly50ugly89ugly43ugly29close_sd2-condeff1-yes :parameters
  () :precondition
  (and (do-close_sd2-condeffs) (closed-sd11) (closed-sd9) (closed-sd8)
       (closed-sd3) (closed-cb1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435467ugly77ugly40ugly60ugly96close_sd11-endof-condeffs
  :parameters () :precondition (and (do-close_sd11-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0))))
 (:action ugly1435468ugly10ugly76ugly11ugly84close_cb2 :parameters ()
  :precondition (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly1435469ugly15ugly16ugly88ugly90close_sd2-condeff1-no-1
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd9))
  :effect (and (done-1)))
 (:action ugly1435470ugly30ugly72ugly1ugly53close_cb1 :parameters ()
  :precondition (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly1435471ugly86ugly55ugly47ugly42close_sd6 :parameters ()
  :precondition (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly1435472ugly44ugly19ugly62ugly65close_sd8-endof-condeffs
  :parameters () :precondition (and (do-close_sd8-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1435473ugly93ugly93ugly93ugly93close_sd3-condeff1-no-3
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd2))
  :effect (and (done-1)))
 (:action ugly1435474ugly8ugly56ugly4ugly66close_sd3-condeff1-no-1 :parameters
  () :precondition (and (do-close_sd3-condeffs) (not-closed-sd9)) :effect
  (and (done-1)))
 (:action ugly1435475ugly25ugly33ugly49ugly58close_sd11-condeff0-no-2
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1435476ugly19ugly62ugly65ugly30open-sd8 :parameters ()
  :precondition (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly1435477ugly13ugly39ugly6ugly95close_sd8-condeff1-no-2 :parameters
  () :precondition (and (do-close_sd8-condeffs) (not-closed-sd3)) :effect
  (and (done-1)))
 (:action ugly1435478ugly96ugly8ugly56ugly4wait_cb1-condeff1-no-4 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect
  (and (done-1)))
 (:action ugly1435479ugly48ugly83ugly61ugly38close_sd8-condeff0-no-0
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action ugly1435480ugly27ugly78ugly70ugly45open-cb2 :parameters ()
  :precondition (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1435481ugly33ugly49ugly58ugly5close_sd2-condeff0-no-2 :parameters
  () :precondition (and (do-close_sd2-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly1435482ugly47ugly42ugly82ugly35close_sd3-condeff0-no-1
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action ugly1435483ugly49ugly58ugly5ugly44close_sd8-condeff0-yes :parameters
  () :precondition
  (and (do-close_sd8-condeffs) (closed-sd7) (closed-sd3) (closed-sd2)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435484ugly92ugly67ugly34ugly18close_sd11-condeff0-no-0
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action ugly1435485ugly67ugly34ugly18ugly3close_sd8-condeff0-no-1 :parameters
  () :precondition (and (do-close_sd8-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly1435486ugly52ugly74ugly63ugly50close_sd3-condeff1-yes :parameters
  () :precondition
  (and (do-close_sd3-condeffs) (closed-sd11) (closed-sd9) (closed-sd8)
       (closed-sd2) (closed-cb1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435487ugly37ugly59ugly69ugly79open-sd3 :parameters ()
  :precondition (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly1435488ugly66ugly91ugly75ugly64close_sd8-condeff0-no-2
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1435489ugly26ugly23ugly37ugly59open-sd11 :parameters ()
  :precondition (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly1435490ugly60ugly96ugly8ugly56close_sd11-condeff0-no-1
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action ugly1435491ugly57ugly26ugly23ugly37wait_cb1-condeff0-no-2 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly1435492ugly2ugly13ugly39ugly6close_sd3-endof-condeffs :parameters
  () :precondition (and (do-close_sd3-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1435493ugly82ugly35ugly86ugly55close_sd2-condeff1-no-0
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd11))
  :effect (and (done-1)))
 (:action ugly1435494ugly81ugly81ugly81ugly81open-cb1 :parameters ()
  :precondition (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435495ugly63ugly50ugly89ugly43close_sd8-condeff1-no-4
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-cb1))
  :effect (and (done-1)))
 (:action ugly1435496ugly51ugly36ugly28ugly52open-sd6 :parameters ()
  :precondition (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly1435497ugly85ugly15ugly16ugly88close_sd3-condeff1-no-0
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd11))
  :effect (and (done-1)))
 (:action ugly1435498ugly78ugly70ugly45ugly80close_sd2-condeff0-yes :parameters
  () :precondition
  (and (do-close_sd2-condeffs) (closed-sd7) (closed-sd8) (closed-sd3)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435499ugly45ugly80ugly41ugly25close_sd7-condeff0-no-0
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action ugly1435500ugly55ugly47ugly42ugly82close_sd7-condeff0-no-2
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1435501ugly18ugly3ugly21ugly2close_sd9-condeff0-no-1 :parameters
  () :precondition (and (do-close_sd9-condeffs) (not-closed-sd8)) :effect
  (and (done-0)))
 (:action ugly1435502ugly56ugly4ugly66ugly91open-sd5 :parameters ()
  :precondition (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly1435503ugly35ugly86ugly55ugly47close_sd2-condeff0-no-0
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action ugly1435504ugly76ugly11ugly84ugly54close_sd8-condeff1-yes :parameters
  () :precondition
  (and (do-close_sd8-condeffs) (closed-sd11) (closed-sd9) (closed-sd3)
       (closed-sd2) (closed-cb1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435505ugly54ugly24ugly87ugly73close_sd3-condeff1-no-2
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd8))
  :effect (and (done-1)))
 (:action ugly1435506ugly64ugly22ugly31ugly14close_sd9-condeff0-no-0
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action ugly1435507ugly23ugly37ugly59ugly69open-sd1 :parameters ()
  :precondition (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly1435508ugly43ugly29ugly46ugly51close_sd7-condeff0-no-3
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1435509ugly34ugly18ugly3ugly21close_sd11-condeff0-yes :parameters
  () :precondition
  (and (do-close_sd11-condeffs) (closed-sd9) (closed-sd8) (closed-sd3)
       (closed-sd2) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435510ugly94ugly94ugly94ugly94close_sd3-condeff1-no-4
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-cb1))
  :effect (and (done-1)))
 (:action ugly1435511ugly83ugly61ugly38ugly20close_sd7-condeff0-yes :parameters
  () :precondition
  (and (do-close_sd7-condeffs) (closed-sd8) (closed-sd3) (closed-sd2)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435512ugly70ugly45ugly80ugly41close_sd8-condeff1-no-0
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd11))
  :effect (and (done-1)))
 (:action ugly1435513ugly88ugly90ugly48ugly83wait_cb1-condeff1-yes :parameters
  () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd11) (closed-sd9) (closed-sd8)
       (closed-sd3) (closed-sd2))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435514ugly58ugly5ugly44ugly19wait_cb1-condeff1-no-0 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd11)) :effect
  (and (done-1)))
 (:action ugly1435515ugly39ugly6ugly95ugly27open-sd2 :parameters ()
  :precondition (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly1435516ugly16ugly88ugly90ugly48close_sd3 :parameters ()
  :precondition (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2))
  :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly1435517ugly5ugly44ugly19ugly62wait_cb1-condeff1-no-3 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd3)) :effect
  (and (done-1)))
 (:action ugly1435518ugly3ugly21ugly2ugly13close_sd4 :parameters ()
  :precondition (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly1435519ugly53ugly68ugly17ugly7close_sd10 :parameters ()
  :precondition (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd10) (not (not-closed-sd10))))
 (:action ugly1435520ugly46ugly51ugly36ugly28close_sd2-endof-condeffs
  :parameters () :precondition (and (do-close_sd2-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1435521ugly74ugly63ugly50ugly89close_sd2-condeff0-no-1
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action ugly1435522ugly90ugly48ugly83ugly61close_sd5 :parameters ()
  :precondition (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly1435523ugly17ugly7ugly9ugly57close_sd8-condeff1-no-1 :parameters
  () :precondition (and (do-close_sd8-condeffs) (not-closed-sd9)) :effect
  (and (done-1)))
 (:action ugly1435524ugly41ugly25ugly33ugly49wait_cb1-condeff0-no-1 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd8)) :effect
  (and (done-0)))
 (:action ugly1435525ugly29ugly46ugly51ugly36close_sd8-condeff1-no-3
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd2))
  :effect (and (done-1)))
 (:action ugly1435526ugly87ugly73ugly92ugly67close_sd7-condeff0-no-1
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1435527ugly80ugly41ugly25ugly33close_sd2-condeff1-no-2
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd8))
  :effect (and (done-1)))
 (:action ugly1435528ugly28ugly52ugly74ugly63close_sd2-condeff1-no-3
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd3))
  :effect (and (done-1)))
 (:action ugly1435529ugly31ugly14ugly12ugly85close_sd9-condeff0-no-3
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1435530ugly40ugly60ugly96ugly8wait_cb1-condeff0-yes :parameters
  () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd7) (closed-sd8) (closed-sd3)
       (closed-sd2))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435531ugly62ugly65ugly30ugly72close_sd11 :parameters ()
  :precondition (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2))
  :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action ugly1435532ugly71ugly10ugly76ugly11close_sd3-condeff0-yes :parameters
  () :precondition
  (and (do-close_sd3-condeffs) (closed-sd7) (closed-sd8) (closed-sd2)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435533ugly91ugly75ugly64ugly22close_sd7 :parameters ()
  :precondition (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly1435534ugly32ugly71ugly10ugly76close_sd9-condeff0-yes :parameters
  () :precondition
  (and (do-close_sd9-condeffs) (closed-sd11) (closed-sd8) (closed-sd3)
       (closed-sd2) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435535ugly73ugly92ugly67ugly34close_sd8 :parameters ()
  :precondition (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly1435536ugly38ugly20ugly32ugly71close_sd9 :parameters ()
  :precondition (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2))
  :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action ugly1435537ugly68ugly17ugly7ugly9wait_cb1-condeff0-no-0 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd7)) :effect
  (and (done-0)))
 (:action ugly1435538ugly9ugly57ugly26ugly23close_sd7-endof-condeffs
  :parameters () :precondition (and (do-close_sd7-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))))
 (:action ugly1435539ugly59ugly69ugly79ugly77close_sd2 :parameters ()
  :precondition (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2))
  :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly1435540ugly69ugly79ugly77ugly40wait_cb1-condeff0-no-3 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect
  (and (done-0)))) 