
(define (domain grounded-strips-psr) (:requirements :strips :action-costs)
 (:predicates (updated-cb3) (do-normal) (closed-sd13) (updated-cb1)
  (not-closed-sd5) (not-updated-cb4) (not-closed-sd10) (not-closed-sd12)
  (closed-sd11) (do-close_sd3-condeffs) (not-closed-cb1) (closed-sd12)
  (not-closed-cb3) (closed-sd4) (do-wait_cb5-condeffs) (updated-cb2)
  (not-closed-cb5) (not-closed-sd3) (closed-sd1) (updated-cb5) (not-closed-sd7)
  (not-closed-sd6) (not-closed-sd11) (closed-sd8) (not-closed-sd8)
  (do-wait_cb1-condeffs) (closed-cb4) (not-updated-cb3) (done-1)
  (not-closed-sd1) (closed-sd3) (not-closed-sd9) (closed-sd5) (closed-cb3)
  (do-close_sd12-condeffs) (closed-sd9) (not-updated-cb2) (not-updated-cb5)
  (done-0) (not-closed-cb4) (not-closed-sd2) (closed-cb1)
  (do-close_sd6-condeffs) (not-updated-cb1) (closed-sd14) (closed-sd6)
  (do-wait_cb3-condeffs) (closed-sd2) (closed-sd10) (closed-cb5)
  (do-wait_cb2-condeffs) (do-close_sd4-condeffs) (not-closed-cb2)
  (not-closed-sd14) (closed-sd7) (not-closed-sd4) (closed-cb2) (updated-cb4)
  (do-close_sd5-condeffs) (do-close_sd1-condeffs) (not-closed-sd13))
 (:functions (total-cost) - number)
 (:action
  ugly2874ugly2906ugly2917ugly2892ugly2934ugly45ugly71ugly56ugly24close_cb1
  :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action
  ugly2875ugly2950ugly2941ugly2911ugly2880ugly29ugly34ugly11ugly35close_sd5-endof-condeffs
  :parameters () :precondition (and (do-close_sd5-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))))
 (:action
  ugly2876ugly2946ugly2942ugly2899ugly2889ugly31ugly66ugly69ugly1close_sd12-condeff0-yes
  :parameters () :precondition (and (do-close_sd12-condeffs) (closed-cb5))
  :effect (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action
  ugly2877ugly2909ugly2908ugly2877ugly2909ugly35ugly57ugly46ugly67open-sd10
  :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd10) (not (closed-sd10))))
 (:action
  ugly2878ugly2947ugly2939ugly2888ugly2905ugly41ugly27ugly2ugly45wait_cb3-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd5))
  :effect (and (done-0)))
 (:action
  ugly2879ugly2927ugly2940ugly2915ugly2936ugly52ugly62ugly44ugly47close_sd5
  :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action
  ugly2880ugly2902ugly2924ugly2928ugly2895ugly48ugly73ugly26ugly12wait_cb2-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action
  ugly2881ugly2949ugly2948ugly2919ugly2913ugly47ugly54ugly50ugly9close_sd12-endof-condeffs
  :parameters () :precondition (and (do-close_sd12-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd12-condeffs)) (not (done-0))))
 (:action
  ugly2882ugly2931ugly2885ugly2901ugly2881ugly76ugly76ugly76ugly76wait_cb1-condeff0-yes
  :parameters () :precondition (and (do-wait_cb1-condeffs) (closed-sd1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2883ugly2929ugly2932ugly2943ugly2926ugly37ugly19ugly7ugly70close_sd3-condeff0-no-1
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action
  ugly2884ugly2882ugly2931ugly2885ugly2901ugly8ugly16ugly13ugly55wait_cb3-endof-condeffs
  :parameters () :precondition (and (do-wait_cb3-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0)) (not (done-1))))
 (:action
  ugly2885ugly2901ugly2881ugly2949ugly2948ugly46ugly67ugly37ugly19close_sd11
  :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (closed-sd11) (not (not-closed-sd11))))
 (:action
  ugly2886ugly2896ugly2930ugly2907ugly2933ugly1ugly4ugly22ugly8close_sd3-condeff0-no-0
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action
  ugly2887ugly2903ugly2876ugly2946ugly2942ugly26ugly12ugly29ugly34close_sd6-condeff0-yes
  :parameters () :precondition (and (do-close_sd6-condeffs) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly2888ugly2905ugly2914ugly2922ugly2883ugly56ugly24ugly32ugly41wait_cb2-condeff0-yes
  :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd4) (closed-sd3)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly2889ugly2904ugly2890ugly2935ugly2944ugly14ugly68ugly64ugly5close_sd3
  :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action
  ugly2890ugly2935ugly2944ugly2887ugly2903ugly3ugly15ugly59ugly78open-cb4
  :parameters () :precondition
  (and (do-normal) (closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-cb4) (not (closed-cb4))))
 (:action
  ugly2891ugly2893ugly2923ugly2951ugly2875ugly77ugly60ugly40ugly42close_sd10
  :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (closed-sd10) (not (not-closed-sd10))))
 (:action
  ugly2892ugly2934ugly2918ugly2912ugly2879ugly54ugly50ugly9ugly6close_sd1-condeff0-yes
  :parameters () :precondition (and (do-close_sd1-condeffs) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2893ugly2923ugly2951ugly2875ugly2950ugly68ugly64ugly5ugly14wait_cb4
  :parameters () :precondition (and (do-normal) (not-updated-cb4)) :effect
  (and (not-closed-cb4) (updated-cb4) (not (closed-cb4))
       (not (not-updated-cb4))))
 (:action
  ugly2894ugly2938ugly2894ugly2938ugly2894ugly65ugly18ugly23ugly21open-sd4
  :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd4) (not (closed-sd4))))
 (:action
  ugly2895ugly2921ugly2916ugly2897ugly2900ugly18ugly23ugly21ugly43close_sd7
  :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (closed-sd7) (not (not-closed-sd7))))
 (:action
  ugly2896ugly2930ugly2907ugly2933ugly2874ugly33ugly72ugly38ugly30close_cb3
  :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action
  ugly2897ugly2900ugly2891ugly2893ugly2923ugly78ugly48ugly73ugly26close_sd6-condeff0-no-0
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action
  ugly2898ugly2878ugly2947ugly2939ugly2888ugly32ugly41ugly27ugly2open-sd2
  :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd2) (not (closed-sd2))))
 (:action
  ugly2899ugly2889ugly2904ugly2890ugly2935ugly71ugly56ugly24ugly32open-sd6
  :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd6) (not (closed-sd6))))
 (:action
  ugly2900ugly2891ugly2893ugly2923ugly2951ugly2ugly45ugly71ugly56close_cb4
  :parameters () :precondition
  (and (do-normal) (not-closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (closed-cb4) (not-updated-cb4) (not (not-closed-cb4))
       (not (updated-cb4))))
 (:action
  ugly2901ugly2881ugly2949ugly2948ugly2919ugly40ugly42ugly52ugly62open-sd3
  :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd3) (not (closed-sd3))))
 (:action
  ugly2902ugly2924ugly2928ugly2895ugly2921ugly43ugly53ugly58ugly31wait_cb5-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb5-condeffs) (not-closed-sd12))
  :effect (and (done-0)))
 (:action
  ugly2903ugly2876ugly2946ugly2942ugly2899ugly16ugly13ugly55ugly74open-sd8
  :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd8) (not (closed-sd8))))
 (:action
  ugly2904ugly2890ugly2935ugly2944ugly2887ugly30ugly25ugly65ugly18close_cb5
  :parameters () :precondition
  (and (do-normal) (not-closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (closed-cb5) (not-updated-cb5) (not (not-closed-cb5))
       (not (updated-cb5))))
 (:action
  ugly2905ugly2914ugly2922ugly2883ugly2929ugly59ugly78ugly48ugly73wait_cb2
  :parameters () :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action
  ugly2906ugly2917ugly2892ugly2934ugly2918ugly39ugly49ugly77ugly60open-sd7
  :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd7) (not (closed-sd7))))
 (:action
  ugly2907ugly2933ugly2874ugly2906ugly2917ugly19ugly7ugly70ugly17open-sd14
  :parameters () :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd14) (not (closed-sd14))))
 (:action
  ugly2908ugly2877ugly2909ugly2908ugly2877ugly36ugly51ugly10ugly61close_sd12
  :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd12-condeffs) (closed-sd12)
       (not (not-closed-sd12))))
 (:action
  ugly2909ugly2908ugly2877ugly2909ugly2908ugly4ugly22ugly8ugly16close_sd6-endof-condeffs
  :parameters () :precondition (and (do-close_sd6-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))))
 (:action
  ugly2910ugly2937ugly2886ugly2896ugly2930ugly34ugly11ugly35ugly57open-sd1
  :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd1) (not (closed-sd1))))
 (:action
  ugly2911ugly2880ugly2902ugly2924ugly2928ugly22ugly8ugly16ugly13close_sd5-condeff0-yes
  :parameters () :precondition (and (do-close_sd5-condeffs) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly2912ugly2879ugly2927ugly2940ugly2915ugly63ugly28ugly63ugly28close_sd2
  :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action
  ugly2913ugly2920ugly2945ugly2884ugly2882ugly58ugly31ugly66ugly69close_sd14
  :parameters () :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (closed-sd14) (not (not-closed-sd14))))
 (:action
  ugly2914ugly2922ugly2883ugly2929ugly2932ugly70ugly17ugly33ugly72open-sd9
  :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd9) (not (closed-sd9))))
 (:action
  ugly2915ugly2936ugly2925ugly2898ugly2878ugly74ugly39ugly49ugly77close_sd4-condeff0-no-0
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action
  ugly2916ugly2897ugly2900ugly2891ugly2893ugly50ugly9ugly6ugly20open-sd11
  :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd11) (not (closed-sd11))))
 (:action
  ugly2917ugly2892ugly2934ugly2918ugly2912ugly6ugly20ugly36ugly51close_sd6
  :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action
  ugly2918ugly2912ugly2879ugly2927ugly2940ugly42ugly52ugly62ugly44open-cb5
  :parameters () :precondition
  (and (do-normal) (closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-cb5) (not (closed-cb5))))
 (:action
  ugly2919ugly2913ugly2920ugly2945ugly2884ugly9ugly6ugly20ugly36open-cb1
  :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2920ugly2945ugly2884ugly2882ugly2931ugly12ugly29ugly34ugly11open-sd12
  :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd12) (not (closed-sd12))))
 (:action
  ugly2921ugly2916ugly2897ugly2900ugly2891ugly20ugly36ugly51ugly10close_sd4-condeff0-no-1
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action
  ugly2922ugly2883ugly2929ugly2932ugly2943ugly53ugly58ugly31ugly66wait_cb3
  :parameters () :precondition (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action
  ugly2923ugly2951ugly2875ugly2950ugly2941ugly38ugly30ugly25ugly65close_sd3-endof-condeffs
  :parameters () :precondition (and (do-close_sd3-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))))
 (:action
  ugly2924ugly2928ugly2895ugly2921ugly2916ugly24ugly32ugly41ugly27close_sd13
  :parameters () :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (closed-sd13) (not (not-closed-sd13))))
 (:action
  ugly2925ugly2898ugly2878ugly2947ugly2939ugly15ugly59ugly78ugly48wait_cb3-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd6))
  :effect (and (done-1)))
 (:action
  ugly2926ugly2910ugly2937ugly2886ugly2896ugly57ugly46ugly67ugly37close_sd1
  :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action
  ugly2927ugly2940ugly2915ugly2936ugly2925ugly25ugly65ugly18ugly23close_sd1-condeff0-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action
  ugly2928ugly2895ugly2921ugly2916ugly2897ugly27ugly2ugly45ugly71close_sd5-condeff0-no-0
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action
  ugly2929ugly2932ugly2943ugly2926ugly2910ugly64ugly5ugly14ugly68wait_cb5
  :parameters () :precondition (and (do-normal) (not-updated-cb5)) :effect
  (and (not (do-normal)) (do-wait_cb5-condeffs) (updated-cb5)
       (not (not-updated-cb5))))
 (:action
  ugly2930ugly2907ugly2933ugly2874ugly2906ugly44ugly47ugly54ugly50close_sd8
  :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (closed-sd8) (not (not-closed-sd8))))
 (:action
  ugly2931ugly2885ugly2901ugly2881ugly2949ugly75ugly75ugly75ugly75wait_cb1
  :parameters () :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action
  ugly2932ugly2943ugly2926ugly2910ugly2937ugly13ugly55ugly74ugly39open-cb3
  :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly2933ugly2874ugly2906ugly2917ugly2892ugly61ugly3ugly15ugly59wait_cb1-endof-condeffs
  :parameters () :precondition (and (do-wait_cb1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0))))
 (:action
  ugly2934ugly2918ugly2912ugly2879ugly2927ugly67ugly37ugly19ugly7wait_cb3-condeff0-yes
  :parameters () :precondition (and (do-wait_cb3-condeffs) (closed-sd5))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly2935ugly2944ugly2887ugly2903ugly2876ugly73ugly26ugly12ugly29open-sd13
  :parameters () :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd13) (not (closed-sd13))))
 (:action
  ugly2936ugly2925ugly2898ugly2878ugly2947ugly66ugly69ugly1ugly4close_sd1-endof-condeffs
  :parameters () :precondition (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action
  ugly2937ugly2886ugly2896ugly2930ugly2907ugly60ugly40ugly42ugly52close_sd4-endof-condeffs
  :parameters () :precondition (and (do-close_sd4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))))
 (:action
  ugly2938ugly2894ugly2938ugly2894ugly2938ugly21ugly43ugly53ugly58close_cb2
  :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action
  ugly2939ugly2888ugly2905ugly2914ugly2922ugly10ugly61ugly3ugly15close_sd4-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd3) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly2940ugly2915ugly2936ugly2925ugly2898ugly5ugly14ugly68ugly64close_sd12-condeff0-no-0
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-cb5))
  :effect (and (done-0)))
 (:action
  ugly2941ugly2911ugly2880ugly2902ugly2924ugly55ugly74ugly39ugly49wait_cb1-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action
  ugly2942ugly2899ugly2889ugly2904ugly2890ugly62ugly44ugly47ugly54open-cb2
  :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly2943ugly2926ugly2910ugly2937ugly2886ugly23ugly21ugly43ugly53close_sd4
  :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action
  ugly2944ugly2887ugly2903ugly2876ugly2946ugly69ugly1ugly4ugly22close_sd9
  :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (closed-sd9) (not (not-closed-sd9))))
 (:action
  ugly2945ugly2884ugly2882ugly2931ugly2885ugly28ugly63ugly28ugly63wait_cb2-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action
  ugly2946ugly2942ugly2899ugly2889ugly2904ugly17ugly33ugly72ugly38wait_cb2-endof-condeffs
  :parameters () :precondition (and (do-wait_cb2-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0))))
 (:action
  ugly2947ugly2939ugly2888ugly2905ugly2914ugly49ugly77ugly60ugly40open-sd5
  :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd5) (not (closed-sd5))))
 (:action
  ugly2948ugly2919ugly2913ugly2920ugly2945ugly11ugly35ugly57ugly46wait_cb5-endof-condeffs
  :parameters () :precondition (and (do-wait_cb5-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb5-condeffs)) (not (done-0))))
 (:action
  ugly2949ugly2948ugly2919ugly2913ugly2920ugly72ugly38ugly30ugly25wait_cb5-condeff0-yes
  :parameters () :precondition (and (do-wait_cb5-condeffs) (closed-sd12))
  :effect (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action
  ugly2950ugly2941ugly2911ugly2880ugly2902ugly51ugly10ugly61ugly3close_sd3-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd4) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly2951ugly2875ugly2950ugly2941ugly2911ugly7ugly70ugly17ugly33wait_cb3-condeff1-yes
  :parameters () :precondition (and (do-wait_cb3-condeffs) (closed-sd6))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))) 