
(define (domain grounded-strips-psr) (:requirements :strips :action-costs)
 (:predicates (closed-sd2) (not-closed-sd5) (closed-sd12) (closed-sd7)
  (not-closed-sd13) (not-updated-cb3) (closed-sd13) (not-closed-sd6)
  (not-closed-sd7) (do-close_sd6-condeffs) (closed-sd8) (closed-sd1)
  (closed-sd10) (do-normal) (not-closed-cb1) (updated-cb3) (not-closed-sd14)
  (closed-sd6) (not-closed-sd9) (closed-cb1) (not-closed-sd10) (not-closed-cb2)
  (not-closed-cb3) (closed-sd5) (done-1) (do-wait_cb1-condeffs)
  (not-closed-sd2) (not-closed-sd8) (closed-cb2) (do-close_sd10-condeffs)
  (do-close_sd1-condeffs) (not-updated-cb2) (not-closed-sd3) (closed-sd3)
  (not-closed-sd4) (not-updated-cb1) (closed-cb3) (closed-sd11) (closed-sd9)
  (closed-sd4) (done-0) (do-close_sd11-condeffs) (not-closed-sd12)
  (updated-cb2) (updated-cb1) (not-closed-sd11) (closed-sd14) (done-2)
  (not-closed-sd1))
 (:functions (total-cost) - number)
 (:action
  ugly2574ugly2574ugly2574ugly2574ugly2574ugly2574ugly1ugly37ugly7ugly40close_sd1-condeff0-yes
  :parameters () :precondition (and (do-close_sd1-condeffs) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2575ugly2623ugly2633ugly2628ugly2606ugly2582ugly49ugly26ugly51ugly64close_sd6-condeff0-no-1
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action
  ugly2576ugly2576ugly2576ugly2576ugly2576ugly2576ugly3ugly12ugly20ugly4open-sd12
  :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd12) (not (closed-sd12))))
 (:action
  ugly2577ugly2619ugly2614ugly2636ugly2593ugly2604ugly38ugly43ugly28ugly27close_sd6
  :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action
  ugly2578ugly2577ugly2619ugly2614ugly2636ugly2593ugly31ugly8ugly15ugly53wait_cb1-condeff2-no-1
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd6))
  :effect (and (done-2)))
 (:action
  ugly2579ugly2585ugly2626ugly2637ugly2608ugly2612ugly34ugly42ugly49ugly26close_sd6-endof-condeffs
  :parameters () :precondition (and (do-close_sd6-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))
       (not (done-1))))
 (:action
  ugly2580ugly2584ugly2589ugly2632ugly2600ugly2591ugly43ugly28ugly27ugly44wait_cb1-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd10))
  :effect (and (done-1)))
 (:action
  ugly2581ugly2578ugly2577ugly2619ugly2614ugly2636ugly20ugly4ugly29ugly23open-sd7
  :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd7) (not (closed-sd7))))
 (:action
  ugly2582ugly2622ugly2617ugly2599ugly2605ugly2609ugly10ugly56ugly55ugly16close_sd2
  :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action
  ugly2583ugly2624ugly2592ugly2620ugly2603ugly2575ugly50ugly36ugly5ugly14wait_cb2
  :parameters () :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not-closed-cb2) (updated-cb2) (not (closed-cb2))
       (not (not-updated-cb2))))
 (:action
  ugly2584ugly2589ugly2632ugly2600ugly2591ugly2616ugly48ugly58ugly31ugly8close_sd8
  :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd8) (not (not-closed-sd8))))
 (:action
  ugly2585ugly2626ugly2637ugly2608ugly2612ugly2607ugly21ugly35ugly2ugly38open-cb1
  :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2586ugly2587ugly2597ugly2581ugly2578ugly2577ugly46ugly10ugly56ugly55close_sd7
  :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd7) (not (not-closed-sd7))))
 (:action
  ugly2587ugly2597ugly2581ugly2578ugly2577ugly2619ugly41ugly50ugly36ugly5close_sd9
  :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd9) (not (not-closed-sd9))))
 (:action
  ugly2588ugly2634ugly2610ugly2625ugly2601ugly2602ugly17ugly9ugly60ugly13open-sd8
  :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd8) (not (closed-sd8))))
 (:action
  ugly2589ugly2632ugly2600ugly2591ugly2616ugly2621ugly7ugly40ugly21ugly35close_sd13
  :parameters () :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd13) (not (not-closed-sd13))))
 (:action
  ugly2590ugly2586ugly2587ugly2597ugly2581ugly2578ugly4ugly29ugly23ugly34open-cb2
  :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly2591ugly2616ugly2621ugly2580ugly2584ugly2589ugly59ugly17ugly9ugly60close_sd10-endof-condeffs
  :parameters () :precondition (and (do-close_sd10-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))))
 (:action
  ugly2592ugly2620ugly2603ugly2575ugly2623ugly2633ugly55ugly16ugly19ugly1open-sd4
  :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd4) (not (closed-sd4))))
 (:action
  ugly2593ugly2604ugly2611ugly2618ugly2631ugly2635ugly22ugly18ugly30ugly46close_sd10-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-sd6) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2594ugly2598ugly2613ugly2627ugly2579ugly2585ugly53ugly63ugly25ugly6open-sd9
  :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd9) (not (closed-sd9))))
 (:action
  ugly2595ugly2588ugly2634ugly2610ugly2625ugly2601ugly29ugly23ugly34ugly42close_sd6-condeff1-no-0
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd11))
  :effect (and (done-1)))
 (:action
  ugly2596ugly2629ugly2630ugly2615ugly2596ugly2629ugly57ugly45ugly22ugly18open-sd11
  :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd11) (not (closed-sd11))))
 (:action
  ugly2597ugly2581ugly2578ugly2577ugly2619ugly2614ugly63ugly25ugly6ugly32close_sd5
  :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action
  ugly2598ugly2613ugly2627ugly2579ugly2585ugly2626ugly64ugly47ugly61ugly62wait_cb1-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action
  ugly2599ugly2605ugly2609ugly2583ugly2624ugly2592ugly47ugly61ugly62ugly57close_sd6-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd10) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2600ugly2591ugly2616ugly2621ugly2580ugly2584ugly16ugly19ugly1ugly37close_sd11-condeff0-no-1
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action
  ugly2601ugly2602ugly2590ugly2586ugly2587ugly2597ugly8ugly15ugly53ugly63close_cb2
  :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action
  ugly2602ugly2590ugly2586ugly2587ugly2597ugly2581ugly5ugly14ugly54ugly39close_sd10-condeff0-no-0
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd6))
  :effect (and (done-0)))
 (:action
  ugly2603ugly2575ugly2623ugly2633ugly2628ugly2606ugly9ugly60ugly13ugly33open-cb3
  :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly2604ugly2611ugly2618ugly2631ugly2635ugly2595ugly15ugly53ugly63ugly25close_sd11-condeff0-no-0
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd6))
  :effect (and (done-0)))
 (:action
  ugly2605ugly2609ugly2583ugly2624ugly2592ugly2620ugly30ugly46ugly10ugly56wait_cb1
  :parameters () :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action
  ugly2606ugly2582ugly2622ugly2617ugly2599ugly2605ugly36ugly5ugly14ugly54open-sd2
  :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd2) (not (closed-sd2))))
 (:action
  ugly2607ugly2594ugly2598ugly2613ugly2627ugly2579ugly12ugly20ugly4ugly29close_sd1-endof-condeffs
  :parameters () :precondition (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action
  ugly2608ugly2612ugly2607ugly2594ugly2598ugly2613ugly54ugly39ugly11ugly3close_sd10-condeff0-no-1
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action
  ugly2609ugly2583ugly2624ugly2592ugly2620ugly2603ugly2ugly38ugly43ugly28open-sd14
  :parameters () :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd14) (not (closed-sd14))))
 (:action
  ugly2610ugly2625ugly2601ugly2602ugly2590ugly2586ugly14ugly54ugly39ugly11close_sd12
  :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd12) (not (not-closed-sd12))))
 (:action
  ugly2611ugly2618ugly2631ugly2635ugly2595ugly2588ugly61ugly62ugly57ugly45close_sd1-condeff0-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action
  ugly2612ugly2607ugly2594ugly2598ugly2613ugly2627ugly6ugly32ugly52ugly24close_sd6-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd11) (closed-cb1)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2613ugly2627ugly2579ugly2585ugly2626ugly2637ugly35ugly2ugly38ugly43open-sd13
  :parameters () :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd13) (not (closed-sd13))))
 (:action
  ugly2614ugly2636ugly2593ugly2604ugly2611ugly2618ugly58ugly31ugly8ugly15wait_cb3
  :parameters () :precondition (and (do-normal) (not-updated-cb3)) :effect
  (and (not-closed-cb3) (updated-cb3) (not (closed-cb3))
       (not (not-updated-cb3))))
 (:action
  ugly2615ugly2596ugly2629ugly2630ugly2615ugly2596ugly56ugly55ugly16ugly19close_sd14
  :parameters () :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd14) (not (not-closed-sd14))))
 (:action
  ugly2616ugly2621ugly2580ugly2584ugly2589ugly2632ugly27ugly44ugly59ugly17close_sd10
  :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action
  ugly2617ugly2599ugly2605ugly2609ugly2583ugly2624ugly19ugly1ugly37ugly7open-sd1
  :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd1) (not (closed-sd1))))
 (:action
  ugly2618ugly2631ugly2635ugly2595ugly2588ugly2634ugly37ugly7ugly40ugly21open-sd6
  :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd6) (not (closed-sd6))))
 (:action
  ugly2619ugly2614ugly2636ugly2593ugly2604ugly2611ugly45ugly22ugly18ugly30close_sd6-condeff0-no-0
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd10))
  :effect (and (done-0)))
 (:action
  ugly2620ugly2603ugly2575ugly2623ugly2633ugly2628ugly33ugly41ugly50ugly36close_sd11-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd6) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2621ugly2580ugly2584ugly2589ugly2632ugly2600ugly18ugly30ugly46ugly10wait_cb1-condeff0-yes
  :parameters () :precondition (and (do-wait_cb1-condeffs) (closed-sd1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2622ugly2617ugly2599ugly2605ugly2609ugly2583ugly51ugly64ugly47ugly61wait_cb1-condeff2-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd11))
  :effect (and (done-2)))
 (:action
  ugly2623ugly2633ugly2628ugly2606ugly2582ugly2622ugly44ugly59ugly17ugly9wait_cb1-condeff1-no-1
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd6))
  :effect (and (done-1)))
 (:action
  ugly2624ugly2592ugly2620ugly2603ugly2575ugly2623ugly60ugly13ugly33ugly41close_sd6-condeff1-no-1
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-cb1))
  :effect (and (done-1)))
 (:action
  ugly2625ugly2601ugly2602ugly2590ugly2586ugly2587ugly24ugly48ugly58ugly31close_sd11-endof-condeffs
  :parameters () :precondition (and (do-close_sd11-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0))))
 (:action
  ugly2626ugly2637ugly2608ugly2612ugly2607ugly2594ugly25ugly6ugly32ugly52close_cb3
  :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action
  ugly2627ugly2579ugly2585ugly2626ugly2637ugly2608ugly39ugly11ugly3ugly12close_sd1
  :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action
  ugly2628ugly2606ugly2582ugly2622ugly2617ugly2599ugly32ugly52ugly24ugly48wait_cb1-condeff1-yes
  :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd10) (closed-sd6)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2629ugly2630ugly2615ugly2596ugly2629ugly2630ugly42ugly49ugly26ugly51wait_cb1-endof-condeffs
  :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action
  ugly2630ugly2615ugly2596ugly2629ugly2630ugly2615ugly23ugly34ugly42ugly49close_cb1
  :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action
  ugly2631ugly2635ugly2595ugly2588ugly2634ugly2610ugly52ugly24ugly48ugly58open-sd10
  :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd10) (not (closed-sd10))))
 (:action
  ugly2632ugly2600ugly2591ugly2616ugly2621ugly2580ugly11ugly3ugly12ugly20close_sd11
  :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action
  ugly2633ugly2628ugly2606ugly2582ugly2622ugly2617ugly26ugly51ugly64ugly47wait_cb1-condeff2-yes
  :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd11) (closed-sd6)) :effect
  (and (done-2) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2634ugly2610ugly2625ugly2601ugly2602ugly2590ugly13ugly33ugly41ugly50open-sd5
  :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd5) (not (closed-sd5))))
 (:action
  ugly2635ugly2595ugly2588ugly2634ugly2610ugly2625ugly28ugly27ugly44ugly59close_sd4
  :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action
  ugly2636ugly2593ugly2604ugly2611ugly2618ugly2631ugly62ugly57ugly45ugly22close_sd3
  :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action
  ugly2637ugly2608ugly2612ugly2607ugly2594ugly2598ugly40ugly21ugly35ugly2open-sd3
  :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd3) (not (closed-sd3))))) 