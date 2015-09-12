
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (closed-sd7) (closed-sd9) (closed-sd13) (not-closed-cb1)
  (do-close_sd7-condeffs) (not-closed-cb3) (not-closed-sd8) (done-2)
  (not-closed-sd2) (closed-sd1) (not-closed-sd1) (not-updated-cb1) (closed-sd2)
  (do-close_sd4-condeffs) (closed-sd4) (closed-sd14) (closed-sd11)
  (not-closed-sd16) (do-close_sd9-condeffs) (do-close_sd19-condeffs)
  (closed-sd19) (not-closed-sd7) (not-closed-sd18) (not-closed-sd5)
  (not-closed-sd15) (closed-sd8) (not-closed-sd4) (not-closed-sd17)
  (closed-sd16) (do-wait_cb2-condeffs) (updated-cb2) (do-close_sd3-condeffs)
  (do-close_sd13-condeffs) (do-close_sd12-condeffs) (updated-cb3)
  (not-closed-sd6) (do-close_sd6-condeffs) (do-close_sd5-condeffs) (closed-sd3)
  (not-closed-sd3) (not-closed-sd10) (updated-cb1) (not-closed-sd12)
  (closed-cb1) (closed-sd17) (done-0) (not-closed-sd14) (closed-sd5)
  (do-close_sd1-condeffs) (not-updated-cb2) (closed-sd10) (closed-sd18)
  (done-1) (closed-cb3) (closed-cb2) (not-updated-cb3) (not-closed-sd9)
  (not-closed-cb2) (not-closed-sd11) (do-wait_cb1-condeffs) (closed-sd15)
  (do-close_sd8-condeffs) (closed-sd6) (do-normal) (closed-sd12)
  (do-close_sd2-condeffs) (not-closed-sd19) (not-closed-sd13))
 (:action ugly1446653ugly40ugly35ugly146ugly10close_sd12-condeff0-no-0
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action ugly1446654ugly19ugly54ugly24ugly167open-sd1 :parameters ()
  :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly1446655ugly111ugly140ugly153ugly144close_sd19-condeff0-no-0
  :parameters () :precondition (and (do-close_sd19-condeffs) (not-closed-sd5))
  :effect (and (done-0)))
 (:action ugly1446656ugly109ugly177ugly170ugly13close_sd5-endof-condeffs
  :parameters () :precondition (and (do-close_sd5-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))))
 (:action ugly1446657ugly118ugly2ugly106ugly80wait_cb2-endof-condeffs
  :parameters () :precondition (and (do-wait_cb2-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0))))
 (:action ugly1446658ugly170ugly13ugly174ugly91close_sd19-condeff0-no-1
  :parameters () :precondition (and (do-close_sd19-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action ugly1446659ugly175ugly124ugly43ugly6wait_cb2 :parameters ()
  :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly1446660ugly2ugly106ugly80ugly179close_sd8-condeff0-no-1
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1446661ugly1ugly72ugly137ugly129close_sd1-condeff2-yes
  :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd12) (closed-sd8) (closed-cb1)) :effect
  (and (done-2) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1446662ugly99ugly127ugly105ugly34close_sd6-endof-condeffs
  :parameters () :precondition (and (do-close_sd6-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))))
 (:action ugly1446663ugly89ugly67ugly97ugly148wait_cb1-condeff1-no-3
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd3))
  :effect (and (done-1)))
 (:action ugly1446664ugly114ugly52ugly23ugly109wait_cb2-condeff0-yes
  :parameters () :precondition (and (do-wait_cb2-condeffs) (closed-sd9))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1446665ugly132ugly162ugly81ugly79close_sd1-condeff2-no-2
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1))
  :effect (and (done-2)))
 (:action ugly1446666ugly165ugly152ugly156ugly70close_cb1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly1446667ugly130ugly94ugly166ugly27close_sd19-condeff0-no-2
  :parameters () :precondition (and (do-close_sd19-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1446668ugly139ugly18ugly117ugly168open-sd10 :parameters ()
  :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly1446669ugly71ugly173ugly76ugly165close_sd8-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd12) (closed-sd1) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1446670ugly142ugly100ugly14ugly150close_sd7-condeff0-no-0
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd13))
  :effect (and (done-0)))
 (:action ugly1446671ugly63ugly158ugly86ugly63close_sd7-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd13) (closed-sd6) (closed-sd3)
       (closed-sd2) (closed-sd1) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1446672ugly50ugly1ugly72ugly137open-sd19 :parameters ()
  :precondition
  (and (do-normal) (closed-sd19) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd19) (not (closed-sd19))))
 (:action ugly1446673ugly61ugly57ugly121ugly132close_sd7-condeff0-no-3
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1446674ugly104ugly9ugly48ugly143close_sd10 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd10) (not (not-closed-sd10))))
 (:action ugly1446675ugly49ugly59ugly21ugly60close_sd1-condeff1-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd13))
  :effect (and (done-1)))
 (:action ugly1446676ugly34ugly44ugly75ugly55wait_cb3 :parameters ()
  :precondition (and (do-normal) (not-updated-cb3)) :effect
  (and (not-closed-cb3) (updated-cb3) (not (closed-cb3))
       (not (not-updated-cb3))))
 (:action ugly1446677ugly54ugly24ugly167ugly147close_sd8 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly1446678ugly51ugly178ugly58ugly47wait_cb1-condeff2-no-2
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1))
  :effect (and (done-2)))
 (:action ugly1446679ugly159ugly69ugly135ugly16close_sd1-condeff1-no-3
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd3))
  :effect (and (done-1)))
 (:action ugly1446680ugly31ugly163ugly28ugly74close_sd12-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd12-condeffs) (closed-sd8) (closed-sd1) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1446681ugly53ugly15ugly119ugly164close_sd2-condeff1-no-3
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd3))
  :effect (and (done-1)))
 (:action ugly1446682ugly43ugly6ugly176ugly33open-sd9 :parameters ()
  :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly1446683ugly27ugly5ugly22ugly87wait_cb1 :parameters ()
  :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly1446684ugly17ugly141ugly85ugly107close_sd6-condeff0-no-1
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action ugly1446685ugly133ugly38ugly77ugly111open-sd8 :parameters ()
  :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly1446686ugly176ugly33ugly139ugly18wait_cb1-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd13))
  :effect (and (done-1)))
 (:action ugly1446687ugly10ugly26ugly78ugly12close_sd1-condeff0-no-4
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1446688ugly4ugly93ugly65ugly49close_sd3-condeff0-no-3 :parameters
  () :precondition (and (do-close_sd3-condeffs) (not-closed-sd2)) :effect
  (and (done-0)))
 (:action ugly1446689ugly74ugly25ugly7ugly122open-sd18 :parameters ()
  :precondition
  (and (do-normal) (closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd18) (not (closed-sd18))))
 (:action ugly1446690ugly42ugly71ugly173ugly76close_sd7-endof-condeffs
  :parameters () :precondition (and (do-close_sd7-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))))
 (:action ugly1446691ugly120ugly88ugly53ugly15wait_cb1-condeff1-no-2
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd6))
  :effect (and (done-1)))
 (:action ugly1446692ugly124ugly43ugly6ugly176close_sd9-condeff0-yes
  :parameters () :precondition (and (do-close_sd9-condeffs) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1446693ugly154ugly118ugly2ugly106close_sd2-condeff1-no-1
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action ugly1446694ugly93ugly65ugly49ugly59close_sd13-condeff0-no-4
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1446695ugly107ugly39ugly96ugly155open-sd15 :parameters ()
  :precondition
  (and (do-normal) (closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd15) (not (closed-sd15))))
 (:action ugly1446696ugly62ugly145ugly42ugly71close_sd5-condeff0-no-5
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1446697ugly22ugly87ugly108ugly19close_sd3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly1446698ugly67ugly97ugly148ugly120close_sd1-condeff0-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd19))
  :effect (and (done-0)))
 (:action ugly1446699ugly156ugly70ugly128ugly114close_sd4-condeff0-no-5
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1446700ugly80ugly179ugly154ugly118close_sd19-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd19-condeffs) (closed-sd5) (closed-sd4) (closed-sd3)
       (closed-sd2) (closed-sd1) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1446701ugly20ugly29ugly56ugly136close_sd4-condeff0-no-3
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1446702ugly140ugly153ugly144ugly3wait_cb1-condeff0-no-5
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1446703ugly110ugly90ugly142ugly100close_sd14 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd14) (not (not-closed-sd14))))
 (:action ugly1446704ugly29ugly56ugly136ugly50close_sd19 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd19) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd19-condeffs) (closed-sd19)
       (not (not-closed-sd19))))
 (:action ugly1446705ugly174ugly91ugly4ugly93close_sd3-condeff1-no-2
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd6))
  :effect (and (done-1)))
 (:action ugly1446706ugly38ugly77ugly111ugly140close_sd8-condeff0-no-0
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd12))
  :effect (and (done-0)))
 (:action ugly1446707ugly102ugly66ugly37ugly40close_sd9-endof-condeffs
  :parameters () :precondition (and (do-close_sd9-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0))))
 (:action ugly1446708ugly23ugly109ugly177ugly170close_sd15 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd15) (not (not-closed-sd15))))
 (:action ugly1446709ugly14ugly150ugly159ugly69open-sd13 :parameters ()
  :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd13) (not (closed-sd13))))
 (:action ugly1446710ugly152ugly156ugly70ugly128wait_cb1-condeff0-no-4
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1446711ugly141ugly85ugly107ugly39close_sd1-condeff1-no-1
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action ugly1446712ugly85ugly107ugly39ugly96close_sd8-condeff0-no-2
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1446713ugly55ugly175ugly124ugly43close_sd19-condeff0-no-3
  :parameters () :precondition (and (do-close_sd19-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1446714ugly11ugly62ugly145ugly42close_sd2-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd19) (closed-sd5) (closed-sd4)
       (closed-sd3) (closed-sd1) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1446715ugly37ugly40ugly35ugly146close_sd18 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd18) (not (not-closed-sd18))))
 (:action ugly1446716ugly149ugly20ugly29ugly56open-sd12 :parameters ()
  :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd12) (not (closed-sd12))))
 (:action ugly1446717ugly178ugly58ugly47ugly126open-cb2 :parameters ()
  :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1446718ugly66ugly37ugly40ugly35open-sd2 :parameters ()
  :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly1446719ugly68ugly61ugly57ugly121open-sd16 :parameters ()
  :precondition
  (and (do-normal) (closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd16) (not (closed-sd16))))
 (:action ugly1446720ugly73ugly45ugly84ugly46close_sd7-condeff0-no-2
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1446721ugly8ugly116ugly172ugly123close_sd19-condeff0-no-5
  :parameters () :precondition (and (do-close_sd19-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1446722ugly131ugly36ugly110ugly90open-sd6 :parameters ()
  :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly1446723ugly163ugly28ugly74ugly25close_sd19-condeff0-no-4
  :parameters () :precondition (and (do-close_sd19-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1446724ugly52ugly23ugly109ugly177close_sd5-condeff0-no-2
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1446725ugly167ugly147ugly151ugly171close_sd1-condeff1-no-4
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd2))
  :effect (and (done-1)))
 (:action ugly1446726ugly36ugly110ugly90ugly142close_sd1-condeff1-no-5
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1))
  :effect (and (done-1)))
 (:action ugly1446727ugly166ugly27ugly5ugly22close_sd1-condeff0-yes :parameters
  () :precondition
  (and (do-close_sd1-condeffs) (closed-sd19) (closed-sd5) (closed-sd4)
       (closed-sd3) (closed-sd2) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1446728ugly13ugly174ugly91ugly4close_sd1-condeff0-no-5
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1446729ugly138ugly102ugly66ugly37close_sd6-condeff0-no-2
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1446730ugly105ugly34ugly44ugly75close_sd3-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd19) (closed-sd5) (closed-sd4)
       (closed-sd2) (closed-sd1) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1446731ugly28ugly74ugly25ugly7wait_cb1-condeff1-no-5 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect
  (and (done-1)))
 (:action ugly1446732ugly119ugly164ugly82ugly89close_sd3-condeff1-no-4
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd1))
  :effect (and (done-1)))
 (:action ugly1446733ugly86ugly63ugly158ugly86close_sd3-condeff1-no-0
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd13))
  :effect (and (done-1)))
 (:action ugly1446734ugly94ugly166ugly27ugly5close_sd13-condeff0-no-5
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1446735ugly127ugly105ugly34ugly44close_sd2-condeff0-no-3
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1446736ugly129ugly101ugly103ugly169open-sd14 :parameters ()
  :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd14) (not (closed-sd14))))
 (:action ugly1446737ugly30ugly32ugly17ugly141close_sd2-endof-condeffs
  :parameters () :precondition (and (do-close_sd2-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1446738ugly136ugly50ugly1ugly72open-sd11 :parameters ()
  :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly1446739ugly147ugly151ugly171ugly99wait_cb1-endof-condeffs
  :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly1446740ugly65ugly49ugly59ugly21close_sd3-condeff0-no-4
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1446741ugly6ugly176ugly33ugly139close_sd13-condeff0-no-1
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-sd6))
  :effect (and (done-0)))
 (:action ugly1446742ugly84ugly46ugly161ugly30close_sd9 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action ugly1446743ugly143ugly31ugly163ugly28close_sd2-condeff0-no-2
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action ugly1446744ugly116ugly172ugly123ugly8wait_cb1-condeff1-yes
  :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd13) (closed-sd7) (closed-sd6)
       (closed-sd3) (closed-sd2) (closed-sd1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1446745ugly106ugly80ugly179ugly154wait_cb1-condeff1-no-1
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action ugly1446746ugly7ugly122ugly130ugly94close_sd5 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action ugly1446747ugly171ugly99ugly127ugly105close_sd9-condeff0-no-0
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly1446748ugly100ugly14ugly150ugly159close_sd3-endof-condeffs
  :parameters () :precondition (and (do-close_sd3-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1446749ugly92ugly160ugly83ugly11close_sd3-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd13) (closed-sd7) (closed-sd6)
       (closed-sd2) (closed-sd1) (closed-cb1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1446750ugly160ugly83ugly11ugly62open-sd3 :parameters ()
  :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly1446751ugly58ugly47ugly126ugly149close_sd13-condeff0-no-3
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1446752ugly90ugly142ugly100ugly14open-cb1 :parameters ()
  :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1446753ugly48ugly143ugly31ugly163close_sd12-condeff0-no-2
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1446754ugly70ugly128ugly114ugly52close_sd13-endof-condeffs
  :parameters () :precondition (and (do-close_sd13-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd13-condeffs)) (not (done-0))))
 (:action ugly1446755ugly87ugly108ugly19ugly54close_sd12 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd12-condeffs) (closed-sd12)
       (not (not-closed-sd12))))
 (:action ugly1446756ugly162ugly81ugly79ugly104close_sd19-endof-condeffs
  :parameters () :precondition (and (do-close_sd19-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd19-condeffs)) (not (done-0))))
 (:action ugly1446757ugly179ugly154ugly118ugly2close_cb3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly1446758ugly126ugly149ugly20ugly29close_sd3-condeff0-no-0
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd19))
  :effect (and (done-0)))
 (:action ugly1446759ugly59ugly21ugly60ugly95open-sd17 :parameters ()
  :precondition
  (and (do-normal) (closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd17) (not (closed-sd17))))
 (:action ugly1446760ugly5ugly22ugly87ugly108close_sd13-condeff0-no-2
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1446761ugly82ugly89ugly67ugly97open-cb3 :parameters ()
  :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1446762ugly24ugly167ugly147ugly151close_sd5-condeff0-no-3
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1446763ugly12ugly92ugly160ugly83close_sd17 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd17) (not (not-closed-sd17))))
 (:action ugly1446764ugly39ugly96ugly155ugly133close_sd6-condeff0-no-0
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd13))
  :effect (and (done-0)))
 (:action ugly1446765ugly168ugly138ugly102ugly66close_sd6-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd13) (closed-sd7) (closed-sd3)
       (closed-sd2) (closed-sd1) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1446766ugly97ugly148ugly120ugly88close_sd4-endof-condeffs
  :parameters () :precondition (and (do-close_sd4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))))
 (:action ugly1446767ugly35ugly146ugly10ugly26close_sd2-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd13) (closed-sd7) (closed-sd6)
       (closed-sd3) (closed-sd1) (closed-cb1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1446768ugly45ugly84ugly46ugly161close_sd11 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd11) (not (not-closed-sd11))))
 (:action ugly1446769ugly75ugly55ugly175ugly124close_sd6-condeff0-no-5
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1446770ugly113ugly68ugly61ugly57wait_cb1-condeff1-no-4
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd2))
  :effect (and (done-1)))
 (:action ugly1446771ugly81ugly79ugly104ugly9close_sd4-condeff0-no-1
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd5))
  :effect (and (done-0)))
 (:action ugly1446772ugly76ugly165ugly152ugly156close_sd2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly1446773ugly173ugly76ugly165ugly152close_sd8-endof-condeffs
  :parameters () :precondition (and (do-close_sd8-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))))
 (:action ugly1446774ugly169ugly134ugly125ugly73close_sd4 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly1446775ugly164ugly82ugly89ugly67close_sd1-condeff1-no-2
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd6))
  :effect (and (done-1)))
 (:action ugly1446776ugly157ugly41ugly51ugly178close_sd3-condeff0-no-2
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action ugly1446777ugly16ugly98ugly113ugly68close_sd3-condeff0-no-5
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1446778ugly46ugly161ugly30ugly32close_sd13-condeff0-no-0
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action ugly1446779ugly47ugly126ugly149ugly20close_sd12-endof-condeffs
  :parameters () :precondition (and (do-close_sd12-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd12-condeffs)) (not (done-0))))
 (:action ugly1446780ugly151ugly171ugly99ugly127close_sd1-endof-condeffs
  :parameters () :precondition
  (and (do-close_sd1-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly1446781ugly41ugly51ugly178ugly58close_sd4-condeff0-no-0
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd19))
  :effect (and (done-0)))
 (:action ugly1446782ugly117ugly168ugly138ugly102close_sd3-condeff1-no-3
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd2))
  :effect (and (done-1)))
 (:action ugly1446783ugly15ugly119ugly164ugly82close_sd1-condeff0-no-1
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd5))
  :effect (and (done-0)))
 (:action ugly1446784ugly108ugly19ugly54ugly24close_sd5-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-sd19) (closed-sd4) (closed-sd3)
       (closed-sd2) (closed-sd1) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1446785ugly72ugly137ugly129ugly101close_sd1-condeff2-no-1
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd8))
  :effect (and (done-2)))
 (:action ugly1446786ugly172ugly123ugly8ugly116close_sd5-condeff0-no-4
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1446787ugly79ugly104ugly9ugly48open-sd5 :parameters ()
  :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly1446788ugly112ugly112ugly112ugly112wait_cb1-condeff0-no-2
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action ugly1446789ugly144ugly3ugly115ugly64close_sd7 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly1446790ugly125ugly73ugly45ugly84close_sd4-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd19) (closed-sd5) (closed-sd3)
       (closed-sd2) (closed-sd1) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1446791ugly145ugly42ugly71ugly173close_sd2-condeff0-no-4
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1446792ugly64ugly157ugly41ugly51wait_cb2-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action ugly1446793ugly26ugly78ugly12ugly92close_sd7-condeff0-no-1
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd6))
  :effect (and (done-0)))
 (:action ugly1446794ugly25ugly7ugly122ugly130close_sd1-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd13) (closed-sd7) (closed-sd6)
       (closed-sd3) (closed-sd2) (closed-cb1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1446795ugly91ugly4ugly93ugly65close_sd4-condeff0-no-2 :parameters
  () :precondition (and (do-close_sd4-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly1446796ugly123ugly8ugly116ugly172wait_cb1-condeff2-yes
  :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd12) (closed-sd8) (closed-sd1)) :effect
  (and (done-2) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1446797ugly83ugly11ugly62ugly145close_sd6-condeff0-no-4
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1446798ugly32ugly17ugly141ugly85close_cb2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly1446799ugly122ugly130ugly94ugly166close_sd12-condeff0-no-1
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1446800ugly98ugly113ugly68ugly61close_sd3-condeff0-no-1
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd5))
  :effect (and (done-0)))
 (:action ugly1446801ugly44ugly75ugly55ugly175wait_cb1-condeff2-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd12))
  :effect (and (done-2)))
 (:action ugly1446802ugly33ugly139ugly18ugly117close_sd5-condeff0-no-0
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd19))
  :effect (and (done-0)))
 (:action ugly1446803ugly56ugly136ugly50ugly1close_sd2-condeff0-no-0
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd19))
  :effect (and (done-0)))
 (:action ugly1446804ugly121ugly132ugly162ugly81close_sd2-condeff1-no-0
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd13))
  :effect (and (done-1)))
 (:action ugly1446805ugly115ugly64ugly157ugly41close_sd4-condeff0-no-4
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1446806ugly103ugly169ugly134ugly125close_sd2-condeff0-no-1
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd5))
  :effect (and (done-0)))
 (:action ugly1446807ugly9ugly48ugly143ugly31close_sd7-condeff0-no-4
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1446808ugly137ugly129ugly101ugly103close_sd5-condeff0-no-1
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action ugly1446809ugly3ugly115ugly64ugly157close_sd6-condeff0-no-3
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1446810ugly134ugly125ugly73ugly45close_sd2-condeff1-no-5
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-cb1))
  :effect (and (done-1)))
 (:action ugly1446811ugly155ugly133ugly38ugly77wait_cb1-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd5))
  :effect (and (done-0)))
 (:action ugly1446812ugly135ugly16ugly98ugly113close_sd3-condeff1-no-5
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-cb1))
  :effect (and (done-1)))
 (:action ugly1446813ugly21ugly60ugly95ugly131close_sd6 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly1446814ugly158ugly86ugly63ugly158close_sd1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly1446815ugly88ugly53ugly15ugly119close_sd7-condeff0-no-5
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1446816ugly69ugly135ugly16ugly98wait_cb1-condeff0-no-3
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1446817ugly150ugly159ugly69ugly135close_sd13-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd13-condeffs) (closed-sd7) (closed-sd6) (closed-sd3)
       (closed-sd2) (closed-sd1) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1446818ugly57ugly121ugly132ugly162close_sd2-condeff1-no-2
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd6))
  :effect (and (done-1)))
 (:action ugly1446819ugly153ugly144ugly3ugly115close_sd3-condeff1-no-1
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action ugly1446820ugly77ugly111ugly140ugly153open-sd4 :parameters ()
  :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly1446821ugly146ugly10ugly26ugly78close_sd16 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd16) (not (not-closed-sd16))))
 (:action ugly1446822ugly96ugly155ugly133ugly38close_sd2-condeff0-no-5
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1446823ugly177ugly170ugly13ugly174close_sd1-condeff0-no-3
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1446824ugly161ugly30ugly32ugly17open-sd7 :parameters ()
  :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly1446825ugly60ugly95ugly131ugly36wait_cb1-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd19))
  :effect (and (done-0)))
 (:action ugly1446826ugly128ugly114ugly52ugly23wait_cb1-condeff0-yes
  :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd19) (closed-sd5) (closed-sd4)
       (closed-sd3) (closed-sd2) (closed-sd1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1446827ugly148ugly120ugly88ugly53close_sd13 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd13-condeffs) (closed-sd13)
       (not (not-closed-sd13))))
 (:action ugly1446828ugly18ugly117ugly168ugly138close_sd1-condeff2-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd12))
  :effect (and (done-2)))
 (:action ugly1446829ugly101ugly103ugly169ugly134wait_cb1-condeff2-no-1
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd8))
  :effect (and (done-2)))
 (:action ugly1446830ugly78ugly12ugly92ugly160close_sd2-condeff1-no-4
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd1))
  :effect (and (done-1)))
 (:action ugly1446831ugly95ugly131ugly36ugly110close_sd1-condeff0-no-2
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd4))
  :effect (and (done-0)))) 