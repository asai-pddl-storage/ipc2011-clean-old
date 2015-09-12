
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (not-closed-sd5) (do-normal) (not-closed-sd4) (closed-cb1)
  (not-closed-sd14) (do-close_sd15-condeffs) (do-close_sd13-condeffs)
  (closed-sd15) (closed-sd9) (not-closed-sd17) (updated-cb1) (not-closed-sd8)
  (done-1) (updated-cb3) (closed-sd5) (not-closed-sd9) (closed-sd6) (done-0)
  (not-closed-sd13) (closed-sd3) (closed-cb2) (not-closed-cb2) (closed-sd4)
  (do-close_sd10-condeffs) (not-closed-sd15) (not-closed-cb3) (not-closed-sd12)
  (closed-sd14) (closed-sd13) (closed-sd17) (not-closed-cb1) (updated-cb2)
  (closed-sd7) (closed-sd1) (closed-sd18) (not-closed-sd1) (not-closed-sd11)
  (not-closed-sd10) (closed-sd12) (not-closed-sd7) (do-close_sd14-condeffs)
  (closed-sd16) (closed-cb3) (do-wait_cb3-condeffs) (not-updated-cb3)
  (closed-sd2) (not-closed-sd6) (not-closed-sd18) (not-closed-sd2) (closed-sd8)
  (not-updated-cb1) (closed-sd11) (not-closed-sd3) (closed-sd10)
  (not-closed-sd16) (not-updated-cb2))
 (:action ugly1436972ugly37ugly21ugly38ugly60close_sd13 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd13-condeffs) (closed-sd13)
       (not (not-closed-sd13))))
 (:action ugly1436973ugly18ugly58ugly52ugly12close_sd15-endof-condeffs
  :parameters () :precondition (and (do-close_sd15-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd15-condeffs)) (not (done-0))))
 (:action ugly1436974ugly45ugly47ugly37ugly21open-sd13 :parameters ()
  :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd13) (not (closed-sd13))))
 (:action ugly1436975ugly65ugly32ugly35ugly40close_sd15 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd15-condeffs) (closed-sd15)
       (not (not-closed-sd15))))
 (:action ugly1436976ugly61ugly66ugly42ugly29wait_cb3-condeff0-yes :parameters
  () :precondition (and (do-wait_cb3-condeffs) (closed-sd10)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1436977ugly14ugly65ugly32ugly35open-sd11 :parameters ()
  :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly1436978ugly70ugly10ugly6ugly18close_sd8 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd8) (not (not-closed-sd8))))
 (:action ugly1436979ugly41ugly33ugly51ugly13close_sd10-condeff0-yes
  :parameters () :precondition (and (do-close_sd10-condeffs) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1436980ugly50ugly36ugly20ugly45open-sd4 :parameters ()
  :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly1436981ugly66ugly42ugly29ugly62open-sd17 :parameters ()
  :precondition
  (and (do-normal) (closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd17) (not (closed-sd17))))
 (:action ugly1436982ugly7ugly25ugly41ugly33open-cb3 :parameters ()
  :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1436983ugly23ugly19ugly67ugly49close_sd7 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd7) (not (not-closed-sd7))))
 (:action ugly1436984ugly4ugly7ugly25ugly41open-sd18 :parameters ()
  :precondition
  (and (do-normal) (closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd18) (not (closed-sd18))))
 (:action ugly1436985ugly40ugly4ugly7ugly25open-sd10 :parameters ()
  :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly1436986ugly39ugly54ugly1ugly27close_sd17 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd17) (not (not-closed-sd17))))
 (:action ugly1436987ugly17ugly24ugly63ugly56wait_cb3 :parameters ()
  :precondition (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action ugly1436988ugly47ugly37ugly21ugly38close_sd5 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly1436989ugly28ugly50ugly36ugly20open-sd6 :parameters ()
  :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly1436990ugly26ugly31ugly15ugly39close_sd10 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action ugly1436991ugly44ugly26ugly31ugly15open-sd12 :parameters ()
  :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd12) (not (closed-sd12))))
 (:action ugly1436992ugly67ugly49ugly59ugly46close_cb3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly1436993ugly58ugly52ugly12ugly9close_sd11 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd11) (not (not-closed-sd11))))
 (:action ugly1436994ugly24ugly63ugly56ugly61wait_cb3-condeff1-no-1 :parameters
  () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd14)) :effect
  (and (done-1)))
 (:action ugly1436995ugly64ugly53ugly8ugly17close_sd9 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd9) (not (not-closed-sd9))))
 (:action ugly1436996ugly34ugly69ugly11ugly68close_sd15-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd15-condeffs) (closed-sd14) (closed-sd13) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1436997ugly21ugly38ugly60ugly16wait_cb1 :parameters ()
  :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not-closed-cb1) (updated-cb1) (not (closed-cb1))
       (not (not-updated-cb1))))
 (:action ugly1436998ugly46ugly30ugly28ugly50open-sd15 :parameters ()
  :precondition
  (and (do-normal) (closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd15) (not (closed-sd15))))
 (:action ugly1436999ugly6ugly18ugly58ugly52close_sd14-condeff0-no-0
  :parameters () :precondition (and (do-close_sd14-condeffs) (not-closed-sd15))
  :effect (and (done-0)))
 (:action ugly1437000ugly3ugly43ugly57ugly22wait_cb3-condeff1-yes :parameters
  () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd15) (closed-sd14) (closed-sd13))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1437001ugly60ugly16ugly70ugly10close_sd15-condeff0-no-0
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-sd14))
  :effect (and (done-0)))
 (:action ugly1437002ugly49ugly59ugly46ugly30close_sd2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly1437003ugly19ugly67ugly49ugly59open-sd5 :parameters ()
  :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly1437004ugly13ugly55ugly14ugly65close_cb1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly1437005ugly68ugly5ugly48ugly44close_sd4 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly1437006ugly52ugly12ugly9ugly23close_sd13-condeff0-no-1
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-sd14))
  :effect (and (done-0)))
 (:action ugly1437007ugly38ugly60ugly16ugly70close_sd14 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd14-condeffs) (closed-sd14)
       (not (not-closed-sd14))))
 (:action ugly1437008ugly1ugly27ugly2ugly3open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly1437009ugly43ugly57ugly22ugly64open-cb1 :parameters ()
  :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1437010ugly22ugly64ugly53ugly8close_sd13-condeff0-yes :parameters
  () :precondition
  (and (do-close_sd13-condeffs) (closed-sd15) (closed-sd14) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1437011ugly69ugly11ugly68ugly5open-sd3 :parameters ()
  :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly1437012ugly15ugly39ugly54ugly1close_sd3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly1437013ugly57ugly22ugly64ugly53close_sd15-condeff0-no-2
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1437014ugly20ugly45ugly47ugly37close_sd13-endof-condeffs
  :parameters () :precondition (and (do-close_sd13-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd13-condeffs)) (not (done-0))))
 (:action ugly1437015ugly8ugly17ugly24ugly63close_sd10-condeff0-no-0
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1437016ugly62ugly34ugly69ugly11wait_cb3-endof-condeffs
  :parameters () :precondition (and (do-wait_cb3-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly1437017ugly54ugly1ugly27ugly2close_sd16 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd16) (not (not-closed-sd16))))
 (:action ugly1437018ugly16ugly70ugly10ugly6close_sd13-condeff0-no-0
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-sd15))
  :effect (and (done-0)))
 (:action ugly1437019ugly11ugly68ugly5ugly48open-sd7 :parameters ()
  :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly1437020ugly35ugly40ugly4ugly7close_sd6 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly1437021ugly51ugly13ugly55ugly14wait_cb3-condeff1-no-0 :parameters
  () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd15)) :effect
  (and (done-1)))
 (:action ugly1437022ugly10ugly6ugly18ugly58open-cb2 :parameters ()
  :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1437023ugly48ugly44ugly26ugly31close_sd14-endof-condeffs
  :parameters () :precondition (and (do-close_sd14-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd14-condeffs)) (not (done-0))))
 (:action ugly1437024ugly32ugly35ugly40ugly4close_sd15-condeff0-no-1
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-sd13))
  :effect (and (done-0)))
 (:action ugly1437025ugly33ugly51ugly13ugly55close_sd14-condeff0-no-2
  :parameters () :precondition (and (do-close_sd14-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1437026ugly2ugly3ugly43ugly57close_sd12 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd12) (not (not-closed-sd12))))
 (:action ugly1437027ugly63ugly56ugly61ugly66open-sd9 :parameters ()
  :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly1437028ugly36ugly20ugly45ugly47open-sd14 :parameters ()
  :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd14) (not (closed-sd14))))
 (:action ugly1437029ugly5ugly48ugly44ugly26close_cb2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly1437030ugly25ugly41ugly33ugly51close_sd14-condeff0-no-1
  :parameters () :precondition (and (do-close_sd14-condeffs) (not-closed-sd13))
  :effect (and (done-0)))
 (:action ugly1437031ugly29ugly62ugly34ugly69close_sd14-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd14-condeffs) (closed-sd15) (closed-sd13) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1437032ugly59ugly46ugly30ugly28open-sd1 :parameters ()
  :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly1437033ugly30ugly28ugly50ugly36close_sd13-condeff0-no-2
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1437034ugly9ugly23ugly19ugly67open-sd2 :parameters ()
  :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly1437035ugly56ugly61ugly66ugly42close_sd1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd1) (not (not-closed-sd1))))
 (:action ugly1437036ugly31ugly15ugly39ugly54close_sd18 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd18) (not (not-closed-sd18))))
 (:action ugly1437037ugly27ugly2ugly3ugly43close_sd10-endof-condeffs
  :parameters () :precondition (and (do-close_sd10-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))))
 (:action ugly1437038ugly55ugly14ugly65ugly32open-sd16 :parameters ()
  :precondition
  (and (do-normal) (closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd16) (not (closed-sd16))))
 (:action ugly1437039ugly42ugly29ugly62ugly34wait_cb2 :parameters ()
  :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not-closed-cb2) (updated-cb2) (not (closed-cb2))
       (not (not-updated-cb2))))
 (:action ugly1437040ugly12ugly9ugly23ugly19wait_cb3-condeff1-no-2 :parameters
  () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd13)) :effect
  (and (done-1)))
 (:action ugly1437041ugly53ugly8ugly17ugly24wait_cb3-condeff0-no-0 :parameters
  () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd10)) :effect
  (and (done-0)))) 