
(define (domain grounded-strips-psr) (:requirements :strips :action-costs)
 (:predicates (not-closed-sd23) (not-closed-sd34) (closed-sd34) (closed-sd11)
  (not-closed-sd8) (closed-sd25) (not-closed-cb3) (not-closed-sd13)
  (not-updated-cb3) (not-closed-sd5) (closed-sd3) (closed-sd19)
  (not-closed-sd12) (not-closed-cb1) (not-closed-sd31) (closed-sd30)
  (updated-cb1) (not-closed-sd33) (do-wait_cb5-condeffs) (closed-sd36)
  (not-closed-sd29) (not-closed-cb2) (closed-sd28) (closed-sd10)
  (do-close_sd30-condeffs) (not-closed-sd11) (closed-cb2) (closed-sd29)
  (not-updated-cb6) (closed-sd16) (not-closed-sd19) (closed-cb1) (closed-sd5)
  (not-closed-sd35) (not-closed-sd6) (closed-sd7) (closed-sd9)
  (not-closed-sd25) (not-closed-cb6) (not-closed-cb5) (not-closed-sd7)
  (updated-cb3) (not-updated-cb2) (done-0) (updated-cb6) (not-closed-sd3)
  (closed-sd13) (closed-sd14) (do-wait_cb6-condeffs) (closed-sd24)
  (not-closed-sd27) (not-closed-sd26) (closed-sd23) (closed-sd8)
  (not-closed-sd30) (closed-sd27) (not-closed-sd37) (not-closed-sd24)
  (not-updated-cb1) (closed-cb5) (closed-cb3) (closed-sd15) (updated-cb4)
  (done-1) (not-closed-sd28) (not-updated-cb4) (not-closed-sd32) (updated-cb2)
  (not-closed-sd21) (do-normal) (closed-sd22) (not-closed-sd14)
  (not-closed-sd16) (closed-sd4) (closed-sd12) (closed-sd32) (closed-sd33)
  (closed-cb6) (closed-sd35) (not-closed-sd10) (not-closed-sd2)
  (do-close_sd29-condeffs) (not-closed-sd22) (not-closed-sd1) (closed-sd20)
  (closed-sd6) (not-closed-sd15) (updated-cb5) (closed-sd21) (not-updated-cb5)
  (not-closed-sd17) (closed-sd37) (not-closed-sd20) (closed-sd2)
  (not-closed-sd9) (not-closed-sd36) (do-close_sd36-condeffs) (closed-cb4)
  (closed-sd18) (do-close_sd28-condeffs) (not-closed-sd18) (closed-sd31)
  (not-closed-cb4) (closed-sd26) (not-closed-sd4) (closed-sd1) (closed-sd17))
 (:functions (total-cost) - number)
 (:action ugly3374ugly65ugly29ugly59ugly31close_sd26 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd26) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd26) (not (not-closed-sd26))))
 (:action ugly3375ugly36ugly47ugly55ugly106close_sd30-endof-condeffs
  :parameters () :precondition (and (do-close_sd30-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd30-condeffs)) (not (done-0))))
 (:action ugly3376ugly25ugly16ugly26ugly4open-sd28 :parameters () :precondition
  (and (do-normal) (closed-sd28) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd28) (not (closed-sd28))))
 (:action ugly3377ugly81ugly50ugly52ugly28wait_cb5-endof-condeffs :parameters
  () :precondition (and (do-wait_cb5-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb5-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly3378ugly77ugly7ugly113ugly63close_sd28-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd28-condeffs) (not-closed-cb5)) :effect
  (and (done-0)))
 (:action ugly3379ugly95ugly80ugly1ugly91open-sd21 :parameters () :precondition
  (and (do-normal) (closed-sd21) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd21) (not (closed-sd21))))
 (:action ugly3380ugly50ugly52ugly28ugly111open-sd1 :parameters ()
  :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd1) (not (closed-sd1))))
 (:action ugly3381ugly78ugly69ugly101ugly40open-sd24 :parameters ()
  :precondition
  (and (do-normal) (closed-sd24) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd24) (not (closed-sd24))))
 (:action ugly3382ugly20ugly77ugly7ugly113open-sd26 :parameters ()
  :precondition
  (and (do-normal) (closed-sd26) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd26) (not (closed-sd26))))
 (:action ugly3383ugly114ugly17ugly39ugly53close_sd8 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd8) (not (not-closed-sd8))))
 (:action ugly3384ugly101ugly40ugly65ugly29open-sd30 :parameters ()
  :precondition
  (and (do-normal) (closed-sd30) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd30) (not (closed-sd30))))
 (:action ugly3385ugly97ugly46ugly20ugly77close_sd33 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd33) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd33) (not (not-closed-sd33))))
 (:action ugly3386ugly47ugly55ugly106ugly14open-cb2 :parameters ()
  :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly3387ugly109ugly74ugly114ugly17close_sd10 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd10) (not (not-closed-sd10))))
 (:action ugly3388ugly7ugly113ugly63ugly22wait_cb6-condeff0-yes :parameters ()
  :precondition (and (do-wait_cb6-condeffs) (closed-sd36)) :effect
  (and (done-0) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly3389ugly19ugly70ugly33ugly99close_sd35 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd35) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd35) (not (not-closed-sd35))))
 (:action ugly3390ugly67ugly115ugly104ugly8close_sd29-condeff0-no-1 :parameters
  () :precondition (and (do-close_sd29-condeffs) (not-closed-cb5)) :effect
  (and (done-0)))
 (:action ugly3391ugly89ugly5ugly97ugly46close_sd28 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd28) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd28-condeffs) (closed-sd28)
       (not (not-closed-sd28))))
 (:action ugly3392ugly52ugly28ugly111ugly88open-sd27 :parameters ()
  :precondition
  (and (do-normal) (closed-sd27) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd27) (not (closed-sd27))))
 (:action ugly3393ugly46ugly20ugly77ugly7wait_cb3 :parameters () :precondition
  (and (do-normal) (not-updated-cb3)) :effect
  (and (not-closed-cb3) (updated-cb3) (not (closed-cb3))
       (not (not-updated-cb3))))
 (:action ugly3394ugly73ugly81ugly50ugly52close_sd23 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd23) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd23) (not (not-closed-sd23))))
 (:action ugly3395ugly53ugly98ugly57ugly37close_sd18 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd18) (not (not-closed-sd18))))
 (:action ugly3396ugly37ugly32ugly85ugly76open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd5) (not (closed-sd5))))
 (:action ugly3397ugly49ugly12ugly51ugly27close_sd36 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd36) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd36-condeffs) (closed-sd36)
       (not (not-closed-sd36))))
 (:action ugly3398ugly112ugly34ugly24ugly92close_sd30-condeff0-no-1 :parameters
  () :precondition (and (do-close_sd30-condeffs) (not-closed-cb5)) :effect
  (and (done-0)))
 (:action ugly3399ugly60ugly48ugly35ugly100open-sd29 :parameters ()
  :precondition
  (and (do-normal) (closed-sd29) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd29) (not (closed-sd29))))
 (:action ugly3400ugly75ugly86ugly11ugly3close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly3401ugly27ugly2ugly23ugly21open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd2) (not (closed-sd2))))
 (:action ugly3402ugly66ugly75ugly86ugly11close_sd36-condeff0-yes :parameters
  () :precondition (and (do-close_sd36-condeffs) (closed-cb6)) :effect
  (and (done-0) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly3403ugly13ugly36ugly47ugly55wait_cb5-condeff0-yes :parameters ()
  :precondition (and (do-wait_cb5-condeffs) (closed-sd28)) :effect
  (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly3404ugly48ugly35ugly100ugly60close_cb4 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb4) (not-updated-cb4) (not (not-closed-cb4))
       (not (updated-cb4))))
 (:action ugly3405ugly108ugly82ugly89ugly5close_sd14 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd14) (not (not-closed-sd14))))
 (:action ugly3406ugly79ugly67ugly115ugly104close_sd32 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd32) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd32) (not (not-closed-sd32))))
 (:action ugly3407ugly86ugly11ugly3ugly42close_cb3 :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly3408ugly21ugly87ugly45ugly44open-sd23 :parameters ()
  :precondition
  (and (do-normal) (closed-sd23) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd23) (not (closed-sd23))))
 (:action ugly3409ugly45ugly44ugly66ugly75open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd3) (not (closed-sd3))))
 (:action ugly3410ugly43ugly105ugly96ugly109open-sd15 :parameters ()
  :precondition
  (and (do-normal) (closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd15) (not (closed-sd15))))
 (:action ugly3411ugly32ugly85ugly76ugly84wait_cb4 :parameters () :precondition
  (and (do-normal) (not-updated-cb4)) :effect
  (and (not-closed-cb4) (updated-cb4) (not (closed-cb4))
       (not (not-updated-cb4))))
 (:action ugly3412ugly17ugly39ugly53ugly98open-sd32 :parameters ()
  :precondition
  (and (do-normal) (closed-sd32) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd32) (not (closed-sd32))))
 (:action ugly3413ugly80ugly1ugly91ugly68close_sd31 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd31) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd31) (not (not-closed-sd31))))
 (:action ugly3414ugly24ugly92ugly13ugly36close_cb5 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb5) (not-updated-cb5) (not (not-closed-cb5))
       (not (updated-cb5))))
 (:action ugly3415ugly68ugly9ugly38ugly72open-cb5 :parameters () :precondition
  (and (do-normal) (closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly3416ugly33ugly99ugly95ugly80close_sd37 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd37) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd37) (not (not-closed-sd37))))
 (:action ugly3417ugly104ugly8ugly18ugly58wait_cb5-condeff1-yes :parameters ()
  :precondition (and (do-wait_cb5-condeffs) (closed-sd30) (closed-sd29))
  :effect (and (done-1) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly3418ugly54ugly83ugly30ugly10close_sd29 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd29) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd29-condeffs) (closed-sd29)
       (not (not-closed-sd29))))
 (:action ugly3419ugly31ugly25ugly16ugly26close_sd36-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd36-condeffs) (not-closed-cb6)) :effect
  (and (done-0)))
 (:action ugly3420ugly82ugly89ugly5ugly97close_cb6 :parameters () :precondition
  (and (do-normal) (not-closed-cb6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb6) (not-updated-cb6) (not (not-closed-cb6))
       (not (updated-cb6))))
 (:action ugly3421ugly38ugly72ugly90ugly6wait_cb6-condeff0-no-0 :parameters ()
  :precondition (and (do-wait_cb6-condeffs) (not-closed-sd36)) :effect
  (and (done-0)))
 (:action ugly3422ugly4ugly61ugly43ugly105close_sd20 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd20) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd20) (not (not-closed-sd20))))
 (:action ugly3423ugly22ugly102ugly73ugly81close_cb2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly3424ugly10ugly15ugly110ugly94open-sd35 :parameters ()
  :precondition
  (and (do-normal) (closed-sd35) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd35) (not (closed-sd35))))
 (:action ugly3425ugly56ugly71ugly56ugly71open-sd33 :parameters ()
  :precondition
  (and (do-normal) (closed-sd33) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd33) (not (closed-sd33))))
 (:action ugly3426ugly105ugly96ugly109ugly74wait_cb2 :parameters ()
  :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not-closed-cb2) (updated-cb2) (not (closed-cb2))
       (not (not-updated-cb2))))
 (:action ugly3427ugly98ugly57ugly37ugly32open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd4) (not (closed-sd4))))
 (:action ugly3428ugly83ugly30ugly10ugly15wait_cb5-condeff1-no-1 :parameters ()
  :precondition (and (do-wait_cb5-condeffs) (not-closed-sd29)) :effect
  (and (done-1)))
 (:action ugly3429ugly107ugly78ugly69ugly101close_sd9 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd9) (not (not-closed-sd9))))
 (:action ugly3430ugly6ugly103ugly107ugly78open-sd20 :parameters ()
  :precondition
  (and (do-normal) (closed-sd20) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd20) (not (closed-sd20))))
 (:action ugly3431ugly84ugly112ugly34ugly24open-cb3 :parameters ()
  :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly3432ugly3ugly42ugly49ugly12close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly3433ugly18ugly58ugly108ugly82open-cb6 :parameters ()
  :precondition
  (and (do-normal) (closed-cb6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly3434ugly41ugly64ugly19ugly70close_sd17 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd17) (not (not-closed-sd17))))
 (:action ugly3435ugly72ugly90ugly6ugly103wait_cb5-condeff0-no-0 :parameters ()
  :precondition (and (do-wait_cb5-condeffs) (not-closed-sd28)) :effect
  (and (done-0)))
 (:action ugly3436ugly12ugly51ugly27ugly2close_sd28-endof-condeffs :parameters
  () :precondition (and (do-close_sd28-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd28-condeffs)) (not (done-0))))
 (:action ugly3437ugly16ugly26ugly4ugly61close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly3438ugly115ugly104ugly8ugly18open-sd31 :parameters ()
  :precondition
  (and (do-normal) (closed-sd31) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd31) (not (closed-sd31))))
 (:action ugly3439ugly51ugly27ugly2ugly23close_sd28-condeff0-yes :parameters ()
  :precondition (and (do-close_sd28-condeffs) (closed-cb5)) :effect
  (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly3440ugly103ugly107ugly78ugly69wait_cb6 :parameters ()
  :precondition (and (do-normal) (not-updated-cb6)) :effect
  (and (not (do-normal)) (do-wait_cb6-condeffs) (updated-cb6)
       (not (not-updated-cb6))))
 (:action ugly3441ugly5ugly97ugly46ugly20open-sd12 :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd12) (not (closed-sd12))))
 (:action ugly3442ugly102ugly73ugly81ugly50open-sd37 :parameters ()
  :precondition
  (and (do-normal) (closed-sd37) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd37) (not (closed-sd37))))
 (:action ugly3443ugly61ugly43ugly105ugly96wait_cb5-condeff1-no-0 :parameters
  () :precondition (and (do-wait_cb5-condeffs) (not-closed-sd30)) :effect
  (and (done-1)))
 (:action ugly3444ugly35ugly100ugly60ugly48close_sd15 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd15) (not (not-closed-sd15))))
 (:action ugly3445ugly15ugly110ugly94ugly54open-sd6 :parameters ()
  :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd6) (not (closed-sd6))))
 (:action ugly3446ugly96ugly109ugly74ugly114close_sd29-condeff0-no-0
  :parameters () :precondition (and (do-close_sd29-condeffs) (not-closed-sd30))
  :effect (and (done-0)))
 (:action ugly3447ugly63ugly22ugly102ugly73open-sd8 :parameters ()
  :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd8) (not (closed-sd8))))
 (:action ugly3448ugly92ugly13ugly36ugly47open-sd34 :parameters ()
  :precondition
  (and (do-normal) (closed-sd34) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd34) (not (closed-sd34))))
 (:action ugly3449ugly87ugly45ugly44ugly66open-sd14 :parameters ()
  :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd14) (not (closed-sd14))))
 (:action ugly3450ugly111ugly88ugly62ugly41open-sd25 :parameters ()
  :precondition
  (and (do-normal) (closed-sd25) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd25) (not (closed-sd25))))
 (:action ugly3451ugly58ugly108ugly82ugly89close_sd36-endof-condeffs
  :parameters () :precondition (and (do-close_sd36-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd36-condeffs)) (not (done-0))))
 (:action ugly3452ugly93ugly79ugly67ugly115wait_cb6-endof-condeffs :parameters
  () :precondition (and (do-wait_cb6-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb6-condeffs)) (not (done-0))))
 (:action ugly3453ugly113ugly63ugly22ugly102open-sd16 :parameters ()
  :precondition
  (and (do-normal) (closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd16) (not (closed-sd16))))
 (:action ugly3454ugly29ugly59ugly31ugly25close_sd29-condeff0-yes :parameters
  () :precondition (and (do-close_sd29-condeffs) (closed-sd30) (closed-cb5))
  :effect (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly3455ugly1ugly91ugly68ugly9close_sd11 :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd11) (not (not-closed-sd11))))
 (:action ugly3456ugly9ugly38ugly72ugly90close_sd34 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd34) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd34) (not (not-closed-sd34))))
 (:action ugly3457ugly100ugly60ugly48ugly35close_sd6 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly3458ugly28ugly111ugly88ugly62close_sd5 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly3459ugly62ugly41ugly64ugly19open-sd19 :parameters ()
  :precondition
  (and (do-normal) (closed-sd19) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd19) (not (closed-sd19))))
 (:action ugly3460ugly64ugly19ugly70ugly33close_sd7 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd7) (not (not-closed-sd7))))
 (:action ugly3461ugly59ugly31ugly25ugly16close_sd25 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd25) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd25) (not (not-closed-sd25))))
 (:action ugly3462ugly70ugly33ugly99ugly95open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd9) (not (closed-sd9))))
 (:action ugly3463ugly57ugly37ugly32ugly85open-sd13 :parameters ()
  :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd13) (not (closed-sd13))))
 (:action ugly3464ugly2ugly23ugly21ugly87close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd1) (not (not-closed-sd1))))
 (:action ugly3465ugly99ugly95ugly80ugly1open-cb4 :parameters () :precondition
  (and (do-normal) (closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly3466ugly69ugly101ugly40ugly65close_sd22 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd22) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd22) (not (not-closed-sd22))))
 (:action ugly3467ugly74ugly114ugly17ugly39open-sd36 :parameters ()
  :precondition
  (and (do-normal) (closed-sd36) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd36) (not (closed-sd36))))
 (:action ugly3468ugly42ugly49ugly12ugly51close_sd24 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd24) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd24) (not (not-closed-sd24))))
 (:action ugly3469ugly55ugly106ugly14ugly93open-sd10 :parameters ()
  :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd10) (not (closed-sd10))))
 (:action ugly3470ugly85ugly76ugly84ugly112close_sd16 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd16) (not (not-closed-sd16))))
 (:action ugly3471ugly94ugly54ugly83ugly30close_sd30 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd30) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd30-condeffs) (closed-sd30)
       (not (not-closed-sd30))))
 (:action ugly3472ugly110ugly94ugly54ugly83close_sd21 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd21) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd21) (not (not-closed-sd21))))
 (:action ugly3473ugly8ugly18ugly58ugly108open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd7) (not (closed-sd7))))
 (:action ugly3474ugly88ugly62ugly41ugly64close_sd29-endof-condeffs :parameters
  () :precondition (and (do-close_sd29-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd29-condeffs)) (not (done-0))))
 (:action ugly3475ugly76ugly84ugly112ugly34close_sd27 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd27) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd27) (not (not-closed-sd27))))
 (:action ugly3476ugly30ugly10ugly15ugly110open-cb1 :parameters ()
  :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly3477ugly26ugly4ugly61ugly43wait_cb5 :parameters () :precondition
  (and (do-normal) (not-updated-cb5)) :effect
  (and (not (do-normal)) (do-wait_cb5-condeffs) (updated-cb5)
       (not (not-updated-cb5))))
 (:action ugly3478ugly91ugly68ugly9ugly38open-sd17 :parameters () :precondition
  (and (do-normal) (closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd17) (not (closed-sd17))))
 (:action ugly3479ugly90ugly6ugly103ugly107open-sd11 :parameters ()
  :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd11) (not (closed-sd11))))
 (:action ugly3480ugly44ugly66ugly75ugly86close_sd30-condeff0-yes :parameters
  () :precondition (and (do-close_sd30-condeffs) (closed-sd29) (closed-cb5))
  :effect (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly3481ugly23ugly21ugly87ugly45close_sd2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly3482ugly34ugly24ugly92ugly13close_sd13 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd13) (not (not-closed-sd13))))
 (:action ugly3483ugly106ugly14ugly93ugly79open-sd22 :parameters ()
  :precondition
  (and (do-normal) (closed-sd22) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd22) (not (closed-sd22))))
 (:action ugly3484ugly40ugly65ugly29ugly59close_sd19 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd19) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd19) (not (not-closed-sd19))))
 (:action ugly3485ugly11ugly3ugly42ugly49close_sd30-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd30-condeffs) (not-closed-sd29)) :effect
  (and (done-0)))
 (:action ugly3486ugly39ugly53ugly98ugly57close_sd12 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd12) (not (not-closed-sd12))))
 (:action ugly3487ugly71ugly56ugly71ugly56open-sd18 :parameters ()
  :precondition
  (and (do-normal) (closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd18) (not (closed-sd18))))
 (:action ugly3488ugly14ugly93ugly79ugly67wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not-closed-cb1) (updated-cb1) (not (closed-cb1))
       (not (not-updated-cb1))))) 