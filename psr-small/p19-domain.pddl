
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (not-closed-cb3) (do-close_sd6-condeffs) (done-3) (closed-sd3)
  (do-close_sd3-condeffs) (not-closed-cb1) (not-closed-cb2) (not-updated-cb2)
  (done-0) (done-2) (not-closed-sd3) (not-closed-sd1) (done-1)
  (do-wait_cb1-condeffs) (not-updated-cb3) (do-close_sd7-condeffs)
  (do-close_sd2-condeffs) (not-closed-sd4) (do-normal) (do-close_sd5-condeffs)
  (not-closed-sd6) (updated-cb1) (do-close_sd4-condeffs) (updated-cb2)
  (closed-cb1) (updated-cb3) (closed-sd6) (closed-sd7) (closed-sd5)
  (not-closed-sd2) (goal-reached) (closed-cb2) (not-updated-cb1)
  (do-wait_cb3-condeffs) (closed-sd1) (do-close_sd1-condeffs) (closed-sd2)
  (closed-cb3) (closed-sd4) (not-closed-sd5) (not-closed-sd7))
 (:action ugly1ugly90ugly155reach-goal-21 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-cb1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly2ugly132ugly21open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly3ugly51ugly53wait_cb3-endof-condeffs :parameters () :precondition
  (and (do-wait_cb3-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly4ugly104ugly27reach-goal-22 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb3) (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly5ugly105ugly9close_sd1-condeff1-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd3) (closed-sd2) (closed-cb3)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly6ugly160ugly137wait_cb3-condeff0-no-2 :parameters ()
  :precondition (and (do-wait_cb3-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly7ugly78ugly144close_sd1-condeff2-no-0 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-sd7)) :effect
  (and (done-2)))
 (:action ugly8ugly123ugly129wait_cb1-endof-condeffs :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly9ugly138ugly1close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly10ugly82ugly68close_sd7-condeff0-no-3 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly11ugly95ugly63close_sd2-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-sd5)) :effect
  (and (done-1)))
 (:action ugly12ugly52ugly56close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly13ugly16ugly25close_sd7-condeff1-no-2 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-sd2)) :effect
  (and (done-1)))
 (:action ugly14ugly26ugly141wait_cb3-condeff0-no-1 :parameters ()
  :precondition (and (do-wait_cb3-condeffs) (not-closed-sd2)) :effect
  (and (done-0)))
 (:action ugly15ugly161ugly44reach-goal-17 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-cb1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly16ugly25ugly42close_sd2-condeff3-no-0 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-sd7)) :effect
  (and (done-3)))
 (:action ugly17ugly159ugly131close_sd4-condeff1-yes :parameters ()
  :precondition
  (and (do-close_sd4-condeffs) (closed-sd7) (closed-sd5) (closed-sd2)
       (closed-sd1) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly18ugly14ugly26close_sd1-condeff1-no-2 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-cb3)) :effect
  (and (done-1)))
 (:action ugly19ugly30ugly81wait_cb3 :parameters () :precondition
  (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action ugly20ugly71ugly39close_sd6-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd6-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly21ugly92ugly29close_sd7-endof-condeffs :parameters ()
  :precondition (and (do-close_sd7-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly22ugly126ugly34wait_cb3-condeff1-no-3 :parameters ()
  :precondition (and (do-wait_cb3-condeffs) (not-closed-sd2)) :effect
  (and (done-1)))
 (:action ugly23ugly135ugly139close_sd2-condeff2-no-1 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-sd1)) :effect
  (and (done-2)))
 (:action ugly24ugly113ugly32close_sd1-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-sd6)) :effect
  (and (done-0)))
 (:action ugly25ugly42ugly128reach-goal-12 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd2) (closed-cb3) (closed-sd1) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly26ugly141ugly152close_sd1-endof-condeffs :parameters ()
  :precondition (and (do-close_sd1-condeffs) (done-0) (done-1) (done-2))
  :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly27ugly23ugly135close_sd1-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-sd3)) :effect
  (and (done-1)))
 (:action ugly28ugly67ugly96close_sd2-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-sd7)) :effect
  (and (done-1)))
 (:action ugly29ugly45ugly87close_sd1-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-sd2)) :effect
  (and (done-1)))
 (:action ugly30ugly81ugly149wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not-closed-cb2) (updated-cb2) (not (closed-cb2))
       (not (not-updated-cb2))))
 (:action ugly31ugly111ugly24close_sd5-endof-condeffs :parameters ()
  :precondition (and (do-close_sd5-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly32ugly136ugly47close_sd5-condeff1-yes :parameters ()
  :precondition
  (and (do-close_sd5-condeffs) (closed-sd7) (closed-sd4) (closed-sd2)
       (closed-sd1) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly33ugly115ugly46open-cb3 :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly34ugly158ugly130close_sd7-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-sd4)) :effect
  (and (done-0)))
 (:action ugly35ugly134ugly88wait_cb3-condeff1-yes :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd7) (closed-sd5) (closed-sd4)
       (closed-sd2) (closed-sd1))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly36ugly5ugly105reach-goal-8 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd2) (closed-sd4) (closed-cb3) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly37ugly72ugly151close_sd5-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-sd7)) :effect
  (and (done-0)))
 (:action ugly38ugly73ugly83close_sd2-condeff1-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd7) (closed-sd5) (closed-sd4)
       (closed-cb1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly39ugly48ugly94close_sd5-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-sd7)) :effect
  (and (done-1)))
 (:action ugly40ugly79ugly17wait_cb3-condeff1-no-4 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd1)) :effect (and (done-1)))
 (:action ugly41ugly106ugly114close_sd4-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-sd7)) :effect
  (and (done-1)))
 (:action ugly42ugly128ugly13reach-goal-15 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-sd2) (closed-sd4) (closed-cb1) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly43ugly58ugly2close_sd2-condeff3-no-4 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-cb3)) :effect (and (done-3)))
 (:action ugly44ugly18ugly14reach-goal-25 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-cb1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly45ugly87ugly140wait_cb1-condeff2-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd7) (closed-sd5) (closed-sd4)
       (closed-sd2))
  :effect (and (done-2) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly46ugly98ugly6wait_cb3-condeff2-yes :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd6)) :effect
  (and (done-2) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly47ugly107ugly40wait_cb1-condeff0-no-0 :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (not-closed-sd6)) :effect
  (and (done-0)))
 (:action ugly48ugly94ugly108close_sd5-condeff1-no-2 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-sd2)) :effect
  (and (done-1)))
 (:action ugly49ugly76ugly127close_sd4-condeff1-no-4 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-cb3)) :effect
  (and (done-1)))
 (:action ugly50ugly124ugly133reach-goal-19 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-sd2) (closed-cb1) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly51ugly53ugly162close_sd6-condeff1-yes :parameters ()
  :precondition (and (do-close_sd6-condeffs) (closed-cb3)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly52ugly56ugly66close_sd6-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd6-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly53ugly162ugly50close_sd2-condeff2-no-0 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-sd3)) :effect
  (and (done-2)))
 (:action ugly54ugly156ugly65reach-goal-2 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb3) (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly55ugly15ugly161close_sd7-condeff1-no-4 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-cb3)) :effect
  (and (done-1)))
 (:action ugly56ugly66ugly49close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly57ugly93ugly12close_sd6-endof-condeffs :parameters ()
  :precondition (and (do-close_sd6-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly58ugly2ugly132reach-goal-20 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd2) (closed-cb3) (closed-sd1) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly59ugly62ugly101close_sd3-condeff1-yes :parameters ()
  :precondition
  (and (do-close_sd3-condeffs) (closed-sd2) (closed-sd1) (closed-cb3)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly60ugly150ugly86close_sd2-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly61ugly10ugly82close_sd3-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd3-condeffs) (not-closed-sd2)) :effect
  (and (done-0)))
 (:action ugly62ugly101ugly70close_sd5-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-sd4)) :effect
  (and (done-1)))
 (:action ugly63ugly120ugly85close_cb3 :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly64ugly54ugly156close_sd4-endof-condeffs :parameters ()
  :precondition (and (do-close_sd4-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly65ugly3ugly51close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly66ugly49ugly76close_sd2-condeff3-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd7) (closed-sd5) (closed-sd4)
       (closed-sd1) (closed-cb3))
  :effect (and (done-3) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly67ugly96ugly119open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly68ugly38ugly73wait_cb1-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect (and (done-1)))
 (:action ugly69ugly100ugly145close_sd4-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-sd2)) :effect
  (and (done-0)))
 (:action ugly70ugly109ugly142reach-goal-18 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb3) (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly71ugly39ugly48open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly72ugly151ugly103close_sd7-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-sd2)) :effect
  (and (done-0)))
 (:action ugly73ugly83ugly118close_sd1-condeff2-no-3 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-sd2)) :effect
  (and (done-2)))
 (:action ugly74ugly28ugly67open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly75ugly33ugly115close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly76ugly127ugly64close_sd4-condeff0-yes :parameters ()
  :precondition
  (and (do-close_sd4-condeffs) (closed-sd7) (closed-sd5) (closed-sd2)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly77ugly35ugly134wait_cb1-condeff2-no-3 :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect
  (and (done-2)))
 (:action ugly78ugly144ugly143close_sd2-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly79ugly17ugly159close_sd2-condeff3-no-3 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-sd1)) :effect
  (and (done-3)))
 (:action ugly80ugly7ugly78close_sd1-condeff2-no-1 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd5)) :effect (and (done-2)))
 (:action ugly81ugly149ugly163reach-goal-30 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb3) (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly82ugly68ugly38close_sd3-condeff1-no-2 :parameters ()
  :precondition (and (do-close_sd3-condeffs) (not-closed-cb3)) :effect
  (and (done-1)))
 (:action ugly83ugly118ugly146wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly84ugly80ugly7wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd6) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly85ugly75ugly33close_sd2-condeff0-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd3) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly86ugly116ugly69open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly87ugly140ugly84wait_cb1-condeff0-no-1 :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly88ugly154ugly61reach-goal-9 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-cb1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly89ugly147ugly112reach-goal-10 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb3) (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly90ugly155ugly22close_sd2-condeff2-no-2 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-cb3)) :effect
  (and (done-2)))
 (:action ugly91ugly102ugly8close_sd2-condeff2-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd3) (closed-sd1) (closed-cb3)) :effect
  (and (done-2) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly92ugly29ugly45wait_cb1-condeff2-no-2 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd4)) :effect (and (done-2)))
 (:action ugly93ugly12ugly52close_sd4-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-sd5)) :effect
  (and (done-0)))
 (:action ugly94ugly108ugly110close_sd7-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-sd4)) :effect
  (and (done-1)))
 (:action ugly95ugly63ugly120wait_cb1-condeff2-no-0 :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (not-closed-sd7)) :effect
  (and (done-2)))
 (:action ugly96ugly119ugly99close_sd2-condeff1-no-2 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-sd4)) :effect
  (and (done-1)))
 (:action ugly97ugly4ugly104reach-goal-26 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb3) (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly98ugly6ugly160close_sd1-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly99ugly121ugly91close_sd5-condeff0-yes :parameters ()
  :precondition
  (and (do-close_sd5-condeffs) (closed-sd7) (closed-sd4) (closed-sd2)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly100ugly145ugly57open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly101ugly70ugly109close_sd1-condeff2-yes :parameters ()
  :precondition
  (and (do-close_sd1-condeffs) (closed-sd7) (closed-sd5) (closed-sd4)
       (closed-sd2) (closed-cb3))
  :effect (and (done-2) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly102ugly8ugly123close_sd2-condeff3-no-1 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-sd5)) :effect
  (and (done-3)))
 (:action ugly103ugly37ugly72wait_cb3-condeff0-no-0 :parameters ()
  :precondition (and (do-wait_cb3-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly104ugly27ugly23close_sd1-condeff0-yes :parameters ()
  :precondition (and (do-close_sd1-condeffs) (closed-sd6) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly105ugly9ugly138reach-goal-0 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd2) (closed-sd4) (closed-sd1) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly106ugly114ugly60wait_cb3-condeff0-yes :parameters ()
  :precondition
  (and (do-wait_cb3-condeffs) (closed-sd3) (closed-sd2) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly107ugly40ugly79reach-goal-16 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd2) (closed-sd4) (closed-sd1) (closed-cb3) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly108ugly110ugly41close_sd5-condeff0-no-3 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly109ugly142ugly19reach-goal-29 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-cb1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly110ugly41ugly106close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly111ugly24ugly113reach-goal-31 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly112ugly11ugly95close_sd4-condeff1-no-3 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-sd1)) :effect
  (and (done-1)))
 (:action ugly113ugly32ugly136close_sd6-condeff0-yes :parameters ()
  :precondition (and (do-close_sd6-condeffs) (closed-sd1) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly114ugly60ugly150wait_cb1-condeff2-no-1 :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (not-closed-sd5)) :effect
  (and (done-2)))
 (:action ugly115ugly46ugly98reach-goal-5 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-cb1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly116ugly69ugly100close_sd1-condeff2-no-2 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-sd4)) :effect
  (and (done-2)))
 (:action ugly117ugly43ugly58reach-goal-1 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-cb1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly118ugly146ugly77close_sd7-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-sd5)) :effect
  (and (done-0)))
 (:action ugly119ugly99ugly121open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly120ugly85ugly75close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly121ugly91ugly102reach-goal-7 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-sd2) (closed-sd4) (closed-cb1) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly122ugly55ugly15wait_cb3-condeff2-no-0 :parameters ()
  :precondition (and (do-wait_cb3-condeffs) (not-closed-sd6)) :effect
  (and (done-2)))
 (:action ugly123ugly129ugly89close_sd1-condeff2-no-4 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-cb3)) :effect
  (and (done-2)))
 (:action ugly124ugly133ugly20close_sd3-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd3-condeffs) (not-closed-sd2)) :effect
  (and (done-1)))
 (:action ugly125ugly74ugly28close_sd3-condeff0-yes :parameters ()
  :precondition (and (do-close_sd3-condeffs) (closed-sd2) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly126ugly34ugly158close_sd2-condeff3-no-2 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-sd4)) :effect
  (and (done-3)))
 (:action ugly127ugly64ugly54wait_cb3-condeff1-no-1 :parameters ()
  :precondition (and (do-wait_cb3-condeffs) (not-closed-sd5)) :effect
  (and (done-1)))
 (:action ugly128ugly13ugly16reach-goal-24 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd2) (closed-sd4) (closed-cb3) (closed-sd1) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly129ugly89ugly147close_sd5-condeff1-no-4 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-cb3)) :effect
  (and (done-1)))
 (:action ugly130ugly36ugly5close_sd5-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-sd2)) :effect
  (and (done-0)))
 (:action ugly131ugly59ugly62close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action ugly132ugly21ugly92reach-goal-28 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd2) (closed-cb3) (closed-sd1) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly133ugly20ugly71close_sd7-condeff1-yes :parameters ()
  :precondition
  (and (do-close_sd7-condeffs) (closed-sd5) (closed-sd4) (closed-sd2)
       (closed-sd1) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly134ugly88ugly154close_sd4-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-sd5)) :effect
  (and (done-1)))
 (:action ugly135ugly139ugly125close_sd3-endof-condeffs :parameters ()
  :precondition (and (do-close_sd3-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly136ugly47ugly107close_sd7-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-sd5)) :effect
  (and (done-1)))
 (:action ugly137ugly153ugly157close_sd2-condeff1-no-3 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-cb1)) :effect
  (and (done-1)))
 (:action ugly138ugly1ugly90wait_cb3-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly139ugly125ugly74reach-goal-27 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-sd2) (closed-cb1) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly140ugly84ugly80reach-goal-6 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb3) (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly141ugly152ugly148open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly142ugly19ugly30wait_cb1-condeff1-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd3) (closed-sd2)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly143ugly117ugly43close_sd4-condeff0-no-3 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly144ugly143ugly117close_sd7-condeff1-no-3 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-sd1)) :effect
  (and (done-1)))
 (:action ugly145ugly57ugly93reach-goal-11 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-sd2) (closed-cb1) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly146ugly77ugly35close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly147ugly112ugly11open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly148ugly97ugly4close_sd5-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-sd4)) :effect
  (and (done-0)))
 (:action ugly149ugly163ugly31close_sd5-condeff1-no-3 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-sd1)) :effect
  (and (done-1)))
 (:action ugly150ugly86ugly116close_sd3-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd3-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly151ugly103ugly37close_sd3-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd3-condeffs) (not-closed-sd1)) :effect
  (and (done-1)))
 (:action ugly152ugly148ugly97reach-goal-3 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-sd2) (closed-cb1) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly153ugly157ugly122close_sd4-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-sd7)) :effect
  (and (done-0)))
 (:action ugly154ugly61ugly10wait_cb1-condeff1-no-0 :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (not-closed-sd3)) :effect
  (and (done-1)))
 (:action ugly155ugly22ugly126close_sd7-condeff0-yes :parameters ()
  :precondition
  (and (do-close_sd7-condeffs) (closed-sd5) (closed-sd4) (closed-sd2)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly156ugly65ugly3close_sd6-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd6-condeffs) (not-closed-cb3)) :effect
  (and (done-1)))
 (:action ugly157ugly122ugly55reach-goal-14 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb3) (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly158ugly130ugly36reach-goal-4 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd2) (closed-cb3) (closed-sd1) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly159ugly131ugly59close_sd4-condeff1-no-2 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-sd2)) :effect
  (and (done-1)))
 (:action ugly160ugly137ugly153wait_cb3-condeff1-no-2 :parameters ()
  :precondition (and (do-wait_cb3-condeffs) (not-closed-sd4)) :effect
  (and (done-1)))
 (:action ugly161ugly44ugly18reach-goal-13 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-cb1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly162ugly50ugly124close_sd2-endof-condeffs :parameters ()
  :precondition
  (and (do-close_sd2-condeffs) (done-0) (done-1) (done-2) (done-3)) :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2)) (not (done-3))))
 (:action ugly163ugly31ugly111reach-goal-23 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-sd2) (closed-sd4) (closed-cb1) (closed-sd5))
  :effect (and (goal-reached)))) 