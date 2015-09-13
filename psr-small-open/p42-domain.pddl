
(define (domain grounded-strips-psr) (:requirements :strips :action-costs)
 (:predicates (not-closed-sd8) (updated-cb2) (updated-cb1) (closed-sd3)
  (do-close_sd5-condeffs) (not-closed-cb3) (closed-cb2) (not-closed-sd6)
  (not-closed-sd9) (not-updated-cb3) (goal-reached) (done-1) (not-closed-cb1)
  (closed-sd11) (closed-sd10) (not-closed-sd10) (do-wait_cb2-condeffs)
  (not-closed-sd11) (not-closed-sd2) (closed-cb1) (not-updated-cb1) (done-0)
  (closed-sd7) (not-closed-sd1) (not-closed-cb2) (not-updated-cb2) (closed-sd5)
  (done-3) (closed-sd9) (closed-sd8) (do-close_sd1-condeffs) (not-closed-sd5)
  (closed-sd1) (closed-sd2) (not-closed-sd3) (updated-cb3) (not-closed-sd7)
  (closed-cb3) (not-closed-sd4) (do-close_sd8-condeffs) (do-close_sd2-condeffs)
  (do-wait_cb1-condeffs) (do-close_sd7-condeffs) (done-2) (do-normal)
  (closed-sd6) (closed-sd4))
 (:functions (total-cost) - number)
 (:action
  ugly2480ugly2486ugly2519ugly2511ugly2504ugly2522ugly86ugly5ugly3ugly76close_sd1-condeff0-no-1
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action
  ugly2481ugly2541ugly2570ugly2569ugly2481ugly2541ugly91ugly27ugly12ugly24wait_cb2-condeff2-yes
  :parameters () :precondition (and (do-wait_cb2-condeffs) (closed-sd7))
  :effect (and (done-2) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly2482ugly2547ugly2525ugly2530ugly2517ugly2488ugly79ugly62ugly46ugly48wait_cb1-condeff3-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd5))
  :effect (and (done-3)))
 (:action
  ugly2483ugly2529ugly2528ugly2571ugly2562ugly2540ugly67ugly56ugly77ugly80close_sd4
  :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action
  ugly2484ugly2508ugly2548ugly2559ugly2490ugly2523ugly13ugly31ugly66ugly45close_sd3
  :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action
  ugly2485ugly2502ugly2520ugly2503ugly2573ugly2516ugly77ugly80ugly22ugly39close_sd7-condeff0-no-1
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action
  ugly2486ugly2519ugly2511ugly2504ugly2522ugly2565ugly59ugly34ugly69ugly67close_sd1
  :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action
  ugly2487ugly2500ugly2497ugly2567ugly2484ugly2508ugly69ugly67ugly56ugly77wait_cb2-condeff3-yes
  :parameters () :precondition (and (do-wait_cb2-condeffs) (closed-sd8))
  :effect (and (done-3) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly2488ugly2558ugly2531ugly2495ugly2510ugly2524ugly53ugly63ugly19ugly70close_cb1
  :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action
  ugly2489ugly2536ugly2552ugly2539ugly2480ugly2486ugly40ugly73ugly72ugly53close_sd1-condeff2-yes
  :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd2) (closed-cb2)) :effect
  (and (done-2) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly2490ugly2523ugly2492ugly2534ugly2553ugly2521ugly28ugly61ugly10ugly13close_cb2
  :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action
  ugly2491ugly2506ugly2482ugly2547ugly2525ugly2530ugly38ugly60ugly43ugly89close_sd7-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd1) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2492ugly2534ugly2553ugly2521ugly2507ugly2494ugly8ugly92ugly47ugly51close_sd2-condeff1-no-1
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-cb2))
  :effect (and (done-1)))
 (:action
  ugly2493ugly2564ugly2543ugly2498ugly2483ugly2529ugly49ugly87ugly58ugly2wait_cb1-condeff2-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd2))
  :effect (and (done-2)))
 (:action
  ugly2494ugly2487ugly2500ugly2497ugly2567ugly2484ugly29ugly37ugly38ugly60open-sd1
  :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd1) (not (closed-sd1))))
 (:action
  ugly2495ugly2510ugly2524ugly2532ugly2527ugly2537ugly22ugly39ugly11ugly54close_sd1-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd7) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2496ugly2533ugly2513ugly2566ugly2544ugly2545ugly20ugly44ugly71ugly40wait_cb2-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action
  ugly2497ugly2567ugly2484ugly2508ugly2548ugly2559ugly11ugly54ugly57ugly85wait_cb1-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action
  ugly2498ugly2483ugly2529ugly2528ugly2571ugly2562ugly61ugly10ugly13ugly31close_sd1-condeff3-yes
  :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd5) (closed-cb2)) :effect
  (and (done-3) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly2499ugly2542ugly2568ugly2560ugly2550ugly2561ugly26ugly42ugly94ugly50reach-goal-3
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb2)
       (closed-sd1))
  :effect (and (goal-reached)))
 (:action
  ugly2500ugly2497ugly2567ugly2484ugly2508ugly2548ugly80ugly22ugly39ugly11close_sd6
  :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action
  ugly2501ugly2518ugly2572ugly2555ugly2549ugly2557ugly36ugly75ugly16ugly6close_sd9
  :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd9) (not (not-closed-sd9))))
 (:action
  ugly2502ugly2520ugly2503ugly2573ugly2516ugly2556ugly47ugly51ugly28ugly61close_sd7-condeff0-no-0
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action
  ugly2503ugly2573ugly2516ugly2556ugly2526ugly2514ugly10ugly13ugly31ugly66open-cb2
  :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly2504ugly2522ugly2565ugly2538ugly2496ugly2533ugly34ugly69ugly67ugly56wait_cb2-condeff1-no-1
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd1))
  :effect (and (done-1)))
 (:action
  ugly2505ugly2485ugly2502ugly2520ugly2503ugly2573ugly37ugly38ugly60ugly43wait_cb1-condeff1-no-1
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1))
  :effect (and (done-1)))
 (:action
  ugly2506ugly2482ugly2547ugly2525ugly2530ugly2517ugly9ugly49ugly87ugly58reach-goal-1
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb2)
       (closed-sd1) (closed-cb1))
  :effect (and (goal-reached)))
 (:action
  ugly2507ugly2494ugly2487ugly2500ugly2497ugly2567ugly5ugly3ugly76ugly59open-sd10
  :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd10) (not (closed-sd10))))
 (:action
  ugly2508ugly2548ugly2559ugly2490ugly2523ugly2492ugly55ugly81ugly17ugly25close_sd1-condeff2-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd2))
  :effect (and (done-2)))
 (:action
  ugly2509ugly2563ugly2509ugly2563ugly2509ugly2563ugly30ugly21ugly8ugly92close_sd8
  :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action
  ugly2510ugly2524ugly2532ugly2527ugly2537ugly2501ugly39ugly11ugly54ugly57wait_cb1-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action
  ugly2511ugly2504ugly2522ugly2565ugly2538ugly2496ugly54ugly57ugly85ugly86close_sd11
  :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd11) (not (not-closed-sd11))))
 (:action
  ugly2512ugly2535ugly2554ugly2493ugly2564ugly2543ugly19ugly70ugly32ugly18close_sd5
  :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action
  ugly2513ugly2566ugly2544ugly2545ugly2499ugly2542ugly89ugly9ugly49ugly87close_sd1-condeff0-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action
  ugly2514ugly2489ugly2536ugly2552ugly2539ugly2480ugly7ugly79ugly62ugly46close_sd8-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd1) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2515ugly2512ugly2535ugly2554ugly2493ugly2564ugly64ugly41ugly83ugly36wait_cb2-condeff1-yes
  :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd5) (closed-sd1)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly2516ugly2556ugly2526ugly2514ugly2489ugly2536ugly73ugly72ugly53ugly63close_sd5-condeff1-no-0
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd1))
  :effect (and (done-1)))
 (:action
  ugly2517ugly2488ugly2558ugly2531ugly2495ugly2510ugly45ugly55ugly81ugly17close_sd2-condeff0-no-0
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action
  ugly2518ugly2572ugly2555ugly2549ugly2557ugly2515ugly33ugly68ugly90ugly14close_sd2
  :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action
  ugly2519ugly2511ugly2504ugly2522ugly2565ugly2538ugly17ugly25ugly64ugly41wait_cb1
  :parameters () :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action
  ugly2520ugly2503ugly2573ugly2516ugly2556ugly2526ugly35ugly20ugly44ugly71open-sd4
  :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd4) (not (closed-sd4))))
 (:action
  ugly2521ugly2507ugly2494ugly2487ugly2500ugly2497ugly88ugly35ugly20ugly44wait_cb2
  :parameters () :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action
  ugly2522ugly2565ugly2538ugly2496ugly2533ugly2513ugly87ugly58ugly2ugly91close_sd2-condeff1-no-0
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd1))
  :effect (and (done-1)))
 (:action
  ugly2523ugly2492ugly2534ugly2553ugly2521ugly2507ugly15ugly29ugly37ugly38close_sd1-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd8) (closed-cb1)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2524ugly2532ugly2527ugly2537ugly2501ugly2518ugly93ugly84ugly33ugly68wait_cb1-condeff2-yes
  :parameters () :precondition (and (do-wait_cb1-condeffs) (closed-sd2))
  :effect (and (done-2) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2525ugly2530ugly2517ugly2488ugly2558ugly2531ugly16ugly6ugly7ugly79close_sd1-condeff1-no-1
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1))
  :effect (and (done-1)))
 (:action
  ugly2526ugly2514ugly2489ugly2536ugly2552ugly2539ugly1ugly74ugly1ugly74reach-goal-0
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd1))
  :effect (and (goal-reached)))
 (:action
  ugly2527ugly2537ugly2501ugly2518ugly2572ugly2555ugly70ugly32ugly18ugly15close_sd2-endof-condeffs
  :parameters () :precondition (and (do-close_sd2-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))
       (not (done-1))))
 (:action
  ugly2528ugly2571ugly2562ugly2540ugly2546ugly2551ugly12ugly24ugly78ugly26open-sd2
  :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd2) (not (closed-sd2))))
 (:action
  ugly2529ugly2528ugly2571ugly2562ugly2540ugly2546ugly72ugly53ugly63ugly19wait_cb3
  :parameters () :precondition (and (do-normal) (not-updated-cb3)) :effect
  (and (not-closed-cb3) (updated-cb3) (not (closed-cb3))
       (not (not-updated-cb3))))
 (:action
  ugly2530ugly2517ugly2488ugly2558ugly2531ugly2495ugly31ugly66ugly45ugly55wait_cb2-condeff3-no-0
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd8))
  :effect (and (done-3)))
 (:action
  ugly2531ugly2495ugly2510ugly2524ugly2532ugly2527ugly58ugly2ugly91ugly27close_sd7-condeff1-yes
  :parameters () :precondition (and (do-close_sd7-condeffs) (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly2532ugly2527ugly2537ugly2501ugly2518ugly2572ugly76ugly59ugly34ugly69close_sd1-condeff3-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd5))
  :effect (and (done-3)))
 (:action
  ugly2533ugly2513ugly2566ugly2544ugly2545ugly2499ugly63ugly19ugly70ugly32close_sd5-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-sd1) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly2534ugly2553ugly2521ugly2507ugly2494ugly2487ugly21ugly8ugly92ugly47close_sd8-condeff1-yes
  :parameters () :precondition (and (do-close_sd8-condeffs) (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly2535ugly2554ugly2493ugly2564ugly2543ugly2498ugly4ugly30ugly21ugly8wait_cb1-condeff3-yes
  :parameters () :precondition (and (do-wait_cb1-condeffs) (closed-sd5))
  :effect (and (done-3) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2536ugly2552ugly2539ugly2480ugly2486ugly2519ugly32ugly18ugly15ugly29open-sd7
  :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd7) (not (closed-sd7))))
 (:action
  ugly2537ugly2501ugly2518ugly2572ugly2555ugly2549ugly78ugly26ugly42ugly94close_sd8-condeff0-no-1
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action
  ugly2538ugly2496ugly2533ugly2513ugly2566ugly2544ugly66ugly45ugly55ugly81close_sd5-condeff0-no-0
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action
  ugly2539ugly2480ugly2486ugly2519ugly2511ugly2504ugly43ugly89ugly9ugly49wait_cb1-condeff1-yes
  :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd8) (closed-sd1)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2540ugly2546ugly2551ugly2491ugly2506ugly2482ugly68ugly90ugly14ugly23close_sd1-condeff2-no-1
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb2))
  :effect (and (done-2)))
 (:action
  ugly2541ugly2570ugly2569ugly2481ugly2541ugly2570ugly90ugly14ugly23ugly65close_sd8-condeff1-no-0
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-cb2))
  :effect (and (done-1)))
 (:action
  ugly2542ugly2568ugly2560ugly2550ugly2561ugly2505ugly6ugly7ugly79ugly62open-cb1
  :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2543ugly2498ugly2483ugly2529ugly2528ugly2571ugly83ugly36ugly75ugly16close_sd10
  :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd10) (not (not-closed-sd10))))
 (:action
  ugly2544ugly2545ugly2499ugly2542ugly2568ugly2560ugly71ugly40ugly73ugly72close_sd8-endof-condeffs
  :parameters () :precondition (and (do-close_sd8-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))
       (not (done-1))))
 (:action
  ugly2545ugly2499ugly2542ugly2568ugly2560ugly2550ugly82ugly82ugly82ugly82wait_cb2-endof-condeffs
  :parameters () :precondition
  (and (do-wait_cb2-condeffs) (done-0) (done-1) (done-2) (done-3)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2)) (not (done-3))))
 (:action
  ugly2546ugly2551ugly2491ugly2506ugly2482ugly2547ugly46ugly48ugly93ugly84open-sd11
  :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd11) (not (closed-sd11))))
 (:action
  ugly2547ugly2525ugly2530ugly2517ugly2488ugly2558ugly52ugly88ugly35ugly20open-cb3
  :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly2548ugly2559ugly2490ugly2523ugly2492ugly2534ugly74ugly1ugly74ugly1wait_cb2-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action
  ugly2549ugly2557ugly2515ugly2512ugly2535ugly2554ugly14ugly23ugly65ugly52wait_cb1-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd8))
  :effect (and (done-1)))
 (:action
  ugly2550ugly2561ugly2505ugly2485ugly2502ugly2520ugly24ugly78ugly26ugly42wait_cb1-endof-condeffs
  :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0) (done-1) (done-2) (done-3)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2)) (not (done-3))))
 (:action
  ugly2551ugly2491ugly2506ugly2482ugly2547ugly2525ugly51ugly28ugly61ugly10close_sd7-condeff1-no-0
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-cb2))
  :effect (and (done-1)))
 (:action
  ugly2552ugly2539ugly2480ugly2486ugly2519ugly2511ugly25ugly64ugly41ugly83open-sd8
  :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd8) (not (closed-sd8))))
 (:action
  ugly2553ugly2521ugly2507ugly2494ugly2487ugly2500ugly18ugly15ugly29ugly37open-sd6
  :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd6) (not (closed-sd6))))
 (:action
  ugly2554ugly2493ugly2564ugly2543ugly2498ugly2483ugly50ugly4ugly30ugly21close_sd7
  :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action
  ugly2555ugly2549ugly2557ugly2515ugly2512ugly2535ugly75ugly16ugly6ugly7wait_cb2-condeff2-no-0
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd7))
  :effect (and (done-2)))
 (:action
  ugly2556ugly2526ugly2514ugly2489ugly2536ugly2552ugly60ugly43ugly89ugly9close_sd8-condeff0-no-0
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action
  ugly2557ugly2515ugly2512ugly2535ugly2554ugly2493ugly85ugly86ugly5ugly3wait_cb2-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd5))
  :effect (and (done-1)))
 (:action
  ugly2558ugly2531ugly2495ugly2510ugly2524ugly2532ugly48ugly93ugly84ugly33close_sd1-condeff3-no-1
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb2))
  :effect (and (done-3)))
 (:action
  ugly2559ugly2490ugly2523ugly2492ugly2534ugly2553ugly42ugly94ugly50ugly4close_cb3
  :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action
  ugly2560ugly2550ugly2561ugly2505ugly2485ugly2502ugly41ugly83ugly36ugly75close_sd5-condeff0-yes
  :parameters () :precondition (and (do-close_sd5-condeffs) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2561ugly2505ugly2485ugly2502ugly2520ugly2503ugly94ugly50ugly4ugly30close_sd5-endof-condeffs
  :parameters () :precondition (and (do-close_sd5-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))
       (not (done-1))))
 (:action
  ugly2562ugly2540ugly2546ugly2551ugly2491ugly2506ugly3ugly76ugly59ugly34close_sd1-endof-condeffs
  :parameters () :precondition
  (and (do-close_sd1-condeffs) (done-0) (done-1) (done-2) (done-3)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2)) (not (done-3))))
 (:action
  ugly2563ugly2509ugly2563ugly2509ugly2563ugly2509ugly84ugly33ugly68ugly90close_sd7-endof-condeffs
  :parameters () :precondition (and (do-close_sd7-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))
       (not (done-1))))
 (:action
  ugly2564ugly2543ugly2498ugly2483ugly2529ugly2528ugly92ugly47ugly51ugly28close_sd1-condeff1-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd8))
  :effect (and (done-1)))
 (:action
  ugly2565ugly2538ugly2496ugly2533ugly2513ugly2566ugly65ugly52ugly88ugly35close_sd5-condeff1-no-1
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-cb2))
  :effect (and (done-1)))
 (:action
  ugly2566ugly2544ugly2545ugly2499ugly2542ugly2568ugly81ugly17ugly25ugly64open-sd3
  :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd3) (not (closed-sd3))))
 (:action
  ugly2567ugly2484ugly2508ugly2548ugly2559ugly2490ugly44ugly71ugly40ugly73wait_cb2-condeff0-yes
  :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd2) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly2568ugly2560ugly2550ugly2561ugly2505ugly2485ugly23ugly65ugly52ugly88open-sd9
  :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd9) (not (closed-sd9))))
 (:action
  ugly2569ugly2481ugly2541ugly2570ugly2569ugly2481ugly62ugly46ugly48ugly93wait_cb1-condeff0-yes
  :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd7) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2570ugly2569ugly2481ugly2541ugly2570ugly2569ugly2ugly91ugly27ugly12close_sd2-condeff0-yes
  :parameters () :precondition (and (do-close_sd2-condeffs) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2571ugly2562ugly2540ugly2546ugly2551ugly2491ugly27ugly12ugly24ugly78close_sd2-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd1) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly2572ugly2555ugly2549ugly2557ugly2515ugly2512ugly56ugly77ugly80ugly22open-sd5
  :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd5) (not (closed-sd5))))
 (:action
  ugly2573ugly2516ugly2556ugly2526ugly2514ugly2489ugly57ugly85ugly86ugly5reach-goal-2
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb2))
  :effect (and (goal-reached)))) 