
(define (domain grounded-strips-psr) (:requirements :strips :action-costs)
 (:predicates (not-closed-sd6) (goal-reached) (updated-cb5)
  (do-wait_cb4-condeffs) (closed-sd8) (do-wait_cb1-condeffs) (not-closed-sd3)
  (not-updated-cb1) (closed-cb2) (closed-sd6) (not-closed-sd10) (closed-sd11)
  (not-updated-cb2) (done-1) (closed-sd12) (not-closed-cb1) (not-closed-sd1)
  (not-updated-cb3) (not-closed-sd11) (closed-cb1) (not-closed-sd5)
  (updated-cb4) (not-closed-cb3) (closed-sd2) (closed-cb4)
  (do-close_sd7-condeffs) (closed-sd3) (updated-cb2) (do-close_sd12-condeffs)
  (updated-cb1) (closed-sd9) (updated-cb3) (do-close_sd2-condeffs)
  (not-closed-cb5) (not-closed-cb2) (closed-sd7) (not-updated-cb4)
  (do-wait_cb5-condeffs) (closed-sd5) (not-closed-sd7) (do-close_sd1-condeffs)
  (not-closed-sd4) (done-0) (do-normal) (not-closed-sd2)
  (do-close_sd11-condeffs) (not-closed-sd12) (closed-sd1) (not-updated-cb5)
  (closed-cb5) (closed-sd4) (do-close_sd8-condeffs) (do-wait_cb2-condeffs)
  (not-closed-sd9) (not-closed-cb4) (not-closed-sd8) (do-wait_cb3-condeffs)
  (closed-sd10) (do-close_sd6-condeffs) (closed-cb3))
 (:functions (total-cost) - number)
 (:action
  ugly2776ugly2809ugly2853ugly2864ugly2870ugly2818ugly55ugly25ugly60ugly44wait_cb2-endof-condeffs
  :parameters () :precondition (and (do-wait_cb2-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0))))
 (:action
  ugly2777ugly2825ugly2862ugly2861ugly2792ugly2789ugly45ugly8ugly16ugly55close_sd3
  :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action
  ugly2778ugly2829ugly2791ugly2821ugly2803ugly2831ugly36ugly46ugly49ugly88close_sd1-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd12) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2779ugly2866ugly2812ugly2790ugly2786ugly2843ugly85ugly92ugly57ugly96wait_cb3-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action
  ugly2780ugly2788ugly2798ugly2855ugly2867ugly2782ugly69ugly97ugly48ugly3close_sd8-endof-condeffs
  :parameters () :precondition (and (do-close_sd8-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))))
 (:action
  ugly2781ugly2839ugly2833ugly2787ugly2805ugly2834ugly60ugly44ugly91ugly59close_sd1-condeff0-no-1
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action
  ugly2782ugly2844ugly2822ugly2842ugly2784ugly2778ugly54ugly41ugly12ugly83close_sd1-condeff1-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd2))
  :effect (and (done-1)))
 (:action
  ugly2783ugly2808ugly2799ugly2806ugly2807ugly2796ugly26ugly10ugly61ugly71close_sd11
  :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action
  ugly2784ugly2778ugly2829ugly2791ugly2821ugly2803ugly56ugly18ugly87ugly47close_sd2-condeff1-no-1
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-cb5))
  :effect (and (done-1)))
 (:action
  ugly2785ugly2781ugly2839ugly2833ugly2787ugly2805ugly59ugly74ugly90ugly11wait_cb5-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb5-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action
  ugly2786ugly2843ugly2860ugly2802ugly2836ugly2793ugly29ugly94ugly43ugly79open-sd3
  :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd3) (not (closed-sd3))))
 (:action
  ugly2787ugly2805ugly2834ugly2835ugly2783ugly2808ugly24ugly93ugly28ugly67close_sd12-endof-condeffs
  :parameters () :precondition (and (do-close_sd12-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd12-condeffs)) (not (done-0))
       (not (done-1))))
 (:action
  ugly2788ugly2798ugly2855ugly2867ugly2782ugly2844ugly47ugly31ugly73ugly75open-cb4
  :parameters () :precondition
  (and (do-normal) (closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-cb4) (not (closed-cb4))))
 (:action
  ugly2789ugly2820ugly2837ugly2873ugly2816ugly2847ugly39ugly32ugly84ugly13close_sd2-condeff1-no-0
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd1))
  :effect (and (done-1)))
 (:action
  ugly2790ugly2786ugly2843ugly2860ugly2802ugly2836ugly18ugly87ugly47ugly31close_sd1-condeff0-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd12))
  :effect (and (done-0)))
 (:action
  ugly2791ugly2821ugly2803ugly2831ugly2811ugly2780ugly13ugly30ugly2ugly45close_sd11-endof-condeffs
  :parameters () :precondition (and (do-close_sd11-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0))))
 (:action
  ugly2792ugly2789ugly2820ugly2837ugly2873ugly2816ugly72ugly17ugly33ugly24wait_cb1-condeff0-yes
  :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd12) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2793ugly2804ugly2832ugly2815ugly2810ugly2779ugly91ugly59ugly74ugly90close_sd8
  :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action
  ugly2794ugly2824ugly2795ugly2846ugly2817ugly2841ugly38ugly42ugly52ugly21close_sd2-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd1) (closed-cb5)) :effect
  (and (done-1) (not-closed-cb5) (not (closed-cb5))))
 (:action
  ugly2795ugly2846ugly2817ugly2841ugly2813ugly2828ugly48ugly3ugly15ugly69wait_cb1-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd2))
  :effect (and (done-1)))
 (:action
  ugly2796ugly2801ugly2863ugly2869ugly2857ugly2848ugly77ugly27ugly36ugly46open-sd8
  :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd8) (not (closed-sd8))))
 (:action
  ugly2797ugly2856ugly2838ugly2777ugly2825ugly2862ugly86ugly64ugly34ugly80wait_cb4-endof-condeffs
  :parameters () :precondition (and (do-wait_cb4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb4-condeffs)) (not (done-0))))
 (:action
  ugly2798ugly2855ugly2867ugly2782ugly2844ugly2822ugly67ugly68ugly26ugly10open-cb1
  :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2799ugly2806ugly2807ugly2796ugly2801ugly2863ugly94ugly43ugly79ugly54close_cb4
  :parameters () :precondition
  (and (do-normal) (not-closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (closed-cb4) (not-updated-cb4) (not (not-closed-cb4))
       (not (updated-cb4))))
 (:action
  ugly2800ugly2868ugly2785ugly2781ugly2839ugly2833ugly12ugly83ugly76ugly77close_sd2-condeff0-yes
  :parameters () :precondition (and (do-close_sd2-condeffs) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2801ugly2863ugly2869ugly2857ugly2848ugly2852ugly70ugly1ugly4ugly22wait_cb2-condeff0-yes
  :parameters () :precondition (and (do-wait_cb2-condeffs) (closed-sd6))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly2802ugly2836ugly2793ugly2804ugly2832ugly2815ugly35ugly62ugly51ugly37wait_cb5-endof-condeffs
  :parameters () :precondition (and (do-wait_cb5-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-wait_cb5-condeffs)) (not (done-0)) (not (done-1))))
 (:action
  ugly2803ugly2831ugly2811ugly2780ugly2788ugly2798ugly80ugly82ugly23ugly85wait_cb1
  :parameters () :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action
  ugly2804ugly2832ugly2815ugly2810ugly2779ugly2866ugly37ugly39ugly32ugly84close_sd8-condeff0-no-0
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action
  ugly2805ugly2834ugly2835ugly2783ugly2808ugly2799ugly31ugly73ugly75ugly58wait_cb4-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action
  ugly2806ugly2807ugly2796ugly2801ugly2863ugly2869ugly82ugly23ugly85ugly92open-cb5
  :parameters () :precondition
  (and (do-normal) (closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-cb5) (not (closed-cb5))))
 (:action
  ugly2807ugly2796ugly2801ugly2863ugly2869ugly2857ugly73ugly75ugly58ugly81wait_cb1-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action
  ugly2808ugly2799ugly2806ugly2807ugly2796ugly2801ugly88ugly72ugly17ugly33close_sd6-endof-condeffs
  :parameters () :precondition (and (do-close_sd6-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))))
 (:action
  ugly2809ugly2853ugly2864ugly2870ugly2818ugly2830ugly52ugly21ugly29ugly94close_cb2
  :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action
  ugly2810ugly2779ugly2866ugly2812ugly2790ugly2786ugly68ugly26ugly10ugly61close_sd1
  :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action
  ugly2811ugly2780ugly2788ugly2798ugly2855ugly2867ugly7ugly70ugly1ugly4close_sd6-condeff0-yes
  :parameters () :precondition (and (do-close_sd6-condeffs) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly2812ugly2790ugly2786ugly2843ugly2860ugly2802ugly61ugly71ugly5ugly14open-sd1
  :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd1) (not (closed-sd1))))
 (:action
  ugly2813ugly2828ugly2823ugly2859ugly2797ugly2856ugly63ugly65ugly9ugly6close_sd7-endof-condeffs
  :parameters () :precondition (and (do-close_sd7-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))))
 (:action
  ugly2814ugly2826ugly2840ugly2800ugly2868ugly2785ugly6ugly20ugly53ugly63close_sd12-condeff0-no-1
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action
  ugly2815ugly2810ugly2779ugly2866ugly2812ugly2790ugly11ugly35ugly62ugly51wait_cb5-condeff1-yes
  :parameters () :precondition (and (do-wait_cb5-condeffs) (closed-sd12))
  :effect (and (done-1) (not-closed-cb5) (not (closed-cb5))))
 (:action
  ugly2816ugly2847ugly2814ugly2826ugly2840ugly2800ugly93ugly28ugly67ugly68close_sd2
  :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action
  ugly2817ugly2841ugly2813ugly2828ugly2823ugly2859ugly22ugly89ugly66ugly19close_sd11-condeff0-no-0
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-cb4))
  :effect (and (done-0)))
 (:action
  ugly2818ugly2830ugly2827ugly2776ugly2809ugly2853ugly89ugly66ugly19ugly7close_sd4
  :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action
  ugly2819ugly2871ugly2819ugly2871ugly2819ugly2871ugly44ugly91ugly59ugly74wait_cb2-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd6))
  :effect (and (done-0)))
 (:action
  ugly2820ugly2837ugly2873ugly2816ugly2847ugly2814ugly51ugly37ugly39ugly32wait_cb3-condeff0-yes
  :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd8) (closed-sd7)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly2821ugly2803ugly2831ugly2811ugly2780ugly2788ugly23ugly85ugly92ugly57wait_cb1-condeff1-yes
  :parameters () :precondition (and (do-wait_cb1-condeffs) (closed-sd2))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2822ugly2842ugly2784ugly2778ugly2829ugly2791ugly46ugly49ugly88ugly72close_sd7-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd8) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly2823ugly2859ugly2797ugly2856ugly2838ugly2777ugly50ugly40ugly78ugly38close_cb3
  :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action
  ugly2824ugly2795ugly2846ugly2817ugly2841ugly2813ugly53ugly63ugly65ugly9close_sd11-condeff0-yes
  :parameters () :precondition (and (do-close_sd11-condeffs) (closed-cb4))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action
  ugly2825ugly2862ugly2861ugly2792ugly2789ugly2820ugly62ugly51ugly37ugly39close_sd2-endof-condeffs
  :parameters () :precondition (and (do-close_sd2-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))
       (not (done-1))))
 (:action
  ugly2826ugly2840ugly2800ugly2868ugly2785ugly2781ugly64ugly34ugly80ugly82close_sd6-condeff0-no-0
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action
  ugly2827ugly2776ugly2809ugly2853ugly2864ugly2870ugly43ugly79ugly54ugly41close_sd8-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd7) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly2828ugly2823ugly2859ugly2797ugly2856ugly2838ugly2ugly45ugly8ugly16open-sd2
  :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd2) (not (closed-sd2))))
 (:action
  ugly2829ugly2791ugly2821ugly2803ugly2831ugly2811ugly5ugly14ugly56ugly18wait_cb3-endof-condeffs
  :parameters () :precondition (and (do-wait_cb3-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0))))
 (:action
  ugly2830ugly2827ugly2776ugly2809ugly2853ugly2864ugly95ugly50ugly40ugly78wait_cb5-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb5-condeffs) (not-closed-sd12))
  :effect (and (done-1)))
 (:action
  ugly2831ugly2811ugly2780ugly2788ugly2798ugly2855ugly92ugly57ugly96ugly86close_sd12-condeff0-no-0
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action
  ugly2832ugly2815ugly2810ugly2779ugly2866ugly2812ugly15ugly69ugly97ugly48reach-goal-2
  :parameters () :precondition
  (and (do-normal) (updated-cb5) (updated-cb4) (updated-cb3) (updated-cb2)
       (updated-cb1) (closed-cb1) (closed-cb2) (closed-cb4) (closed-cb5)
       (closed-cb3) (closed-sd7) (closed-sd9) (closed-sd10))
  :effect (and (goal-reached)))
 (:action
  ugly2833ugly2787ugly2805ugly2834ugly2835ugly2783ugly33ugly24ugly93ugly28close_sd12-condeff1-no-0
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-cb5))
  :effect (and (done-1)))
 (:action
  ugly2834ugly2835ugly2783ugly2808ugly2799ugly2806ugly32ugly84ugly13ugly30reach-goal-1
  :parameters () :precondition
  (and (do-normal) (updated-cb5) (updated-cb4) (updated-cb3) (updated-cb2)
       (updated-cb1) (closed-cb5) (closed-sd1) (closed-cb2) (closed-cb4)
       (closed-cb1) (closed-cb3) (closed-sd7) (closed-sd9) (closed-sd10))
  :effect (and (goal-reached)))
 (:action
  ugly2835ugly2783ugly2808ugly2799ugly2806ugly2807ugly21ugly29ugly94ugly43wait_cb4
  :parameters () :precondition (and (do-normal) (not-updated-cb4)) :effect
  (and (not (do-normal)) (do-wait_cb4-condeffs) (updated-cb4)
       (not (not-updated-cb4))))
 (:action
  ugly2836ugly2793ugly2804ugly2832ugly2815ugly2810ugly4ugly22ugly89ugly66close_sd7-condeff0-no-1
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action
  ugly2837ugly2873ugly2816ugly2847ugly2814ugly2826ugly65ugly9ugly6ugly20open-sd4
  :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd4) (not (closed-sd4))))
 (:action
  ugly2838ugly2777ugly2825ugly2862ugly2861ugly2792ugly14ugly56ugly18ugly87open-sd10
  :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd10) (not (closed-sd10))))
 (:action
  ugly2839ugly2833ugly2787ugly2805ugly2834ugly2835ugly8ugly16ugly55ugly25open-cb2
  :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly2840ugly2800ugly2868ugly2785ugly2781ugly2839ugly58ugly81ugly95ugly50close_cb5
  :parameters () :precondition
  (and (do-normal) (not-closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (closed-cb5) (not-updated-cb5) (not (not-closed-cb5))
       (not (updated-cb5))))
 (:action
  ugly2841ugly2813ugly2828ugly2823ugly2859ugly2797ugly81ugly95ugly50ugly40close_sd1-endof-condeffs
  :parameters () :precondition (and (do-close_sd1-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))
       (not (done-1))))
 (:action
  ugly2842ugly2784ugly2778ugly2829ugly2791ugly2821ugly28ugly67ugly68ugly26close_sd9
  :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (closed-sd9) (not (not-closed-sd9))))
 (:action
  ugly2843ugly2860ugly2802ugly2836ugly2793ugly2804ugly57ugly96ugly86ugly64wait_cb5-condeff0-yes
  :parameters () :precondition
  (and (do-wait_cb5-condeffs) (closed-sd2) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action
  ugly2844ugly2822ugly2842ugly2784ugly2778ugly2829ugly16ugly55ugly25ugly60close_cb1
  :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action
  ugly2845ugly2872ugly2794ugly2824ugly2795ugly2846ugly42ugly52ugly21ugly29wait_cb1-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd12))
  :effect (and (done-0)))
 (:action
  ugly2846ugly2817ugly2841ugly2813ugly2828ugly2823ugly84ugly13ugly30ugly2open-sd12
  :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd12) (not (closed-sd12))))
 (:action
  ugly2847ugly2814ugly2826ugly2840ugly2800ugly2868ugly10ugly61ugly71ugly5close_sd8-condeff0-no-1
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action
  ugly2848ugly2852ugly2845ugly2872ugly2794ugly2824ugly20ugly53ugly63ugly65close_sd10
  :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (closed-sd10) (not (not-closed-sd10))))
 (:action
  ugly2849ugly2851ugly2849ugly2851ugly2849ugly2851ugly74ugly90ugly11ugly35close_sd12
  :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd12-condeffs) (closed-sd12)
       (not (not-closed-sd12))))
 (:action
  ugly2850ugly2865ugly2854ugly2858ugly2850ugly2865ugly79ugly54ugly41ugly12wait_cb3
  :parameters () :precondition (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action
  ugly2851ugly2849ugly2851ugly2849ugly2851ugly2849ugly76ugly77ugly27ugly36open-sd11
  :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd11) (not (closed-sd11))))
 (:action
  ugly2852ugly2845ugly2872ugly2794ugly2824ugly2795ugly71ugly5ugly14ugly56close_sd7-condeff0-no-0
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action
  ugly2853ugly2864ugly2870ugly2818ugly2830ugly2827ugly1ugly4ugly22ugly89close_sd12-condeff1-yes
  :parameters () :precondition (and (do-close_sd12-condeffs) (closed-cb5))
  :effect (and (done-1) (not-closed-cb5) (not (closed-cb5))))
 (:action
  ugly2854ugly2858ugly2850ugly2865ugly2854ugly2858ugly75ugly58ugly81ugly95open-sd7
  :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd7) (not (closed-sd7))))
 (:action
  ugly2855ugly2867ugly2782ugly2844ugly2822ugly2842ugly9ugly6ugly20ugly53close_sd12-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd12-condeffs) (closed-sd1) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2856ugly2838ugly2777ugly2825ugly2862ugly2861ugly17ugly33ugly24ugly93close_sd2-condeff0-no-0
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action
  ugly2857ugly2848ugly2852ugly2845ugly2872ugly2794ugly49ugly88ugly72ugly17wait_cb5
  :parameters () :precondition (and (do-normal) (not-updated-cb5)) :effect
  (and (not (do-normal)) (do-wait_cb5-condeffs) (updated-cb5)
       (not (not-updated-cb5))))
 (:action
  ugly2858ugly2850ugly2865ugly2854ugly2858ugly2850ugly90ugly11ugly35ugly62open-sd6
  :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd6) (not (closed-sd6))))
 (:action
  ugly2859ugly2797ugly2856ugly2838ugly2777ugly2825ugly87ugly47ugly31ugly73close_sd1-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd2) (closed-cb5)) :effect
  (and (done-1) (not-closed-cb5) (not (closed-cb5))))
 (:action
  ugly2860ugly2802ugly2836ugly2793ugly2804ugly2832ugly40ugly78ugly38ugly42open-sd5
  :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd5) (not (closed-sd5))))
 (:action
  ugly2861ugly2792ugly2789ugly2820ugly2837ugly2873ugly41ugly12ugly83ugly76close_sd1-condeff1-no-1
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb5))
  :effect (and (done-1)))
 (:action
  ugly2862ugly2861ugly2792ugly2789ugly2820ugly2837ugly98ugly98ugly98ugly98wait_cb1-endof-condeffs
  :parameters () :precondition (and (do-wait_cb1-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))))
 (:action
  ugly2863ugly2869ugly2857ugly2848ugly2852ugly2845ugly97ugly48ugly3ugly15close_sd5
  :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action
  ugly2864ugly2870ugly2818ugly2830ugly2827ugly2776ugly34ugly80ugly82ugly23wait_cb3-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action
  ugly2865ugly2854ugly2858ugly2850ugly2865ugly2854ugly83ugly76ugly77ugly27wait_cb5-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb5-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action
  ugly2866ugly2812ugly2790ugly2786ugly2843ugly2860ugly27ugly36ugly46ugly49wait_cb2
  :parameters () :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action
  ugly2867ugly2782ugly2844ugly2822ugly2842ugly2784ugly3ugly15ugly69ugly97open-sd9
  :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd9) (not (closed-sd9))))
 (:action
  ugly2868ugly2785ugly2781ugly2839ugly2833ugly2787ugly30ugly2ugly45ugly8close_sd7
  :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action
  ugly2869ugly2857ugly2848ugly2852ugly2845ugly2872ugly19ugly7ugly70ugly1reach-goal-3
  :parameters () :precondition
  (and (do-normal) (updated-cb5) (updated-cb4) (updated-cb3) (updated-cb2)
       (updated-cb1) (closed-cb5) (closed-sd1) (closed-cb2) (closed-cb4)
       (closed-cb3) (closed-sd7) (closed-sd9) (closed-sd10))
  :effect (and (goal-reached)))
 (:action
  ugly2870ugly2818ugly2830ugly2827ugly2776ugly2809ugly78ugly38ugly42ugly52close_sd6
  :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action
  ugly2871ugly2819ugly2871ugly2819ugly2871ugly2819ugly96ugly86ugly64ugly34wait_cb4-condeff0-yes
  :parameters () :precondition (and (do-wait_cb4-condeffs) (closed-sd11))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action
  ugly2872ugly2794ugly2824ugly2795ugly2846ugly2817ugly66ugly19ugly7ugly70reach-goal-0
  :parameters () :precondition
  (and (do-normal) (updated-cb5) (updated-cb4) (updated-cb3) (updated-cb2)
       (updated-cb1) (closed-cb1) (closed-cb2) (closed-cb4) (closed-sd1)
       (closed-cb3) (closed-sd7) (closed-sd9) (closed-sd10))
  :effect (and (goal-reached)))
 (:action
  ugly2873ugly2816ugly2847ugly2814ugly2826ugly2840ugly25ugly60ugly44ugly91open-cb3
  :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-cb3) (not (closed-cb3))))) 