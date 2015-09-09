
(define (domain grounded-strips-psr) (:requirements :strips :action-costs)
 (:predicates (not-updated-cb6) (not-closed-sd33) (not-updated-cb1)
  (not-closed-cb5) (do-close_sd28-condeffs) (closed-sd24) (closed-cb6) (done-1)
  (updated-cb1) (closed-sd5) (not-closed-sd24) (updated-cb4) (not-closed-sd15)
  (do-wait_cb6-condeffs) (not-closed-sd36) (not-closed-sd19) (closed-sd19)
  (closed-sd13) (closed-sd27) (not-closed-cb3) (not-closed-sd32) (closed-sd2)
  (not-closed-sd23) (closed-sd35) (closed-sd16) (closed-sd14) (closed-sd15)
  (not-closed-sd10) (not-closed-cb6) (done-0) (not-closed-sd14)
  (not-closed-sd34) (not-closed-sd11) (closed-sd7) (not-closed-sd9)
  (not-closed-sd16) (not-closed-sd21) (not-closed-sd20) (not-closed-sd7)
  (closed-cb5) (closed-sd29) (do-wait_cb5-condeffs) (closed-sd1) (closed-sd18)
  (not-closed-sd18) (not-updated-cb5) (not-updated-cb4) (not-closed-cb4)
  (closed-cb2) (closed-cb1) (closed-sd28) (closed-sd9) (closed-sd26)
  (closed-sd3) (not-closed-sd25) (closed-sd25) (closed-sd6) (not-closed-sd28)
  (closed-sd21) (closed-sd34) (do-close_sd29-condeffs) (do-close_sd30-condeffs)
  (closed-sd22) (updated-cb6) (closed-sd37) (closed-cb3) (closed-sd10)
  (not-closed-sd30) (closed-sd23) (not-closed-sd4) (not-closed-sd3)
  (closed-sd4) (not-closed-cb2) (not-closed-sd26) (closed-sd12) (closed-sd17)
  (not-updated-cb3) (updated-cb2) (not-closed-sd1) (closed-sd30) (do-normal)
  (not-closed-sd2) (closed-sd11) (not-closed-sd6) (closed-sd33)
  (not-closed-sd29) (not-closed-sd8) (not-closed-cb1) (closed-sd32)
  (not-closed-sd37) (closed-sd36) (do-close_sd36-condeffs) (updated-cb5)
  (closed-cb4) (not-closed-sd31) (not-closed-sd5) (not-closed-sd12)
  (not-closed-sd35) (closed-sd31) (not-closed-sd27) (updated-cb3) (closed-sd8)
  (not-closed-sd22) (closed-sd20) (not-updated-cb2) (not-closed-sd17)
  (not-closed-sd13))
 (:functions (total-cost) - number)
 (:action ugly1open-cb4 :parameters () :precondition
  (and (do-normal) (closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly2close_sd28-endof-condeffs :parameters () :precondition
  (and (do-close_sd28-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd28-condeffs)) (not (done-0))))
 (:action ugly3close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly4open-sd28 :parameters () :precondition
  (and (do-normal) (closed-sd28) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd28) (not (closed-sd28))))
 (:action ugly5close_sd14 :parameters () :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd14) (not (not-closed-sd14))))
 (:action ugly6wait_cb6-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb6-condeffs) (not-closed-sd36)) :effect (and (done-0)))
 (:action ugly7wait_cb3 :parameters () :precondition
  (and (do-normal) (not-updated-cb3)) :effect
  (and (not-closed-cb3) (updated-cb3) (not (closed-cb3))
       (not (not-updated-cb3))))
 (:action ugly8close_sd29-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd29-condeffs) (not-closed-cb5)) :effect (and (done-0)))
 (:action ugly9close_sd11 :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd11) (not (not-closed-sd11))))
 (:action ugly10close_sd29 :parameters () :precondition
  (and (do-normal) (not-closed-sd29) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd29-condeffs) (closed-sd29)
       (not (not-closed-sd29))))
 (:action ugly11close_sd36-condeff0-yes :parameters () :precondition
  (and (do-close_sd36-condeffs) (closed-cb6)) :effect
  (and (done-0) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly12close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly13close_sd13 :parameters () :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd13) (not (not-closed-sd13))))
 (:action ugly14open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly15wait_cb5-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb5-condeffs) (not-closed-sd29)) :effect (and (done-1)))
 (:action ugly16close_sd25 :parameters () :precondition
  (and (do-normal) (not-closed-sd25) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd25) (not (not-closed-sd25))))
 (:action ugly17close_sd10 :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd10) (not (not-closed-sd10))))
 (:action ugly18open-sd31 :parameters () :precondition
  (and (do-normal) (closed-sd31) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd31) (not (closed-sd31))))
 (:action ugly19open-sd19 :parameters () :precondition
  (and (do-normal) (closed-sd19) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd19) (not (closed-sd19))))
 (:action ugly20open-sd12 :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd12) (not (closed-sd12))))
 (:action ugly21open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd2) (not (closed-sd2))))
 (:action ugly22wait_cb6-condeff0-yes :parameters () :precondition
  (and (do-wait_cb6-condeffs) (closed-sd36)) :effect
  (and (done-0) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly23close_sd28-condeff0-yes :parameters () :precondition
  (and (do-close_sd28-condeffs) (closed-cb5)) :effect
  (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly24open-cb3 :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly25close_sd29-condeff0-yes :parameters () :precondition
  (and (do-close_sd29-condeffs) (closed-sd30) (closed-cb5)) :effect
  (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly26close_sd36-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd36-condeffs) (not-closed-cb6)) :effect (and (done-0)))
 (:action ugly27close_sd36 :parameters () :precondition
  (and (do-normal) (not-closed-sd36) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd36-condeffs) (closed-sd36)
       (not (not-closed-sd36))))
 (:action ugly28wait_cb5-endof-condeffs :parameters () :precondition
  (and (do-wait_cb5-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb5-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly29open-sd30 :parameters () :precondition
  (and (do-normal) (closed-sd30) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd30) (not (closed-sd30))))
 (:action ugly30close_sd30 :parameters () :precondition
  (and (do-normal) (not-closed-sd30) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd30-condeffs) (closed-sd30)
       (not (not-closed-sd30))))
 (:action ugly31close_sd26 :parameters () :precondition
  (and (do-normal) (not-closed-sd26) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd26) (not (not-closed-sd26))))
 (:action ugly32open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd4) (not (closed-sd4))))
 (:action ugly33close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd7) (not (not-closed-sd7))))
 (:action ugly34close_sd27 :parameters () :precondition
  (and (do-normal) (not-closed-sd27) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd27) (not (not-closed-sd27))))
 (:action ugly35close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly36close_cb5 :parameters () :precondition
  (and (do-normal) (not-closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb5) (not-updated-cb5) (not (not-closed-cb5))
       (not (updated-cb5))))
 (:action ugly37close_sd18 :parameters () :precondition
  (and (do-normal) (not-closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd18) (not (not-closed-sd18))))
 (:action ugly38open-sd17 :parameters () :precondition
  (and (do-normal) (closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd17) (not (closed-sd17))))
 (:action ugly39open-sd36 :parameters () :precondition
  (and (do-normal) (closed-sd36) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd36) (not (closed-sd36))))
 (:action ugly40open-sd24 :parameters () :precondition
  (and (do-normal) (closed-sd24) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd24) (not (closed-sd24))))
 (:action ugly41open-sd25 :parameters () :precondition
  (and (do-normal) (closed-sd25) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd25) (not (closed-sd25))))
 (:action ugly42close_cb3 :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly43wait_cb5 :parameters () :precondition
  (and (do-normal) (not-updated-cb5)) :effect
  (and (not (do-normal)) (do-wait_cb5-condeffs) (updated-cb5)
       (not (not-updated-cb5))))
 (:action ugly44open-sd23 :parameters () :precondition
  (and (do-normal) (closed-sd23) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd23) (not (closed-sd23))))
 (:action ugly45close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly46close_sd28 :parameters () :precondition
  (and (do-normal) (not-closed-sd28) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd28-condeffs) (closed-sd28)
       (not (not-closed-sd28))))
 (:action ugly47open-sd34 :parameters () :precondition
  (and (do-normal) (closed-sd34) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd34) (not (closed-sd34))))
 (:action ugly48close_sd15 :parameters () :precondition
  (and (do-normal) (not-closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd15) (not (not-closed-sd15))))
 (:action ugly49close_sd30-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd30-condeffs) (not-closed-sd29)) :effect (and (done-0)))
 (:action ugly50open-sd37 :parameters () :precondition
  (and (do-normal) (closed-sd37) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd37) (not (closed-sd37))))
 (:action ugly51close_sd24 :parameters () :precondition
  (and (do-normal) (not-closed-sd24) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd24) (not (not-closed-sd24))))
 (:action ugly52close_sd23 :parameters () :precondition
  (and (do-normal) (not-closed-sd23) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd23) (not (not-closed-sd23))))
 (:action ugly53close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd8) (not (not-closed-sd8))))
 (:action ugly54open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd6) (not (closed-sd6))))
 (:action ugly55wait_cb5-condeff0-yes :parameters () :precondition
  (and (do-wait_cb5-condeffs) (closed-sd28)) :effect
  (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly56open-sd18 :parameters () :precondition
  (and (do-normal) (closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd18) (not (closed-sd18))))
 (:action ugly57close_sd12 :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd12) (not (not-closed-sd12))))
 (:action ugly58wait_cb5-condeff1-yes :parameters () :precondition
  (and (do-wait_cb5-condeffs) (closed-sd30) (closed-sd29)) :effect
  (and (done-1) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly59close_sd19 :parameters () :precondition
  (and (do-normal) (not-closed-sd19) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd19) (not (not-closed-sd19))))
 (:action ugly60close_cb4 :parameters () :precondition
  (and (do-normal) (not-closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb4) (not-updated-cb4) (not (not-closed-cb4))
       (not (updated-cb4))))
 (:action ugly61close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly62close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly63close_sd28-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd28-condeffs) (not-closed-cb5)) :effect (and (done-0)))
 (:action ugly64close_sd29-endof-condeffs :parameters () :precondition
  (and (do-close_sd29-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd29-condeffs)) (not (done-0))))
 (:action ugly65close_sd22 :parameters () :precondition
  (and (do-normal) (not-closed-sd22) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd22) (not (not-closed-sd22))))
 (:action ugly66open-sd14 :parameters () :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd14) (not (closed-sd14))))
 (:action ugly67wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not-closed-cb1) (updated-cb1) (not (closed-cb1))
       (not (not-updated-cb1))))
 (:action ugly68close_sd31 :parameters () :precondition
  (and (do-normal) (not-closed-sd31) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd31) (not (not-closed-sd31))))
 (:action ugly69wait_cb6 :parameters () :precondition
  (and (do-normal) (not-updated-cb6)) :effect
  (and (not (do-normal)) (do-wait_cb6-condeffs) (updated-cb6)
       (not (not-updated-cb6))))
 (:action ugly70close_sd17 :parameters () :precondition
  (and (do-normal) (not-closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd17) (not (not-closed-sd17))))
 (:action ugly71open-sd33 :parameters () :precondition
  (and (do-normal) (closed-sd33) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd33) (not (closed-sd33))))
 (:action ugly72open-cb5 :parameters () :precondition
  (and (do-normal) (closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly73open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd8) (not (closed-sd8))))
 (:action ugly74wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not-closed-cb2) (updated-cb2) (not (closed-cb2))
       (not (not-updated-cb2))))
 (:action ugly75open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd3) (not (closed-sd3))))
 (:action ugly76open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd5) (not (closed-sd5))))
 (:action ugly77close_sd33 :parameters () :precondition
  (and (do-normal) (not-closed-sd33) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd33) (not (not-closed-sd33))))
 (:action ugly78open-sd20 :parameters () :precondition
  (and (do-normal) (closed-sd20) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd20) (not (closed-sd20))))
 (:action ugly79open-sd22 :parameters () :precondition
  (and (do-normal) (closed-sd22) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd22) (not (closed-sd22))))
 (:action ugly80close_sd37 :parameters () :precondition
  (and (do-normal) (not-closed-sd37) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd37) (not (not-closed-sd37))))
 (:action ugly81close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly82open-cb6 :parameters () :precondition
  (and (do-normal) (closed-cb6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly83close_sd21 :parameters () :precondition
  (and (do-normal) (not-closed-sd21) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd21) (not (not-closed-sd21))))
 (:action ugly84wait_cb4 :parameters () :precondition
  (and (do-normal) (not-updated-cb4)) :effect
  (and (not-closed-cb4) (updated-cb4) (not (closed-cb4))
       (not (not-updated-cb4))))
 (:action ugly85open-sd13 :parameters () :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd13) (not (closed-sd13))))
 (:action ugly86close_sd30-condeff0-yes :parameters () :precondition
  (and (do-close_sd30-condeffs) (closed-sd29) (closed-cb5)) :effect
  (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly87close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd1) (not (not-closed-sd1))))
 (:action ugly88open-sd27 :parameters () :precondition
  (and (do-normal) (closed-sd27) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd27) (not (closed-sd27))))
 (:action ugly89close_sd36-endof-condeffs :parameters () :precondition
  (and (do-close_sd36-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd36-condeffs)) (not (done-0))))
 (:action ugly90close_sd34 :parameters () :precondition
  (and (do-normal) (not-closed-sd34) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd34) (not (not-closed-sd34))))
 (:action ugly91open-sd21 :parameters () :precondition
  (and (do-normal) (closed-sd21) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd21) (not (closed-sd21))))
 (:action ugly92close_sd30-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd30-condeffs) (not-closed-cb5)) :effect (and (done-0)))
 (:action ugly93open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd10) (not (closed-sd10))))
 (:action ugly94open-sd35 :parameters () :precondition
  (and (do-normal) (closed-sd35) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd35) (not (closed-sd35))))
 (:action ugly95open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd9) (not (closed-sd9))))
 (:action ugly96wait_cb5-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb5-condeffs) (not-closed-sd30)) :effect (and (done-1)))
 (:action ugly97close_cb6 :parameters () :precondition
  (and (do-normal) (not-closed-cb6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb6) (not-updated-cb6) (not (not-closed-cb6))
       (not (updated-cb6))))
 (:action ugly98open-sd32 :parameters () :precondition
  (and (do-normal) (closed-sd32) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd32) (not (closed-sd32))))
 (:action ugly99close_sd35 :parameters () :precondition
  (and (do-normal) (not-closed-sd35) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd35) (not (not-closed-sd35))))
 (:action ugly100open-sd29 :parameters () :precondition
  (and (do-normal) (closed-sd29) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd29) (not (closed-sd29))))
 (:action ugly101close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd9) (not (not-closed-sd9))))
 (:action ugly102open-sd16 :parameters () :precondition
  (and (do-normal) (closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd16) (not (closed-sd16))))
 (:action ugly103wait_cb5-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb5-condeffs) (not-closed-sd28)) :effect (and (done-0)))
 (:action ugly104close_sd32 :parameters () :precondition
  (and (do-normal) (not-closed-sd32) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd32) (not (not-closed-sd32))))
 (:action ugly105close_sd20 :parameters () :precondition
  (and (do-normal) (not-closed-sd20) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd20) (not (not-closed-sd20))))
 (:action ugly106close_sd30-endof-condeffs :parameters () :precondition
  (and (do-close_sd30-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd30-condeffs)) (not (done-0))))
 (:action ugly107open-sd11 :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd11) (not (closed-sd11))))
 (:action ugly108open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd7) (not (closed-sd7))))
 (:action ugly109open-sd15 :parameters () :precondition
  (and (do-normal) (closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd15) (not (closed-sd15))))
 (:action ugly110open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly111open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd1) (not (closed-sd1))))
 (:action ugly112close_sd16 :parameters () :precondition
  (and (do-normal) (not-closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd16) (not (not-closed-sd16))))
 (:action ugly113open-sd26 :parameters () :precondition
  (and (do-normal) (closed-sd26) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd26) (not (closed-sd26))))
 (:action ugly114close_sd29-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd29-condeffs) (not-closed-sd30)) :effect (and (done-0)))
 (:action ugly115wait_cb6-endof-condeffs :parameters () :precondition
  (and (do-wait_cb6-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb6-condeffs)) (not (done-0))))) 