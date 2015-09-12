
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (not-updated-cb1) (not-closed-sd5) (not-closed-sd3)
  (do-close_sd5-condeffs) (closed-sd12) (closed-sd10) (not-closed-cb2)
  (not-closed-sd2) (not-closed-sd9) (closed-sd4) (do-normal) (closed-sd5)
  (not-closed-cb1) (not-closed-sd1) (closed-sd1) (done-3)
  (do-close_sd4-condeffs) (closed-sd6) (updated-cb1) (not-closed-sd6)
  (do-close_sd12-condeffs) (not-closed-sd11) (closed-sd3) (not-closed-sd10)
  (not-closed-sd4) (closed-cb1) (done-1) (closed-sd11) (closed-cb2)
  (not-closed-sd7) (do-wait_cb1-condeffs) (do-close_sd1-condeffs) (done-2)
  (closed-sd8) (not-closed-sd12) (not-updated-cb2) (updated-cb2)
  (not-closed-cb3) (updated-cb3) (not-updated-cb3) (closed-sd7)
  (do-close_sd10-condeffs) (not-closed-sd8) (do-wait_cb3-condeffs) (closed-cb3)
  (do-close_sd9-condeffs) (closed-sd9) (done-0) (closed-sd2)
  (do-close_sd11-condeffs))
 (:action ugly1448468ugly48ugly20ugly16ugly13close_sd1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly1448469ugly27ugly81ugly58ugly19wait_cb3-condeff2-no-1 :parameters
  () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd10)) :effect
  (and (done-2)))
 (:action ugly1448470ugly73ugly9ugly52ugly56close_sd11-condeff0-no-0
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd10))
  :effect (and (done-0)))
 (:action ugly1448471ugly7ugly47ugly62ugly59wait_cb3-condeff1-no-0 :parameters
  () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd5)) :effect
  (and (done-1)))
 (:action ugly1448472ugly80ugly80ugly80ugly80wait_cb1-condeff0-yes :parameters
  () :precondition (and (do-wait_cb1-condeffs) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1448473ugly53ugly66ugly71ugly32close_sd9-condeff0-yes :parameters
  () :precondition (and (do-close_sd9-condeffs) (closed-sd4) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1448474ugly26ugly14ugly77ugly79close_sd10-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-sd11) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1448475ugly82ugly45ugly38ugly24open-sd5 :parameters ()
  :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly1448476ugly77ugly79ugly7ugly47close_sd4-condeff0-no-1 :parameters
  () :precondition (and (do-close_sd4-condeffs) (not-closed-cb3)) :effect
  (and (done-0)))
 (:action ugly1448477ugly35ugly33ugly55ugly65open-sd6 :parameters ()
  :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly1448478ugly16ugly13ugly27ugly81close_sd5-endof-condeffs
  :parameters () :precondition (and (do-close_sd5-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))))
 (:action ugly1448479ugly17ugly68ugly35ugly33close_sd5-condeff0-yes :parameters
  () :precondition (and (do-close_sd5-condeffs) (closed-sd9) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1448480ugly3ugly29ugly17ugly68open-sd11 :parameters ()
  :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly1448481ugly22ugly70ugly18ugly42open-sd9 :parameters ()
  :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly1448482ugly38ugly24ugly41ugly30open-cb3 :parameters ()
  :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1448483ugly20ugly16ugly13ugly27wait_cb1-condeff0-no-0 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly1448484ugly37ugly26ugly14ugly77wait_cb1 :parameters ()
  :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly1448485ugly2ugly75ugly34ugly25wait_cb3-condeff0-no-1 :parameters
  () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd9)) :effect
  (and (done-0)))
 (:action ugly1448486ugly44ugly53ugly66ugly71close_cb2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly1448487ugly71ugly32ugly15ugly23open-cb1 :parameters ()
  :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1448488ugly66ugly71ugly32ugly15close_sd7 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd7) (not (not-closed-sd7))))
 (:action ugly1448489ugly13ugly27ugly81ugly58close_sd9-condeff1-no-0
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd5))
  :effect (and (done-1)))
 (:action ugly1448490ugly63ugly64ugly1ugly74close_sd10-condeff1-yes :parameters
  () :precondition (and (do-close_sd10-condeffs) (closed-sd12) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1448491ugly76ugly54ugly50ugly60close_sd4-endof-condeffs
  :parameters () :precondition (and (do-close_sd4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))))
 (:action ugly1448492ugly10ugly22ugly70ugly18open-sd4 :parameters ()
  :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly1448493ugly43ugly5ugly6ugly78close_sd11 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action ugly1448494ugly57ugly12ugly21ugly61wait_cb1-endof-condeffs
  :parameters () :precondition (and (do-wait_cb1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0))))
 (:action ugly1448495ugly19ugly73ugly9ugly52close_sd5-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd5-condeffs) (not-closed-sd9)) :effect
  (and (done-0)))
 (:action ugly1448496ugly25ugly67ugly39ugly57close_sd10-condeff1-no-1
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-cb3))
  :effect (and (done-1)))
 (:action ugly1448497ugly23ugly48ugly20ugly16close_sd10-endof-condeffs
  :parameters () :precondition (and (do-close_sd10-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1448498ugly33ugly55ugly65ugly40close_sd12-condeff0-no-1
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1448499ugly74ugly10ugly22ugly70close_sd9-condeff1-yes :parameters
  () :precondition (and (do-close_sd9-condeffs) (closed-sd5) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1448500ugly32ugly15ugly23ugly48close_sd9-condeff1-no-1
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-cb3))
  :effect (and (done-1)))
 (:action ugly1448501ugly54ugly50ugly60ugly63wait_cb3 :parameters ()
  :precondition (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action ugly1448502ugly49ugly76ugly54ugly50close_sd4-condeff0-yes :parameters
  () :precondition (and (do-close_sd4-condeffs) (closed-sd9) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1448503ugly62ugly59ugly69ugly28wait_cb3-condeff2-no-0 :parameters
  () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd11)) :effect
  (and (done-2)))
 (:action ugly1448504ugly55ugly65ugly40ugly4close_sd12-condeff0-yes :parameters
  () :precondition (and (do-close_sd12-condeffs) (closed-sd10) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1448505ugly14ugly77ugly79ugly7open-cb2 :parameters ()
  :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1448506ugly36ugly44ugly53ugly66wait_cb3-condeff2-yes :parameters
  () :precondition (and (do-wait_cb3-condeffs) (closed-sd11) (closed-sd10))
  :effect (and (done-2) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1448507ugly12ugly21ugly61ugly82open-sd1 :parameters ()
  :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly1448508ugly21ugly61ugly82ugly45open-sd8 :parameters ()
  :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly1448509ugly75ugly34ugly25ugly67open-sd7 :parameters ()
  :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly1448510ugly5ugly6ugly78ugly49wait_cb3-condeff3-no-1 :parameters
  () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd10)) :effect
  (and (done-3)))
 (:action ugly1448511ugly39ugly57ugly12ugly21close_sd4-condeff0-no-0
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action ugly1448512ugly64ugly1ugly74ugly10close_sd8 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd8) (not (not-closed-sd8))))
 (:action ugly1448513ugly46ugly8ugly11ugly3close_sd1-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly1448514ugly79ugly7ugly47ugly62close_sd4 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly1448515ugly11ugly3ugly29ugly17wait_cb3-condeff1-yes :parameters
  () :precondition (and (do-wait_cb3-condeffs) (closed-sd5) (closed-sd9))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1448516ugly45ugly38ugly24ugly41close_sd1-endof-condeffs
  :parameters () :precondition (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly1448517ugly78ugly49ugly76ugly54close_sd11-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd10) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1448518ugly41ugly30ugly46ugly8close_sd10-condeff1-no-0
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd12))
  :effect (and (done-1)))
 (:action ugly1448519ugly69ugly28ugly72ugly43close_sd12-endof-condeffs
  :parameters () :precondition (and (do-close_sd12-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd12-condeffs)) (not (done-0))))
 (:action ugly1448520ugly65ugly40ugly4ugly2wait_cb3-condeff3-no-0 :parameters
  () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd12)) :effect
  (and (done-3)))
 (:action ugly1448521ugly1ugly74ugly10ugly22wait_cb3-condeff1-no-1 :parameters
  () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd9)) :effect
  (and (done-1)))
 (:action ugly1448522ugly4ugly2ugly75ugly34close_sd3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly1448523ugly42ugly37ugly26ugly14wait_cb3-endof-condeffs
  :parameters () :precondition
  (and (do-wait_cb3-condeffs) (done-0) (done-1) (done-2) (done-3)) :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2)) (not (done-3))))
 (:action ugly1448524ugly59ugly69ugly28ugly72open-sd3 :parameters ()
  :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly1448525ugly68ugly35ugly33ugly55wait_cb3-condeff0-yes :parameters
  () :precondition (and (do-wait_cb3-condeffs) (closed-sd4) (closed-sd9))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1448526ugly60ugly63ugly64ugly1wait_cb3-condeff3-yes :parameters
  () :precondition (and (do-wait_cb3-condeffs) (closed-sd12) (closed-sd10))
  :effect (and (done-3) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1448527ugly34ugly25ugly67ugly39close_sd5-condeff0-no-1
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1448528ugly8ugly11ugly3ugly29close_sd9-condeff0-no-1 :parameters
  () :precondition (and (do-close_sd9-condeffs) (not-closed-cb3)) :effect
  (and (done-0)))
 (:action ugly1448529ugly40ugly4ugly2ugly75open-sd12 :parameters ()
  :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd12) (not (closed-sd12))))
 (:action ugly1448530ugly24ugly41ugly30ugly46close_sd10-condeff0-no-0
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action ugly1448531ugly6ugly78ugly49ugly76close_sd5 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action ugly1448532ugly29ugly17ugly68ugly35close_cb1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly1448533ugly70ugly18ugly42ugly37close_sd2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly1448534ugly67ugly39ugly57ugly12close_sd9-endof-condeffs
  :parameters () :precondition (and (do-close_sd9-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1448535ugly72ugly43ugly5ugly6wait_cb2 :parameters ()
  :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not-closed-cb2) (updated-cb2) (not (closed-cb2))
       (not (not-updated-cb2))))
 (:action ugly1448536ugly52ugly56ugly51ugly31open-sd10 :parameters ()
  :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly1448537ugly56ugly51ugly31ugly36open-sd2 :parameters ()
  :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly1448538ugly30ugly46ugly8ugly11close_sd12-condeff0-no-0
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-sd10))
  :effect (and (done-0)))
 (:action ugly1448539ugly15ugly23ugly48ugly20close_sd9-condeff0-no-0
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action ugly1448540ugly61ugly82ugly45ugly38close_sd6 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly1448541ugly31ugly36ugly44ugly53wait_cb3-condeff0-no-0 :parameters
  () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd4)) :effect
  (and (done-0)))
 (:action ugly1448542ugly50ugly60ugly63ugly64close_sd12 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd12-condeffs) (closed-sd12)
       (not (not-closed-sd12))))
 (:action ugly1448543ugly9ugly52ugly56ugly51close_cb3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly1448544ugly18ugly42ugly37ugly26close_sd9 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action ugly1448545ugly28ugly72ugly43ugly5close_sd10 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action ugly1448546ugly47ugly62ugly59ugly69close_sd1-condeff0-yes :parameters
  () :precondition (and (do-close_sd1-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1448547ugly58ugly19ugly73ugly9close_sd11-condeff0-no-1
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1448548ugly81ugly58ugly19ugly73close_sd10-condeff0-no-1
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1448549ugly51ugly31ugly36ugly44close_sd11-endof-condeffs
  :parameters () :precondition (and (do-close_sd11-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0))))) 