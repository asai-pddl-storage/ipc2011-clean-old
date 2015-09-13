
(define (domain grounded-strips-psr) (:requirements :strips :action-costs)
 (:predicates (not-closed-sd20) (do-normal) (closed-sd10) (not-closed-sd14)
  (do-close_sd1-condeffs) (not-closed-sd13) (closed-sd11) (not-updated-cb2)
  (not-closed-sd10) (done-0) (closed-sd4) (not-updated-cb3) (not-closed-sd4)
  (closed-sd20) (updated-cb1) (closed-cb3) (updated-cb4)
  (do-close_sd6-condeffs) (closed-sd15) (not-closed-sd11) (not-closed-sd19)
  (closed-sd9) (updated-cb3) (closed-cb1) (closed-sd6) (done-1)
  (not-closed-sd15) (closed-sd7) (not-closed-sd16) (closed-sd21) (closed-sd16)
  (closed-sd13) (not-closed-sd18) (not-closed-sd22) (not-updated-cb4)
  (not-closed-sd2) (closed-sd17) (not-closed-sd8) (not-closed-cb4)
  (not-closed-sd7) (closed-cb4) (do-close_sd5-condeffs) (updated-cb2)
  (closed-sd8) (not-closed-sd5) (not-closed-sd17) (do-wait_cb1-condeffs)
  (not-closed-cb2) (closed-sd12) (do-wait_cb2-condeffs) (not-closed-sd6)
  (not-closed-cb3) (closed-sd3) (closed-sd22) (closed-sd1) (closed-sd19)
  (closed-sd5) (not-closed-sd21) (not-closed-sd12) (not-updated-cb1)
  (closed-cb2) (closed-sd18) (not-closed-cb1) (not-closed-sd1) (closed-sd14)
  (closed-sd2) (not-closed-sd9) (not-closed-sd3))
 (:functions (total-cost) - number)
 (:action ugly897ugly915ugly71ugly16ugly51ugly26open-sd1 :parameters ()
  :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd1) (not (closed-sd1))))
 (:action ugly898ugly945ugly34ugly5ugly44ugly63wait_cb2-condeff0-yes
  :parameters () :precondition (and (do-wait_cb2-condeffs) (closed-sd5))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly899ugly925ugly57ugly60ugly31ugly13wait_cb1-endof-condeffs
  :parameters () :precondition (and (do-wait_cb1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0))))
 (:action ugly900ugly905ugly60ugly31ugly13ugly73open-sd19 :parameters ()
  :precondition
  (and (do-normal) (closed-sd19) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd19) (not (closed-sd19))))
 (:action ugly901ugly952ugly61ugly46ugly61ugly46close_sd3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly902ugly913ugly68ugly3ugly45ugly28close_sd10 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd10) (not (not-closed-sd10))))
 (:action ugly903ugly958ugly32ugly42ugly47ugly57close_sd7 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd7) (not (not-closed-sd7))))
 (:action ugly904ugly939ugly24ugly66ugly55ugly59open-sd18 :parameters ()
  :precondition
  (and (do-normal) (closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd18) (not (closed-sd18))))
 (:action ugly905ugly956ugly26ugly53ugly9ugly17open-sd2 :parameters ()
  :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd2) (not (closed-sd2))))
 (:action ugly906ugly969ugly16ugly51ugly26ugly53close_sd13 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd13) (not (not-closed-sd13))))
 (:action ugly907ugly946ugly2ugly19ugly7ugly4close_sd14 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd14) (not (not-closed-sd14))))
 (:action ugly908ugly962ugly65ugly25ugly71ugly16open-sd3 :parameters ()
  :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd3) (not (closed-sd3))))
 (:action ugly909ugly904ugly43ugly40ugly10ugly50close_cb3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly910ugly899ugly29ugly33ugly69ugly23open-cb2 :parameters ()
  :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly911ugly955ugly69ugly23ugly56ugly11close_sd6 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly912ugly941ugly63ugly65ugly25ugly71close_sd6-condeff0-no-0
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly913ugly964ugly15ugly20ugly21ugly43open-sd14 :parameters ()
  :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd14) (not (closed-sd14))))
 (:action ugly914ugly931ugly7ugly4ugly58ugly48close_sd15 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd15) (not (not-closed-sd15))))
 (:action ugly915ugly967ugly11ugly14ugly49ugly32open-sd12 :parameters ()
  :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd12) (not (closed-sd12))))
 (:action ugly916ugly935ugly10ugly50ugly29ugly33wait_cb2-endof-condeffs
  :parameters () :precondition (and (do-wait_cb2-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly917ugly936ugly14ugly49ugly32ugly42open-sd7 :parameters ()
  :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd7) (not (closed-sd7))))
 (:action ugly918ugly937ugly27ugly6ugly22ugly37close_sd21 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd21) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd21) (not (not-closed-sd21))))
 (:action ugly919ugly934ugly54ugly54ugly54ugly54open-cb4 :parameters ()
  :precondition
  (and (do-normal) (closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly920ugly901ugly56ugly11ugly14ugly49open-sd22 :parameters ()
  :precondition
  (and (do-normal) (closed-sd22) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd22) (not (closed-sd22))))
 (:action ugly921ugly944ugly1ugly72ugly39ugly1wait_cb1-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly922ugly908ugly66ugly55ugly59ugly36wait_cb4 :parameters ()
  :precondition (and (do-normal) (not-updated-cb4)) :effect
  (and (not-closed-cb4) (updated-cb4) (not (closed-cb4))
       (not (not-updated-cb4))))
 (:action ugly923ugly916ugly39ugly1ugly72ugly39close_sd22 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd22) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd22) (not (not-closed-sd22))))
 (:action ugly924ugly963ugly52ugly15ugly20ugly21open-sd11 :parameters ()
  :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd11) (not (closed-sd11))))
 (:action ugly925ugly953ugly13ugly73ugly35ugly38close_sd1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly926ugly900ugly9ugly17ugly52ugly15close_sd5-condeff0-no-0
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly927ugly940ugly30ugly68ugly3ugly45close_cb4 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb4) (not-updated-cb4) (not (not-closed-cb4))
       (not (updated-cb4))))
 (:action ugly928ugly947ugly64ugly64ugly64ugly64wait_cb2 :parameters ()
  :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly929ugly929ugly33ugly69ugly23ugly56close_sd11 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd11) (not (not-closed-sd11))))
 (:action ugly930ugly966ugly23ugly56ugly11ugly14open-sd5 :parameters ()
  :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd5) (not (closed-sd5))))
 (:action ugly931ugly903ugly62ugly67ugly18ugly27close_sd17 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd17) (not (not-closed-sd17))))
 (:action ugly932ugly949ugly25ugly71ugly16ugly51close_sd1-condeff0-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly933ugly917ugly40ugly10ugly50ugly29open-sd21 :parameters ()
  :precondition
  (and (do-normal) (closed-sd21) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd21) (not (closed-sd21))))
 (:action ugly934ugly950ugly47ugly57ugly60ugly31close_sd8 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd8) (not (not-closed-sd8))))
 (:action ugly935ugly906ugly73ugly35ugly38ugly24wait_cb2-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd5))
  :effect (and (done-0)))
 (:action ugly936ugly910ugly3ugly45ugly28ugly12close_cb2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly937ugly923ugly20ugly21ugly43ugly40close_sd12 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd12) (not (not-closed-sd12))))
 (:action ugly938ugly914ugly35ugly38ugly24ugly66open-cb3 :parameters ()
  :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly939ugly920ugly5ugly44ugly63ugly65close_sd1-condeff0-yes
  :parameters () :precondition (and (do-close_sd1-condeffs) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly940ugly926ugly4ugly58ugly48ugly8open-sd13 :parameters ()
  :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd13) (not (closed-sd13))))
 (:action ugly941ugly959ugly72ugly39ugly1ugly72open-sd15 :parameters ()
  :precondition
  (and (do-normal) (closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd15) (not (closed-sd15))))
 (:action ugly942ugly927ugly44ugly63ugly65ugly25wait_cb1-condeff0-yes
  :parameters () :precondition (and (do-wait_cb1-condeffs) (closed-sd1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly943ugly924ugly67ugly18ugly27ugly6close_sd4 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly944ugly897ugly19ugly7ugly4ugly58open-sd6 :parameters ()
  :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd6) (not (closed-sd6))))
 (:action ugly945ugly930ugly70ugly34ugly5ugly44wait_cb3 :parameters ()
  :precondition (and (do-normal) (not-updated-cb3)) :effect
  (and (not-closed-cb3) (updated-cb3) (not (closed-cb3))
       (not (not-updated-cb3))))
 (:action ugly946ugly898ugly49ugly32ugly42ugly47open-cb1 :parameters ()
  :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly947ugly960ugly55ugly59ugly36ugly62wait_cb2-condeff1-yes
  :parameters () :precondition (and (do-wait_cb2-condeffs) (closed-sd6))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly948ugly933ugly21ugly43ugly40ugly10open-sd4 :parameters ()
  :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd4) (not (closed-sd4))))
 (:action ugly949ugly921ugly48ugly8ugly41ugly70open-sd20 :parameters ()
  :precondition
  (and (do-normal) (closed-sd20) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd20) (not (closed-sd20))))
 (:action ugly950ugly943ugly28ugly12ugly30ugly68close_sd20 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd20) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd20) (not (not-closed-sd20))))
 (:action ugly951ugly918ugly41ugly70ugly34ugly5open-sd10 :parameters ()
  :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd10) (not (closed-sd10))))
 (:action ugly952ugly957ugly6ugly22ugly37ugly2close_sd5-condeff0-yes
  :parameters () :precondition (and (do-close_sd5-condeffs) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly953ugly909ugly8ugly41ugly70ugly34close_sd18 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd18) (not (not-closed-sd18))))
 (:action ugly954ugly938ugly18ugly27ugly6ugly22open-sd17 :parameters ()
  :precondition
  (and (do-normal) (closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd17) (not (closed-sd17))))
 (:action ugly955ugly965ugly58ugly48ugly8ugly41wait_cb1 :parameters ()
  :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly956ugly922ugly12ugly30ugly68ugly3open-sd9 :parameters ()
  :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd9) (not (closed-sd9))))
 (:action ugly957ugly902ugly17ugly52ugly15ugly20close_sd5-endof-condeffs
  :parameters () :precondition (and (do-close_sd5-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))))
 (:action ugly958ugly928ugly51ugly26ugly53ugly9close_sd6-endof-condeffs
  :parameters () :precondition (and (do-close_sd6-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))))
 (:action ugly959ugly968ugly46ugly61ugly46ugly61open-sd8 :parameters ()
  :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd8) (not (closed-sd8))))
 (:action ugly960ugly951ugly22ugly37ugly2ugly19close_sd16 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd16) (not (not-closed-sd16))))
 (:action ugly961ugly932ugly53ugly9ugly17ugly52close_sd6-condeff0-yes
  :parameters () :precondition (and (do-close_sd6-condeffs) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly962ugly961ugly36ugly62ugly67ugly18close_sd1-endof-condeffs
  :parameters () :precondition (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly963ugly948ugly37ugly2ugly19ugly7close_sd19 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd19) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd19) (not (not-closed-sd19))))
 (:action ugly964ugly911ugly59ugly36ugly62ugly67close_sd5 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action ugly965ugly954ugly42ugly47ugly57ugly60close_cb1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly966ugly919ugly38ugly24ugly66ugly55close_sd9 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd9) (not (not-closed-sd9))))
 (:action ugly967ugly907ugly50ugly29ugly33ugly69close_sd2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly968ugly942ugly31ugly13ugly73ugly35open-sd16 :parameters ()
  :precondition
  (and (do-normal) (closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd16) (not (closed-sd16))))
 (:action ugly969ugly912ugly45ugly28ugly12ugly30wait_cb2-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd6))
  :effect (and (done-1)))) 