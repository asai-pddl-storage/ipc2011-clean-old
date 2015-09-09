
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (do-close_sd5-condeffs) (not-updated-cb1) (do-normal) (done-0)
  (not-closed-sd2) (closed-sd2) (do-close_sd16-condeffs)
  (do-close_sd10-condeffs) (not-closed-sd9) (not-closed-sd7) (not-closed-sd8)
  (not-closed-sd5) (do-close_sd8-condeffs) (do-close_sd1-condeffs)
  (do-close_sd14-condeffs) (not-closed-sd3) (do-close_sd15-condeffs)
  (closed-sd4) (not-updated-cb2) (goal-reached) (do-close_sd13-condeffs)
  (closed-sd10) (not-closed-cb3) (closed-sd15) (do-close_sd6-condeffs)
  (closed-cb2) (closed-sd1) (not-updated-cb3) (closed-sd14) (closed-sd6)
  (not-closed-sd14) (do-close_sd11-condeffs) (closed-sd16) (not-closed-sd13)
  (closed-sd5) (not-closed-sd10) (not-closed-sd4) (not-closed-sd15)
  (do-wait_cb2-condeffs) (closed-sd3) (do-close_sd9-condeffs)
  (do-close_sd7-condeffs) (do-close_sd12-condeffs) (updated-cb3) (updated-cb2)
  (do-wait_cb3-condeffs) (not-closed-sd6) (not-closed-cb2)
  (do-wait_cb1-condeffs) (not-closed-sd12) (not-closed-sd11) (not-closed-cb1)
  (do-close_sd3-condeffs) (updated-cb1) (closed-sd7) (closed-sd12) (closed-cb1)
  (done-1) (not-closed-sd16) (closed-sd11) (closed-sd8) (closed-sd13)
  (closed-cb3) (closed-sd9) (not-closed-sd1) (do-close_sd4-condeffs))
 (:action ugly1ugly143close_sd6-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly2ugly705reach-goal-213 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly3ugly523reach-goal-48 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly4ugly311reach-goal-3 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly5ugly260reach-goal-245 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly6ugly414wait_cb3-endof-condeffs :parameters () :precondition
  (and (do-wait_cb3-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly7ugly367reach-goal-13 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly8ugly632close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly9ugly98reach-goal-509 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly10ugly692close_sd15-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly11ugly382close_sd7-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly12ugly194close_sd13-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd10)) :effect (and (done-0)))
 (:action ugly13ugly121close_sd7-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly14ugly53reach-goal-347 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly15ugly31reach-goal-325 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly16ugly469reach-goal-74 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly17ugly324close_sd8-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd16)) :effect (and (done-0)))
 (:action ugly18ugly354reach-goal-502 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly19ugly745reach-goal-80 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly20ugly524reach-goal-200 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly21ugly233reach-goal-198 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly22ugly158close_sd13-condeff0-no-6 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly23ugly730reach-goal-25 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly24ugly362close_sd9-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly25ugly149close_sd11-condeff0-yes :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd16) (closed-sd14) (closed-sd15)
       (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly26ugly472close_sd14 :parameters () :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd14-condeffs) (closed-sd14)
       (not (not-closed-sd14))))
 (:action ugly27ugly11reach-goal-381 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly28ugly481reach-goal-417 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly29ugly704reach-goal-62 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly30ugly295reach-goal-199 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly31ugly326reach-goal-343 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly32ugly118close_sd14-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly33ugly176reach-goal-292 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly34ugly342reach-goal-493 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly35ugly607close_sd5-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly36ugly82close_sd12-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly37ugly320reach-goal-378 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly38ugly496reach-goal-75 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly39ugly553reach-goal-428 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly40ugly146reach-goal-449 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly41ugly205close_sd11-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly42ugly153reach-goal-356 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly43ugly373reach-goal-161 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly44ugly262close_sd15 :parameters () :precondition
  (and (do-normal) (not-closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd15-condeffs) (closed-sd15)
       (not (not-closed-sd15))))
 (:action ugly45ugly12reach-goal-193 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly46ugly597reach-goal-71 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly47ugly360reach-goal-335 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly48ugly20close_sd16-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-cb3)) :effect (and (done-1)))
 (:action ugly49ugly274close_sd14-condeff0-yes :parameters () :precondition
  (and (do-close_sd14-condeffs) (closed-sd16) (closed-sd15) (closed-sd11)
       (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly50ugly60reach-goal-125 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly51ugly80close_cb3 :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly52ugly697reach-goal-346 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly53ugly348reach-goal-206 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly54ugly645close_sd15-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd14)) :effect (and (done-1)))
 (:action ugly55ugly577reach-goal-212 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly56ugly590reach-goal-427 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly57ugly737close_sd9-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd15)) :effect (and (done-0)))
 (:action ugly58ugly52open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly59ugly116close_sd8-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly60ugly126reach-goal-458 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly61ugly381reach-goal-398 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly62ugly703reach-goal-362 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly63ugly610reach-goal-110 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly64ugly659close_sd12-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly65ugly288close_sd12-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly66ugly480reach-goal-215 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly67ugly275reach-goal-313 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly68ugly377reach-goal-415 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly69ugly647reach-goal-345 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly70ugly310reach-goal-453 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly71ugly392close_sd10-condeff0-no-6 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly72ugly211reach-goal-181 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly73ugly761reach-goal-360 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly74ugly430reach-goal-350 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly75ugly164wait_cb1-condeff1-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd6)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly76ugly110reach-goal-50 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly77ugly33reach-goal-175 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly78ugly740wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly79ugly572reach-goal-508 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly80ugly664reach-goal-191 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly81ugly742close_sd7-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly82ugly578reach-goal-251 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly83ugly242reach-goal-176 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly84ugly309reach-goal-369 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly85ugly349reach-goal-135 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly86ugly394close_sd15-condeff1-no-6 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-cb3)) :effect (and (done-1)))
 (:action ugly87ugly601reach-goal-85 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly88ugly668reach-goal-284 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly89ugly16reach-goal-468 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly90ugly220wait_cb2-condeff1-no-2 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly91ugly163close_sd11-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd10)) :effect (and (done-0)))
 (:action ugly92ugly307close_sd7-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd15)) :effect (and (done-1)))
 (:action ugly93ugly536reach-goal-390 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly94ugly715reach-goal-437 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly95ugly444wait_cb2-condeff0-no-2 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd15)) :effect (and (done-0)))
 (:action ugly96ugly531reach-goal-39 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly97ugly112close_sd14-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-sd15)) :effect (and (done-0)))
 (:action ugly98ugly510reach-goal-482 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly99ugly661reach-goal-406 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly100ugly550reach-goal-370 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly101ugly48reach-goal-19 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly102ugly150reach-goal-409 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly103ugly299close_sd13-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd14)) :effect (and (done-0)))
 (:action ugly104ugly352reach-goal-169 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly105ugly649close_sd12 :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd12-condeffs) (closed-sd12)
       (not (not-closed-sd12))))
 (:action ugly106ugly263reach-goal-83 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly107ugly467reach-goal-277 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly108ugly358close_sd11-condeff1-no-5 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly109ugly172reach-goal-72 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly110ugly51reach-goal-79 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly111ugly30reach-goal-294 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly112ugly547wait_cb3-condeff1-yes :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd16) (closed-sd13)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly113ugly286close_sd16-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly114ugly752close_sd14-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-sd15)) :effect (and (done-1)))
 (:action ugly115ugly223wait_cb3-condeff0-no-3 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly116ugly636reach-goal-37 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly117ugly614reach-goal-281 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly118ugly554reach-goal-388 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly119ugly539reach-goal-108 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly120ugly39close_sd14-condeff1-yes :parameters () :precondition
  (and (do-close_sd14-condeffs) (closed-sd7) (closed-sd12) (closed-sd10)
       (closed-sd11) (closed-sd15) (closed-sd13) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly121ugly724close_sd15-condeff0-yes :parameters () :precondition
  (and (do-close_sd15-condeffs) (closed-sd16) (closed-sd14) (closed-sd11)
       (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly122ugly474reach-goal-463 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly123ugly408reach-goal-217 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly124ugly458close_sd7-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly125ugly627close_sd12-endof-condeffs :parameters () :precondition
  (and (do-close_sd12-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd12-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly126ugly459reach-goal-416 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-cb3) (closed-sd11) (closed-sd15) (closed-sd14)
       (closed-sd13) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly127ugly175wait_cb2-condeff0-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd16) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly128ugly604reach-goal-395 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly129ugly756reach-goal-192 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13)
       (closed-cb3) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly130ugly656reach-goal-9 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly131ugly186reach-goal-68 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly132ugly712reach-goal-4 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly133ugly533reach-goal-438 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly134ugly431open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly135ugly283reach-goal-444 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly136ugly236reach-goal-73 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly137ugly397reach-goal-344 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly138ugly323reach-goal-332 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly139ugly141reach-goal-364 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly140ugly385reach-goal-187 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly141ugly365reach-goal-452 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly142ugly489reach-goal-402 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly143ugly640reach-goal-418 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly144ugly140reach-goal-384 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13)
       (closed-cb3) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly145ugly340reach-goal-127 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly146ugly450close_sd7-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly147ugly423reach-goal-107 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly148ugly617reach-goal-35 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly149ugly702reach-goal-49 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly150ugly410reach-goal-358 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly151ugly651close_sd12-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd14)) :effect (and (done-1)))
 (:action ugly152ugly312reach-goal-330 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly153ugly357reach-goal-315 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly154ugly507reach-goal-27 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly155ugly145reach-goal-339 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly156ugly152reach-goal-311 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly157ugly477reach-goal-432 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly158ugly570close_sd6-condeff0-yes :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly159ugly321reach-goal-424 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly160ugly280reach-goal-483 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly161ugly701reach-goal-114 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly162ugly707close_sd13 :parameters () :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd13-condeffs) (closed-sd13)
       (not (not-closed-sd13))))
 (:action ugly163ugly706close_sd15-condeff0-no-6 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly164ugly760close_sd7-condeff1-yes :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd12) (closed-sd10) (closed-sd11)
       (closed-sd15) (closed-sd14) (closed-sd13) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly165ugly488close_sd1-endof-condeffs :parameters () :precondition
  (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly166ugly608reach-goal-230 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly167ugly206reach-goal-498 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly168ugly125close_sd8-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd15)) :effect (and (done-0)))
 (:action ugly169ugly67reach-goal-274 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly170ugly208reach-goal-354 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly171ugly732close_sd11-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly172ugly73wait_cb1-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly173ugly25reach-goal-148 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly174ugly319reach-goal-146 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly175ugly666close_sd6-endof-condeffs :parameters () :precondition
  (and (do-close_sd6-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))))
 (:action ugly176ugly293reach-goal-510 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly177ugly22reach-goal-157 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly178ugly741reach-goal-240 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly179ugly191close_sd12-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly180ugly522reach-goal-86 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly181ugly473close_sd13-condeff0-yes :parameters () :precondition
  (and (do-close_sd13-condeffs) (closed-sd7) (closed-sd12) (closed-sd10)
       (closed-sd11) (closed-sd15) (closed-sd14) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly182ugly662reach-goal-141 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly183ugly372reach-goal-12 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly184ugly605reach-goal-446 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly185ugly117close_sd9-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd10)) :effect (and (done-0)))
 (:action ugly186ugly69close_sd4-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly187ugly247reach-goal-96 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-cb3) (closed-sd13) (closed-sd11) (closed-sd15)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly188ugly3close_sd16-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly189ugly174reach-goal-318 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly190ugly493reach-goal-1 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly191ugly583reach-goal-87 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly192ugly190reach-goal-492 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly193ugly270reach-goal-296 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly194ugly566reach-goal-93 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly195ugly613reach-goal-60 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly196ugly436reach-goal-264 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly197ugly734close_sd10-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly198ugly700reach-goal-363 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly199ugly402close_sd13-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd12)) :effect (and (done-0)))
 (:action ugly200ugly27reach-goal-10 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly201ugly747reach-goal-329 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly202ugly552close_sd3-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly203ugly329close_sd4-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly204ugly386reach-goal-286 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly205ugly713close_sd10-condeff1-no-6 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-cb3)) :effect (and (done-1)))
 (:action ugly206ugly499reach-goal-439 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly207ugly294reach-goal-470 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly208ugly355close_sd8-endof-condeffs :parameters () :precondition
  (and (do-close_sd8-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly209ugly224reach-goal-57 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly210ugly738close_sd10-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd16)) :effect (and (done-0)))
 (:action ugly211ugly182close_sd1-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly212ugly573reach-goal-305 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly213ugly388reach-goal-256 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13)
       (closed-cb3) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly214ugly451reach-goal-31 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly215ugly556reach-goal-234 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly216ugly673reach-goal-5 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly217ugly655reach-goal-321 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly218ugly683close_sd12-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly219ugly568reach-goal-253 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly220ugly677reach-goal-233 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly221ugly139reach-goal-140 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly222ugly491reach-goal-229 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly223ugly746reach-goal-467 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly224ugly58reach-goal-51 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly225ugly611reach-goal-460 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly226ugly369close_sd9-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly227ugly70reach-goal-309 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly228ugly546reach-goal-131 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly229ugly57close_sd5-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly230ugly387reach-goal-275 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly231ugly530reach-goal-255 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly232ugly113reach-goal-285 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly233ugly199reach-goal-401 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly234ugly91reach-goal-162 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly235ugly427reach-goal-154 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly236ugly74reach-goal-429 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly237ugly657close_sd1-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly238ugly179reach-goal-190 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly239ugly492close_sd4-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly240ugly338close_sd16-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly241ugly54close_sd4-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly242ugly177reach-goal-21 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly243ugly279close_sd11-endof-condeffs :parameters () :precondition
  (and (do-close_sd11-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly244ugly470open-sd11 :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly245ugly564reach-goal-95 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly246ugly525close_sd9-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly247ugly97reach-goal-111 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly248ugly313reach-goal-226 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly249ugly85reach-goal-348 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly250ugly699reach-goal-227 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly251ugly457reach-goal-170 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly252ugly178wait_cb3 :parameters () :precondition
  (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action ugly253ugly185reach-goal-116 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly254ugly374reach-goal-104 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly255ugly183reach-goal-371 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly256ugly686reach-goal-183 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly257ugly366close_sd14-condeff1-no-5 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly258ugly375reach-goal-225 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly259ugly674close_sd4-condeff0-yes :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd5) (closed-sd3) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly260ugly246close_sd16-endof-condeffs :parameters () :precondition
  (and (do-close_sd16-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd16-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly261ugly168reach-goal-124 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly262ugly526reach-goal-7 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly263ugly84reach-goal-308 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly264ugly222reach-goal-490 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly265ugly237close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly266ugly209reach-goal-223 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly267ugly498reach-goal-267 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly268ugly138reach-goal-322 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly269ugly435close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly270ugly297reach-goal-179 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly271ugly255reach-goal-182 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly272ugly631open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly273ugly521reach-goal-244 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly274ugly545close_sd8-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly275ugly314reach-goal-166 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly276ugly497close_sd9-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly277ugly77reach-goal-32 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-cb3) (closed-sd11) (closed-sd15) (closed-sd14)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly278ugly68reach-goal-376 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly279ugly718reach-goal-105 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly280ugly484reach-goal-389 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly281ugly41reach-goal-204 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly282ugly591reach-goal-41 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly283ugly445reach-goal-238 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly284ugly127reach-goal-174 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly285ugly341close_sd4-endof-condeffs :parameters () :precondition
  (and (do-close_sd4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))))
 (:action ugly286ugly520reach-goal-481 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly287ugly124reach-goal-457 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly288ugly579reach-goal-209 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly289ugly652reach-goal-461 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly290ugly688reach-goal-301 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly291ugly29close_sd11-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd14)) :effect (and (done-0)))
 (:action ugly292ugly92reach-goal-306 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly293ugly511reach-goal-231 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly294ugly471reach-goal-0 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly295ugly200reach-goal-26 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly296ugly393reach-goal-327 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly297ugly180close_sd16-condeff1-yes :parameters () :precondition
  (and (do-close_sd16-condeffs) (closed-sd13) (closed-cb3)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly298ugly104reach-goal-351 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly299ugly569reach-goal-268 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly300ugly532close_sd14-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly301ugly714close_sd16-condeff0-yes :parameters () :precondition
  (and (do-close_sd16-condeffs) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly302ugly595reach-goal-382 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly303ugly581reach-goal-383 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly304ugly253reach-goal-184 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly305ugly626reach-goal-98 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly306ugly755reach-goal-153 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly307ugly729close_sd10-condeff1-yes :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-sd7) (closed-sd12) (closed-sd11)
       (closed-sd15) (closed-sd14) (closed-sd13) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly308ugly758close_sd3-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly309ugly370close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly310ugly454close_sd13-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly311ugly4reach-goal-310 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly312ugly331reach-goal-379 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly313ugly227reach-goal-69 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly314ugly167reach-goal-205 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly315ugly421reach-goal-271 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly316ugly404wait_cb2-condeff1-no-3 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly317ugly259wait_cb2-condeff1-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd7) (closed-sd12) (closed-sd9)
       (closed-sd8))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly318ugly413reach-goal-314 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly319ugly147reach-goal-422 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly320ugly379reach-goal-133 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly321ugly425reach-goal-297 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly322ugly159reach-goal-320 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13)
       (closed-cb3) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly323ugly333reach-goal-442 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly324ugly625reach-goal-94 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly325ugly219close_sd13-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd15)) :effect (and (done-0)))
 (:action ugly326ugly344close_sd7-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly327ugly291reach-goal-28 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly328ugly549reach-goal-44 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly329ugly646reach-goal-272 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly330ugly548reach-goal-34 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly331ugly380reach-goal-474 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly332ugly356reach-goal-6 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly333ugly443reach-goal-122 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly334ugly513reach-goal-247 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly335ugly327reach-goal-290 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly336ugly37reach-goal-319 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly337ugly198open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly338ugly517reach-goal-503 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly339ugly303close_sd12-condeff1-yes :parameters () :precondition
  (and (do-close_sd12-condeffs) (closed-sd7) (closed-sd10) (closed-sd11)
       (closed-sd15) (closed-sd14) (closed-sd13) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly340ugly128close_sd10-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd14)) :effect (and (done-1)))
 (:action ugly341ugly648reach-goal-295 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly342ugly494close_sd14-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly343ugly630reach-goal-291 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly344ugly726reach-goal-317 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly345ugly695open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly346ugly478reach-goal-342 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly347ugly615close_sd13-condeff1-yes :parameters () :precondition
  (and (do-close_sd13-condeffs) (closed-sd16) (closed-cb3)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly348ugly207reach-goal-293 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly349ugly136reach-goal-235 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly350ugly266reach-goal-208 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly351ugly487reach-goal-216 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly352ugly170reach-goal-207 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly353ugly305close_sd8-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd14)) :effect (and (done-0)))
 (:action ugly354ugly503reach-goal-451 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly355ugly637reach-goal-411 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly356ugly7reach-goal-366 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly357ugly316reach-goal-403 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly358ugly716close_sd16-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly359ugly628reach-goal-367 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly360ugly336reach-goal-36 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly361ugly304reach-goal-252 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly362ugly621close_sd15-condeff1-no-5 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly363ugly203reach-goal-328 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly364ugly62close_sd11-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd16)) :effect (and (done-0)))
 (:action ugly365ugly453reach-goal-260 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly366ugly559open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly367ugly14reach-goal-52 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly368ugly300close_sd15-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly369ugly618reach-goal-100 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly370ugly680reach-goal-447 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly371ugly411reach-goal-239 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly372ugly13reach-goal-120 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly373ugly162close_sd11-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly374ugly105close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly375ugly226reach-goal-368 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly376ugly212close_sd13-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-cb3)) :effect (and (done-1)))
 (:action ugly377ugly416reach-goal-147 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly378ugly449reach-goal-408 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly379ugly134reach-goal-430 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly380ugly475close_sd12-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd15)) :effect (and (done-1)))
 (:action ugly381ugly399reach-goal-33 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly382ugly722close_sd9-endof-condeffs :parameters () :precondition
  (and (do-close_sd9-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly383ugly161close_sd11 :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action ugly384ugly100close_sd14-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly385ugly188reach-goal-2 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly386ugly287reach-goal-123 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly387ugly276reach-goal-496 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly388ugly257reach-goal-365 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly389ugly437close_sd9-condeff0-no-6 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly390ugly456open-cb3 :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly391ugly638reach-goal-394 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly392ugly598reach-goal-89 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly393ugly328close_sd14-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-sd10)) :effect (and (done-0)))
 (:action ugly394ugly542close_sd14-endof-condeffs :parameters () :precondition
  (and (do-close_sd14-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd14-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly395ugly78close_sd5-endof-condeffs :parameters () :precondition
  (and (do-close_sd5-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))))
 (:action ugly396ugly215close_sd14-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly397ugly345open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly398ugly19wait_cb3-condeff0-no-2 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd10)) :effect (and (done-0)))
 (:action ugly399ugly34reach-goal-341 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly400ugly679reach-goal-70 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly401ugly754reach-goal-331 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly402ugly565reach-goal-248 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly403ugly229reach-goal-56 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly404ugly678close_sd12-condeff1-no-6 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-cb3)) :effect (and (done-1)))
 (:action ugly405ugly56close_sd10 :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action ugly406ugly17reach-goal-323 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly407ugly55close_sd12-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly408ugly218open-sd15 :parameters () :precondition
  (and (do-normal) (closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd15) (not (closed-sd15))))
 (:action ugly409ugly9reach-goal-97 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly410ugly359close_sd8-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly411ugly240reach-goal-337 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly412ugly535wait_cb1-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly413ugly315reach-goal-420 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly414ugly753reach-goal-324 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly415ugly672reach-goal-23 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly416ugly148close_sd9-condeff1-yes :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd7) (closed-sd12) (closed-sd8)
       (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly417ugly353reach-goal-304 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly418ugly708reach-goal-250 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly419ugly401wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly420ugly720reach-goal-249 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly421ugly272close_sd8-condeff0-no-6 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly422ugly281reach-goal-40 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly423ugly108reach-goal-357 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly424ugly693reach-goal-119 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly425ugly298reach-goal-103 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly426ugly93close_sd15-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly427ugly155reach-goal-144 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly428ugly21reach-goal-232 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly429ugly721close_sd10-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd14)) :effect (and (done-0)))
 (:action ugly430ugly351reach-goal-486 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly431ugly689close_sd14-condeff1-no-6 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-cb3)) :effect (and (done-1)))
 (:action ugly432ugly59reach-goal-115 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly433ugly710reach-goal-156 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly434ugly490reach-goal-180 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly435ugly623reach-goal-404 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly436ugly265reach-goal-236 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly437ugly616reach-goal-289 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly438ugly129wait_cb1-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly439ugly378reach-goal-448 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13)
       (closed-cb3) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly440ugly46close_sd10-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly441ugly79close_sd13-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd16)) :effect (and (done-1)))
 (:action ugly442ugly66reach-goal-479 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly443ugly123reach-goal-407 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly444ugly669reach-goal-276 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly445ugly239reach-goal-491 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly446ugly244reach-goal-469 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly447ugly103reach-goal-298 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly448ugly137reach-goal-396 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly449ugly409reach-goal-8 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly450ugly728reach-goal-17 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly451ugly32reach-goal-117 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly452ugly502reach-goal-431 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly453ugly261reach-goal-167 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly454ugly567reach-goal-475 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly455ugly696reach-goal-465 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly456ugly698wait_cb1-endof-condeffs :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly457ugly171close_sd7-condeff1-no-6 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-cb3)) :effect (and (done-1)))
 (:action ugly458ugly723open-sd13 :parameters () :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd13) (not (closed-sd13))))
 (:action ugly459ugly417reach-goal-352 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-cb3) (closed-sd13) (closed-sd11) (closed-sd15)
       (closed-sd14) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly460ugly731reach-goal-419 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly461ugly479close_sd16-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-sd14)) :effect (and (done-0)))
 (:action ugly462ugly501reach-goal-121 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly463ugly681reach-goal-14 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly464ugly574close_sd1-condeff0-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd5) (closed-sd4) (closed-sd3)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly465ugly89reach-goal-15 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly466ugly238reach-goal-178 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly467ugly278reach-goal-67 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly468ugly422reach-goal-280 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly469ugly75reach-goal-163 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly470ugly687reach-goal-441 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly471ugly1reach-goal-142 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly472ugly544close_sd10-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd15)) :effect (and (done-1)))
 (:action ugly473ugly563close_sd9-condeff0-yes :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd16) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd8) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly474ugly464close_sd13-endof-condeffs :parameters () :precondition
  (and (do-close_sd13-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd13-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly475ugly585reach-goal-165 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly476ugly131reach-goal-185 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly477ugly433close_sd11-condeff1-yes :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd7) (closed-sd12) (closed-sd10)
       (closed-sd15) (closed-sd14) (closed-sd13) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly478ugly343close_sd8-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly479ugly515reach-goal-270 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly480ugly216wait_cb2-condeff0-no-6 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly481ugly418close_sd11-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly482ugly670close_sd15-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd16)) :effect (and (done-0)))
 (:action ugly483ugly339reach-goal-302 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly484ugly390reach-goal-455 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly485ugly424open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly486ugly335reach-goal-326 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly487ugly217close_sd3-endof-condeffs :parameters () :precondition
  (and (do-close_sd3-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))))
 (:action ugly488ugly663close_sd15-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd14)) :effect (and (done-0)))
 (:action ugly489ugly403reach-goal-228 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly490ugly181reach-goal-472 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly491ugly230reach-goal-386 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly492ugly644reach-goal-43 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly493ugly2close_sd11-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd15)) :effect (and (done-0)))
 (:action ugly494ugly557close_sd12-condeff0-yes :parameters () :precondition
  (and (do-close_sd12-condeffs) (closed-sd7) (closed-sd9) (closed-sd8)
       (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly495ugly735open-sd14 :parameters () :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd14) (not (closed-sd14))))
 (:action ugly496ugly76reach-goal-109 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly497ugly620close_sd12-condeff1-no-5 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly498ugly268reach-goal-137 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly499ugly440reach-goal-45 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly500ugly516wait_cb3-condeff0-no-6 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd13)) :effect (and (done-0)))
 (:action ugly501ugly122reach-goal-473 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly502ugly432reach-goal-58 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly503ugly452reach-goal-501 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly504ugly334close_sd16 :parameters () :precondition
  (and (do-normal) (not-closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd16-condeffs) (closed-sd16)
       (not (not-closed-sd16))))
 (:action ugly505ugly441reach-goal-78 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly506ugly160reach-goal-279 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly507ugly28reach-goal-480 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly508ugly47reach-goal-359 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly509ugly144reach-goal-139 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly510ugly483reach-goal-338 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly511ugly232reach-goal-112 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly512ugly584reach-goal-464 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly513ugly248reach-goal-312 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly514ugly633reach-goal-134 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly515ugly271reach-goal-254 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly516ugly749close_sd5-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly517ugly504reach-goal-333 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly518ugly748reach-goal-242 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly519ugly83reach-goal-241 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly520ugly482wait_cb2-condeff0-no-3 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly521ugly245close_sd13-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly522ugly87close_sd10-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly523ugly49reach-goal-273 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly524ugly201wait_cb3-condeff0-no-4 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd15)) :effect (and (done-0)))
 (:action ugly525ugly619reach-goal-494 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly526ugly8close_sd8-condeff1-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd7) (closed-sd12) (closed-sd9)
       (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly527ugly225close_sd9-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd14)) :effect (and (done-0)))
 (:action ugly528ugly508reach-goal-46 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly529ugly169reach-goal-66 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly530ugly256open-sd12 :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd12) (not (closed-sd12))))
 (:action ugly531ugly40reach-goal-145 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly532ugly551reach-goal-132 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly533ugly439reach-goal-377 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly534ugly415wait_cb2-condeff0-no-5 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly535ugly757reach-goal-188 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly536ugly391close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly537ugly642reach-goal-504 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly538ugly350reach-goal-265 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly539ugly109reach-goal-171 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly540ugly130close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly541ugly733reach-goal-459 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly542ugly561reach-goal-300 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly543ugly23close_sd7-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd14)) :effect (and (done-1)))
 (:action ugly544ugly603wait_cb2-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly545ugly634wait_cb2-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly546ugly132close_sd11-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly547ugly750reach-goal-106 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly548ugly35close_sd10-endof-condeffs :parameters () :precondition
  (and (do-close_sd10-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly549ugly45reach-goal-11 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly550ugly371reach-goal-410 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly551ugly133close_sd15-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly552ugly654reach-goal-196 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly553ugly429close_sd7-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd12)) :effect (and (done-0)))
 (:action ugly554ugly389reach-goal-436 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly555ugly455open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly556ugly235reach-goal-426 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly557ugly576close_sd8-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly558ugly156reach-goal-151 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly559ugly694reach-goal-101 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly560ugly543reach-goal-22 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly561ugly301close_sd11-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd15)) :effect (and (done-1)))
 (:action ugly562ugly398reach-goal-18 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly563ugly609reach-goal-462 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly564ugly96close_sd15-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd10)) :effect (and (done-0)))
 (:action ugly565ugly249reach-goal-84 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly566ugly94close_sd11-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd14)) :effect (and (done-1)))
 (:action ugly567ugly476reach-goal-130 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly568ugly254reach-goal-373 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly569ugly269reach-goal-434 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly570ugly639reach-goal-263 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly571ugly743wait_cb3-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd12)) :effect (and (done-0)))
 (:action ugly572ugly509reach-goal-143 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly573ugly306wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd5) (closed-sd4) (closed-sd3)
       (closed-sd1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly574ugly658wait_cb3-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd16)) :effect (and (done-1)))
 (:action ugly575ugly594close_sd11-condeff0-no-6 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly576ugly635reach-goal-63 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly577ugly213reach-goal-387 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly578ugly252reach-goal-177 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly579ugly210close_sd5-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly580ugly759reach-goal-433 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly581ugly384reach-goal-99 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly582ugly518wait_cb3-condeff0-no-5 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd14)) :effect (and (done-0)))
 (:action ugly583ugly88wait_cb2-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd14)) :effect (and (done-0)))
 (:action ugly584ugly465reach-goal-88 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly585ugly166close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action ugly586ugly486reach-goal-334 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly587ugly202close_sd14-condeff0-no-6 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly588ugly267reach-goal-497 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly589ugly151close_sd3-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly590ugly428reach-goal-20 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly591ugly42reach-goal-152 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly592ugly337reach-goal-197 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly593ugly376reach-goal-211 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly594ugly709close_sd8-condeff0-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd16) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly595ugly383reach-goal-160 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-cb3) (closed-sd11) (closed-sd15) (closed-sd14)
       (closed-sd13) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly596ugly289close_sd3-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly597ugly72reach-goal-210 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly598ugly90reach-goal-219 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly599ugly600reach-goal-194 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly600ugly195close_sd9-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly601ugly86reach-goal-393 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly602ugly317reach-goal-258 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly603ugly675close_sd11-condeff1-no-6 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-cb3)) :effect (and (done-1)))
 (:action ugly604ugly396reach-goal-214 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly605ugly447reach-goal-102 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly606ugly165reach-goal-487 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly607ugly736reach-goal-118 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly608ugly231close_sd15-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly609ugly463close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly610ugly111reach-goal-29 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly611ugly461reach-goal-478 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly612ugly173reach-goal-24 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly613ugly61reach-goal-380 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly614ugly282close_sd10-condeff0-yes :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-sd16) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd9) (closed-sd8) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly615ugly571wait_cb3-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly616ugly290open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly617ugly36reach-goal-81 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly618ugly101reach-goal-47 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly619ugly495close_sd5-condeff0-yes :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-sd4) (closed-sd3) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly620ugly587reach-goal-201 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly621ugly541close_sd7-endof-condeffs :parameters () :precondition
  (and (do-close_sd7-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly622ugly406reach-goal-16 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly623ugly405reach-goal-55 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly624ugly426reach-goal-92 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly625ugly95reach-goal-443 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly626ugly99close_sd1-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly627ugly589reach-goal-150 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly628ugly368reach-goal-299 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly629ugly537close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly630ugly292reach-goal-91 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly631ugly690reach-goal-42 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly632ugly719wait_cb2-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd16)) :effect (and (done-0)))
 (:action ugly633ugly135reach-goal-282 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly634ugly676reach-goal-186 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly635ugly64close_sd1-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly636ugly38reach-goal-495 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly637ugly412close_sd15-condeff1-yes :parameters () :precondition
  (and (do-close_sd15-condeffs) (closed-sd7) (closed-sd12) (closed-sd10)
       (closed-sd11) (closed-sd14) (closed-sd13) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly638ugly395reach-goal-77 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly639ugly264reach-goal-221 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly640ugly419reach-goal-400 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly641ugly485reach-goal-423 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly642ugly505reach-goal-440 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly643ugly629close_sd15-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly644ugly44reach-goal-261 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly645ugly540reach-goal-129 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly646ugly273close_sd16-condeff0-no-6 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly647ugly346reach-goal-477 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly648ugly296reach-goal-392 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly649ugly575close_sd10-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd15)) :effect (and (done-0)))
 (:action ugly650ugly602reach-goal-316 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly651ugly586reach-goal-485 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly652ugly462reach-goal-500 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly653ugly65reach-goal-287 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly654ugly197close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action ugly655ugly322reach-goal-158 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly656ugly10open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly657ugly660reach-goal-511 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly658ugly751reach-goal-499 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly659ugly580wait_cb1-condeff0-no-3 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly660ugly512close_sd12-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly661ugly407reach-goal-54 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly662ugly142reach-goal-488 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly663ugly529reach-goal-168 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly664ugly192reach-goal-189 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly665ugly506reach-goal-159 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly666ugly641reach-goal-484 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly667ugly446reach-goal-243 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly668ugly285reach-goal-340 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly669ugly277reach-goal-76 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly670ugly528reach-goal-507 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly671ugly258reach-goal-374 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly672ugly24reach-goal-361 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly673ugly6reach-goal-413 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly674ugly643close_sd8-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd10)) :effect (and (done-0)))
 (:action ugly675ugly717reach-goal-399 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly676ugly187reach-goal-246 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly677ugly234reach-goal-90 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly678ugly588reach-goal-266 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly679ugly71reach-goal-391 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly680ugly448reach-goal-136 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly681ugly15reach-goal-30 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly682ugly284reach-goal-126 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly683ugly582close_sd16-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-sd10)) :effect (and (done-0)))
 (:action ugly684ugly114wait_cb3-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly685ugly204reach-goal-385 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly686ugly184close_sd10-condeff1-no-5 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly687ugly442reach-goal-65 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly688ugly302close_sd10-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly689ugly560close_sd15-endof-condeffs :parameters () :precondition
  (and (do-close_sd15-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd15-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly690ugly43reach-goal-372 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly691ugly682reach-goal-283 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly692ugly538reach-goal-349 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly693ugly120reach-goal-38 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly694ugly102reach-goal-149 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly695ugly691open-sd16 :parameters () :precondition
  (and (do-normal) (closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd16) (not (closed-sd16))))
 (:action ugly696ugly466reach-goal-237 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly697ugly347close_sd9-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly698ugly762reach-goal-307 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly699ugly228close_sd14-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-sd16)) :effect (and (done-0)))
 (:action ugly700ugly364reach-goal-61 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly701ugly115reach-goal-222 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly702ugly50reach-goal-59 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly703ugly363reach-goal-202 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly704ugly63close_sd9-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd16)) :effect (and (done-0)))
 (:action ugly705ugly214reach-goal-450 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly706ugly534reach-goal-414 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly707ugly562reach-goal-397 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly708ugly251reach-goal-456 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly709ugly624reach-goal-425 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly710ugly157reach-goal-476 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly711ugly555reach-goal-454 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly712ugly5reach-goal-259 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly713ugly606reach-goal-164 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly714ugly514close_sd8-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly715ugly438reach-goal-128 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13)
       (closed-cb3) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly716ugly519reach-goal-82 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly717ugly400wait_cb2-endof-condeffs :parameters () :precondition
  (and (do-wait_cb2-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly718ugly106reach-goal-262 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly719ugly667reach-goal-445 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly720ugly250open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly721ugly593reach-goal-375 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly722ugly622reach-goal-405 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly723ugly685reach-goal-203 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly724ugly527reach-goal-224 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd11)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly725ugly221reach-goal-138 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly726ugly318reach-goal-412 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly727ugly671reach-goal-257 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly728ugly18reach-goal-353 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly729ugly599close_sd10-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly730ugly26reach-goal-471 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly731ugly420close_sd7-condeff0-yes :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd12) (closed-sd9) (closed-sd8)
       (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly732ugly711close_sd14-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly733ugly460close_sd7-condeff1-no-5 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly734ugly596reach-goal-288 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-cb3) (closed-sd11) (closed-sd15) (closed-sd14)
       (closed-sd13) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly735ugly684reach-goal-113 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly736ugly119close_sd15-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly737ugly612reach-goal-172 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly738ugly592reach-goal-336 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly739ugly196reach-goal-435 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly740ugly665reach-goal-505 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly741ugly241reach-goal-53 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly742ugly727wait_cb2-condeff0-no-4 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd10)) :effect (and (done-0)))
 (:action ugly743ugly744close_sd3-condeff0-yes :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd5) (closed-sd4) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly744ugly650close_sd10-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly745ugly81wait_cb3-condeff0-yes :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd7) (closed-sd12) (closed-sd10)
       (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly746ugly468reach-goal-421 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly747ugly330close_sd14-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly748ugly243reach-goal-278 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly749ugly739reach-goal-195 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly750ugly107reach-goal-466 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly751ugly500close_sd16-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-sd15)) :effect (and (done-0)))
 (:action ugly752ugly558reach-goal-155 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly753ugly325reach-goal-218 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly754ugly332reach-goal-355 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly755ugly154reach-goal-506 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly756ugly193reach-goal-269 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly757ugly189reach-goal-173 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly758ugly653reach-goal-64 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13)
       (closed-cb3) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly759ugly434reach-goal-489 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly760ugly725reach-goal-220 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly761ugly361reach-goal-303 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly762ugly308wait_cb1-condeff0-no-2 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd3)) :effect (and (done-0)))) 