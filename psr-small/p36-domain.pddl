
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (closed-sd6) (updated-cb6) (closed-sd12) (not-closed-sd18)
  (do-normal) (closed-sd8) (done-0) (done-1) (closed-sd11) (closed-sd15)
  (do-wait_cb6-condeffs) (closed-cb5) (closed-sd7) (not-closed-sd5)
  (do-close_sd3-condeffs) (updated-cb5) (not-closed-sd16)
  (do-wait_cb2-condeffs) (not-closed-sd17) (closed-sd14) (not-updated-cb1)
  (not-closed-sd15) (not-closed-sd10) (do-wait_cb1-condeffs)
  (do-close_sd13-condeffs) (not-closed-sd9) (closed-sd18) (not-closed-sd12)
  (do-close_sd15-condeffs) (not-closed-sd11) (not-closed-cb4) (not-closed-sd6)
  (updated-cb1) (not-closed-cb6) (closed-sd4) (closed-sd3) (not-updated-cb2)
  (do-close_sd16-condeffs) (do-close_sd2-condeffs) (do-close_sd7-condeffs)
  (not-closed-cb2) (not-updated-cb6) (not-closed-cb5) (do-close_sd4-condeffs)
  (do-close_sd18-condeffs) (closed-cb2) (closed-cb6) (not-closed-sd1)
  (updated-cb2) (do-close_sd6-condeffs) (not-closed-sd2)
  (do-close_sd9-condeffs) (not-closed-sd8) (closed-sd9) (do-close_sd5-condeffs)
  (not-updated-cb3) (updated-cb3) (goal-reached) (closed-sd1) (updated-cb4)
  (do-wait_cb3-condeffs) (not-closed-sd13) (not-closed-cb1) (closed-cb1)
  (not-closed-cb3) (closed-sd16) (do-close_sd1-condeffs) (not-closed-sd4)
  (do-close_sd8-condeffs) (do-close_sd17-condeffs) (not-updated-cb5)
  (closed-sd5) (not-closed-sd14) (not-closed-sd7) (not-updated-cb4)
  (closed-sd10) (closed-cb3) (closed-sd17) (closed-sd13) (closed-cb4)
  (not-closed-sd3) (closed-sd2))
 (:action ugly1ugly213ugly291wait_cb2-condeff1-no-2 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd7)) :effect
  (and (done-1)))
 (:action ugly2ugly138ugly142close_sd8-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd8-condeffs) (not-closed-cb3)) :effect
  (and (done-0)))
 (:action ugly3ugly198ugly6close_sd8-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd17)) :effect (and (done-0)))
 (:action ugly4ugly342ugly226open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly5ugly129ugly15reach-goal-60 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly6ugly297ugly192close_sd13-condeff1-no-3 :parameters ()
  :precondition (and (do-close_sd13-condeffs) (not-closed-sd7)) :effect
  (and (done-1)))
 (:action ugly7ugly170ugly285reach-goal-27 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly8ugly273ugly195reach-goal-81 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly9ugly304ugly168close_sd4-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-sd13)) :effect
  (and (done-1)))
 (:action ugly10ugly331ugly210reach-goal-10 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly11ugly97ugly52close_sd5-condeff1-no-5 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-cb6)) :effect
  (and (done-1)))
 (:action ugly12ugly155ugly14reach-goal-73 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly13ugly321ugly303reach-goal-23 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-cb2)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly14ugly74ugly72reach-goal-121 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly15ugly61ugly220reach-goal-11 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly16ugly299ugly104reach-goal-111 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-sd5)
       (closed-cb2) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly17ugly19ugly125reach-goal-80 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-sd5) (closed-cb6) (closed-sd18)
       (closed-sd7) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly18ugly248ugly117reach-goal-20 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly19ugly125ugly81reach-goal-122 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly20ugly286ugly100reach-goal-31 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-sd5)
       (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8) (closed-cb2))
  :effect (and (goal-reached)))
 (:action ugly21ugly185ugly225close_sd13-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd13-condeffs) (not-closed-sd5)) :effect
  (and (done-0)))
 (:action ugly22ugly133ugly77reach-goal-108 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly23ugly282ugly103close_sd17-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd17-condeffs) (not-closed-sd8)) :effect
  (and (done-0)))
 (:action ugly24ugly242ugly27wait_cb3-condeff0-no-2 :parameters ()
  :precondition (and (do-wait_cb3-condeffs) (not-closed-sd8)) :effect
  (and (done-0)))
 (:action ugly25ugly174ugly8open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly26ugly65ugly22close_sd18-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd18-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly27ugly340ugly289close_sd5-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-sd13)) :effect
  (and (done-0)))
 (:action ugly28ugly253ugly318wait_cb3-condeff0-yes :parameters ()
  :precondition
  (and (do-wait_cb3-condeffs) (closed-sd16) (closed-sd17) (closed-sd8)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly29ugly39ugly96reach-goal-15 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-sd5)
       (closed-cb2) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly30ugly59ugly131close_sd15-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd15-condeffs) (not-closed-cb6)) :effect
  (and (done-1)))
 (:action ugly31ugly164ugly311wait_cb2-condeff0-no-2 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd5)) :effect
  (and (done-0)))
 (:action ugly32ugly319ugly7close_sd13-endof-condeffs :parameters ()
  :precondition (and (do-close_sd13-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd13-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly33ugly328ugly301reach-goal-1 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly34ugly113ugly333wait_cb2-condeff0-no-3 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd4)) :effect
  (and (done-0)))
 (:action ugly35ugly45ugly128reach-goal-86 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd3)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly36ugly58ugly208close_sd10 :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd10) (not (not-closed-sd10))))
 (:action ugly37ugly205ugly221open-sd11 :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly38ugly165ugly149close_sd5-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-sd4)) :effect
  (and (done-0)))
 (:action ugly39ugly96ugly16close_sd8-endof-condeffs :parameters ()
  :precondition (and (do-close_sd8-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))))
 (:action ugly40ugly106ugly247open-cb6 :parameters () :precondition
  (and (do-normal) (closed-cb6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-cb6) (not (closed-cb6))))
 (:action ugly41ugly23ugly282reach-goal-102 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd3)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly42ugly171ugly135reach-goal-17 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly43ugly78ugly235close_sd13-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd13-condeffs) (not-closed-sd6)) :effect
  (and (done-0)))
 (:action ugly44ugly232ugly110close_sd18-condeff0-yes :parameters ()
  :precondition
  (and (do-close_sd18-condeffs) (closed-sd15) (closed-sd7) (closed-sd3)
       (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly45ugly128ugly87reach-goal-94 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd5)
       (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8) (closed-sd3))
  :effect (and (goal-reached)))
 (:action ugly46ugly269ugly241open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly47ugly255ugly313reach-goal-113 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly48ugly334ugly236close_sd17-condeff0-yes :parameters ()
  :precondition
  (and (do-close_sd17-condeffs) (closed-sd16) (closed-sd8) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly49ugly115ugly5close_sd18 :parameters () :precondition
  (and (do-normal) (not-closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd18-condeffs) (closed-sd18)
       (not (not-closed-sd18))))
 (:action ugly50ugly290ugly162close_sd16-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd16-condeffs) (not-closed-sd8)) :effect
  (and (done-0)))
 (:action ugly51ugly281ugly252close_sd8-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd8-condeffs) (not-closed-sd16)) :effect
  (and (done-0)))
 (:action ugly52ugly191ugly121reach-goal-54 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd3)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly53ugly229ugly150reach-goal-106 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly54ugly143ugly207reach-goal-34 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly55ugly89ugly46open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly56ugly326ugly218reach-goal-47 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-sd5)
       (closed-cb2) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly57ugly156ugly145reach-goal-82 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly58ugly208ugly173close_sd1-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly59ugly131ugly292close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly60ugly209ugly302close_sd18-condeff1-no-5 :parameters ()
  :precondition (and (do-close_sd18-condeffs) (not-closed-cb6)) :effect
  (and (done-1)))
 (:action ugly61ugly220ugly12close_sd14 :parameters () :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd14) (not (not-closed-sd14))))
 (:action ugly62ugly287ugly183reach-goal-100 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly63ugly327ugly43reach-goal-77 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly64ugly66ugly196reach-goal-49 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly65ugly22ugly133reach-goal-76 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly66ugly196ugly50close_sd15-condeff0-no-3 :parameters ()
  :precondition (and (do-close_sd15-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly67ugly139ugly29reach-goal-38 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd3)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly68ugly283ugly276reach-goal-91 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly69ugly233ugly93open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly70ugly179ugly40reach-goal-105 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly71ugly86ugly194wait_cb6-condeff0-no-0 :parameters ()
  :precondition (and (do-wait_cb6-condeffs) (not-closed-sd15)) :effect
  (and (done-0)))
 (:action ugly72ugly122ugly222close_sd18-condeff1-no-4 :parameters ()
  :precondition (and (do-close_sd18-condeffs) (not-closed-sd7)) :effect
  (and (done-1)))
 (:action ugly73ugly305ugly339reach-goal-69 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly74ugly72ugly122close_sd1-condeff0-yes :parameters ()
  :precondition (and (do-close_sd1-condeffs) (closed-sd2) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly75ugly271ugly62close_sd15-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd15-condeffs) (not-closed-sd18)) :effect
  (and (done-0)))
 (:action ugly76ugly324ugly199reach-goal-75 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly77ugly109ugly181close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly78ugly235ugly158close_sd4-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-sd5)) :effect
  (and (done-0)))
 (:action ugly79ugly329ugly330open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly80ugly54ugly143close_sd4-endof-condeffs :parameters ()
  :precondition (and (do-close_sd4-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly81ugly123ugly127reach-goal-123 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly82ugly266ugly13close_sd6-condeff1-yes :parameters ()
  :precondition
  (and (do-close_sd6-condeffs) (closed-sd13) (closed-sd5) (closed-sd4)
       (closed-sd7) (closed-sd18) (closed-cb6))
  :effect (and (done-1) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly83ugly272ugly132reach-goal-62 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd5)
       (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8) (closed-sd3))
  :effect (and (goal-reached)))
 (:action ugly84ugly257ugly151reach-goal-104 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-cb6) (closed-sd18) (closed-sd7)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly85ugly211ugly36reach-goal-57 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly86ugly194ugly228reach-goal-74 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly87ugly95ugly30reach-goal-58 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly88ugly79ugly329close_sd2-condeff0-yes :parameters ()
  :precondition (and (do-close_sd2-condeffs) (closed-sd1) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly89ugly46ugly269wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly90ugly254ugly99close_sd5-condeff1-no-4 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-sd18)) :effect
  (and (done-1)))
 (:action ugly91ugly178ugly214wait_cb3-condeff1-yes :parameters ()
  :precondition (and (do-wait_cb3-condeffs) (closed-sd9)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly92ugly332ugly90close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly93ugly270ugly243open-sd16 :parameters () :precondition
  (and (do-normal) (closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd16) (not (closed-sd16))))
 (:action ugly94ugly3ugly198reach-goal-5 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly95ugly30ugly59close_sd18-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd18-condeffs) (not-closed-sd15)) :effect
  (and (done-0)))
 (:action ugly96ugly16ugly299reach-goal-103 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-cb2)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly97ugly52ugly191reach-goal-120 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-cb6) (closed-sd18) (closed-sd7)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly98ugly69ugly233reach-goal-92 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly99ugly190ugly277close_sd16-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd16-condeffs) (not-closed-cb3)) :effect
  (and (done-0)))
 (:action ugly100ugly32ugly319reach-goal-6 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd3)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly101ugly230ugly137reach-goal-90 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly102ugly94ugly3close_sd4-condeff0-no-3 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly103ugly146ugly308close_sd3-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd3-condeffs) (not-closed-sd5)) :effect
  (and (done-0)))
 (:action ugly104ugly112ugly160reach-goal-101 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly105ugly134ugly322wait_cb6-condeff0-yes :parameters ()
  :precondition (and (do-wait_cb6-condeffs) (closed-sd15)) :effect
  (and (done-0) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly106ugly247ugly279close_sd15-endof-condeffs :parameters ()
  :precondition (and (do-close_sd15-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd15-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly107ugly215ugly68open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly108ugly186ugly231close_sd6-condeff0-yes :parameters ()
  :precondition
  (and (do-close_sd6-condeffs) (closed-sd13) (closed-sd5) (closed-sd4)
       (closed-sd3) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly109ugly181ugly260reach-goal-0 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-sd5) (closed-sd6) (closed-sd17)
       (closed-cb3) (closed-sd8) (closed-sd7) (closed-sd18))
  :effect (and (goal-reached)))
 (:action ugly110ugly130ugly175close_sd5-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-sd6)) :effect
  (and (done-1)))
 (:action ugly111ugly188ugly9close_sd7-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly112ugly160ugly102reach-goal-93 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly113ugly333ugly246reach-goal-48 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-sd5) (closed-cb6) (closed-sd18)
       (closed-sd7) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly114ugly53ugly229close_sd16-condeff0-yes :parameters ()
  :precondition
  (and (do-close_sd16-condeffs) (closed-sd17) (closed-sd8) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly115ugly5ugly129reach-goal-14 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd5)
       (closed-sd3) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly116ugly42ugly171close_sd18-condeff1-yes :parameters ()
  :precondition
  (and (do-close_sd18-condeffs) (closed-sd13) (closed-sd6) (closed-sd5)
       (closed-sd4) (closed-sd7) (closed-cb6))
  :effect (and (done-1) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly117ugly21ugly185close_sd1-endof-condeffs :parameters ()
  :precondition (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly118ugly262ugly261reach-goal-97 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly119ugly267ugly259close_sd3-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd3-condeffs) (not-closed-sd15)) :effect
  (and (done-1)))
 (:action ugly120ugly161ugly73close_sd7-condeff0-no-3 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly121ugly55ugly89reach-goal-45 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly122ugly222ugly140close_cb6 :parameters () :precondition
  (and (do-normal) (not-closed-cb6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb6) (not-updated-cb6) (not (not-closed-cb6))
       (not (updated-cb6))))
 (:action ugly123ugly127ugly124close_sd7-condeff1-no-2 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-sd5)) :effect
  (and (done-1)))
 (:action ugly124ugly309ugly338close_sd7-condeff1-no-3 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-sd4)) :effect
  (and (done-1)))
 (:action ugly125ugly81ugly123reach-goal-126 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd5)
       (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly126ugly85ugly211reach-goal-35 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly127ugly124ugly309wait_cb3-condeff0-no-0 :parameters ()
  :precondition (and (do-wait_cb3-condeffs) (not-closed-sd16)) :effect
  (and (done-0)))
 (:action ugly128ugly87ugly95reach-goal-29 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly129ugly15ugly61close_sd3-endof-condeffs :parameters ()
  :precondition (and (do-close_sd3-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly130ugly175ugly187open-sd15 :parameters () :precondition
  (and (do-normal) (closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd15) (not (closed-sd15))))
 (:action ugly131ugly292ugly314reach-goal-9 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly132ugly63ugly327reach-goal-42 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly133ugly77ugly109close_sd5-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-sd6)) :effect
  (and (done-0)))
 (:action ugly134ugly322ugly227wait_cb1-condeff0-yes :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (closed-sd2) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly135ugly18ugly248reach-goal-116 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly136ugly57ugly156close_sd17-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd17-condeffs) (not-closed-sd16)) :effect
  (and (done-0)))
 (:action ugly137ugly91ugly178close_sd3-condeff0-no-4 :parameters ()
  :precondition (and (do-close_sd3-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly138ugly142ugly298reach-goal-79 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-sd5)
       (closed-cb2) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly139ugly29ugly39reach-goal-95 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-sd5)
       (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8) (closed-cb2))
  :effect (and (goal-reached)))
 (:action ugly140ugly237ugly41reach-goal-22 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd3)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly141ugly56ugly326close_sd3-condeff1-no-2 :parameters ()
  :precondition (and (do-close_sd3-condeffs) (not-closed-sd7)) :effect
  (and (done-1)))
 (:action ugly142ugly298ugly80reach-goal-53 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly143ugly207ugly35reach-goal-44 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly144ugly300ugly203reach-goal-63 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-sd5)
       (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8) (closed-cb2))
  :effect (and (goal-reached)))
 (:action ugly145ugly83ugly272close_sd18-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd18-condeffs) (not-closed-sd7)) :effect
  (and (done-0)))
 (:action ugly146ugly308ugly212close_sd1-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-sd2)) :effect
  (and (done-0)))
 (:action ugly147ugly119ugly267wait_cb1-endof-condeffs :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0))))
 (:action ugly148ugly176ugly118open-sd17 :parameters () :precondition
  (and (do-normal) (closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd17) (not (closed-sd17))))
 (:action ugly149ugly182ugly312close_sd15-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd15-condeffs) (not-closed-sd7)) :effect
  (and (done-0)))
 (:action ugly150ugly107ugly215reach-goal-67 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly151ugly105ugly134close_sd6-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd6-condeffs) (not-closed-sd13)) :effect
  (and (done-1)))
 (:action ugly152ugly126ugly85close_sd3-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd3-condeffs) (not-closed-sd6)) :effect
  (and (done-0)))
 (:action ugly153ugly184ugly320close_sd6-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd6-condeffs) (not-closed-sd5)) :effect
  (and (done-0)))
 (:action ugly154ugly238ugly111close_sd5-condeff1-no-2 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-sd4)) :effect
  (and (done-1)))
 (:action ugly155ugly14ugly74reach-goal-71 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-cb2)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly156ugly145ugly83open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly157ugly343ugly157wait_cb3-endof-condeffs :parameters ()
  :precondition (and (do-wait_cb3-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly158ugly197ugly323close_sd4-condeff1-no-5 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-cb6)) :effect
  (and (done-1)))
 (:action ugly159ugly265ugly249close_sd4-condeff1-yes :parameters ()
  :precondition
  (and (do-close_sd4-condeffs) (closed-sd13) (closed-sd6) (closed-sd5)
       (closed-sd7) (closed-sd18) (closed-cb6))
  :effect (and (done-1) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly160ugly102ugly94reach-goal-2 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly161ugly73ugly305wait_cb3-condeff0-no-1 :parameters ()
  :precondition (and (do-wait_cb3-condeffs) (not-closed-sd17)) :effect
  (and (done-0)))
 (:action ugly162ugly152ugly126reach-goal-84 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly163ugly240ugly88reach-goal-78 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd5)
       (closed-sd3) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly164ugly311ugly245close_sd16-endof-condeffs :parameters ()
  :precondition (and (do-close_sd16-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd16-condeffs)) (not (done-0))))
 (:action ugly165ugly149ugly182close_sd7-condeff1-no-5 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-cb6)) :effect
  (and (done-1)))
 (:action ugly166ugly31ugly164close_sd7-condeff1-no-4 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-sd18)) :effect
  (and (done-1)))
 (:action ugly167ugly217ugly67close_sd18-condeff1-no-3 :parameters ()
  :precondition (and (do-close_sd18-condeffs) (not-closed-sd4)) :effect
  (and (done-1)))
 (:action ugly168ugly201ugly51open-cb4 :parameters () :precondition
  (and (do-normal) (closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-cb4) (not (closed-cb4))))
 (:action ugly169ugly20ugly286reach-goal-99 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly170ugly285ugly28wait_cb2-endof-condeffs :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly171ugly135ugly18wait_cb2-condeff1-yes :parameters ()
  :precondition
  (and (do-wait_cb2-condeffs) (closed-sd15) (closed-sd18) (closed-sd7)
       (closed-sd3))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly172ugly17ugly19reach-goal-124 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly173ugly224ugly169reach-goal-19 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly174ugly8ugly273close_sd4-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-sd13)) :effect
  (and (done-0)))
 (:action ugly175ugly187ugly264close_sd18-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd18-condeffs) (not-closed-sd13)) :effect
  (and (done-1)))
 (:action ugly176ugly118ugly262open-sd18 :parameters () :precondition
  (and (do-normal) (closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd18) (not (closed-sd18))))
 (:action ugly177ugly189ugly172reach-goal-16 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-sd5) (closed-cb6) (closed-sd18)
       (closed-sd7) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly178ugly214ugly341reach-goal-83 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly179ugly40ugly106wait_cb2-condeff0-no-4 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly180ugly163ugly240reach-goal-87 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-cb2)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly181ugly260ugly1close_sd3-condeff0-no-3 :parameters ()
  :precondition (and (do-close_sd3-condeffs) (not-closed-sd4)) :effect
  (and (done-0)))
 (:action ugly182ugly312ugly288reach-goal-59 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly183ugly101ugly230close_sd18-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd18-condeffs) (not-closed-sd6)) :effect
  (and (done-1)))
 (:action ugly184ugly320ugly317reach-goal-25 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly185ugly225ugly159open-sd14 :parameters () :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd14) (not (closed-sd14))))
 (:action ugly186ugly231ugly315reach-goal-115 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly187ugly264ugly136reach-goal-56 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-cb6) (closed-sd18) (closed-sd7)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly188ugly9ugly304close_sd13-condeff1-no-4 :parameters ()
  :precondition (and (do-close_sd13-condeffs) (not-closed-sd18)) :effect
  (and (done-1)))
 (:action ugly189ugly172ugly17reach-goal-18 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly190ugly277ugly153close_sd5-condeff0-no-4 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly191ugly121ugly55reach-goal-88 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-cb6) (closed-sd18) (closed-sd7)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly192ugly167ugly217reach-goal-66 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly193ugly275ugly148close_sd9-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd9-condeffs) (not-closed-cb3)) :effect
  (and (done-0)))
 (:action ugly194ugly228ugly75open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly195ugly82ugly266reach-goal-12 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly196ugly50ugly290close_sd13-condeff0-no-4 :parameters ()
  :precondition (and (do-close_sd13-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly197ugly323ugly206close_sd13-condeff1-no-2 :parameters ()
  :precondition (and (do-close_sd13-condeffs) (not-closed-sd4)) :effect
  (and (done-1)))
 (:action ugly198ugly6ugly297close_sd5-endof-condeffs :parameters ()
  :precondition (and (do-close_sd5-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly199ugly76ugly324close_sd4-condeff0-no-4 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly200ugly38ugly165close_sd16 :parameters () :precondition
  (and (do-normal) (not-closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd16-condeffs) (closed-sd16)
       (not (not-closed-sd16))))
 (:action ugly201ugly51ugly281wait_cb2-condeff1-no-3 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd3)) :effect
  (and (done-1)))
 (:action ugly202ugly239ugly234close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly203ugly64ugly66close_sd4-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-sd6)) :effect
  (and (done-0)))
 (:action ugly204ugly219ugly335open-cb5 :parameters () :precondition
  (and (do-normal) (closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-cb5) (not (closed-cb5))))
 (:action ugly205ugly221ugly268close_sd8-condeff0-yes :parameters ()
  :precondition
  (and (do-close_sd8-condeffs) (closed-sd16) (closed-sd17) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly206ugly166ugly31close_sd13-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd13-condeffs) (not-closed-sd6)) :effect
  (and (done-1)))
 (:action ugly207ugly35ugly45reach-goal-127 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-sd5)
       (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly208ugly173ugly224close_sd13-condeff1-no-5 :parameters ()
  :precondition (and (do-close_sd13-condeffs) (not-closed-cb6)) :effect
  (and (done-1)))
 (:action ugly209ugly302ugly141reach-goal-55 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-cb2)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly210ugly11ugly97reach-goal-51 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly211ugly36ugly58close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly212ugly223ugly306wait_cb2-condeff0-no-1 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd6)) :effect
  (and (done-0)))
 (:action ugly213ugly291ugly251reach-goal-32 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-sd5) (closed-sd6) (closed-sd17)
       (closed-cb3) (closed-sd8) (closed-cb6) (closed-sd7))
  :effect (and (goal-reached)))
 (:action ugly214ugly341ugly84wait_cb1-condeff0-no-0 :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect
  (and (done-0)))
 (:action ugly215ugly68ugly283open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly216ugly120ugly161reach-goal-72 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-cb6) (closed-sd18) (closed-sd7)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly217ugly67ugly139reach-goal-28 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly218ugly48ugly334wait_cb6-endof-condeffs :parameters ()
  :precondition (and (do-wait_cb6-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb6-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly219ugly335ugly280close_sd4-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-sd6)) :effect
  (and (done-1)))
 (:action ugly220ugly12ugly155reach-goal-13 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly221ugly268ugly295reach-goal-33 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly222ugly140ugly237reach-goal-40 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-cb6) (closed-sd18) (closed-sd7)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly223ugly306ugly244close_sd6-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd6-condeffs) (not-closed-sd13)) :effect
  (and (done-0)))
 (:action ugly224ugly169ugly20close_sd15-condeff0-yes :parameters ()
  :precondition
  (and (do-close_sd15-condeffs) (closed-sd18) (closed-sd7) (closed-sd3)
       (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly225ugly159ugly265wait_cb2-condeff1-no-0 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd15)) :effect
  (and (done-1)))
 (:action ugly226ugly278ugly47wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly227ugly256ugly108close_sd5-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-sd13)) :effect
  (and (done-1)))
 (:action ugly228ugly75ugly271reach-goal-61 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly229ugly150ugly107close_sd3-condeff1-yes :parameters ()
  :precondition
  (and (do-close_sd3-condeffs) (closed-sd15) (closed-sd18) (closed-sd7)
       (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly230ugly137ugly91close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action ugly231ugly315ugly116reach-goal-41 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly232ugly110ugly130close_sd9-condeff0-yes :parameters ()
  :precondition (and (do-close_sd9-condeffs) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly233ugly93ugly270wait_cb2-condeff0-no-0 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd13)) :effect
  (and (done-0)))
 (:action ugly234ugly193ugly275close_sd17-endof-condeffs :parameters ()
  :precondition (and (do-close_sd17-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd17-condeffs)) (not (done-0))))
 (:action ugly235ugly158ugly197close_sd6-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd6-condeffs) (not-closed-sd5)) :effect
  (and (done-1)))
 (:action ugly236ugly144ugly300close_sd4-condeff1-no-2 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-sd5)) :effect
  (and (done-1)))
 (:action ugly237ugly41ugly23open-cb3 :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly238ugly111ugly188reach-goal-8 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-cb6) (closed-sd18) (closed-sd7)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly239ugly234ugly193open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly240ugly88ugly79close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly241ugly284ugly307close_sd6-condeff1-no-3 :parameters ()
  :precondition (and (do-close_sd6-condeffs) (not-closed-sd7)) :effect
  (and (done-1)))
 (:action ugly242ugly27ugly340close_sd15-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd15-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly243ugly263ugly177close_sd5-condeff1-no-3 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-sd7)) :effect
  (and (done-1)))
 (:action ugly244ugly316ugly147reach-goal-118 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd3)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly245ugly154ugly238reach-goal-110 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd5)
       (closed-sd3) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly246ugly49ugly115reach-goal-4 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly247ugly279ugly293close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly248ugly117ugly21close_sd5-condeff1-yes :parameters ()
  :precondition
  (and (do-close_sd5-condeffs) (closed-sd13) (closed-sd6) (closed-sd4)
       (closed-sd7) (closed-sd18) (closed-cb6))
  :effect (and (done-1) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly249ugly200ugly38close_sd13-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd13-condeffs) (not-closed-sd5)) :effect
  (and (done-1)))
 (:action ugly250ugly25ugly174reach-goal-7 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-cb2)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly251ugly33ugly328close_sd7-condeff0-yes :parameters ()
  :precondition
  (and (do-close_sd7-condeffs) (closed-sd15) (closed-sd18) (closed-sd3)
       (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly252ugly296ugly204close_sd3-condeff1-no-3 :parameters ()
  :precondition (and (do-close_sd3-condeffs) (not-closed-cb2)) :effect
  (and (done-1)))
 (:action ugly253ugly318ugly337wait_cb2-condeff1-no-1 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd18)) :effect
  (and (done-1)))
 (:action ugly254ugly99ugly190open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly255ugly313ugly114reach-goal-52 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly256ugly108ugly186wait_cb6-condeff1-no-1 :parameters ()
  :precondition (and (do-wait_cb6-condeffs) (not-closed-sd6)) :effect
  (and (done-1)))
 (:action ugly257ugly151ugly105close_sd18-condeff0-no-3 :parameters ()
  :precondition (and (do-close_sd18-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly258ugly336ugly71reach-goal-85 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly259ugly216ugly120close_sd13-condeff0-no-3 :parameters ()
  :precondition (and (do-close_sd13-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly260ugly1ugly213close_sd15-condeff1-yes :parameters ()
  :precondition (and (do-close_sd15-condeffs) (closed-cb6)) :effect
  (and (done-1) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly261ugly98ugly69wait_cb6-condeff1-no-3 :parameters ()
  :precondition (and (do-wait_cb6-condeffs) (not-closed-sd4)) :effect
  (and (done-1)))
 (:action ugly262ugly261ugly98reach-goal-68 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly263ugly177ugly189close_sd11 :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd11) (not (not-closed-sd11))))
 (:action ugly264ugly136ugly57close_sd13 :parameters () :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd13-condeffs) (closed-sd13)
       (not (not-closed-sd13))))
 (:action ugly265ugly249ugly200reach-goal-37 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly266ugly13ugly321close_sd7-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-sd18)) :effect
  (and (done-0)))
 (:action ugly267ugly259ugly216reach-goal-119 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-cb2)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly268ugly295ugly34reach-goal-112 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-sd5) (closed-cb6) (closed-sd18)
       (closed-sd7) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly269ugly241ugly284close_sd7-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-sd13)) :effect
  (and (done-1)))
 (:action ugly270ugly243ugly263close_sd9-endof-condeffs :parameters ()
  :precondition (and (do-close_sd9-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0))))
 (:action ugly271ugly62ugly287close_sd5-condeff0-no-3 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly272ugly132ugly63close_sd6-condeff1-no-5 :parameters ()
  :precondition (and (do-close_sd6-condeffs) (not-closed-cb6)) :effect
  (and (done-1)))
 (:action ugly273ugly195ugly82open-sd13 :parameters () :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd13) (not (closed-sd13))))
 (:action ugly274ugly44ugly232reach-goal-109 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly275ugly148ugly176reach-goal-117 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly276ugly92ugly332reach-goal-89 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly277ugly153ugly184close_sd6-condeff0-no-4 :parameters ()
  :precondition (and (do-close_sd6-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly278ugly47ugly255close_sd7-endof-condeffs :parameters ()
  :precondition (and (do-close_sd7-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly279ugly293ugly294reach-goal-36 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly280ugly202ugly239wait_cb6-condeff1-no-4 :parameters ()
  :precondition (and (do-wait_cb6-condeffs) (not-closed-sd7)) :effect
  (and (done-1)))
 (:action ugly281ugly252ugly296close_sd4-condeff1-no-3 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-sd7)) :effect
  (and (done-1)))
 (:action ugly282ugly103ugly146close_sd7-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-sd6)) :effect
  (and (done-1)))
 (:action ugly283ugly276ugly92close_sd2-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly284ugly307ugly325reach-goal-3 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly285ugly28ugly253close_sd6-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd6-condeffs) (not-closed-sd4)) :effect
  (and (done-0)))
 (:action ugly286ugly100ugly32close_sd6-condeff0-no-3 :parameters ()
  :precondition (and (do-close_sd6-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly287ugly183ugly101wait_cb6-condeff1-no-0 :parameters ()
  :precondition (and (do-wait_cb6-condeffs) (not-closed-sd13)) :effect
  (and (done-1)))
 (:action ugly288ugly60ugly209close_sd7-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-sd15)) :effect
  (and (done-0)))
 (:action ugly289ugly180ugly163close_cb3 :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly290ugly162ugly152reach-goal-125 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly291ugly251ugly33close_sd6-endof-condeffs :parameters ()
  :precondition (and (do-close_sd6-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly292ugly314ugly10close_sd2-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly293ugly294ugly37close_sd4-condeff1-no-4 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-sd18)) :effect
  (and (done-1)))
 (:action ugly294ugly37ugly205close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly295ugly34ugly113close_sd2-endof-condeffs :parameters ()
  :precondition (and (do-close_sd2-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))))
 (:action ugly296ugly204ugly219wait_cb4 :parameters () :precondition
  (and (do-normal) (not-updated-cb4)) :effect
  (and (not-closed-cb4) (updated-cb4) (not (closed-cb4))
       (not (not-updated-cb4))))
 (:action ugly297ugly192ugly167close_sd3-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd3-condeffs) (not-closed-sd18)) :effect
  (and (done-1)))
 (:action ugly298ugly80ugly54close_sd17 :parameters () :precondition
  (and (do-normal) (not-closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd17-condeffs) (closed-sd17)
       (not (not-closed-sd17))))
 (:action ugly299ugly104ugly112close_sd13-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd13-condeffs) (not-closed-sd4)) :effect
  (and (done-0)))
 (:action ugly300ugly203ugly64reach-goal-65 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly301ugly2ugly138close_sd18-endof-condeffs :parameters ()
  :precondition (and (do-close_sd18-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd18-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly302ugly141ugly56close_sd6-condeff1-no-4 :parameters ()
  :precondition (and (do-close_sd6-condeffs) (not-closed-sd18)) :effect
  (and (done-1)))
 (:action ugly303ugly24ugly242reach-goal-26 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly304ugly168ugly201reach-goal-50 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly305ugly339ugly70close_sd5-condeff0-yes :parameters ()
  :precondition
  (and (do-close_sd5-condeffs) (closed-sd13) (closed-sd6) (closed-sd4)
       (closed-sd3) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly306ugly244ugly316close_sd17-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd17-condeffs) (not-closed-cb3)) :effect
  (and (done-0)))
 (:action ugly307ugly325ugly4wait_cb3-condeff1-no-0 :parameters ()
  :precondition (and (do-wait_cb3-condeffs) (not-closed-sd9)) :effect
  (and (done-1)))
 (:action ugly308ugly212ugly223close_sd7-condeff1-yes :parameters ()
  :precondition
  (and (do-close_sd7-condeffs) (closed-sd13) (closed-sd6) (closed-sd5)
       (closed-sd4) (closed-sd18) (closed-cb6))
  :effect (and (done-1) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly309ugly338ugly310wait_cb1-condeff0-no-1 :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly310ugly258ugly336reach-goal-70 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd3)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly311ugly245ugly154close_cb5 :parameters () :precondition
  (and (do-normal) (not-closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb5) (not-updated-cb5) (not (not-closed-cb5))
       (not (updated-cb5))))
 (:action ugly312ugly288ugly60close_sd3-condeff0-yes :parameters ()
  :precondition
  (and (do-close_sd3-condeffs) (closed-sd13) (closed-sd6) (closed-sd5)
       (closed-sd4) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly313ugly114ugly53wait_cb6-condeff1-yes :parameters ()
  :precondition
  (and (do-wait_cb6-condeffs) (closed-sd13) (closed-sd6) (closed-sd5)
       (closed-sd4) (closed-sd7) (closed-sd18))
  :effect (and (done-1) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly314ugly10ugly331close_sd3-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd3-condeffs) (not-closed-sd13)) :effect
  (and (done-0)))
 (:action ugly315ugly116ugly42close_sd12 :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd12) (not (not-closed-sd12))))
 (:action ugly316ugly147ugly119open-sd12 :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd12) (not (closed-sd12))))
 (:action ugly317ugly26ugly65reach-goal-21 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly318ugly337ugly250reach-goal-24 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-cb6) (closed-sd18) (closed-sd7)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly319ugly7ugly170close_sd15 :parameters () :precondition
  (and (do-normal) (not-closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd15-condeffs) (closed-sd15)
       (not (not-closed-sd15))))
 (:action ugly320ugly317ugly26reach-goal-64 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-sd5) (closed-sd6) (closed-sd17)
       (closed-cb3) (closed-sd8) (closed-sd7) (closed-sd18) (closed-cb6))
  :effect (and (goal-reached)))
 (:action ugly321ugly303ugly24wait_cb2-condeff0-yes :parameters ()
  :precondition
  (and (do-wait_cb2-condeffs) (closed-sd13) (closed-sd6) (closed-sd5)
       (closed-sd4) (closed-sd3))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly322ugly227ugly256reach-goal-107 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly323ugly206ugly166reach-goal-30 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd5)
       (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8) (closed-sd3))
  :effect (and (goal-reached)))
 (:action ugly324ugly199ugly76close_sd6-condeff1-no-2 :parameters ()
  :precondition (and (do-close_sd6-condeffs) (not-closed-sd4)) :effect
  (and (done-1)))
 (:action ugly325ugly4ugly342wait_cb6 :parameters () :precondition
  (and (do-normal) (not-updated-cb6)) :effect
  (and (not (do-normal)) (do-wait_cb6-condeffs) (updated-cb6)
       (not (not-updated-cb6))))
 (:action ugly326ugly218ugly48wait_cb5 :parameters () :precondition
  (and (do-normal) (not-updated-cb5)) :effect
  (and (not-closed-cb5) (updated-cb5) (not (closed-cb5))
       (not (not-updated-cb5))))
 (:action ugly327ugly43ugly78wait_cb6-condeff1-no-5 :parameters ()
  :precondition (and (do-wait_cb6-condeffs) (not-closed-sd18)) :effect
  (and (done-1)))
 (:action ugly328ugly301ugly2close_sd18-condeff1-no-2 :parameters ()
  :precondition (and (do-close_sd18-condeffs) (not-closed-sd5)) :effect
  (and (done-1)))
 (:action ugly329ugly330ugly274reach-goal-43 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly330ugly274ugly44wait_cb6-condeff1-no-2 :parameters ()
  :precondition (and (do-wait_cb6-condeffs) (not-closed-sd5)) :effect
  (and (done-1)))
 (:action ugly331ugly210ugly11reach-goal-96 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-sd5) (closed-sd6) (closed-sd17)
       (closed-cb3) (closed-sd8) (closed-cb6) (closed-sd18))
  :effect (and (goal-reached)))
 (:action ugly332ugly90ugly254reach-goal-98 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly333ugly246ugly49reach-goal-114 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly334ugly236ugly144close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly335ugly280ugly202close_cb4 :parameters () :precondition
  (and (do-normal) (not-closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb4) (not-updated-cb4) (not (not-closed-cb4))
       (not (updated-cb4))))
 (:action ugly336ugly71ugly86close_sd4-condeff0-yes :parameters ()
  :precondition
  (and (do-close_sd4-condeffs) (closed-sd13) (closed-sd6) (closed-sd5)
       (closed-sd3) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly337ugly250ugly25close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action ugly338ugly310ugly258wait_cb3 :parameters () :precondition
  (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action ugly339ugly70ugly179reach-goal-39 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-cb2)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly340ugly289ugly180close_sd13-condeff1-yes :parameters ()
  :precondition
  (and (do-close_sd13-condeffs) (closed-sd6) (closed-sd5) (closed-sd4)
       (closed-sd7) (closed-sd18) (closed-cb6))
  :effect (and (done-1) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly341ugly84ugly257close_sd16-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd16-condeffs) (not-closed-sd17)) :effect
  (and (done-0)))
 (:action ugly342ugly226ugly278reach-goal-46 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd5)
       (closed-sd3) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly343ugly157ugly343close_sd13-condeff0-yes :parameters ()
  :precondition
  (and (do-close_sd13-condeffs) (closed-sd6) (closed-sd5) (closed-sd4)
       (closed-sd3) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))) 