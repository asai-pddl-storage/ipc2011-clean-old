
(define (domain grounded-strips-psr) (:requirements :strips :action-costs)
 (:predicates (updated-cb3) (done-1) (done-2) (not-closed-sd2) (not-closed-sd1)
  (updated-cb4) (do-wait_cb4-condeffs) (not-closed-cb3) (not-closed-cb1)
  (not-closed-sd4) (not-closed-sd7) (not-updated-cb1) (do-close_sd8-condeffs)
  (closed-sd5) (not-updated-cb2) (do-wait_cb1-condeffs) (closed-sd2)
  (closed-sd4) (closed-sd8) (do-close_sd2-condeffs) (not-closed-cb2)
  (closed-cb1) (not-closed-sd6) (closed-sd1) (done-0) (do-close_sd3-condeffs)
  (closed-sd3) (closed-sd7) (not-updated-cb3) (updated-cb2) (not-closed-cb4)
  (closed-cb3) (do-normal) (do-close_sd5-condeffs) (do-close_sd4-condeffs)
  (do-close_sd7-condeffs) (not-closed-sd8) (closed-sd6) (not-updated-cb4)
  (closed-cb4) (do-close_sd1-condeffs) (updated-cb1) (not-closed-sd5)
  (not-closed-sd3) (closed-cb2))
 (:functions (total-cost) - number)
 (:action
  ugly2638ugly2657ugly2704ugly2646ugly2702ugly2660ugly34ugly1ugly67ugly42wait_cb1-condeff2-no-2
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd2))
  :effect (and (done-2)))
 (:action
  ugly2639ugly2653ugly2699ugly2712ugly2640ugly2686ugly29ugly68ugly16ugly73open-cb3
  :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly2640ugly2686ugly2666ugly2703ugly2644ugly2662ugly77ugly65ugly59ugly74close_sd5-condeff0-no-2
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action
  ugly2641ugly2693ugly2641ugly2693ugly2641ugly2693ugly4ugly30ugly46ugly61close_cb3
  :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action
  ugly2642ugly2710ugly2668ugly2680ugly2692ugly2676ugly76ugly40ugly12ugly21close_sd8-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd5) (closed-sd2) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2643ugly2639ugly2653ugly2699ugly2712ugly2640ugly49ugly13ugly27ugly69close_sd8-condeff0-no-2
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action
  ugly2644ugly2662ugly2714ugly2645ugly2647ugly2688ugly28ugly24ugly72ugly6close_sd7
  :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action
  ugly2645ugly2647ugly2688ugly2665ugly2677ugly2642ugly73ugly49ugly13ugly27close_sd1-condeff0-yes
  :parameters () :precondition (and (do-close_sd1-condeffs) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2646ugly2702ugly2660ugly2671ugly2698ugly2649ugly32ugly48ugly58ugly62close_sd4-endof-condeffs
  :parameters () :precondition (and (do-close_sd4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))))
 (:action
  ugly2647ugly2688ugly2665ugly2677ugly2642ugly2710ugly31ugly36ugly20ugly44open-sd3
  :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd3) (not (closed-sd3))))
 (:action
  ugly2648ugly2687ugly2696ugly2654ugly2683ugly2700ugly27ugly69ugly5ugly3wait_cb3
  :parameters () :precondition (and (do-normal) (not-updated-cb3)) :effect
  (and (not-closed-cb3) (updated-cb3) (not (closed-cb3))
       (not (not-updated-cb3))))
 (:action
  ugly2649ugly2669ugly2663ugly2708ugly2675ugly2711ugly47ugly32ugly48ugly58close_sd2-condeff0-no-2
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action
  ugly2650ugly2678ugly2656ugly2707ugly2674ugly2709ugly68ugly16ugly73ugly49close_sd4-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd3) (closed-sd2) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2651ugly2652ugly2672ugly2689ugly2651ugly2652ugly35ugly33ugly55ugly51wait_cb1-endof-condeffs
  :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action
  ugly2652ugly2672ugly2689ugly2651ugly2652ugly2672ugly52ugly54ugly31ugly36close_sd3-condeff0-no-0
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action
  ugly2653ugly2699ugly2712ugly2640ugly2686ugly2666ugly66ugly53ugly39ugly57close_cb2
  :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action
  ugly2654ugly2683ugly2700ugly2664ugly2643ugly2639ugly16ugly73ugly49ugly13wait_cb1
  :parameters () :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action
  ugly2655ugly2697ugly2690ugly2682ugly2706ugly2701ugly24ugly72ugly6ugly7open-sd1
  :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd1) (not (closed-sd1))))
 (:action
  ugly2656ugly2707ugly2674ugly2709ugly2705ugly2691ugly58ugly62ugly17ugly28close_cb4
  :parameters () :precondition
  (and (do-normal) (not-closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb4) (not-updated-cb4) (not (not-closed-cb4))
       (not (updated-cb4))))
 (:action
  ugly2657ugly2704ugly2646ugly2702ugly2660ugly2671ugly61ugly25ugly50ugly64close_sd1-endof-condeffs
  :parameters () :precondition (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action
  ugly2658ugly2658ugly2658ugly2658ugly2658ugly2658ugly21ugly2ugly75ugly35wait_cb1-condeff1-no-2
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd2))
  :effect (and (done-1)))
 (:action
  ugly2659ugly2681ugly2679ugly2648ugly2687ugly2696ugly17ugly28ugly24ugly72close_sd8-endof-condeffs
  :parameters () :precondition (and (do-close_sd8-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))))
 (:action
  ugly2660ugly2671ugly2698ugly2649ugly2669ugly2663ugly71ugly18ugly60ugly19close_sd1-condeff0-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action
  ugly2661ugly2685ugly2650ugly2678ugly2656ugly2707ugly37ugly14ugly77ugly65close_sd2-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd3) (closed-sd4) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2662ugly2714ugly2645ugly2647ugly2688ugly2665ugly40ugly12ugly21ugly2wait_cb4-endof-condeffs
  :parameters () :precondition (and (do-wait_cb4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb4-condeffs)) (not (done-0))))
 (:action
  ugly2663ugly2708ugly2675ugly2711ugly2684ugly2670ugly57ugly26ugly43ugly9close_sd5
  :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action
  ugly2664ugly2643ugly2639ugly2653ugly2699ugly2712ugly3ugly76ugly40ugly12close_sd3-condeff0-no-1
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action
  ugly2665ugly2677ugly2642ugly2710ugly2668ugly2680ugly55ugly51ugly38ugly41close_sd8-condeff0-no-1
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action
  ugly2666ugly2703ugly2644ugly2662ugly2714ugly2645ugly10ugly22ugly8ugly11wait_cb1-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action
  ugly2667ugly2667ugly2667ugly2667ugly2667ugly2667ugly30ugly46ugly61ugly25open-cb2
  :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly2668ugly2680ugly2692ugly2676ugly2713ugly2673ugly1ugly67ugly42ugly37close_sd4-condeff0-no-0
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action
  ugly2669ugly2663ugly2708ugly2675ugly2711ugly2684ugly33ugly55ugly51ugly38open-sd7
  :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd7) (not (closed-sd7))))
 (:action
  ugly2670ugly2694ugly2659ugly2681ugly2679ugly2648ugly50ugly64ugly71ugly18close_sd2-condeff0-no-0
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action
  ugly2671ugly2698ugly2649ugly2669ugly2663ugly2708ugly38ugly41ugly4ugly30open-sd2
  :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd2) (not (closed-sd2))))
 (:action
  ugly2672ugly2689ugly2651ugly2652ugly2672ugly2689ugly14ugly77ugly65ugly59wait_cb4-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action
  ugly2673ugly2638ugly2657ugly2704ugly2646ugly2702ugly23ugly63ugly10ugly22close_sd7-condeff0-yes
  :parameters () :precondition (and (do-close_sd7-condeffs) (closed-cb4))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action
  ugly2674ugly2709ugly2705ugly2691ugly2695ugly2655ugly60ugly19ugly70ugly15close_sd3-endof-condeffs
  :parameters () :precondition (and (do-close_sd3-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))))
 (:action
  ugly2675ugly2711ugly2684ugly2670ugly2694ugly2659ugly44ugly45ugly34ugly1close_sd2-endof-condeffs
  :parameters () :precondition (and (do-close_sd2-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))
       (not (done-1))))
 (:action
  ugly2676ugly2713ugly2673ugly2638ugly2657ugly2704ugly9ugly52ugly54ugly31wait_cb1-condeff2-no-1
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd5))
  :effect (and (done-2)))
 (:action
  ugly2677ugly2642ugly2710ugly2668ugly2680ugly2692ugly39ugly57ugly26ugly43close_sd7-condeff0-no-0
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-cb4))
  :effect (and (done-0)))
 (:action
  ugly2678ugly2656ugly2707ugly2674ugly2709ugly2705ugly54ugly31ugly36ugly20open-sd4
  :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd4) (not (closed-sd4))))
 (:action
  ugly2679ugly2648ugly2687ugly2696ugly2654ugly2683ugly63ugly10ugly22ugly8close_sd6
  :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action
  ugly2680ugly2692ugly2676ugly2713ugly2673ugly2638ugly20ugly44ugly45ugly34close_sd8
  :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action
  ugly2681ugly2679ugly2648ugly2687ugly2696ugly2654ugly46ugly61ugly25ugly50close_sd2-condeff1-no-0
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd8))
  :effect (and (done-1)))
 (:action
  ugly2682ugly2706ugly2701ugly2661ugly2685ugly2650ugly41ugly4ugly30ugly46close_sd2-condeff0-no-1
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action
  ugly2683ugly2700ugly2664ugly2643ugly2639ugly2653ugly62ugly17ugly28ugly24wait_cb4
  :parameters () :precondition (and (do-normal) (not-updated-cb4)) :effect
  (and (not (do-normal)) (do-wait_cb4-condeffs) (updated-cb4)
       (not (not-updated-cb4))))
 (:action
  ugly2684ugly2670ugly2694ugly2659ugly2681ugly2679ugly11ugly29ugly68ugly16wait_cb4-condeff0-yes
  :parameters () :precondition (and (do-wait_cb4-condeffs) (closed-sd7))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action
  ugly2685ugly2650ugly2678ugly2656ugly2707ugly2674ugly72ugly6ugly7ugly47wait_cb1-condeff1-no-1
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd4))
  :effect (and (done-1)))
 (:action
  ugly2686ugly2666ugly2703ugly2644ugly2662ugly2714ugly8ugly11ugly29ugly68close_sd4-condeff0-no-2
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action
  ugly2687ugly2696ugly2654ugly2683ugly2700ugly2664ugly6ugly7ugly47ugly32open-cb4
  :parameters () :precondition
  (and (do-normal) (closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-cb4) (not (closed-cb4))))
 (:action
  ugly2688ugly2665ugly2677ugly2642ugly2710ugly2668ugly43ugly9ugly52ugly54wait_cb1-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd3))
  :effect (and (done-1)))
 (:action
  ugly2689ugly2651ugly2652ugly2672ugly2689ugly2651ugly15ugly23ugly63ugly10close_sd3-condeff0-no-2
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action
  ugly2690ugly2682ugly2706ugly2701ugly2661ugly2685ugly13ugly27ugly69ugly5close_sd8-condeff0-no-0
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd5))
  :effect (and (done-0)))
 (:action
  ugly2691ugly2695ugly2655ugly2697ugly2690ugly2682ugly69ugly5ugly3ugly76open-sd8
  :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd8) (not (closed-sd8))))
 (:action
  ugly2692ugly2676ugly2713ugly2673ugly2638ugly2657ugly67ugly42ugly37ugly14wait_cb2
  :parameters () :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not-closed-cb2) (updated-cb2) (not (closed-cb2))
       (not (not-updated-cb2))))
 (:action
  ugly2693ugly2641ugly2693ugly2641ugly2693ugly2641ugly56ugly66ugly53ugly39close_sd5-endof-condeffs
  :parameters () :precondition (and (do-close_sd5-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))))
 (:action
  ugly2694ugly2659ugly2681ugly2679ugly2648ugly2687ugly59ugly74ugly56ugly66close_sd5-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-sd8) (closed-sd2) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2695ugly2655ugly2697ugly2690ugly2682ugly2706ugly64ugly71ugly18ugly60close_sd3-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd4) (closed-sd2) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2696ugly2654ugly2683ugly2700ugly2664ugly2643ugly2ugly75ugly35ugly33close_sd5-condeff0-no-1
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action
  ugly2697ugly2690ugly2682ugly2706ugly2701ugly2661ugly48ugly58ugly62ugly17wait_cb1-condeff0-yes
  :parameters () :precondition (and (do-wait_cb1-condeffs) (closed-sd1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2698ugly2649ugly2669ugly2663ugly2708ugly2675ugly74ugly56ugly66ugly53close_cb1
  :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action
  ugly2699ugly2712ugly2640ugly2686ugly2666ugly2703ugly7ugly47ugly32ugly48close_sd2
  :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action
  ugly2700ugly2664ugly2643ugly2639ugly2653ugly2699ugly75ugly35ugly33ugly55open-cb1
  :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2701ugly2661ugly2685ugly2650ugly2678ugly2656ugly70ugly15ugly23ugly63close_sd7-endof-condeffs
  :parameters () :precondition (and (do-close_sd7-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))))
 (:action
  ugly2702ugly2660ugly2671ugly2698ugly2649ugly2669ugly26ugly43ugly9ugly52close_sd5-condeff0-no-0
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action
  ugly2703ugly2644ugly2662ugly2714ugly2645ugly2647ugly51ugly38ugly41ugly4wait_cb1-condeff1-yes
  :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd3) (closed-sd4) (closed-sd2)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2704ugly2646ugly2702ugly2660ugly2671ugly2698ugly12ugly21ugly2ugly75wait_cb1-condeff2-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd8))
  :effect (and (done-2)))
 (:action
  ugly2705ugly2691ugly2695ugly2655ugly2697ugly2690ugly45ugly34ugly1ugly67open-sd6
  :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd6) (not (closed-sd6))))
 (:action
  ugly2706ugly2701ugly2661ugly2685ugly2650ugly2678ugly19ugly70ugly15ugly23close_sd2-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd8) (closed-sd5) (closed-cb1)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2707ugly2674ugly2709ugly2705ugly2691ugly2695ugly18ugly60ugly19ugly70close_sd4-condeff0-no-1
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action
  ugly2708ugly2675ugly2711ugly2684ugly2670ugly2694ugly22ugly8ugly11ugly29close_sd1
  :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action
  ugly2709ugly2705ugly2691ugly2695ugly2655ugly2697ugly53ugly39ugly57ugly26open-sd5
  :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd5) (not (closed-sd5))))
 (:action
  ugly2710ugly2668ugly2680ugly2692ugly2676ugly2713ugly36ugly20ugly44ugly45wait_cb1-condeff2-yes
  :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd8) (closed-sd5) (closed-sd2)) :effect
  (and (done-2) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2711ugly2684ugly2670ugly2694ugly2659ugly2681ugly42ugly37ugly14ugly77close_sd2-condeff1-no-1
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd5))
  :effect (and (done-1)))
 (:action
  ugly2712ugly2640ugly2686ugly2666ugly2703ugly2644ugly25ugly50ugly64ugly71close_sd3
  :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action
  ugly2713ugly2673ugly2638ugly2657ugly2704ugly2646ugly65ugly59ugly74ugly56close_sd2-condeff1-no-2
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-cb1))
  :effect (and (done-1)))
 (:action
  ugly2714ugly2645ugly2647ugly2688ugly2665ugly2677ugly5ugly3ugly76ugly40close_sd4
  :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))) 