
(define (domain grounded-strips-psr) (:requirements :strips :action-costs)
 (:predicates (updated-cb2) (closed-cb1) (not-closed-sd9) (not-closed-cb2)
  (not-closed-cb3) (not-closed-sd12) (closed-sd11) (not-updated-cb3)
  (do-wait_cb3-condeffs) (not-closed-sd5) (do-close_sd16-condeffs)
  (closed-sd17) (not-closed-sd7) (closed-sd16) (closed-sd10) (not-closed-sd8)
  (not-closed-sd16) (updated-cb1) (not-closed-sd13) (closed-sd12)
  (not-closed-sd15) (not-closed-sd14) (closed-cb2) (not-closed-sd10)
  (closed-sd14) (closed-sd13) (not-closed-sd3) (closed-cb3) (closed-sd4)
  (closed-sd7) (do-normal) (closed-sd3) (do-close_sd15-condeffs) (closed-sd15)
  (not-closed-sd11) (not-closed-sd6) (not-closed-cb1) (closed-sd1) (closed-sd9)
  (not-updated-cb2) (not-closed-sd1) (not-closed-sd17) (closed-sd5)
  (closed-sd2) (closed-sd8) (not-updated-cb1) (not-closed-sd2) (closed-sd6)
  (updated-cb3) (done-0) (not-closed-sd4))
 (:functions (total-cost) - number)
 (:action
  ugly2425ugly2428ugly2468ugly2452ugly2475ugly37ugly20ugly16ugly28close_sd16
  :parameters () :precondition
  (and (do-normal) (not-closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd16-condeffs) (closed-sd16)
       (not (not-closed-sd16))))
 (:action
  ugly2426ugly2472ugly2432ugly2470ugly2478ugly45ugly4ugly29ugly48close_cb1
  :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action
  ugly2427ugly2458ugly2438ugly2449ugly2435ugly19ugly33ugly49ugly9wait_cb1
  :parameters () :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not-closed-cb1) (updated-cb1) (not (closed-cb1))
       (not (not-updated-cb1))))
 (:action
  ugly2428ugly2468ugly2452ugly2475ugly2461ugly30ugly5ugly14ugly52open-sd7
  :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd7) (not (closed-sd7))))
 (:action
  ugly2429ugly2451ugly2436ugly2425ugly2428ugly44ugly10ugly11ugly19open-sd10
  :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd10) (not (closed-sd10))))
 (:action
  ugly2430ugly2476ugly2445ugly2459ugly2433ugly5ugly14ugly52ugly36close_cb3
  :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action
  ugly2431ugly2463ugly2465ugly2467ugly2442ugly42ugly17ugly35ugly54open-sd9
  :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd9) (not (closed-sd9))))
 (:action
  ugly2432ugly2470ugly2478ugly2469ugly2456ugly40ugly31ugly43ugly1open-sd6
  :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd6) (not (closed-sd6))))
 (:action
  ugly2433ugly2429ugly2451ugly2436ugly2425ugly4ugly29ugly48ugly25open-sd2
  :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd2) (not (closed-sd2))))
 (:action
  ugly2434ugly2446ugly2448ugly2477ugly2479ugly29ugly48ugly25ugly41close_sd15
  :parameters () :precondition
  (and (do-normal) (not-closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd15-condeffs) (closed-sd15)
       (not (not-closed-sd15))))
 (:action
  ugly2435ugly2443ugly2440ugly2474ugly2450ugly10ugly11ugly19ugly33wait_cb3
  :parameters () :precondition (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action
  ugly2436ugly2425ugly2428ugly2468ugly2452ugly51ugly13ugly53ugly50open-sd17
  :parameters () :precondition
  (and (do-normal) (closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd17) (not (closed-sd17))))
 (:action
  ugly2437ugly2441ugly2431ugly2463ugly2465ugly43ugly1ugly37ugly20close_sd9
  :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd9) (not (not-closed-sd9))))
 (:action
  ugly2438ugly2449ugly2435ugly2443ugly2440ugly50ugly26ugly51ugly13wait_cb3-endof-condeffs
  :parameters () :precondition (and (do-wait_cb3-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0))))
 (:action
  ugly2439ugly2447ugly2455ugly2430ugly2476ugly21ugly3ugly12ugly6open-sd11
  :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd11) (not (closed-sd11))))
 (:action
  ugly2440ugly2474ugly2450ugly2434ugly2446ugly24ugly21ugly3ugly12close_sd16-endof-condeffs
  :parameters () :precondition (and (do-close_sd16-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd16-condeffs)) (not (done-0))))
 (:action
  ugly2441ugly2431ugly2463ugly2465ugly2467ugly18ugly27ugly44ugly10close_sd15-endof-condeffs
  :parameters () :precondition (and (do-close_sd15-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd15-condeffs)) (not (done-0))))
 (:action
  ugly2442ugly2466ugly2427ugly2458ugly2438ugly25ugly41ugly7ugly40open-sd12
  :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd12) (not (closed-sd12))))
 (:action
  ugly2443ugly2440ugly2474ugly2450ugly2434ugly22ugly46ugly8ugly15close_sd6
  :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action
  ugly2444ugly2426ugly2472ugly2432ugly2470ugly54ugly34ugly24ugly21close_sd16-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd16-condeffs) (closed-sd15) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly2445ugly2459ugly2433ugly2429ugly2451ugly12ugly6ugly32ugly39close_sd7
  :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd7) (not (not-closed-sd7))))
 (:action
  ugly2446ugly2448ugly2477ugly2479ugly2453ugly13ugly53ugly50ugly26wait_cb3-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd16))
  :effect (and (done-0)))
 (:action
  ugly2447ugly2455ugly2430ugly2476ugly2445ugly35ugly54ugly34ugly24close_sd2
  :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action
  ugly2448ugly2477ugly2479ugly2453ugly2437ugly17ugly35ugly54ugly34close_cb2
  :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action
  ugly2449ugly2435ugly2443ugly2440ugly2474ugly26ugly51ugly13ugly53wait_cb3-condeff0-yes
  :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd16) (closed-sd15)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly2450ugly2434ugly2446ugly2448ugly2477ugly55ugly45ugly4ugly29close_sd3
  :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action
  ugly2451ugly2436ugly2425ugly2428ugly2468ugly28ugly2ugly38ugly22close_sd14
  :parameters () :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd14) (not (not-closed-sd14))))
 (:action
  ugly2452ugly2475ugly2461ugly2454ugly2471ugly15ugly18ugly27ugly44close_sd15-condeff0-no-1
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action
  ugly2453ugly2437ugly2441ugly2431ugly2463ugly41ugly7ugly40ugly31open-cb3
  :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly2454ugly2471ugly2439ugly2447ugly2455ugly6ugly32ugly39ugly47open-sd1
  :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd1) (not (closed-sd1))))
 (:action
  ugly2455ugly2430ugly2476ugly2445ugly2459ugly9ugly55ugly45ugly4open-sd14
  :parameters () :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd14) (not (closed-sd14))))
 (:action
  ugly2456ugly2464ugly2457ugly2444ugly2426ugly48ugly25ugly41ugly7open-sd3
  :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd3) (not (closed-sd3))))
 (:action
  ugly2457ugly2444ugly2426ugly2472ugly2432ugly46ugly8ugly15ugly18open-sd16
  :parameters () :precondition
  (and (do-normal) (closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd16) (not (closed-sd16))))
 (:action
  ugly2458ugly2438ugly2449ugly2435ugly2443ugly16ugly28ugly2ugly38close_sd1
  :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd1) (not (not-closed-sd1))))
 (:action
  ugly2459ugly2433ugly2429ugly2451ugly2436ugly1ugly37ugly20ugly16open-sd15
  :parameters () :precondition
  (and (do-normal) (closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd15) (not (closed-sd15))))
 (:action
  ugly2460ugly2473ugly2462ugly2460ugly2473ugly38ugly22ugly46ugly8close_sd10
  :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd10) (not (not-closed-sd10))))
 (:action
  ugly2461ugly2454ugly2471ugly2439ugly2447ugly31ugly43ugly1ugly37close_sd4
  :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action
  ugly2462ugly2460ugly2473ugly2462ugly2460ugly49ugly9ugly55ugly45close_sd16-condeff0-no-0
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-sd15))
  :effect (and (done-0)))
 (:action
  ugly2463ugly2465ugly2467ugly2442ugly2466ugly3ugly12ugly6ugly32open-sd4
  :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd4) (not (closed-sd4))))
 (:action
  ugly2464ugly2457ugly2444ugly2426ugly2472ugly8ugly15ugly18ugly27open-cb2
  :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly2465ugly2467ugly2442ugly2466ugly2427ugly34ugly24ugly21ugly3close_sd13
  :parameters () :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd13) (not (not-closed-sd13))))
 (:action
  ugly2466ugly2427ugly2458ugly2438ugly2449ugly11ugly19ugly33ugly49close_sd15-condeff0-no-0
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-sd16))
  :effect (and (done-0)))
 (:action
  ugly2467ugly2442ugly2466ugly2427ugly2458ugly14ugly52ugly36ugly23open-sd13
  :parameters () :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd13) (not (closed-sd13))))
 (:action
  ugly2468ugly2452ugly2475ugly2461ugly2454ugly47ugly42ugly17ugly35wait_cb2
  :parameters () :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not-closed-cb2) (updated-cb2) (not (closed-cb2))
       (not (not-updated-cb2))))
 (:action
  ugly2469ugly2456ugly2464ugly2457ugly2444ugly2ugly38ugly22ugly46close_sd15-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd15-condeffs) (closed-sd16) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly2470ugly2478ugly2469ugly2456ugly2464ugly33ugly49ugly9ugly55open-cb1
  :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2471ugly2439ugly2447ugly2455ugly2430ugly52ugly36ugly23ugly30close_sd16-condeff0-no-1
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action
  ugly2472ugly2432ugly2470ugly2478ugly2469ugly32ugly39ugly47ugly42close_sd8
  :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd8) (not (not-closed-sd8))))
 (:action
  ugly2473ugly2462ugly2460ugly2473ugly2462ugly36ugly23ugly30ugly5close_sd11
  :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd11) (not (not-closed-sd11))))
 (:action
  ugly2474ugly2450ugly2434ugly2446ugly2448ugly53ugly50ugly26ugly51close_sd12
  :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd12) (not (not-closed-sd12))))
 (:action
  ugly2475ugly2461ugly2454ugly2471ugly2439ugly23ugly30ugly5ugly14wait_cb3-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd15))
  :effect (and (done-0)))
 (:action
  ugly2476ugly2445ugly2459ugly2433ugly2429ugly27ugly44ugly10ugly11close_sd5
  :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action
  ugly2477ugly2479ugly2453ugly2437ugly2441ugly7ugly40ugly31ugly43close_sd17
  :parameters () :precondition
  (and (do-normal) (not-closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd17) (not (not-closed-sd17))))
 (:action
  ugly2478ugly2469ugly2456ugly2464ugly2457ugly20ugly16ugly28ugly2open-sd5
  :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd5) (not (closed-sd5))))
 (:action
  ugly2479ugly2453ugly2437ugly2441ugly2431ugly39ugly47ugly42ugly17open-sd8
  :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd8) (not (closed-sd8))))) 