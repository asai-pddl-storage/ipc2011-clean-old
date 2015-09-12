
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (closed-sd2) (closed-cb2) (closed-sd14) (updated-cb2)
  (closed-sd10) (closed-sd12) (do-close_sd6-condeffs) (do-close_sd11-condeffs)
  (do-wait_cb4-condeffs) (do-close_sd17-condeffs) (not-closed-sd4)
  (do-close_sd3-condeffs) (closed-sd16) (do-close_sd8-condeffs) (do-normal)
  (do-close_sd18-condeffs) (closed-sd7) (do-close_sd1-condeffs) (done-2)
  (not-closed-sd20) (not-closed-cb1) (do-wait_cb2-condeffs) (closed-cb4)
  (do-close_sd5-condeffs) (done-0) (do-wait_cb3-condeffs) (closed-sd3) (done-1)
  (do-close_sd7-condeffs) (do-close_sd20-condeffs) (not-closed-sd2)
  (not-updated-cb2) (not-closed-sd9) (closed-sd15) (not-closed-sd12)
  (not-closed-cb4) (not-closed-sd3) (not-closed-sd7) (closed-sd13) (closed-sd8)
  (not-closed-sd10) (do-close_sd16-condeffs) (not-closed-sd19) (closed-sd20)
  (do-close_sd15-condeffs) (not-updated-cb3) (not-updated-cb4) (updated-cb3)
  (updated-cb5) (closed-sd18) (not-closed-cb5) (closed-cb5) (not-closed-sd13)
  (not-closed-sd17) (closed-sd17) (closed-sd11) (not-closed-sd6)
  (do-close_sd2-condeffs) (do-close_sd4-condeffs) (do-wait_cb5-condeffs)
  (closed-cb3) (closed-sd9) (not-closed-sd1) (not-closed-sd16) (closed-sd4)
  (not-closed-sd15) (do-close_sd19-condeffs) (closed-sd1) (closed-sd19)
  (not-closed-sd5) (updated-cb4) (updated-cb1) (closed-cb1) (not-closed-cb2)
  (not-closed-sd18) (not-updated-cb1) (not-closed-sd8) (closed-sd6)
  (closed-sd5) (not-closed-cb3) (do-close_sd12-condeffs) (not-closed-sd14)
  (not-closed-sd11) (not-updated-cb5))
 (:action ugly1449839ugly158ugly147ugly88ugly30open-cb3 :parameters ()
  :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1449840ugly111ugly112ugly85ugly55close_sd4-condeff0-no-4
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-cb5))
  :effect (and (done-0)))
 (:action ugly1449841ugly98ugly11ugly154ugly182close_sd11-condeff1-no-2
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-cb3))
  :effect (and (done-1)))
 (:action ugly1449842ugly85ugly55ugly155ugly46close_sd19-condeff0-no-1
  :parameters () :precondition (and (do-close_sd19-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1449843ugly181ugly171ugly107ugly51wait_cb5-condeff1-no-1
  :parameters () :precondition (and (do-wait_cb5-condeffs) (not-closed-sd3))
  :effect (and (done-1)))
 (:action ugly1449844ugly91ugly84ugly123ugly97close_sd10 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (closed-sd10) (not (not-closed-sd10))))
 (:action ugly1449845ugly65ugly28ugly67ugly24open-cb4 :parameters ()
  :precondition
  (and (do-normal) (closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1449846ugly106ugly54ugly3ugly193close_sd4-condeff0-no-1
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1449847ugly13ugly183ugly95ugly4wait_cb5-condeff1-no-0 :parameters
  () :precondition (and (do-wait_cb5-condeffs) (not-closed-sd4)) :effect
  (and (done-1)))
 (:action ugly1449848ugly147ugly88ugly30ugly136close_sd20-condeff1-no-2
  :parameters () :precondition (and (do-close_sd20-condeffs) (not-closed-sd2))
  :effect (and (done-1)))
 (:action ugly1449849ugly103ugly111ugly112ugly85close_sd12-endof-condeffs
  :parameters () :precondition (and (do-close_sd12-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd12-condeffs)) (not (done-0))))
 (:action ugly1449850ugly78ugly106ugly54ugly3wait_cb2-endof-condeffs
  :parameters () :precondition (and (do-wait_cb2-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0))))
 (:action ugly1449851ugly167ugly125ugly33ugly166close_sd1-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd2) (closed-sd20) (closed-sd19)
       (closed-cb5))
  :effect (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly1449852ugly88ugly30ugly136ugly10wait_cb5 :parameters ()
  :precondition (and (do-normal) (not-updated-cb5)) :effect
  (and (not (do-normal)) (do-wait_cb5-condeffs) (updated-cb5)
       (not (not-updated-cb5))))
 (:action ugly1449853ugly69ugly31ugly41ugly63close_sd8-condeff0-no-2
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1449854ugly63ugly71ugly59ugly158close_sd6-condeff0-no-0
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1449855ugly52ugly118ugly22ugly32close_sd11-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd15) (closed-sd8) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1449856ugly183ugly95ugly4ugly103close_cb3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly1449857ugly24ugly135ugly130ugly12close_cb5 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (closed-cb5) (not-updated-cb5) (not (not-closed-cb5))
       (not (updated-cb5))))
 (:action ugly1449858ugly6ugly169ugly124ugly58close_sd8-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd15) (closed-sd11) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1449859ugly123ugly97ugly139ugly70close_sd7-condeff0-no-0
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd16))
  :effect (and (done-0)))
 (:action ugly1449860ugly68ugly192ugly119ugly167open-sd9 :parameters ()
  :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly1449861ugly5ugly40ugly50ugly80close_sd3-condeff0-yes :parameters
  () :precondition
  (and (do-close_sd3-condeffs) (closed-sd4) (closed-sd2) (closed-sd20)
       (closed-sd19) (closed-cb5))
  :effect (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly1449862ugly172ugly133ugly87ugly160wait_cb2-condeff0-yes
  :parameters () :precondition (and (do-wait_cb2-condeffs) (closed-sd5))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1449863ugly4ugly103ugly111ugly112close_sd3-condeff0-no-2
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd20))
  :effect (and (done-0)))
 (:action ugly1449864ugly177ugly5ugly40ugly50close_sd5-endof-condeffs
  :parameters () :precondition (and (do-close_sd5-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))))
 (:action ugly1449865ugly46ugly17ugly44ugly110close_sd16-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd16-condeffs) (closed-sd7) (closed-cb4)) :effect
  (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1449866ugly174ugly57ugly91ugly84open-sd11 :parameters ()
  :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly1449867ugly10ugly96ugly159ugly102close_sd11-condeff0-no-2
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1449868ugly160ugly191ugly186ugly173open-sd20 :parameters ()
  :precondition
  (and (do-normal) (closed-sd20) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd20) (not (closed-sd20))))
 (:action ugly1449869ugly16ugly62ugly39ugly134wait_cb3-condeff0-yes :parameters
  () :precondition (and (do-wait_cb3-condeffs) (closed-sd6)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1449870ugly144ugly115ugly128ugly81wait_cb3-condeff2-yes
  :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd15) (closed-sd11) (closed-sd8)) :effect
  (and (done-2) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1449871ugly44ugly110ugly38ugly117wait_cb3-endof-condeffs
  :parameters () :precondition
  (and (do-wait_cb3-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly1449872ugly94ugly8ugly47ugly27wait_cb4-condeff1-no-1 :parameters
  () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd17)) :effect
  (and (done-1)))
 (:action ugly1449873ugly188ugly175ugly78ugly106close_sd12-condeff0-no-2
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1449874ugly95ugly4ugly103ugly111close_cb2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly1449875ugly132ugly34ugly65ugly28close_sd8 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly1449876ugly42ugly6ugly169ugly124close_sd11-condeff0-no-0
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd12))
  :effect (and (done-0)))
 (:action ugly1449877ugly178ugly15ugly75ugly168wait_cb4-condeff1-yes
  :parameters () :precondition
  (and (do-wait_cb4-condeffs) (closed-sd18) (closed-sd17)) :effect
  (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1449878ugly77ugly92ugly121ugly94close_sd20-condeff1-no-0
  :parameters () :precondition (and (do-close_sd20-condeffs) (not-closed-sd4))
  :effect (and (done-1)))
 (:action ugly1449879ugly115ugly128ugly81ugly185close_sd15 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd15-condeffs) (closed-sd15)
       (not (not-closed-sd15))))
 (:action ugly1449880ugly162ugly45ugly165ugly172open-sd1 :parameters ()
  :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly1449881ugly8ugly47ugly27ugly176open-cb2 :parameters ()
  :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1449882ugly131ugly14ugly66ugly163close_sd19-condeff1-no-4
  :parameters () :precondition (and (do-close_sd19-condeffs) (not-closed-cb5))
  :effect (and (done-1)))
 (:action ugly1449883ugly171ugly107ugly51ugly104close_sd4-endof-condeffs
  :parameters () :precondition (and (do-close_sd4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))))
 (:action ugly1449884ugly41ugly63ugly71ugly59close_sd2-condeff0-yes :parameters
  () :precondition
  (and (do-close_sd2-condeffs) (closed-sd1) (closed-sd20) (closed-sd19)
       (closed-cb5))
  :effect (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly1449885ugly125ugly33ugly166ugly90close_sd8-condeff0-no-0
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd12))
  :effect (and (done-0)))
 (:action ugly1449886ugly40ugly50ugly80ugly82close_sd20-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd20-condeffs) (closed-sd1) (closed-sd2) (closed-sd19)
       (closed-cb5))
  :effect (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly1449887ugly101ugly146ugly178ugly15close_sd8-condeff1-no-2
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-cb3))
  :effect (and (done-1)))
 (:action ugly1449888ugly140ugly37ugly188ugly175close_sd5-condeff0-yes
  :parameters () :precondition (and (do-close_sd5-condeffs) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1449889ugly110ugly38ugly117ugly189close_cb1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly1449890ugly53ugly52ugly118ugly22close_sd17 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd17-condeffs) (closed-sd17)
       (not (not-closed-sd17))))
 (:action ugly1449891ugly118ugly22ugly32ugly61open-cb1 :parameters ()
  :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1449892ugly150ugly35ugly9ugly74close_sd20-endof-condeffs
  :parameters () :precondition (and (do-close_sd20-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd20-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1449893ugly1ugly83ugly149ugly140close_sd16 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd16-condeffs) (closed-sd16)
       (not (not-closed-sd16))))
 (:action ugly1449894ugly179ugly56ugly145ugly48close_sd20 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd20) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd20-condeffs) (closed-sd20)
       (not (not-closed-sd20))))
 (:action ugly1449895ugly136ugly10ugly96ugly159wait_cb5-condeff1-yes
  :parameters () :precondition
  (and (do-wait_cb5-condeffs) (closed-sd4) (closed-sd3) (closed-sd2)
       (closed-sd20) (closed-sd19))
  :effect (and (done-1) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly1449896ugly189ugly113ugly77ugly92open-sd13 :parameters ()
  :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd13) (not (closed-sd13))))
 (:action ugly1449897ugly152ugly180ugly79ugly18close_sd19-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd19-condeffs) (closed-sd4) (closed-sd3) (closed-sd2)
       (closed-sd20) (closed-cb5))
  :effect (and (done-1) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly1449898ugly194ugly43ugly100ugly161close_sd1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly1449899ugly130ugly12ugly109ugly184open-sd14 :parameters ()
  :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd14) (not (closed-sd14))))
 (:action ugly1449900ugly50ugly80ugly82ugly2open-sd8 :parameters ()
  :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly1449901ugly156ugly73ugly49ugly132close_sd17-condeff0-no-0
  :parameters () :precondition (and (do-close_sd17-condeffs) (not-closed-sd18))
  :effect (and (done-0)))
 (:action ugly1449902ugly54ugly3ugly193ugly152wait_cb3-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd6))
  :effect (and (done-0)))
 (:action ugly1449903ugly107ugly51ugly104ugly156close_sd8-condeff1-no-0
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd15))
  :effect (and (done-1)))
 (:action ugly1449904ugly153ugly153ugly153ugly153close_sd4-condeff0-no-2
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd20))
  :effect (and (done-0)))
 (:action ugly1449905ugly168ugly174ugly57ugly91close_sd3-condeff0-no-1
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1449906ugly49ugly132ugly34ugly65close_sd18-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd18-condeffs) (closed-sd17) (closed-cb4)) :effect
  (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1449907ugly141ugly122ugly26ugly29close_sd3-condeff0-no-3
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd19))
  :effect (and (done-0)))
 (:action ugly1449908ugly139ugly70ugly142ugly162close_sd15-condeff0-no-1
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action ugly1449909ugly61ugly138ugly23ugly187close_sd8-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd12) (closed-sd11) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1449910ugly86ugly190ugly98ugly11close_sd4-condeff0-no-3
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd19))
  :effect (and (done-0)))
 (:action ugly1449911ugly137ugly170ugly36ugly19close_sd4-condeff0-no-0
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1449912ugly155ugly46ugly17ugly44close_cb4 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (closed-cb4) (not-updated-cb4) (not (not-closed-cb4))
       (not (updated-cb4))))
 (:action ugly1449913ugly124ugly58ugly72ugly108close_sd7-endof-condeffs
  :parameters () :precondition (and (do-close_sd7-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))))
 (:action ugly1449914ugly104ugly156ugly73ugly49open-sd2 :parameters ()
  :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly1449915ugly27ugly176ugly137ugly170close_sd17-endof-condeffs
  :parameters () :precondition (and (do-close_sd17-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd17-condeffs)) (not (done-0))))
 (:action ugly1449916ugly15ugly75ugly168ugly174close_sd11-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd12) (closed-sd8) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1449917ugly170ugly36ugly19ugly151close_sd12-condeff0-no-1
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action ugly1449918ugly87ugly160ugly191ugly186wait_cb4-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd16))
  :effect (and (done-0)))
 (:action ugly1449919ugly80ugly82ugly2ugly126wait_cb5-condeff0-no-3 :parameters
  () :precondition (and (do-wait_cb5-condeffs) (not-closed-sd19)) :effect
  (and (done-0)))
 (:action ugly1449920ugly122ugly26ugly29ugly86wait_cb2 :parameters ()
  :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly1449921ugly38ugly117ugly189ugly113close_sd5 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action ugly1449922ugly128ugly81ugly185ugly42close_sd20-condeff0-no-3
  :parameters () :precondition (and (do-close_sd20-condeffs) (not-closed-cb5))
  :effect (and (done-0)))
 (:action ugly1449923ugly51ugly104ugly156ugly73close_sd13 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (closed-sd13) (not (not-closed-sd13))))
 (:action ugly1449924ugly67ugly24ugly135ugly130close_sd20-condeff1-no-4
  :parameters () :precondition (and (do-close_sd20-condeffs) (not-closed-cb5))
  :effect (and (done-1)))
 (:action ugly1449925ugly99ugly150ugly35ugly9close_sd8-condeff1-no-1
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd11))
  :effect (and (done-1)))
 (:action ugly1449926ugly142ugly162ugly45ugly165wait_cb4-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action ugly1449927ugly60ugly177ugly5ugly40close_sd12 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd12-condeffs) (closed-sd12)
       (not (not-closed-sd12))))
 (:action ugly1449928ugly163ugly25ugly99ugly150close_sd17-condeff0-no-1
  :parameters () :precondition (and (do-close_sd17-condeffs) (not-closed-cb4))
  :effect (and (done-0)))
 (:action ugly1449929ugly76ugly21ugly127ugly131close_sd19 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd19) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd19-condeffs) (closed-sd19)
       (not (not-closed-sd19))))
 (:action ugly1449930ugly112ugly85ugly55ugly155close_sd15-condeff0-no-2
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1449931ugly20ugly129ugly76ugly21open-sd7 :parameters ()
  :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly1449932ugly72ugly108ugly144ugly115open-sd6 :parameters ()
  :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly1449933ugly11ugly154ugly182ugly64open-sd18 :parameters ()
  :precondition
  (and (do-normal) (closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd18) (not (closed-sd18))))
 (:action ugly1449934ugly116ugly194ugly43ugly100close_sd2-condeff0-no-2
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd19))
  :effect (and (done-0)))
 (:action ugly1449935ugly19ugly151ugly53ugly52open-sd16 :parameters ()
  :precondition
  (and (do-normal) (closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd16) (not (closed-sd16))))
 (:action ugly1449936ugly157ugly105ugly141ugly122close_sd19-endof-condeffs
  :parameters () :precondition (and (do-close_sd19-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd19-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1449937ugly32ugly61ugly138ugly23wait_cb3-condeff2-no-1
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd11))
  :effect (and (done-2)))
 (:action ugly1449938ugly154ugly182ugly64ugly116wait_cb1 :parameters ()
  :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not-closed-cb1) (updated-cb1) (not (closed-cb1))
       (not (not-updated-cb1))))
 (:action ugly1449939ugly138ugly23ugly187ugly68wait_cb2-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd5))
  :effect (and (done-0)))
 (:action ugly1449940ugly25ugly99ugly150ugly35close_sd20-condeff1-no-1
  :parameters () :precondition (and (do-close_sd20-condeffs) (not-closed-sd3))
  :effect (and (done-1)))
 (:action ugly1449941ugly56ugly145ugly48ugly1close_sd3-condeff0-no-0
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action ugly1449942ugly14ugly66ugly163ugly25wait_cb5-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb5-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1449943ugly39ugly134ugly179ugly56close_sd6 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly1449944ugly81ugly185ugly42ugly6close_sd2-endof-condeffs
  :parameters () :precondition (and (do-close_sd2-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1449945ugly22ugly32ugly61ugly138close_sd19-condeff1-no-2
  :parameters () :precondition (and (do-close_sd19-condeffs) (not-closed-sd2))
  :effect (and (done-1)))
 (:action ugly1449946ugly114ugly143ugly164ugly157wait_cb5-condeff1-no-2
  :parameters () :precondition (and (do-wait_cb5-condeffs) (not-closed-sd2))
  :effect (and (done-1)))
 (:action ugly1449947ugly33ugly166ugly90ugly69close_sd18-endof-condeffs
  :parameters () :precondition (and (do-close_sd18-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd18-condeffs)) (not (done-0))))
 (:action ugly1449948ugly127ugly131ugly14ugly66close_sd2-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd4) (closed-sd3) (closed-sd20)
       (closed-sd19) (closed-cb5))
  :effect (and (done-1) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly1449949ugly148ugly181ugly171ugly107close_sd12-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd12-condeffs) (closed-sd11) (closed-sd8) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1449950ugly73ugly49ugly132ugly34close_sd11-endof-condeffs
  :parameters () :precondition (and (do-close_sd11-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1449951ugly47ugly27ugly176ugly137wait_cb4 :parameters ()
  :precondition (and (do-normal) (not-updated-cb4)) :effect
  (and (not (do-normal)) (do-wait_cb4-condeffs) (updated-cb4)
       (not (not-updated-cb4))))
 (:action ugly1449952ugly102ugly60ugly177ugly5close_sd16-condeff0-no-1
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-cb4))
  :effect (and (done-0)))
 (:action ugly1449953ugly193ugly152ugly180ugly79close_sd19-condeff0-no-2
  :parameters () :precondition (and (do-close_sd19-condeffs) (not-closed-sd20))
  :effect (and (done-0)))
 (:action ugly1449954ugly186ugly173ugly114ugly143close_sd2-condeff1-no-0
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd4))
  :effect (and (done-1)))
 (:action ugly1449955ugly176ugly137ugly170ugly36close_sd19-condeff0-no-3
  :parameters () :precondition (and (do-close_sd19-condeffs) (not-closed-cb5))
  :effect (and (done-0)))
 (:action ugly1449956ugly135ugly130ugly12ugly109wait_cb3-condeff1-no-2
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd8))
  :effect (and (done-1)))
 (:action ugly1449957ugly145ugly48ugly1ugly83close_sd4 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly1449958ugly129ugly76ugly21ugly127open-sd3 :parameters ()
  :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly1449959ugly119ugly167ugly125ugly33close_sd2-condeff1-no-2
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd20))
  :effect (and (done-1)))
 (:action ugly1449960ugly184ugly120ugly7ugly16close_sd11-condeff1-no-0
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd15))
  :effect (and (done-1)))
 (:action ugly1449961ugly173ugly114ugly143ugly164close_sd2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly1449962ugly90ugly69ugly31ugly41close_sd11-condeff1-no-1
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd8))
  :effect (and (done-1)))
 (:action ugly1449963ugly64ugly116ugly194ugly43wait_cb5-condeff0-no-2
  :parameters () :precondition (and (do-wait_cb5-condeffs) (not-closed-sd20))
  :effect (and (done-0)))
 (:action ugly1449964ugly113ugly77ugly92ugly121close_sd1-condeff0-no-3
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb5))
  :effect (and (done-0)))
 (:action ugly1449965ugly120ugly7ugly16ugly62close_sd16-condeff0-no-0
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action ugly1449966ugly143ugly164ugly157ugly105close_sd7-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd16) (closed-cb4)) :effect
  (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1449967ugly169ugly124ugly58ugly72wait_cb5-endof-condeffs
  :parameters () :precondition (and (do-wait_cb5-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-wait_cb5-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly1449968ugly66ugly163ugly25ugly99close_sd4-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd3) (closed-sd2) (closed-sd20)
       (closed-sd19) (closed-cb5))
  :effect (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly1449969ugly192ugly119ugly167ugly125close_sd17-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd17-condeffs) (closed-sd18) (closed-cb4)) :effect
  (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1449970ugly75ugly168ugly174ugly57close_sd1-condeff0-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1449971ugly26ugly29ugly86ugly190wait_cb5-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb5-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1449972ugly180ugly79ugly18ugly20open-sd5 :parameters ()
  :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly1449973ugly133ugly87ugly160ugly191wait_cb3-condeff2-no-0
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd15))
  :effect (and (done-2)))
 (:action ugly1449974ugly29ugly86ugly190ugly98close_sd20-condeff1-no-3
  :parameters () :precondition (and (do-close_sd20-condeffs) (not-closed-sd19))
  :effect (and (done-1)))
 (:action ugly1449975ugly117ugly189ugly113ugly77close_sd1-condeff0-no-1
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd20))
  :effect (and (done-0)))
 (:action ugly1449976ugly97ugly139ugly70ugly142close_sd2-condeff0-no-3
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-cb5))
  :effect (and (done-0)))
 (:action ugly1449977ugly105ugly141ugly122ugly26close_sd18-condeff0-no-0
  :parameters () :precondition (and (do-close_sd18-condeffs) (not-closed-sd17))
  :effect (and (done-0)))
 (:action ugly1449978ugly149ugly140ugly37ugly188wait_cb4-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd18))
  :effect (and (done-1)))
 (:action ugly1449979ugly31ugly41ugly63ugly71close_sd11-condeff0-no-1
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action ugly1449980ugly43ugly100ugly161ugly89close_sd6-endof-condeffs
  :parameters () :precondition (and (do-close_sd6-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))))
 (:action ugly1449981ugly21ugly127ugly131ugly14close_sd9 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (closed-sd9) (not (not-closed-sd9))))
 (:action ugly1449982ugly34ugly65ugly28ugly67close_sd19-condeff1-no-3
  :parameters () :precondition (and (do-close_sd19-condeffs) (not-closed-sd20))
  :effect (and (done-1)))
 (:action ugly1449983ugly7ugly16ugly62ugly39open-cb5 :parameters ()
  :precondition
  (and (do-normal) (closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-cb5) (not (closed-cb5))))
 (:action ugly1449984ugly165ugly172ugly133ugly87close_sd2-condeff0-no-1
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd20))
  :effect (and (done-0)))
 (:action ugly1449985ugly164ugly157ugly105ugly141open-sd12 :parameters ()
  :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd12) (not (closed-sd12))))
 (:action ugly1449986ugly92ugly121ugly94ugly8close_sd15-endof-condeffs
  :parameters () :precondition (and (do-close_sd15-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd15-condeffs)) (not (done-0))))
 (:action ugly1449987ugly89ugly148ugly181ugly171wait_cb5-condeff1-no-4
  :parameters () :precondition (and (do-wait_cb5-condeffs) (not-closed-sd19))
  :effect (and (done-1)))
 (:action ugly1449988ugly83ugly149ugly140ugly37wait_cb3-condeff2-no-2
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd8))
  :effect (and (done-2)))
 (:action ugly1449989ugly30ugly136ugly10ugly96close_sd2-condeff0-no-0
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1449990ugly12ugly109ugly184ugly120close_sd20-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd20-condeffs) (closed-sd4) (closed-sd3) (closed-sd2)
       (closed-sd19) (closed-cb5))
  :effect (and (done-1) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly1449991ugly23ugly187ugly68ugly192open-sd15 :parameters ()
  :precondition
  (and (do-normal) (closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd15) (not (closed-sd15))))
 (:action ugly1449992ugly175ugly78ugly106ugly54close_sd20-condeff0-no-0
  :parameters () :precondition (and (do-close_sd20-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1449993ugly96ugly159ugly102ugly60wait_cb4-endof-condeffs
  :parameters () :precondition (and (do-wait_cb4-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-wait_cb4-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly1449994ugly159ugly102ugly60ugly177close_sd20-condeff0-no-2
  :parameters () :precondition (and (do-close_sd20-condeffs) (not-closed-sd19))
  :effect (and (done-0)))
 (:action ugly1449995ugly93ugly93ugly93ugly93close_sd1-condeff0-no-2
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd19))
  :effect (and (done-0)))
 (:action ugly1449996ugly45ugly165ugly172ugly133close_sd3-condeff0-no-4
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-cb5))
  :effect (and (done-0)))
 (:action ugly1449997ugly134ugly179ugly56ugly145close_sd14 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (closed-sd14) (not (not-closed-sd14))))
 (:action ugly1449998ugly35ugly9ugly74ugly13wait_cb3-condeff1-no-1 :parameters
  () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd11)) :effect
  (and (done-1)))
 (:action ugly1449999ugly161ugly89ugly148ugly181wait_cb4-condeff0-yes
  :parameters () :precondition
  (and (do-wait_cb4-condeffs) (closed-sd7) (closed-sd16)) :effect
  (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1450000ugly182ugly64ugly116ugly194close_sd15-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd15-condeffs) (closed-sd11) (closed-sd8) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1450001ugly59ugly158ugly147ugly88close_sd18-condeff0-no-1
  :parameters () :precondition (and (do-close_sd18-condeffs) (not-closed-cb4))
  :effect (and (done-0)))
 (:action ugly1450002ugly146ugly178ugly15ugly75close_sd2-condeff1-no-4
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-cb5))
  :effect (and (done-1)))
 (:action ugly1450003ugly2ugly126ugly101ugly146wait_cb3 :parameters ()
  :precondition (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action ugly1450004ugly70ugly142ugly162ugly45close_sd2-condeff1-no-1
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd3))
  :effect (and (done-1)))
 (:action ugly1450005ugly84ugly123ugly97ugly139close_sd8-condeff0-no-1
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action ugly1450006ugly18ugly20ugly129ugly76close_sd19-condeff1-no-0
  :parameters () :precondition (and (do-close_sd19-condeffs) (not-closed-sd4))
  :effect (and (done-1)))
 (:action ugly1450007ugly79ugly18ugly20ugly129close_sd8-endof-condeffs
  :parameters () :precondition (and (do-close_sd8-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1450008ugly9ugly74ugly13ugly183close_sd1-endof-condeffs
  :parameters () :precondition (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly1450009ugly185ugly42ugly6ugly169open-sd10 :parameters ()
  :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly1450010ugly100ugly161ugly89ugly148wait_cb3-condeff1-yes
  :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd12) (closed-sd11) (closed-sd8)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1450011ugly28ugly67ugly24ugly135open-sd4 :parameters ()
  :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly1450012ugly121ugly94ugly8ugly47close_sd18 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd18-condeffs) (closed-sd18)
       (not (not-closed-sd18))))
 (:action ugly1450013ugly190ugly98ugly11ugly154wait_cb3-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd12))
  :effect (and (done-1)))
 (:action ugly1450014ugly187ugly68ugly192ugly119close_sd2-condeff1-no-3
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd19))
  :effect (and (done-1)))
 (:action ugly1450015ugly108ugly144ugly115ugly128close_sd3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly1450016ugly17ugly44ugly110ugly38open-sd17 :parameters ()
  :precondition
  (and (do-normal) (closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd17) (not (closed-sd17))))
 (:action ugly1450017ugly151ugly53ugly52ugly118close_sd19-condeff1-no-1
  :parameters () :precondition (and (do-close_sd19-condeffs) (not-closed-sd3))
  :effect (and (done-1)))
 (:action ugly1450018ugly3ugly193ugly152ugly180close_sd5-condeff0-no-0
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly1450019ugly36ugly19ugly151ugly53close_sd12-condeff0-no-0
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action ugly1450020ugly55ugly155ugly46ugly17close_sd15-condeff0-no-0
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action ugly1450021ugly62ugly39ugly134ugly179close_sd11 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action ugly1450022ugly48ugly1ugly83ugly149close_sd7 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly1450023ugly126ugly101ugly146ugly178close_sd19-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd19-condeffs) (closed-sd1) (closed-sd2) (closed-sd20)
       (closed-cb5))
  :effect (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly1450024ugly74ugly13ugly183ugly95close_sd20-condeff0-no-1
  :parameters () :precondition (and (do-close_sd20-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1450025ugly82ugly2ugly126ugly101close_sd6-condeff0-yes
  :parameters () :precondition (and (do-close_sd6-condeffs) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1450026ugly37ugly188ugly175ugly78wait_cb5-condeff1-no-3
  :parameters () :precondition (and (do-wait_cb5-condeffs) (not-closed-sd20))
  :effect (and (done-1)))
 (:action ugly1450027ugly71ugly59ugly158ugly147close_sd3-endof-condeffs
  :parameters () :precondition (and (do-close_sd3-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))))
 (:action ugly1450028ugly57ugly91ugly84ugly123wait_cb5-condeff0-yes :parameters
  () :precondition
  (and (do-wait_cb5-condeffs) (closed-sd1) (closed-sd2) (closed-sd20)
       (closed-sd19))
  :effect (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly1450029ugly109ugly184ugly120ugly7close_sd19-condeff0-no-0
  :parameters () :precondition (and (do-close_sd19-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1450030ugly191ugly186ugly173ugly114close_sd7-condeff0-no-1
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-cb4))
  :effect (and (done-0)))
 (:action ugly1450031ugly58ugly72ugly108ugly144open-sd19 :parameters ()
  :precondition
  (and (do-normal) (closed-sd19) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (not-closed-sd19) (not (closed-sd19))))
 (:action ugly1450032ugly166ugly90ugly69ugly31close_sd16-endof-condeffs
  :parameters () :precondition (and (do-close_sd16-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd16-condeffs)) (not (done-0))))) 