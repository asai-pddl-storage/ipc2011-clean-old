
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (closed-sd19) (closed-cb3) (closed-sd4) (updated-cb5)
  (closed-sd11) (do-wait_cb4-condeffs) (closed-sd18) (not-closed-sd16)
  (not-closed-sd4) (updated-cb4) (not-updated-cb4) (closed-sd7) (closed-sd14)
  (not-closed-sd9) (do-close_sd10-condeffs) (done-1) (closed-sd12)
  (not-closed-cb5) (closed-sd2) (not-updated-cb5) (do-wait_cb5-condeffs)
  (not-closed-sd20) (do-close_sd2-condeffs) (closed-sd9) (closed-sd8)
  (do-wait_cb1-condeffs) (closed-sd10) (closed-sd3) (not-updated-cb3)
  (updated-cb2) (done-2) (do-close_sd8-condeffs) (done-0) (not-closed-sd8)
  (do-close_sd22-condeffs) (do-close_sd12-condeffs) (do-close_sd11-condeffs)
  (do-close_sd15-condeffs) (do-close_sd7-condeffs) (not-closed-sd6)
  (do-close_sd16-condeffs) (closed-sd1) (do-close_sd19-condeffs)
  (not-closed-cb6) (not-updated-cb2) (closed-sd22) (not-closed-sd22)
  (closed-sd15) (closed-sd6) (not-closed-sd3) (closed-sd16) (updated-cb6)
  (do-wait_cb2-condeffs) (not-closed-sd5) (not-updated-cb6) (updated-cb3)
  (not-closed-sd18) (do-close_sd4-condeffs) (closed-cb6) (not-closed-sd21)
  (closed-sd20) (closed-cb1) (not-closed-cb3) (not-closed-sd15)
  (not-closed-sd14) (do-close_sd18-condeffs) (not-closed-cb2)
  (do-close_sd3-condeffs) (not-closed-sd19) (do-close_sd20-condeffs)
  (not-closed-sd11) (do-close_sd17-condeffs) (not-closed-sd12) (not-closed-sd1)
  (closed-cb5) (not-closed-sd7) (closed-cb2) (not-closed-sd10)
  (do-close_sd6-condeffs) (closed-cb4) (not-updated-cb1) (closed-sd13)
  (not-closed-sd13) (do-normal) (updated-cb1) (not-closed-sd17) (closed-sd21)
  (not-closed-cb1) (do-wait_cb3-condeffs) (closed-sd17) (not-closed-cb4)
  (do-close_sd1-condeffs) (do-close_sd9-condeffs) (closed-sd5)
  (not-closed-sd2))
 (:action ugly1450033ugly80ugly143ugly30ugly28close_sd3-condeff0-no-2
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1450034ugly62ugly53ugly130ugly3close_sd18 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd18-condeffs) (closed-sd18)
       (not (not-closed-sd18))))
 (:action ugly1450035ugly213ugly89ugly224ugly57wait_cb1 :parameters ()
  :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly1450036ugly185ugly174ugly104ugly14close_sd17-condeff2-no-3
  :parameters () :precondition (and (do-close_sd17-condeffs) (not-closed-cb4))
  :effect (and (done-2)))
 (:action ugly1450037ugly147ugly126ugly186ugly193close_sd4-condeff0-no-3
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1450038ugly194ugly165ugly210ugly185close_sd19-condeff1-no-0
  :parameters () :precondition (and (do-close_sd19-condeffs) (not-closed-sd22))
  :effect (and (done-1)))
 (:action ugly1450039ugly167ugly31ugly227ugly90close_sd17-condeff2-no-2
  :parameters () :precondition (and (do-close_sd17-condeffs) (not-closed-sd18))
  :effect (and (done-2)))
 (:action ugly1450040ugly20ugly99ugly119ugly122wait_cb3-endof-condeffs
  :parameters () :precondition (and (do-wait_cb3-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0))))
 (:action ugly1450041ugly195ugly198ugly44ugly144close_sd1-condeff0-no-1
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1450042ugly48ugly201ugly59ugly111wait_cb4-condeff2-no-1
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd19))
  :effect (and (done-2)))
 (:action ugly1450043ugly77ugly17ugly56ugly205close_sd19-endof-condeffs
  :parameters () :precondition (and (do-close_sd19-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd19-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1450044ugly211ugly18ugly133ugly86close_sd9-condeff0-no-2
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action ugly1450045ugly224ugly57ugly216ugly34wait_cb1-condeff1-yes
  :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd16) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-sd1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1450046ugly202ugly103ugly195ugly198close_sd17-endof-condeffs
  :parameters () :precondition
  (and (do-close_sd17-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-close_sd17-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly1450047ugly19ugly170ugly100ugly73close_sd19-condeff1-no-3
  :parameters () :precondition (and (do-close_sd19-condeffs) (not-closed-cb4))
  :effect (and (done-1)))
 (:action ugly1450048ugly215ugly221ugly203ugly135close_sd6-condeff0-no-3
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-cb4))
  :effect (and (done-0)))
 (:action ugly1450049ugly67ugly160ugly139ugly85close_sd19-condeff0-no-3
  :parameters () :precondition (and (do-close_sd19-condeffs) (not-closed-cb4))
  :effect (and (done-0)))
 (:action ugly1450050ugly43ugly219ugly101ugly29open-sd12 :parameters ()
  :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd12) (not (closed-sd12))))
 (:action ugly1450051ugly220ugly125ugly173ugly128wait_cb2-condeff1-yes
  :parameters () :precondition (and (do-wait_cb2-condeffs) (closed-sd12))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1450052ugly214ugly207ugly72ugly142close_sd18-condeff1-no-2
  :parameters () :precondition (and (do-close_sd18-condeffs) (not-closed-sd17))
  :effect (and (done-1)))
 (:action ugly1450053ugly187ugly217ugly215ugly221wait_cb5-condeff0-yes
  :parameters () :precondition (and (do-wait_cb5-condeffs) (closed-sd20))
  :effect (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly1450054ugly13ugly23ugly45ugly134open-cb5 :parameters ()
  :precondition
  (and (do-normal) (closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-cb5) (not (closed-cb5))))
 (:action ugly1450055ugly76ugly2ugly108ugly95wait_cb4-condeff1-yes :parameters
  () :precondition
  (and (do-wait_cb4-condeffs) (closed-sd6) (closed-sd19) (closed-sd18)
       (closed-sd17))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1450056ugly159ugly154ugly152ugly65close_cb2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly1450057ugly201ugly59ugly111ugly131open-cb4 :parameters ()
  :precondition
  (and (do-normal) (closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1450058ugly143ugly30ugly28ugly94close_sd2-condeff0-no-3
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1450059ugly198ugly44ugly144ugly107close_sd2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly1450060ugly153ugly109ugly129ugly98close_sd18-condeff1-no-0
  :parameters () :precondition (and (do-close_sd18-condeffs) (not-closed-sd6))
  :effect (and (done-1)))
 (:action ugly1450061ugly7ugly10ugly49ugly15open-sd13 :parameters ()
  :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd13) (not (closed-sd13))))
 (:action ugly1450062ugly83ugly191ugly35ugly12close_cb5 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb5) (not-updated-cb5) (not (not-closed-cb5))
       (not (updated-cb5))))
 (:action ugly1450063ugly180ugly64ugly36ugly194open-cb2 :parameters ()
  :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1450064ugly95ugly124ugly33ugly11close_sd8-condeff0-no-0
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd16))
  :effect (and (done-0)))
 (:action ugly1450065ugly9ugly158ugly39ugly105close_sd18-condeff1-no-1
  :parameters () :precondition (and (do-close_sd18-condeffs) (not-closed-sd19))
  :effect (and (done-1)))
 (:action ugly1450066ugly84ugly92ugly188ugly93close_cb3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly1450067ugly81ugly75ugly123ugly156close_sd9-condeff0-no-1
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action ugly1450068ugly173ugly128ugly213ugly89wait_cb1-condeff1-no-1
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd9))
  :effect (and (done-1)))
 (:action ugly1450069ugly102ugly69ugly225ugly196close_sd22-condeff0-no-1
  :parameters () :precondition (and (do-close_sd22-condeffs) (not-closed-sd18))
  :effect (and (done-0)))
 (:action ugly1450070ugly69ugly225ugly196ugly4close_sd19-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd19-condeffs) (closed-sd6) (closed-sd18) (closed-sd17)
       (closed-cb4))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1450071ugly140ugly77ugly17ugly56wait_cb5-endof-condeffs
  :parameters () :precondition (and (do-wait_cb5-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb5-condeffs)) (not (done-0))))
 (:action ugly1450072ugly174ugly104ugly14ugly43wait_cb1-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1450073ugly61ugly9ugly158ugly39close_sd1-condeff0-yes :parameters
  () :precondition
  (and (do-close_sd1-condeffs) (closed-sd4) (closed-sd3) (closed-sd2)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1450074ugly126ugly186ugly193ugly88close_sd11-condeff0-no-0
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd18))
  :effect (and (done-0)))
 (:action ugly1450075ugly193ugly88ugly182ugly132close_sd5 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly1450076ugly21ugly5ugly116ugly71close_sd16-condeff0-no-1
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action ugly1450077ugly37ugly67ugly160ugly139close_sd4-condeff0-no-0
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1450078ugly128ugly213ugly89ugly224close_sd13 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd13) (not (not-closed-sd13))))
 (:action ugly1450079ugly110ugly151ugly200ugly141close_sd11-condeff0-no-2
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-cb4))
  :effect (and (done-0)))
 (:action ugly1450080ugly134ugly162ugly7ugly10close_sd16-condeff0-no-2
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action ugly1450081ugly152ugly65ugly137ugly115close_sd1-condeff1-no-2
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd8))
  :effect (and (done-1)))
 (:action ugly1450082ugly210ugly185ugly174ugly104close_sd18-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd18-condeffs) (closed-sd11) (closed-sd17) (closed-cb4))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1450083ugly24ugly192ugly26ugly153close_sd1-condeff0-no-3
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1450084ugly123ugly156ugly189ugly155open-sd21 :parameters ()
  :precondition
  (and (do-normal) (closed-sd21) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd21) (not (closed-sd21))))
 (:action ugly1450085ugly99ugly119ugly122ugly209close_sd4-condeff0-no-2
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1450086ugly122ugly209ugly87ugly81close_sd7-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd16) (closed-sd9) (closed-sd8)
       (closed-sd1) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1450087ugly17ugly56ugly205ugly178close_sd17-condeff2-no-0
  :parameters () :precondition (and (do-close_sd17-condeffs) (not-closed-sd22))
  :effect (and (done-2)))
 (:action ugly1450088ugly39ugly105ugly20ugly99wait_cb4 :parameters ()
  :precondition (and (do-normal) (not-updated-cb4)) :effect
  (and (not (do-normal)) (do-wait_cb4-condeffs) (updated-cb4)
       (not (not-updated-cb4))))
 (:action ugly1450089ugly181ugly206ugly176ugly228close_sd19-condeff0-no-0
  :parameters () :precondition (and (do-close_sd19-condeffs) (not-closed-sd6))
  :effect (and (done-0)))
 (:action ugly1450090ugly36ugly194ugly165ugly210close_sd11-endof-condeffs
  :parameters () :precondition (and (do-close_sd11-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0))))
 (:action ugly1450091ugly179ugly51ugly202ugly103close_sd6-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd19) (closed-sd18) (closed-sd17)
       (closed-cb4))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1450092ugly103ugly195ugly198ugly44open-sd17 :parameters ()
  :precondition
  (and (do-normal) (closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd17) (not (closed-sd17))))
 (:action ugly1450093ugly44ugly144ugly107ugly97close_sd12 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd12-condeffs) (closed-sd12)
       (not (not-closed-sd12))))
 (:action ugly1450094ugly1ugly110ugly151ugly200open-sd20 :parameters ()
  :precondition
  (and (do-normal) (closed-sd20) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd20) (not (closed-sd20))))
 (:action ugly1450095ugly112ugly212ugly46ugly6close_sd7-condeff0-no-4
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1450096ugly73ugly177ugly70ugly120wait_cb2-condeff0-yes
  :parameters () :precondition (and (do-wait_cb2-condeffs) (closed-sd10))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1450097ugly93ugly136ugly164ugly60close_sd10 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action ugly1450098ugly133ugly86ugly190ugly50close_sd19 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd19) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd19-condeffs) (closed-sd19)
       (not (not-closed-sd19))))
 (:action ugly1450099ugly209ugly87ugly81ugly75wait_cb4-condeff0-no-2
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd17))
  :effect (and (done-0)))
 (:action ugly1450100ugly121ugly166ugly179ugly51wait_cb5 :parameters ()
  :precondition (and (do-normal) (not-updated-cb5)) :effect
  (and (not (do-normal)) (do-wait_cb5-condeffs) (updated-cb5)
       (not (not-updated-cb5))))
 (:action ugly1450101ugly30ugly28ugly94ugly102close_sd8-condeff0-no-1
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action ugly1450102ugly200ugly141ugly184ugly157open-sd11 :parameters ()
  :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly1450103ugly136ugly164ugly60ugly62close_sd15 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd15-condeffs) (closed-sd15)
       (not (not-closed-sd15))))
 (:action ugly1450104ugly47ugly61ugly9ugly158close_sd17-condeff2-yes
  :parameters () :precondition
  (and (do-close_sd17-condeffs) (closed-sd22) (closed-sd19) (closed-sd18)
       (closed-cb4))
  :effect (and (done-2) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1450105ugly104ugly14ugly43ugly219close_sd2-condeff0-no-2
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1450106ugly10ugly49ugly15ugly148wait_cb1-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd16))
  :effect (and (done-1)))
 (:action ugly1450107ugly223ugly16ugly47ugly61close_sd20 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd20) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd20-condeffs) (closed-sd20)
       (not (not-closed-sd20))))
 (:action ugly1450108ugly53ugly130ugly3ugly13close_sd18-condeff2-yes
  :parameters () :precondition
  (and (do-close_sd18-condeffs) (closed-sd22) (closed-sd19) (closed-sd17)
       (closed-cb4))
  :effect (and (done-2) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1450109ugly137ugly115ugly113ugly117close_sd1-condeff1-no-3
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action ugly1450110ugly101ugly29ugly149ugly63close_sd16-endof-condeffs
  :parameters () :precondition (and (do-close_sd16-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd16-condeffs)) (not (done-0))))
 (:action ugly1450111ugly205ugly178ugly40ugly8wait_cb1-condeff1-no-3
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action ugly1450112ugly190ugly50ugly167ugly31wait_cb1-condeff1-no-4
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1))
  :effect (and (done-1)))
 (:action ugly1450113ugly225ugly196ugly4ugly168close_sd7-condeff0-no-3
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1450114ugly40ugly8ugly226ugly76close_sd22-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd22-condeffs) (closed-sd19) (closed-sd18) (closed-sd17)
       (closed-cb4))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1450115ugly29ugly149ugly63ugly52close_sd9-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd1) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1450116ugly111ugly131ugly163ugly1close_sd1-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd16) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1450117ugly45ugly134ugly162ugly7close_sd20-condeff0-yes
  :parameters () :precondition (and (do-close_sd20-condeffs) (closed-cb5))
  :effect (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly1450118ugly52ugly187ugly217ugly215wait_cb1-condeff0-no-3
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1450119ugly168ugly79ugly183ugly37close_sd8-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd16) (closed-sd9) (closed-sd7)
       (closed-sd1) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1450120ugly124ugly33ugly11ugly68close_sd4 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly1450121ugly94ugly102ugly69ugly225close_sd6-condeff0-no-0
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd19))
  :effect (and (done-0)))
 (:action ugly1450122ugly151ugly200ugly141ugly184open-sd4 :parameters ()
  :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly1450123ugly88ugly182ugly132ugly82wait_cb3-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd15))
  :effect (and (done-0)))
 (:action ugly1450124ugly119ugly122ugly209ugly87close_sd7-endof-condeffs
  :parameters () :precondition (and (do-close_sd7-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))))
 (:action ugly1450125ugly60ugly62ugly53ugly130close_sd22-condeff0-no-0
  :parameters () :precondition (and (do-close_sd22-condeffs) (not-closed-sd19))
  :effect (and (done-0)))
 (:action ugly1450126ugly145ugly112ugly212ugly46close_sd22-condeff0-no-3
  :parameters () :precondition (and (do-close_sd22-condeffs) (not-closed-cb4))
  :effect (and (done-0)))
 (:action ugly1450127ugly32ugly161ugly197ugly145close_sd1-condeff1-no-1
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd9))
  :effect (and (done-1)))
 (:action ugly1450128ugly41ugly106ugly22ugly32open-cb6 :parameters ()
  :precondition
  (and (do-normal) (closed-cb6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-cb6) (not (closed-cb6))))
 (:action ugly1450129ugly132ugly82ugly208ugly38close_sd3-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd4) (closed-sd2) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1450130ugly188ugly93ugly136ugly164close_sd12-condeff0-no-0
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly1450131ugly120ugly211ugly18ugly133close_sd4-condeff0-no-1
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1450132ugly191ugly35ugly12ugly118close_sd7-condeff0-no-2
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action ugly1450133ugly105ugly20ugly99ugly119wait_cb4-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd18))
  :effect (and (done-0)))
 (:action ugly1450134ugly139ugly85ugly172ugly180close_sd10-condeff0-no-0
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly1450135ugly23ugly45ugly134ugly162close_sd22-endof-condeffs
  :parameters () :precondition (and (do-close_sd22-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd22-condeffs)) (not (done-0))))
 (:action ugly1450136ugly82ugly208ugly38ugly91wait_cb1-condeff0-no-2
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1450137ugly100ugly73ugly177ugly70wait_cb4-condeff0-yes
  :parameters () :precondition
  (and (do-wait_cb4-condeffs) (closed-sd11) (closed-sd18) (closed-sd17))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1450138ugly79ugly183ugly37ugly67open-sd1 :parameters ()
  :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly1450139ugly150ugly138ugly121ugly166close_sd14 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd14) (not (not-closed-sd14))))
 (:action ugly1450140ugly6ugly80ugly143ugly30close_sd18-endof-condeffs
  :parameters () :precondition
  (and (do-close_sd18-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-close_sd18-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly1450141ugly57ugly216ugly34ugly222close_sd15-condeff0-no-0
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1450142ugly218ugly24ugly192ugly26open-sd8 :parameters ()
  :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly1450143ugly3ugly13ugly23ugly45wait_cb4-endof-condeffs :parameters
  () :precondition (and (do-wait_cb4-condeffs) (done-0) (done-1) (done-2))
  :effect
  (and (do-normal) (not (do-wait_cb4-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly1450144ugly148ugly223ugly16ugly47close_sd12-endof-condeffs
  :parameters () :precondition (and (do-close_sd12-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd12-condeffs)) (not (done-0))))
 (:action ugly1450145ugly27ugly84ugly92ugly188close_sd3-condeff0-no-1
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1450146ugly31ugly227ugly90ugly42close_sd11-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd18) (closed-sd17) (closed-cb4))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1450147ugly219ugly101ugly29ugly149close_sd10-condeff0-yes
  :parameters () :precondition (and (do-close_sd10-condeffs) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1450148ugly74ugly147ugly126ugly186close_sd9-endof-condeffs
  :parameters () :precondition (and (do-close_sd9-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0))))
 (:action ugly1450149ugly118ugly78ugly214ugly207close_sd8-condeff0-no-4
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1450150ugly70ugly120ugly211ugly18wait_cb4-condeff2-no-3
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd17))
  :effect (and (done-2)))
 (:action ugly1450151ugly22ugly32ugly161ugly197open-sd16 :parameters ()
  :precondition
  (and (do-normal) (closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd16) (not (closed-sd16))))
 (:action ugly1450152ugly98ugly19ugly170ugly100close_sd8-endof-condeffs
  :parameters () :precondition (and (do-close_sd8-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))))
 (:action ugly1450153ugly68ugly83ugly191ugly35close_sd20-endof-condeffs
  :parameters () :precondition (and (do-close_sd20-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd20-condeffs)) (not (done-0))))
 (:action ugly1450154ugly51ugly202ugly103ugly195close_sd6-condeff0-no-2
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd17))
  :effect (and (done-0)))
 (:action ugly1450155ugly58ugly66ugly175ugly27close_sd4-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd3) (closed-sd2) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1450156ugly217ugly215ugly221ugly203close_cb4 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb4) (not-updated-cb4) (not (not-closed-cb4))
       (not (updated-cb4))))
 (:action ugly1450157ugly196ugly4ugly168ugly79close_sd11-condeff0-no-1
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd17))
  :effect (and (done-0)))
 (:action ugly1450158ugly156ugly189ugly155ugly140close_sd7-condeff0-no-1
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action ugly1450159ugly154ugly152ugly65ugly137close_sd1-condeff1-no-4
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1))
  :effect (and (done-1)))
 (:action ugly1450160ugly96ugly54ugly25ugly204open-sd15 :parameters ()
  :precondition
  (and (do-normal) (closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd15) (not (closed-sd15))))
 (:action ugly1450161ugly85ugly172ugly180ugly64close_sd17-condeff1-no-1
  :parameters () :precondition (and (do-close_sd17-condeffs) (not-closed-sd19))
  :effect (and (done-1)))
 (:action ugly1450162ugly222ugly55ugly127ugly74open-sd14 :parameters ()
  :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd14) (not (closed-sd14))))
 (:action ugly1450163ugly226ugly76ugly2ugly108close_sd3-condeff0-no-3
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1450164ugly164ugly60ugly62ugly53wait_cb4-condeff2-no-0
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd22))
  :effect (and (done-2)))
 (:action ugly1450165ugly92ugly188ugly93ugly136open-cb3 :parameters ()
  :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1450166ugly49ugly15ugly148ugly223close_sd18-condeff0-no-1
  :parameters () :precondition (and (do-close_sd18-condeffs) (not-closed-sd17))
  :effect (and (done-0)))
 (:action ugly1450167ugly227ugly90ugly42ugly181wait_cb3 :parameters ()
  :precondition (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action ugly1450168ugly28ugly94ugly102ugly69wait_cb1-condeff1-no-2
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd8))
  :effect (and (done-1)))
 (:action ugly1450169ugly172ugly180ugly64ugly36close_sd6 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly1450170ugly135ugly199ugly41ugly106close_sd18-condeff1-no-3
  :parameters () :precondition (and (do-close_sd18-condeffs) (not-closed-cb4))
  :effect (and (done-1)))
 (:action ugly1450171ugly14ugly43ugly219ugly101close_sd17 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd17-condeffs) (closed-sd17)
       (not (not-closed-sd17))))
 (:action ugly1450172ugly184ugly157ugly150ugly138wait_cb4-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action ugly1450173ugly182ugly132ugly82ugly208close_sd17-condeff1-no-3
  :parameters () :precondition (and (do-close_sd17-condeffs) (not-closed-cb4))
  :effect (and (done-1)))
 (:action ugly1450174ugly107ugly97ugly58ugly66close_sd19-condeff1-no-1
  :parameters () :precondition (and (do-close_sd19-condeffs) (not-closed-sd18))
  :effect (and (done-1)))
 (:action ugly1450175ugly197ugly145ugly112ugly212close_sd16-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd16-condeffs) (closed-sd9) (closed-sd8) (closed-sd7)
       (closed-sd1) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1450176ugly157ugly150ugly138ugly121open-cb1 :parameters ()
  :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1450177ugly55ugly127ugly74ugly147wait_cb4-condeff1-no-1
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd19))
  :effect (and (done-1)))
 (:action ugly1450178ugly221ugly203ugly135ugly199close_sd17-condeff2-no-1
  :parameters () :precondition (and (do-close_sd17-condeffs) (not-closed-sd19))
  :effect (and (done-2)))
 (:action ugly1450179ugly4ugly168ugly79ugly183close_sd17-condeff1-no-2
  :parameters () :precondition (and (do-close_sd17-condeffs) (not-closed-sd18))
  :effect (and (done-1)))
 (:action ugly1450180ugly125ugly173ugly128ugly213close_sd4-endof-condeffs
  :parameters () :precondition (and (do-close_sd4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))))
 (:action ugly1450181ugly166ugly179ugly51ugly202close_sd2-endof-condeffs
  :parameters () :precondition (and (do-close_sd2-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))))
 (:action ugly1450182ugly113ugly117ugly114ugly171wait_cb1-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action ugly1450183ugly206ugly176ugly228ugly169open-sd2 :parameters ()
  :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly1450184ugly2ugly108ugly95ugly124close_sd17-condeff0-no-2
  :parameters () :precondition (and (do-close_sd17-condeffs) (not-closed-cb4))
  :effect (and (done-0)))
 (:action ugly1450185ugly171ugly218ugly24ugly192close_sd18-condeff2-no-2
  :parameters () :precondition (and (do-close_sd18-condeffs) (not-closed-sd17))
  :effect (and (done-2)))
 (:action ugly1450186ugly63ugly52ugly187ugly217wait_cb2-endof-condeffs
  :parameters () :precondition (and (do-wait_cb2-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly1450187ugly163ugly1ugly110ugly151close_sd6-endof-condeffs
  :parameters () :precondition (and (do-close_sd6-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))))
 (:action ugly1450188ugly109ugly129ugly98ugly19close_sd19-condeff0-no-1
  :parameters () :precondition (and (do-close_sd19-condeffs) (not-closed-sd18))
  :effect (and (done-0)))
 (:action ugly1450189ugly228ugly169ugly159ugly154open-sd9 :parameters ()
  :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly1450190ugly35ugly12ugly118ugly78wait_cb2-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd12))
  :effect (and (done-1)))
 (:action ugly1450191ugly212ugly46ugly6ugly80open-sd18 :parameters ()
  :precondition
  (and (do-normal) (closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd18) (not (closed-sd18))))
 (:action ugly1450192ugly26ugly153ugly109ugly129close_sd2-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd4) (closed-sd3) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1450193ugly176ugly228ugly169ugly159open-sd7 :parameters ()
  :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly1450194ugly115ugly113ugly117ugly114close_sd19-condeff0-no-2
  :parameters () :precondition (and (do-close_sd19-condeffs) (not-closed-sd17))
  :effect (and (done-0)))
 (:action ugly1450195ugly25ugly204ugly146ugly96close_sd15-condeff0-yes
  :parameters () :precondition (and (do-close_sd15-condeffs) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1450196ugly34ugly222ugly55ugly127close_sd7 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly1450197ugly33ugly11ugly68ugly83close_sd9-condeff0-no-3
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1450198ugly155ugly140ugly77ugly17close_sd15-endof-condeffs
  :parameters () :precondition (and (do-close_sd15-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd15-condeffs)) (not (done-0))))
 (:action ugly1450199ugly97ugly58ugly66ugly175close_sd18-condeff2-no-3
  :parameters () :precondition (and (do-close_sd18-condeffs) (not-closed-cb4))
  :effect (and (done-2)))
 (:action ugly1450200ugly16ugly47ugly61ugly9open-sd3 :parameters ()
  :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly1450201ugly54ugly25ugly204ugly146close_sd3-endof-condeffs
  :parameters () :precondition (and (do-close_sd3-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))))
 (:action ugly1450202ugly158ugly39ugly105ugly20close_sd2-condeff0-no-0
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action ugly1450203ugly204ugly146ugly96ugly54close_sd18-condeff2-no-1
  :parameters () :precondition (and (do-close_sd18-condeffs) (not-closed-sd19))
  :effect (and (done-2)))
 (:action ugly1450204ugly161ugly197ugly145ugly112wait_cb2-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd10))
  :effect (and (done-0)))
 (:action ugly1450205ugly114ugly171ugly218ugly24close_sd9-condeff0-no-4
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1450206ugly169ugly159ugly154ugly152close_sd10-endof-condeffs
  :parameters () :precondition (and (do-close_sd10-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))))
 (:action ugly1450207ugly106ugly22ugly32ugly161close_sd6-condeff0-no-1
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd18))
  :effect (and (done-0)))
 (:action ugly1450208ugly208ugly38ugly91ugly220wait_cb4-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd6))
  :effect (and (done-1)))
 (:action ugly1450209ugly192ugly26ugly153ugly109wait_cb4-condeff2-yes
  :parameters () :precondition
  (and (do-wait_cb4-condeffs) (closed-sd22) (closed-sd19) (closed-sd18)
       (closed-sd17))
  :effect (and (done-2) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1450210ugly186ugly193ugly88ugly182wait_cb4-condeff2-no-2
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd18))
  :effect (and (done-2)))
 (:action ugly1450211ugly38ugly91ugly220ugly125close_sd19-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd19-condeffs) (closed-sd22) (closed-sd18) (closed-sd17)
       (closed-cb4))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1450212ugly144ugly107ugly97ugly58close_sd8 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly1450213ugly72ugly142ugly21ugly5close_sd1-endof-condeffs
  :parameters () :precondition (and (do-close_sd1-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1450214ugly12ugly118ugly78ugly214wait_cb3-condeff0-yes
  :parameters () :precondition (and (do-wait_cb3-condeffs) (closed-sd15))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1450215ugly56ugly205ugly178ugly40close_sd21 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd21) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd21) (not (not-closed-sd21))))
 (:action ugly1450216ugly116ugly71ugly48ugly201close_sd12-condeff0-yes
  :parameters () :precondition (and (do-close_sd12-condeffs) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1450217ugly149ugly63ugly52ugly187wait_cb1-condeff0-yes
  :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd4) (closed-sd3) (closed-sd2)
       (closed-sd1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1450218ugly78ugly214ugly207ugly72open-sd19 :parameters ()
  :precondition
  (and (do-normal) (closed-sd19) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd19) (not (closed-sd19))))
 (:action ugly1450219ugly203ugly135ugly199ugly41close_sd1-condeff0-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action ugly1450220ugly129ugly98ugly19ugly170close_sd2-condeff0-no-1
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1450221ugly175ugly27ugly84ugly92close_sd9-condeff0-no-0
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd16))
  :effect (and (done-0)))
 (:action ugly1450222ugly5ugly116ugly71ugly48wait_cb6 :parameters ()
  :precondition (and (do-normal) (not-updated-cb6)) :effect
  (and (not-closed-cb6) (updated-cb6) (not (closed-cb6))
       (not (not-updated-cb6))))
 (:action ugly1450223ugly183ugly37ugly67ugly160open-sd22 :parameters ()
  :precondition
  (and (do-normal) (closed-sd22) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd22) (not (closed-sd22))))
 (:action ugly1450224ugly59ugly111ugly131ugly163close_sd22 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd22) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd22-condeffs) (closed-sd22)
       (not (not-closed-sd22))))
 (:action ugly1450225ugly64ugly36ugly194ugly165wait_cb2 :parameters ()
  :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly1450226ugly189ugly155ugly140ugly77close_sd18-condeff0-no-2
  :parameters () :precondition (and (do-close_sd18-condeffs) (not-closed-cb4))
  :effect (and (done-0)))
 (:action ugly1450227ugly199ugly41ugly106ugly22close_sd17-condeff0-no-1
  :parameters () :precondition (and (do-close_sd17-condeffs) (not-closed-sd18))
  :effect (and (done-0)))
 (:action ugly1450228ugly177ugly70ugly120ugly211close_sd18-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd18-condeffs) (closed-sd6) (closed-sd19) (closed-sd17)
       (closed-cb4))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1450229ugly91ugly220ugly125ugly173wait_cb4-condeff1-no-3
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd17))
  :effect (and (done-1)))
 (:action ugly1450230ugly15ugly148ugly223ugly16close_sd16-condeff0-no-0
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action ugly1450231ugly160ugly139ugly85ugly172close_sd11 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action ugly1450232ugly216ugly34ugly222ugly55wait_cb4-condeff1-no-2
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd18))
  :effect (and (done-1)))
 (:action ugly1450233ugly142ugly21ugly5ugly116close_sd8-condeff0-no-3
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1450234ugly130ugly3ugly13ugly23close_sd16 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd16-condeffs) (closed-sd16)
       (not (not-closed-sd16))))
 (:action ugly1450235ugly66ugly175ugly27ugly84close_sd3-condeff0-no-0
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action ugly1450236ugly46ugly6ugly80ugly143close_sd17-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd17-condeffs) (closed-sd11) (closed-sd18) (closed-cb4))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1450237ugly138ugly121ugly166ugly179close_sd16-condeff0-no-4
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1450238ugly207ugly72ugly142ugly21close_sd22-condeff0-no-2
  :parameters () :precondition (and (do-close_sd22-condeffs) (not-closed-sd17))
  :effect (and (done-0)))
 (:action ugly1450239ugly11ugly68ugly83ugly191close_sd17-condeff1-no-0
  :parameters () :precondition (and (do-close_sd17-condeffs) (not-closed-sd6))
  :effect (and (done-1)))
 (:action ugly1450240ugly108ugly95ugly124ugly33close_sd20-condeff0-no-0
  :parameters () :precondition (and (do-close_sd20-condeffs) (not-closed-cb5))
  :effect (and (done-0)))
 (:action ugly1450241ugly117ugly114ugly171ugly218close_sd18-condeff2-no-0
  :parameters () :precondition (and (do-close_sd18-condeffs) (not-closed-sd22))
  :effect (and (done-2)))
 (:action ugly1450242ugly162ugly7ugly10ugly49close_sd18-condeff0-no-0
  :parameters () :precondition (and (do-close_sd18-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action ugly1450243ugly165ugly210ugly185ugly174close_sd1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly1450244ugly75ugly123ugly156ugly189open-sd6 :parameters ()
  :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly1450245ugly8ugly226ugly76ugly2close_sd1-condeff0-no-2 :parameters
  () :precondition (and (do-close_sd1-condeffs) (not-closed-sd2)) :effect
  (and (done-0)))
 (:action ugly1450246ugly127ugly74ugly147ugly126close_sd9 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action ugly1450247ugly50ugly167ugly31ugly227close_sd3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly1450248ugly87ugly81ugly75ugly123open-sd5 :parameters ()
  :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly1450249ugly146ugly96ugly54ugly25wait_cb5-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb5-condeffs) (not-closed-sd20))
  :effect (and (done-0)))
 (:action ugly1450250ugly90ugly42ugly181ugly206close_sd19-condeff1-no-2
  :parameters () :precondition (and (do-close_sd19-condeffs) (not-closed-sd17))
  :effect (and (done-1)))
 (:action ugly1450251ugly141ugly184ugly157ugly150close_cb1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly1450252ugly131ugly163ugly1ugly110open-sd10 :parameters ()
  :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly1450253ugly18ugly133ugly86ugly190close_sd16-condeff0-no-3
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1450254ugly42ugly181ugly206ugly176wait_cb1-endof-condeffs
  :parameters () :precondition (and (do-wait_cb1-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly1450255ugly86ugly190ugly50ugly167close_sd17-condeff0-no-0
  :parameters () :precondition (and (do-close_sd17-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action ugly1450256ugly65ugly137ugly115ugly113close_cb6 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb6) (not-updated-cb6) (not (not-closed-cb6))
       (not (updated-cb6))))
 (:action ugly1450257ugly178ugly40ugly8ugly226close_sd7-condeff0-no-0
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd16))
  :effect (and (done-0)))
 (:action ugly1450258ugly170ugly100ugly73ugly177close_sd8-condeff0-no-2
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action ugly1450259ugly89ugly224ugly57ugly216close_sd17-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd17-condeffs) (closed-sd6) (closed-sd19) (closed-sd18)
       (closed-cb4))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1450260ugly71ugly48ugly201ugly59close_sd1-condeff1-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd16))
  :effect (and (done-1)))) 