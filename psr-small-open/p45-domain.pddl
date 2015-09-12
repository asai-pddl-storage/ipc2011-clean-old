
(define (domain grounded-strips-psr) (:requirements :strips :action-costs)
 (:predicates (do-close_sd1-condeffs) (not-closed-sd3) (closed-sd8)
  (not-closed-sd10) (closed-sd2) (closed-cb1) (not-closed-cb1) (closed-sd1)
  (not-closed-cb3) (done-1) (closed-cb3) (not-updated-cb3) (not-closed-cb2)
  (updated-cb4) (do-close_sd5-condeffs) (updated-cb3) (do-close_sd2-condeffs)
  (updated-cb1) (updated-cb2) (do-normal) (closed-sd10) (closed-sd5)
  (closed-sd12) (not-closed-sd6) (not-closed-sd7) (do-wait_cb2-condeffs)
  (not-closed-sd4) (not-closed-sd12) (not-updated-cb2) (do-wait_cb1-condeffs)
  (not-closed-sd2) (closed-sd9) (done-0) (closed-sd4) (closed-sd7)
  (do-close_sd6-condeffs) (not-updated-cb4) (not-closed-sd1) (not-closed-sd11)
  (not-closed-sd8) (closed-sd6) (closed-sd3) (closed-cb4) (not-closed-cb4)
  (closed-sd11) (closed-sd13) (not-closed-sd5) (not-updated-cb1) (closed-cb2)
  (not-closed-sd9) (not-closed-sd13))
 (:functions (total-cost) - number)
 (:action ugly2715ugly47ugly36ugly28ugly27close_sd4 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly2716ugly25ugly6ugly32ugly5close_sd5-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-sd6)) :effect
  (and (done-0)))
 (:action ugly2717ugly15ugly53ugly39ugly57open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly2718ugly9ugly60ugly7ugly40close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd7) (not (not-closed-sd7))))
 (:action ugly2719ugly39ugly57ugly42ugly16close_sd2-condeff0-yes :parameters ()
  :precondition (and (do-close_sd2-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly2720ugly30ugly49ugly59ugly21open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd4) (not (closed-sd4))))
 (:action ugly2721ugly42ugly16ugly19ugly1open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd2) (not (closed-sd2))))
 (:action ugly2722ugly7ugly40ugly43ugly2open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd1) (not (closed-sd1))))
 (:action ugly2723ugly48ugly22ugly18ugly30wait_cb4 :parameters () :precondition
  (and (do-normal) (not-updated-cb4)) :effect
  (and (not-closed-cb4) (updated-cb4) (not (closed-cb4))
       (not (not-updated-cb4))))
 (:action ugly2724ugly31ugly47ugly36ugly28open-sd12 :parameters ()
  :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd12) (not (closed-sd12))))
 (:action ugly2725ugly43ugly2ugly38ugly41close_sd1-condeff0-yes :parameters ()
  :precondition (and (do-close_sd1-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly2726ugly10ugly56ugly13ugly33close_sd6-endof-condeffs :parameters
  () :precondition (and (do-close_sd6-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))))
 (:action ugly2727ugly54ugly24ugly48ugly22close_sd2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly2728ugly36ugly28ugly27ugly44close_sd6-condeff0-yes :parameters ()
  :precondition (and (do-close_sd6-condeffs) (closed-sd5) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly2729ugly51ugly61ugly17ugly9wait_cb1-condeff1-no-0 :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect
  (and (done-1)))
 (:action ugly2730ugly4ugly29ugly23ugly34wait_cb1-condeff0-no-0 :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly2731ugly41ugly46ugly31ugly47open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd3) (not (closed-sd3))))
 (:action ugly2732ugly23ugly34ugly58ugly10wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly2733ugly6ugly32ugly5ugly14wait_cb2-condeff0-no-1 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd5)) :effect
  (and (done-0)))
 (:action ugly2734ugly55ugly26ugly51ugly61close_sd3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly2735ugly34ugly58ugly10ugly56close_sd5-condeff0-yes :parameters ()
  :precondition (and (do-close_sd5-condeffs) (closed-sd6) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly2736ugly40ugly43ugly2ugly38open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly2737ugly37ugly45ugly52ugly50close_cb1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly2738ugly14ugly54ugly24ugly48close_cb4 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb4) (not-updated-cb4) (not (not-closed-cb4))
       (not (updated-cb4))))
 (:action ugly2739ugly27ugly44ugly8ugly15wait_cb2-condeff0-no-0 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd6)) :effect
  (and (done-0)))
 (:action ugly2740ugly20ugly4ugly29ugly23open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd5) (not (closed-sd5))))
 (:action ugly2741ugly45ugly52ugly50ugly25close_sd8 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd8) (not (not-closed-sd8))))
 (:action ugly2742ugly32ugly5ugly14ugly54close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly2743ugly18ugly30ugly49ugly59close_sd2-endof-condeffs :parameters
  () :precondition (and (do-close_sd2-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))))
 (:action ugly2744ugly58ugly10ugly56ugly13open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd6) (not (closed-sd6))))
 (:action ugly2745ugly19ugly1ugly37ugly45wait_cb2-condeff0-yes :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (closed-sd6) (closed-sd5)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly2746ugly57ugly42ugly16ugly19close_sd13 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd13) (not (not-closed-sd13))))
 (:action ugly2747ugly12ugly20ugly4ugly29close_cb3 :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly2748ugly26ugly51ugly61ugly17close_sd6-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd6-condeffs) (not-closed-sd5)) :effect
  (and (done-0)))
 (:action ugly2749ugly28ugly27ugly44ugly8close_sd5-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly2750ugly17ugly9ugly60ugly7open-cb3 :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly2751ugly49ugly59ugly21ugly35wait_cb2-endof-condeffs :parameters
  () :precondition (and (do-wait_cb2-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0))))
 (:action ugly2752ugly61ugly17ugly9ugly60close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly2753ugly2ugly38ugly41ugly46open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd8) (not (closed-sd8))))
 (:action ugly2754ugly24ugly48ugly22ugly18open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd9) (not (closed-sd9))))
 (:action ugly2755ugly3ugly12ugly20ugly4open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd10) (not (closed-sd10))))
 (:action ugly2756ugly56ugly13ugly33ugly11close_sd11 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd11) (not (not-closed-sd11))))
 (:action ugly2757ugly8ugly15ugly53ugly39wait_cb1-condeff0-yes :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly2758ugly29ugly23ugly34ugly58close_sd6-condeff0-no-1 :parameters
  () :precondition (and (do-close_sd6-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly2759ugly60ugly7ugly40ugly43close_sd12 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd12) (not (not-closed-sd12))))
 (:action ugly2760ugly52ugly50ugly25ugly6open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd7) (not (closed-sd7))))
 (:action ugly2761ugly35ugly55ugly26ugly51wait_cb1-endof-condeffs :parameters
  () :precondition (and (do-wait_cb1-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly2762ugly59ugly21ugly35ugly55open-sd13 :parameters ()
  :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd13) (not (closed-sd13))))
 (:action ugly2763ugly16ugly19ugly1ugly37close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly2764ugly13ugly33ugly11ugly3close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action ugly2765ugly21ugly35ugly55ugly26wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly2766ugly38ugly41ugly46ugly31close_sd1-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly2767ugly1ugly37ugly45ugly52wait_cb3 :parameters () :precondition
  (and (do-normal) (not-updated-cb3)) :effect
  (and (not-closed-cb3) (updated-cb3) (not (closed-cb3))
       (not (not-updated-cb3))))
 (:action ugly2768ugly44ugly8ugly15ugly53open-cb4 :parameters () :precondition
  (and (do-normal) (closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly2769ugly22ugly18ugly30ugly49wait_cb1-condeff1-yes :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (closed-sd2)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly2770ugly50ugly25ugly6ugly32close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd9) (not (not-closed-sd9))))
 (:action ugly2771ugly33ugly11ugly3ugly12close_sd2-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly2772ugly5ugly14ugly54ugly24close_sd1-endof-condeffs :parameters
  () :precondition (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly2773ugly46ugly31ugly47ugly36open-sd11 :parameters ()
  :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd11) (not (closed-sd11))))
 (:action ugly2774ugly11ugly3ugly12ugly20close_sd10 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd10) (not (not-closed-sd10))))
 (:action ugly2775ugly53ugly39ugly57ugly42close_sd5-endof-condeffs :parameters
  () :precondition (and (do-close_sd5-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))))) 