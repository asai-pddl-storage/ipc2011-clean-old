
(define (domain grounded-strips-psr) (:requirements :strips :action-costs)
 (:predicates (closed-sd11) (not-closed-sd17) (not-updated-cb4)
  (do-close_sd22-condeffs) (not-closed-cb4) (closed-sd9) (not-closed-sd22)
  (do-close_sd16-condeffs) (updated-cb4) (closed-sd20) (done-1)
  (do-wait_cb5-condeffs) (do-close_sd3-condeffs) (do-close_sd15-condeffs)
  (closed-sd22) (do-close_sd12-condeffs) (not-closed-sd10)
  (do-wait_cb3-condeffs) (closed-sd19) (not-closed-sd7) (not-closed-sd11)
  (not-updated-cb5) (closed-sd21) (updated-cb6) (do-close_sd10-condeffs)
  (not-closed-sd13) (not-closed-sd3) (updated-cb1) (not-closed-sd1)
  (do-close_sd1-condeffs) (closed-sd8) (closed-cb6) (not-closed-cb2)
  (not-closed-sd19) (not-closed-sd8) (do-close_sd9-condeffs)
  (do-close_sd20-condeffs) (do-wait_cb4-condeffs) (do-close_sd8-condeffs)
  (do-close_sd19-condeffs) (closed-sd15) (closed-sd17) (not-updated-cb1)
  (do-wait_cb1-condeffs) (updated-cb2) (do-close_sd4-condeffs) (closed-sd1)
  (not-closed-sd16) (closed-sd10) (do-close_sd17-condeffs)
  (do-close_sd18-condeffs) (do-close_sd7-condeffs) (do-close_sd6-condeffs)
  (not-closed-sd5) (not-updated-cb2) (not-closed-sd4) (not-updated-cb3)
  (closed-sd18) (not-closed-sd2) (not-closed-sd20) (do-close_sd11-condeffs)
  (not-closed-cb6) (do-wait_cb2-condeffs) (closed-cb4) (not-closed-cb5)
  (closed-cb1) (not-closed-cb1) (closed-sd14) (not-closed-sd12) (closed-cb3)
  (not-closed-sd9) (closed-sd5) (closed-sd3) (not-closed-sd15) (done-2)
  (closed-sd12) (closed-sd4) (do-close_sd2-condeffs) (not-closed-sd18)
  (closed-cb2) (not-closed-sd14) (updated-cb3) (do-normal) (not-closed-sd21)
  (closed-cb5) (closed-sd7) (not-closed-sd6) (not-closed-cb3) (done-0)
  (closed-sd13) (closed-sd6) (not-updated-cb6) (closed-sd2) (closed-sd16)
  (updated-cb5))
 (:functions (total-cost) - number)
 (:action ugly1ugly110open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd10) (not (closed-sd10))))
 (:action ugly2ugly108close_sd3-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly3ugly13close_sd18-condeff2-yes :parameters () :precondition
  (and (do-close_sd18-condeffs) (closed-sd22) (closed-sd19) (closed-sd17)
       (closed-cb4))
  :effect (and (done-2) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly4ugly168close_sd7-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly5ugly116close_sd8-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly6ugly80open-sd18 :parameters () :precondition
  (and (do-normal) (closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd18) (not (closed-sd18))))
 (:action ugly7ugly10close_sd16-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly8ugly226close_sd7-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd16)) :effect (and (done-0)))
 (:action ugly9ugly158close_sd17-condeff2-yes :parameters () :precondition
  (and (do-close_sd17-condeffs) (closed-sd22) (closed-sd19) (closed-sd18)
       (closed-cb4))
  :effect (and (done-2) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly10ugly49close_sd18-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd18-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly11ugly68close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly12ugly118close_sd7-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly13ugly23close_sd16 :parameters () :precondition
  (and (do-normal) (not-closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd16-condeffs) (closed-sd16)
       (not (not-closed-sd16))))
 (:action ugly14ugly43wait_cb1-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly15ugly148wait_cb1-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd16)) :effect (and (done-1)))
 (:action ugly16ugly47close_sd12-endof-condeffs :parameters () :precondition
  (and (do-close_sd12-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd12-condeffs)) (not (done-0))))
 (:action ugly17ugly56wait_cb5-endof-condeffs :parameters () :precondition
  (and (do-wait_cb5-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb5-condeffs)) (not (done-0))))
 (:action ugly18ugly133close_sd4-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly19ugly170close_sd2-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly20ugly99wait_cb4 :parameters () :precondition
  (and (do-normal) (not-updated-cb4)) :effect
  (and (not (do-normal)) (do-wait_cb4-condeffs) (updated-cb4)
       (not (not-updated-cb4))))
 (:action ugly21ugly5close_sd1-endof-condeffs :parameters () :precondition
  (and (do-close_sd1-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly22ugly32open-cb6 :parameters () :precondition
  (and (do-normal) (closed-cb6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly23ugly45wait_cb4-endof-condeffs :parameters () :precondition
  (and (do-wait_cb4-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb4-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly24ugly192close_sd18-condeff2-no-2 :parameters () :precondition
  (and (do-close_sd18-condeffs) (not-closed-sd17)) :effect (and (done-2)))
 (:action ugly25ugly204open-sd15 :parameters () :precondition
  (and (do-normal) (closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd15) (not (closed-sd15))))
 (:action ugly26ugly153close_sd1-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly27ugly84close_sd3-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly28ugly94close_sd2-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly29ugly149close_sd10-condeff0-yes :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly30ugly28close_sd3-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly31ugly227close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly32ugly161close_sd6-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd18)) :effect (and (done-0)))
 (:action ugly33ugly11close_sd8-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd16)) :effect (and (done-0)))
 (:action ugly34ugly222close_sd15-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly35ugly12close_cb5 :parameters () :precondition
  (and (do-normal) (not-closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb5) (not-updated-cb5) (not (not-closed-cb5))
       (not (updated-cb5))))
 (:action ugly36ugly194open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly37ugly67open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd1) (not (closed-sd1))))
 (:action ugly38ugly91wait_cb1-condeff0-no-2 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly39ugly105close_sd18-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd18-condeffs) (not-closed-sd19)) :effect (and (done-1)))
 (:action ugly40ugly8wait_cb1-condeff1-no-3 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly41ugly106close_sd18-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd18-condeffs) (not-closed-cb4)) :effect (and (done-1)))
 (:action ugly42ugly181wait_cb3 :parameters () :precondition
  (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action ugly43ugly219close_sd2-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly44ugly144close_sd1-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly45ugly134open-cb5 :parameters () :precondition
  (and (do-normal) (closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly46ugly6close_sd7-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly47ugly61close_sd20 :parameters () :precondition
  (and (do-normal) (not-closed-sd20) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd20-condeffs) (closed-sd20)
       (not (not-closed-sd20))))
 (:action ugly48ugly201close_sd12-condeff0-yes :parameters () :precondition
  (and (do-close_sd12-condeffs) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly49ugly15open-sd13 :parameters () :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd13) (not (closed-sd13))))
 (:action ugly50ugly167close_sd17-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd17-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly51ugly202close_sd2-endof-condeffs :parameters () :precondition
  (and (do-close_sd2-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))))
 (:action ugly52ugly187wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd4) (closed-sd3) (closed-sd2)
       (closed-sd1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly53ugly130close_sd22-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd22-condeffs) (not-closed-sd19)) :effect (and (done-0)))
 (:action ugly54ugly25wait_cb5-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb5-condeffs) (not-closed-sd20)) :effect (and (done-0)))
 (:action ugly55ugly127close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly56ugly205close_sd19-endof-condeffs :parameters () :precondition
  (and (do-close_sd19-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd19-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly57ugly216close_sd17-condeff1-yes :parameters () :precondition
  (and (do-close_sd17-condeffs) (closed-sd6) (closed-sd19) (closed-sd18)
       (closed-cb4))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly58ugly66close_sd19-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd19-condeffs) (not-closed-sd18)) :effect (and (done-1)))
 (:action ugly59ugly111wait_cb4-condeff2-no-1 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd19)) :effect (and (done-2)))
 (:action ugly60ugly62close_sd15 :parameters () :precondition
  (and (do-normal) (not-closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd15-condeffs) (closed-sd15)
       (not (not-closed-sd15))))
 (:action ugly61ugly9open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd3) (not (closed-sd3))))
 (:action ugly62ugly53wait_cb4-condeff2-no-0 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd22)) :effect (and (done-2)))
 (:action ugly63ugly52close_sd9-condeff0-yes :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd1) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly64ugly36close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly65ugly137close_sd1-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-1)))
 (:action ugly66ugly175close_sd18-condeff2-no-3 :parameters () :precondition
  (and (do-close_sd18-condeffs) (not-closed-cb4)) :effect (and (done-2)))
 (:action ugly67ugly160open-sd22 :parameters () :precondition
  (and (do-normal) (closed-sd22) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd22) (not (closed-sd22))))
 (:action ugly68ugly83close_sd9-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly69ugly225close_sd6-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd19)) :effect (and (done-0)))
 (:action ugly70ugly120wait_cb2-condeff0-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd10)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly71ugly48wait_cb6 :parameters () :precondition
  (and (do-normal) (not-updated-cb6)) :effect
  (and (not-closed-cb6) (updated-cb6) (not (closed-cb6))
       (not (not-updated-cb6))))
 (:action ugly72ugly142close_sd18-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd18-condeffs) (not-closed-sd17)) :effect (and (done-1)))
 (:action ugly73ugly177close_sd8-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly74ugly147wait_cb4-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd19)) :effect (and (done-1)))
 (:action ugly75ugly123open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd5) (not (closed-sd5))))
 (:action ugly76ugly2close_sd1-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly77ugly17close_sd15-endof-condeffs :parameters () :precondition
  (and (do-close_sd15-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd15-condeffs)) (not (done-0))))
 (:action ugly78ugly214wait_cb3-condeff0-yes :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd15)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly79ugly183close_sd17-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd17-condeffs) (not-closed-sd18)) :effect (and (done-1)))
 (:action ugly80ugly143close_sd17-condeff0-yes :parameters () :precondition
  (and (do-close_sd17-condeffs) (closed-sd11) (closed-sd18) (closed-cb4))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly81ugly75wait_cb4-condeff0-no-2 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd17)) :effect (and (done-0)))
 (:action ugly82ugly208close_sd17-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd17-condeffs) (not-closed-cb4)) :effect (and (done-1)))
 (:action ugly83ugly191close_sd17-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd17-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly84ugly92close_sd9-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd16)) :effect (and (done-0)))
 (:action ugly85ugly172close_sd11 :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action ugly86ugly190close_sd16-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly87ugly81close_sd7-condeff0-yes :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd16) (closed-sd9) (closed-sd8)
       (closed-sd1) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly88ugly182wait_cb4-condeff2-no-2 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd18)) :effect (and (done-2)))
 (:action ugly89ugly224close_sd13 :parameters () :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd13) (not (not-closed-sd13))))
 (:action ugly90ugly42close_sd11-condeff0-yes :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd18) (closed-sd17) (closed-cb4))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly91ugly220wait_cb4-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly92ugly188close_sd3-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly93ugly136open-cb3 :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly94ugly102close_sd8-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly95ugly124close_sd17-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd17-condeffs) (not-closed-cb4)) :effect (and (done-0)))
 (:action ugly96ugly54close_sd18-condeff2-no-1 :parameters () :precondition
  (and (do-close_sd18-condeffs) (not-closed-sd19)) :effect (and (done-2)))
 (:action ugly97ugly58close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly98ugly19close_sd19-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd19-condeffs) (not-closed-sd18)) :effect (and (done-0)))
 (:action ugly99ugly119wait_cb4-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd18)) :effect (and (done-0)))
 (:action ugly100ugly73close_sd19-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd19-condeffs) (not-closed-cb4)) :effect (and (done-1)))
 (:action ugly101ugly29open-sd12 :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd12) (not (closed-sd12))))
 (:action ugly102ugly69wait_cb1-condeff1-no-2 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly103ugly195close_sd6-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd17)) :effect (and (done-0)))
 (:action ugly104ugly14close_sd17-condeff2-no-3 :parameters () :precondition
  (and (do-close_sd17-condeffs) (not-closed-cb4)) :effect (and (done-2)))
 (:action ugly105ugly20close_sd2-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly106ugly22close_sd17-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd17-condeffs) (not-closed-sd18)) :effect (and (done-0)))
 (:action ugly107ugly97close_sd12 :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd12-condeffs) (closed-sd12)
       (not (not-closed-sd12))))
 (:action ugly108ugly95wait_cb4-condeff1-yes :parameters () :precondition
  (and (do-wait_cb4-condeffs) (closed-sd6) (closed-sd19) (closed-sd18)
       (closed-sd17))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly109ugly129close_sd2-condeff0-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd4) (closed-sd3) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly110ugly151close_sd6-endof-condeffs :parameters () :precondition
  (and (do-close_sd6-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))))
 (:action ugly111ugly131open-cb4 :parameters () :precondition
  (and (do-normal) (closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly112ugly212close_sd16-condeff0-yes :parameters () :precondition
  (and (do-close_sd16-condeffs) (closed-sd9) (closed-sd8) (closed-sd7)
       (closed-sd1) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly113ugly117close_sd1-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly114ugly171wait_cb1-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly115ugly113close_cb6 :parameters () :precondition
  (and (do-normal) (not-closed-cb6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb6) (not-updated-cb6) (not (not-closed-cb6))
       (not (updated-cb6))))
 (:action ugly116ugly71close_sd16-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly117ugly114close_sd19-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd19-condeffs) (not-closed-sd17)) :effect (and (done-0)))
 (:action ugly118ugly78wait_cb2-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly119ugly122wait_cb3-endof-condeffs :parameters () :precondition
  (and (do-wait_cb3-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0))))
 (:action ugly120ugly211close_sd18-condeff1-yes :parameters () :precondition
  (and (do-close_sd18-condeffs) (closed-sd6) (closed-sd19) (closed-sd17)
       (closed-cb4))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly121ugly166close_sd14 :parameters () :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd14) (not (not-closed-sd14))))
 (:action ugly122ugly209close_sd4-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly123ugly156close_sd9-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly124ugly33close_sd20-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd20-condeffs) (not-closed-cb5)) :effect (and (done-0)))
 (:action ugly125ugly173wait_cb4-condeff1-no-3 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd17)) :effect (and (done-1)))
 (:action ugly126ugly186close_sd9-endof-condeffs :parameters () :precondition
  (and (do-close_sd9-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0))))
 (:action ugly127ugly74open-sd14 :parameters () :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd14) (not (closed-sd14))))
 (:action ugly128ugly213close_sd4-endof-condeffs :parameters () :precondition
  (and (do-close_sd4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))))
 (:action ugly129ugly98close_sd18-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd18-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly130ugly3close_sd18 :parameters () :precondition
  (and (do-normal) (not-closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd18-condeffs) (closed-sd18)
       (not (not-closed-sd18))))
 (:action ugly131ugly163close_sd22 :parameters () :precondition
  (and (do-normal) (not-closed-sd22) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd22-condeffs) (closed-sd22)
       (not (not-closed-sd22))))
 (:action ugly132ugly82wait_cb3-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd15)) :effect (and (done-0)))
 (:action ugly133ugly86close_sd9-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly134ugly162close_sd22-endof-condeffs :parameters () :precondition
  (and (do-close_sd22-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd22-condeffs)) (not (done-0))))
 (:action ugly135ugly199close_sd17-condeff2-no-1 :parameters () :precondition
  (and (do-close_sd17-condeffs) (not-closed-sd19)) :effect (and (done-2)))
 (:action ugly136ugly164close_sd12-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly137ugly115close_sd1-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly138ugly121open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly139ugly85close_sd19-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd19-condeffs) (not-closed-cb4)) :effect (and (done-0)))
 (:action ugly140ugly77close_sd18-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd18-condeffs) (not-closed-cb4)) :effect (and (done-0)))
 (:action ugly141ugly184open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd4) (not (closed-sd4))))
 (:action ugly142ugly21close_sd22-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd22-condeffs) (not-closed-sd17)) :effect (and (done-0)))
 (:action ugly143ugly30close_sd18-endof-condeffs :parameters () :precondition
  (and (do-close_sd18-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-close_sd18-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly144ugly107close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly145ugly112wait_cb2-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd10)) :effect (and (done-0)))
 (:action ugly146ugly96close_sd15-condeff0-yes :parameters () :precondition
  (and (do-close_sd15-condeffs) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly147ugly126close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action ugly148ugly223close_sd18-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd18-condeffs) (not-closed-sd17)) :effect (and (done-0)))
 (:action ugly149ugly63close_sd16-endof-condeffs :parameters () :precondition
  (and (do-close_sd16-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd16-condeffs)) (not (done-0))))
 (:action ugly150ugly138wait_cb4-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly151ugly200open-sd20 :parameters () :precondition
  (and (do-normal) (closed-sd20) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd20) (not (closed-sd20))))
 (:action ugly152ugly65close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly153ugly109wait_cb4-condeff2-yes :parameters () :precondition
  (and (do-wait_cb4-condeffs) (closed-sd22) (closed-sd19) (closed-sd18)
       (closed-sd17))
  :effect (and (done-2) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly154ugly152close_sd10-endof-condeffs :parameters () :precondition
  (and (do-close_sd10-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))))
 (:action ugly155ugly140close_sd7-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly156ugly189open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd6) (not (closed-sd6))))
 (:action ugly157ugly150close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly158ugly39close_sd1-condeff0-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd4) (closed-sd3) (closed-sd2)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly159ugly154open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd9) (not (closed-sd9))))
 (:action ugly160ugly139close_sd4-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly161ugly197open-sd16 :parameters () :precondition
  (and (do-normal) (closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd16) (not (closed-sd16))))
 (:action ugly162ugly7close_sd20-condeff0-yes :parameters () :precondition
  (and (do-close_sd20-condeffs) (closed-cb5)) :effect
  (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly163ugly1close_sd1-condeff1-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd16) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly164ugly60close_sd10 :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action ugly165ugly210close_sd11-endof-condeffs :parameters () :precondition
  (and (do-close_sd11-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0))))
 (:action ugly166ugly179close_sd16-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly167ugly31wait_cb1-condeff1-no-4 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-1)))
 (:action ugly168ugly79close_sd11-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd17)) :effect (and (done-0)))
 (:action ugly169ugly159open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd7) (not (closed-sd7))))
 (:action ugly170ugly100close_sd8-endof-condeffs :parameters () :precondition
  (and (do-close_sd8-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))))
 (:action ugly171ugly218close_sd18-condeff2-no-0 :parameters () :precondition
  (and (do-close_sd18-condeffs) (not-closed-sd22)) :effect (and (done-2)))
 (:action ugly172ugly180close_sd10-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly173ugly128wait_cb2-condeff1-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd12)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly174ugly104close_sd18-condeff0-yes :parameters () :precondition
  (and (do-close_sd18-condeffs) (closed-sd11) (closed-sd17) (closed-cb4))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly175ugly27close_sd4-condeff0-yes :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd3) (closed-sd2) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly176ugly228close_sd19-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd19-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly177ugly70wait_cb4-condeff0-yes :parameters () :precondition
  (and (do-wait_cb4-condeffs) (closed-sd11) (closed-sd18) (closed-sd17))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly178ugly40close_sd21 :parameters () :precondition
  (and (do-normal) (not-closed-sd21) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd21) (not (not-closed-sd21))))
 (:action ugly179ugly51wait_cb5 :parameters () :precondition
  (and (do-normal) (not-updated-cb5)) :effect
  (and (not (do-normal)) (do-wait_cb5-condeffs) (updated-cb5)
       (not (not-updated-cb5))))
 (:action ugly180ugly64close_sd17-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd17-condeffs) (not-closed-sd19)) :effect (and (done-1)))
 (:action ugly181ugly206close_sd19-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd19-condeffs) (not-closed-sd17)) :effect (and (done-1)))
 (:action ugly182ugly132close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly183ugly37close_sd8-condeff0-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd16) (closed-sd9) (closed-sd7)
       (closed-sd1) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly184ugly157open-sd11 :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd11) (not (closed-sd11))))
 (:action ugly185ugly174close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly186ugly193close_sd4-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly187ugly217wait_cb2-endof-condeffs :parameters () :precondition
  (and (do-wait_cb2-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly188ugly93close_cb3 :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly189ugly155open-sd21 :parameters () :precondition
  (and (do-normal) (closed-sd21) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd21) (not (closed-sd21))))
 (:action ugly190ugly50close_sd19 :parameters () :precondition
  (and (do-normal) (not-closed-sd19) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd19-condeffs) (closed-sd19)
       (not (not-closed-sd19))))
 (:action ugly191ugly35close_sd20-endof-condeffs :parameters () :precondition
  (and (do-close_sd20-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd20-condeffs)) (not (done-0))))
 (:action ugly192ugly26open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd8) (not (closed-sd8))))
 (:action ugly193ugly88close_sd11-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd18)) :effect (and (done-0)))
 (:action ugly194ugly165wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly195ugly198close_sd17-endof-condeffs :parameters () :precondition
  (and (do-close_sd17-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-close_sd17-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly196ugly4close_sd19-condeff0-yes :parameters () :precondition
  (and (do-close_sd19-condeffs) (closed-sd6) (closed-sd18) (closed-sd17)
       (closed-cb4))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly197ugly145close_sd1-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly198ugly44open-sd17 :parameters () :precondition
  (and (do-normal) (closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd17) (not (closed-sd17))))
 (:action ugly199ugly41close_sd1-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly200ugly141close_sd11-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-cb4)) :effect (and (done-0)))
 (:action ugly201ugly59close_sd1-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd16)) :effect (and (done-1)))
 (:action ugly202ugly103close_sd6-condeff0-yes :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd19) (closed-sd18) (closed-sd17)
       (closed-cb4))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly203ugly135close_sd6-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-cb4)) :effect (and (done-0)))
 (:action ugly204ugly146close_sd3-endof-condeffs :parameters () :precondition
  (and (do-close_sd3-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))))
 (:action ugly205ugly178close_sd17-condeff2-no-0 :parameters () :precondition
  (and (do-close_sd17-condeffs) (not-closed-sd22)) :effect (and (done-2)))
 (:action ugly206ugly176wait_cb1-endof-condeffs :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly207ugly72open-sd19 :parameters () :precondition
  (and (do-normal) (closed-sd19) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd19) (not (closed-sd19))))
 (:action ugly208ugly38close_sd3-condeff0-yes :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd4) (closed-sd2) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly209ugly87close_sd7-endof-condeffs :parameters () :precondition
  (and (do-close_sd7-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))))
 (:action ugly210ugly185close_sd19-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd19-condeffs) (not-closed-sd22)) :effect (and (done-1)))
 (:action ugly211ugly18wait_cb4-condeff2-no-3 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd17)) :effect (and (done-2)))
 (:action ugly212ugly46close_sd22-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd22-condeffs) (not-closed-cb4)) :effect (and (done-0)))
 (:action ugly213ugly89wait_cb1-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly214ugly207close_sd8-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly215ugly221wait_cb5-condeff0-yes :parameters () :precondition
  (and (do-wait_cb5-condeffs) (closed-sd20)) :effect
  (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly216ugly34wait_cb1-condeff1-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd16) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-sd1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly217ugly215wait_cb1-condeff0-no-3 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly218ugly24close_sd9-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly219ugly101close_sd17 :parameters () :precondition
  (and (do-normal) (not-closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd17-condeffs) (closed-sd17)
       (not (not-closed-sd17))))
 (:action ugly220ugly125close_sd19-condeff1-yes :parameters () :precondition
  (and (do-close_sd19-condeffs) (closed-sd22) (closed-sd18) (closed-sd17)
       (closed-cb4))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly221ugly203close_cb4 :parameters () :precondition
  (and (do-normal) (not-closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb4) (not-updated-cb4) (not (not-closed-cb4))
       (not (updated-cb4))))
 (:action ugly222ugly55wait_cb4-condeff1-no-2 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd18)) :effect (and (done-1)))
 (:action ugly223ugly16close_sd16-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly224ugly57wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly225ugly196close_sd22-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd22-condeffs) (not-closed-sd18)) :effect (and (done-0)))
 (:action ugly226ugly76close_sd22-condeff0-yes :parameters () :precondition
  (and (do-close_sd22-condeffs) (closed-sd19) (closed-sd18) (closed-sd17)
       (closed-cb4))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly227ugly90close_sd17-condeff2-no-2 :parameters () :precondition
  (and (do-close_sd17-condeffs) (not-closed-sd18)) :effect (and (done-2)))
 (:action ugly228ugly169open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd2) (not (closed-sd2))))) 