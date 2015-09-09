
(define (domain grounded-strips-psr) (:requirements :strips :action-costs)
 (:predicates (closed-sd11) (not-closed-cb4) (do-close_sd20-condeffs)
  (closed-sd8) (closed-sd14) (do-close_sd7-condeffs) (closed-cb3)
  (not-closed-sd15) (not-closed-cb3) (not-closed-sd18) (do-close_sd19-condeffs)
  (do-close_sd12-condeffs) (not-closed-sd4) (closed-sd18) (updated-cb3)
  (not-closed-sd20) (do-close_sd15-condeffs) (do-close_sd17-condeffs)
  (not-closed-sd17) (do-close_sd16-condeffs) (not-closed-sd8) (not-updated-cb5)
  (updated-cb5) (done-0) (closed-sd16) (not-closed-sd9) (closed-cb4)
  (not-closed-sd16) (not-closed-sd1) (do-close_sd11-condeffs) (not-updated-cb3)
  (closed-sd10) (not-closed-sd14) (updated-cb2) (do-normal) (updated-cb4)
  (closed-sd5) (not-closed-sd2) (do-wait_cb4-condeffs) (not-closed-sd11)
  (closed-sd13) (closed-sd12) (do-wait_cb3-condeffs) (do-wait_cb2-condeffs)
  (not-closed-sd6) (do-close_sd3-condeffs) (closed-sd2) (not-closed-sd3)
  (closed-sd20) (not-updated-cb4) (not-closed-sd10) (not-updated-cb1)
  (do-wait_cb5-condeffs) (closed-sd4) (not-closed-cb2) (not-updated-cb2)
  (not-closed-sd13) (do-close_sd5-condeffs) (do-close_sd2-condeffs)
  (do-close_sd8-condeffs) (do-close_sd6-condeffs) (closed-cb5) (closed-sd19)
  (do-close_sd18-condeffs) (done-2) (not-closed-sd7) (closed-sd7)
  (not-closed-sd19) (closed-sd17) (closed-sd9) (updated-cb1) (closed-sd6)
  (closed-sd15) (not-closed-cb1) (do-close_sd1-condeffs) (not-closed-sd12)
  (not-closed-cb5) (closed-cb1) (closed-cb2) (not-closed-sd5)
  (do-close_sd4-condeffs) (closed-sd3) (done-1) (closed-sd1))
 (:functions (total-cost) - number)
 (:action ugly1close_sd3-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly2open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd8) (not (closed-sd8))))
 (:action ugly3wait_cb2-endof-condeffs :parameters () :precondition
  (and (do-wait_cb2-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0))))
 (:action ugly4wait_cb5-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb5-condeffs) (not-closed-sd4)) :effect (and (done-1)))
 (:action ugly5close_sd16-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-cb4)) :effect (and (done-0)))
 (:action ugly6close_sd2-endof-condeffs :parameters () :precondition
  (and (do-close_sd2-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly7close_sd19-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd19-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly8close_sd15-endof-condeffs :parameters () :precondition
  (and (do-close_sd15-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd15-condeffs)) (not (done-0))))
 (:action ugly9close_sd8-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly10wait_cb5 :parameters () :precondition
  (and (do-normal) (not-updated-cb5)) :effect
  (and (not (do-normal)) (do-wait_cb5-condeffs) (updated-cb5)
       (not (not-updated-cb5))))
 (:action ugly11close_sd4-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd19)) :effect (and (done-0)))
 (:action ugly12close_cb5 :parameters () :precondition
  (and (do-normal) (not-closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (closed-cb5) (not-updated-cb5) (not (not-closed-cb5))
       (not (updated-cb5))))
 (:action ugly13wait_cb3-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly14close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (closed-sd9) (not (not-closed-sd9))))
 (:action ugly15close_sd8-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-cb3)) :effect (and (done-1)))
 (:action ugly16close_sd11-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd15)) :effect (and (done-1)))
 (:action ugly17close_sd15-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly18close_sd19-condeff1-yes :parameters () :precondition
  (and (do-close_sd19-condeffs) (closed-sd4) (closed-sd3) (closed-sd2)
       (closed-sd20) (closed-cb5))
  :effect (and (done-1) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly19close_sd4-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly20open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd5) (not (closed-sd5))))
 (:action ugly21open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd7) (not (closed-sd7))))
 (:action ugly22close_sd17 :parameters () :precondition
  (and (do-normal) (not-closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd17-condeffs) (closed-sd17)
       (not (not-closed-sd17))))
 (:action ugly23wait_cb3-condeff2-no-1 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd11)) :effect (and (done-2)))
 (:action ugly24open-cb4 :parameters () :precondition
  (and (do-normal) (closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly25wait_cb5-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb5-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly26close_sd18-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd18-condeffs) (not-closed-sd17)) :effect (and (done-0)))
 (:action ugly27wait_cb4-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd17)) :effect (and (done-1)))
 (:action ugly28close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly29close_sd3-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd19)) :effect (and (done-0)))
 (:action ugly30open-cb3 :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly31close_sd16-endof-condeffs :parameters () :precondition
  (and (do-close_sd16-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd16-condeffs)) (not (done-0))))
 (:action ugly32close_sd11-condeff1-yes :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd15) (closed-sd8) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly33close_sd2-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd20)) :effect (and (done-1)))
 (:action ugly34close_sd11-endof-condeffs :parameters () :precondition
  (and (do-close_sd11-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly35close_sd20-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd20-condeffs) (not-closed-sd3)) :effect (and (done-1)))
 (:action ugly36close_sd19-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd19-condeffs) (not-closed-cb5)) :effect (and (done-0)))
 (:action ugly37wait_cb3-condeff2-no-2 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd8)) :effect (and (done-2)))
 (:action ugly38open-sd17 :parameters () :precondition
  (and (do-normal) (closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd17) (not (closed-sd17))))
 (:action ugly39open-cb5 :parameters () :precondition
  (and (do-normal) (closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly40close_sd12 :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd12-condeffs) (closed-sd12)
       (not (not-closed-sd12))))
 (:action ugly41close_sd11-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly42close_sd20-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd20-condeffs) (not-closed-cb5)) :effect (and (done-0)))
 (:action ugly43wait_cb5-condeff0-no-2 :parameters () :precondition
  (and (do-wait_cb5-condeffs) (not-closed-sd20)) :effect (and (done-0)))
 (:action ugly44close_cb4 :parameters () :precondition
  (and (do-normal) (not-closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (closed-cb4) (not-updated-cb4) (not (not-closed-cb4))
       (not (updated-cb4))))
 (:action ugly45close_sd2-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd3)) :effect (and (done-1)))
 (:action ugly46close_sd19-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd19-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly47close_sd18 :parameters () :precondition
  (and (do-normal) (not-closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd18-condeffs) (closed-sd18)
       (not (not-closed-sd18))))
 (:action ugly48close_sd20 :parameters () :precondition
  (and (do-normal) (not-closed-sd20) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd20-condeffs) (closed-sd20)
       (not (not-closed-sd20))))
 (:action ugly49open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd2) (not (closed-sd2))))
 (:action ugly50close_sd5-endof-condeffs :parameters () :precondition
  (and (do-close_sd5-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))))
 (:action ugly51wait_cb5-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb5-condeffs) (not-closed-sd3)) :effect (and (done-1)))
 (:action ugly52open-sd16 :parameters () :precondition
  (and (do-normal) (closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd16) (not (closed-sd16))))
 (:action ugly53close_sd12-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly54close_sd20-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd20-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly55close_sd4-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-cb5)) :effect (and (done-0)))
 (:action ugly56close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly57close_sd1-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly58close_sd8-condeff1-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd15) (closed-sd11) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly59close_sd2-condeff0-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd1) (closed-sd20) (closed-sd19)
       (closed-cb5))
  :effect (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly60wait_cb4-endof-condeffs :parameters () :precondition
  (and (do-wait_cb4-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb4-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly61open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly62close_sd16-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly63close_sd8-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly64open-sd18 :parameters () :precondition
  (and (do-normal) (closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd18) (not (closed-sd18))))
 (:action ugly65close_sd18-condeff0-yes :parameters () :precondition
  (and (do-close_sd18-condeffs) (closed-sd17) (closed-cb4)) :effect
  (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly66close_sd2-condeff1-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd4) (closed-sd3) (closed-sd20)
       (closed-sd19) (closed-cb5))
  :effect (and (done-1) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly67close_sd19-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd19-condeffs) (not-closed-sd20)) :effect (and (done-1)))
 (:action ugly68wait_cb2-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly69close_sd18-endof-condeffs :parameters () :precondition
  (and (do-close_sd18-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd18-condeffs)) (not (done-0))))
 (:action ugly70close_sd7-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd16)) :effect (and (done-0)))
 (:action ugly71close_sd11-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly72wait_cb5-endof-condeffs :parameters () :precondition
  (and (do-wait_cb5-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb5-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly73close_sd13 :parameters () :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (closed-sd13) (not (not-closed-sd13))))
 (:action ugly74close_sd20-endof-condeffs :parameters () :precondition
  (and (do-close_sd20-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd20-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly75close_sd2-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-cb5)) :effect (and (done-1)))
 (:action ugly76close_sd19-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd19-condeffs) (not-closed-sd4)) :effect (and (done-1)))
 (:action ugly77close_sd1-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd20)) :effect (and (done-0)))
 (:action ugly78wait_cb5-condeff1-no-3 :parameters () :precondition
  (and (do-wait_cb5-condeffs) (not-closed-sd20)) :effect (and (done-1)))
 (:action ugly79close_sd19-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd19-condeffs) (not-closed-sd20)) :effect (and (done-0)))
 (:action ugly80close_sd3-condeff0-yes :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd4) (closed-sd2) (closed-sd20)
       (closed-sd19) (closed-cb5))
  :effect (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly81wait_cb3-condeff2-yes :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd15) (closed-sd11) (closed-sd8)) :effect
  (and (done-2) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly82close_sd20-condeff0-yes :parameters () :precondition
  (and (do-close_sd20-condeffs) (closed-sd1) (closed-sd2) (closed-sd19)
       (closed-cb5))
  :effect (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly83close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly84open-sd11 :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd11) (not (closed-sd11))))
 (:action ugly85close_sd12-endof-condeffs :parameters () :precondition
  (and (do-close_sd12-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd12-condeffs)) (not (done-0))))
 (:action ugly86wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly87close_sd2-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd20)) :effect (and (done-0)))
 (:action ugly88close_sd18-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd18-condeffs) (not-closed-cb4)) :effect (and (done-0)))
 (:action ugly89close_sd6-endof-condeffs :parameters () :precondition
  (and (do-close_sd6-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))))
 (:action ugly90close_sd8-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd12)) :effect (and (done-0)))
 (:action ugly91close_sd3-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly92open-sd13 :parameters () :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd13) (not (closed-sd13))))
 (:action ugly93close_sd1-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd19)) :effect (and (done-0)))
 (:action ugly94close_sd20-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd20-condeffs) (not-closed-sd4)) :effect (and (done-1)))
 (:action ugly95close_sd20-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd20-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly96close_sd2-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly97close_sd10 :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (closed-sd10) (not (not-closed-sd10))))
 (:action ugly98close_sd20-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd20-condeffs) (not-closed-sd19)) :effect (and (done-1)))
 (:action ugly99close_sd4-condeff0-yes :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd3) (closed-sd2) (closed-sd20)
       (closed-sd19) (closed-cb5))
  :effect (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly100close_sd2-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd19)) :effect (and (done-0)))
 (:action ugly101close_sd6-condeff0-yes :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly102close_sd11-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly103close_cb3 :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly104close_sd4-endof-condeffs :parameters () :precondition
  (and (do-close_sd4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))))
 (:action ugly105close_sd7-condeff0-yes :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd16) (closed-cb4)) :effect
  (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly106close_sd12-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly107close_sd12-condeff0-yes :parameters () :precondition
  (and (do-close_sd12-condeffs) (closed-sd11) (closed-sd8) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly108close_sd7-endof-condeffs :parameters () :precondition
  (and (do-close_sd7-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))))
 (:action ugly109wait_cb3-condeff1-no-2 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly110close_sd16-condeff0-yes :parameters () :precondition
  (and (do-close_sd16-condeffs) (closed-sd7) (closed-cb4)) :effect
  (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly111close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly112close_sd3-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd20)) :effect (and (done-0)))
 (:action ugly113close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action ugly114close_sd7-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-cb4)) :effect (and (done-0)))
 (:action ugly115open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd6) (not (closed-sd6))))
 (:action ugly116wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not-closed-cb1) (updated-cb1) (not (closed-cb1))
       (not (not-updated-cb1))))
 (:action ugly117wait_cb3-endof-condeffs :parameters () :precondition
  (and (do-wait_cb3-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly118close_sd19-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd19-condeffs) (not-closed-sd3)) :effect (and (done-1)))
 (:action ugly119close_sd2-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd19)) :effect (and (done-1)))
 (:action ugly120close_sd20-condeff1-yes :parameters () :precondition
  (and (do-close_sd20-condeffs) (closed-sd4) (closed-sd3) (closed-sd2)
       (closed-sd19) (closed-cb5))
  :effect (and (done-1) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly121close_sd1-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb5)) :effect (and (done-0)))
 (:action ugly122close_sd19-endof-condeffs :parameters () :precondition
  (and (do-close_sd19-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd19-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly123wait_cb5-condeff0-yes :parameters () :precondition
  (and (do-wait_cb5-condeffs) (closed-sd1) (closed-sd2) (closed-sd20)
       (closed-sd19))
  :effect (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly124close_sd11-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd12)) :effect (and (done-0)))
 (:action ugly125close_sd17-condeff0-yes :parameters () :precondition
  (and (do-close_sd17-condeffs) (closed-sd18) (closed-cb4)) :effect
  (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly126wait_cb5-condeff0-no-3 :parameters () :precondition
  (and (do-wait_cb5-condeffs) (not-closed-sd19)) :effect (and (done-0)))
 (:action ugly127open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd3) (not (closed-sd3))))
 (:action ugly128close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly129close_sd8-endof-condeffs :parameters () :precondition
  (and (do-close_sd8-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly130close_sd20-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd20-condeffs) (not-closed-cb5)) :effect (and (done-1)))
 (:action ugly131close_sd19 :parameters () :precondition
  (and (do-normal) (not-closed-sd19) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd19-condeffs) (closed-sd19)
       (not (not-closed-sd19))))
 (:action ugly132close_sd17-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd17-condeffs) (not-closed-sd18)) :effect (and (done-0)))
 (:action ugly133close_sd3-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-cb5)) :effect (and (done-0)))
 (:action ugly134wait_cb3-condeff0-yes :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd6)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly135open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd4) (not (closed-sd4))))
 (:action ugly136close_sd20-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd20-condeffs) (not-closed-sd2)) :effect (and (done-1)))
 (:action ugly137wait_cb4 :parameters () :precondition
  (and (do-normal) (not-updated-cb4)) :effect
  (and (not (do-normal)) (do-wait_cb4-condeffs) (updated-cb4)
       (not (not-updated-cb4))))
 (:action ugly138close_sd19-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd19-condeffs) (not-closed-sd2)) :effect (and (done-1)))
 (:action ugly139close_sd8-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly140close_sd16 :parameters () :precondition
  (and (do-normal) (not-closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd16-condeffs) (closed-sd16)
       (not (not-closed-sd16))))
 (:action ugly141open-sd12 :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd12) (not (closed-sd12))))
 (:action ugly142close_sd2-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-cb5)) :effect (and (done-0)))
 (:action ugly143close_sd2-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd4)) :effect (and (done-1)))
 (:action ugly144open-sd19 :parameters () :precondition
  (and (do-normal) (closed-sd19) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd19) (not (closed-sd19))))
 (:action ugly145close_sd14 :parameters () :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (closed-sd14) (not (not-closed-sd14))))
 (:action ugly146wait_cb3 :parameters () :precondition
  (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action ugly147close_sd3-endof-condeffs :parameters () :precondition
  (and (do-close_sd3-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))))
 (:action ugly148wait_cb3-condeff1-yes :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd12) (closed-sd11) (closed-sd8)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly149close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly150close_sd17-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd17-condeffs) (not-closed-cb4)) :effect (and (done-0)))
 (:action ugly151close_sd12-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly152wait_cb3-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly153close_sd4-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd20)) :effect (and (done-0)))
 (:action ugly154wait_cb3-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly155close_sd15-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly156close_sd8-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd15)) :effect (and (done-1)))
 (:action ugly157wait_cb5-condeff1-no-2 :parameters () :precondition
  (and (do-wait_cb5-condeffs) (not-closed-sd2)) :effect (and (done-1)))
 (:action ugly158close_sd6-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly159wait_cb5-condeff1-yes :parameters () :precondition
  (and (do-wait_cb5-condeffs) (closed-sd4) (closed-sd3) (closed-sd2)
       (closed-sd20) (closed-sd19))
  :effect (and (done-1) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly160wait_cb2-condeff0-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd5)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly161close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly162close_sd15-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly163close_sd19-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd19-condeffs) (not-closed-cb5)) :effect (and (done-1)))
 (:action ugly164close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly165wait_cb4-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly166close_sd1-condeff0-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd2) (closed-sd20) (closed-sd19)
       (closed-cb5))
  :effect (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly167open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd9) (not (closed-sd9))))
 (:action ugly168wait_cb4-condeff1-yes :parameters () :precondition
  (and (do-wait_cb4-condeffs) (closed-sd18) (closed-sd17)) :effect
  (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly169open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd10) (not (closed-sd10))))
 (:action ugly170close_sd17-endof-condeffs :parameters () :precondition
  (and (do-close_sd17-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd17-condeffs)) (not (done-0))))
 (:action ugly171wait_cb5-condeff1-no-4 :parameters () :precondition
  (and (do-wait_cb5-condeffs) (not-closed-sd19)) :effect (and (done-1)))
 (:action ugly172open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-sd1) (not (closed-sd1))))
 (:action ugly173open-sd20 :parameters () :precondition
  (and (do-normal) (closed-sd20) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd20) (not (closed-sd20))))
 (:action ugly174close_sd11-condeff0-yes :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd12) (closed-sd8) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly175close_sd5-condeff0-yes :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly176open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect (and (increase (total-cost) 1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly177close_sd20-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd20-condeffs) (not-closed-sd19)) :effect (and (done-0)))
 (:action ugly178close_sd19-condeff0-yes :parameters () :precondition
  (and (do-close_sd19-condeffs) (closed-sd1) (closed-sd2) (closed-sd20)
       (closed-cb5))
  :effect (and (done-0) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly179close_sd11 :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action ugly180close_sd5-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly181wait_cb4-condeff0-yes :parameters () :precondition
  (and (do-wait_cb4-condeffs) (closed-sd7) (closed-sd16)) :effect
  (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly182close_sd11-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-cb3)) :effect (and (done-1)))
 (:action ugly183close_sd1-endof-condeffs :parameters () :precondition
  (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly184open-sd14 :parameters () :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd14) (not (closed-sd14))))
 (:action ugly185close_sd15 :parameters () :precondition
  (and (do-normal) (not-closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (not (do-normal)) (do-close_sd15-condeffs) (closed-sd15)
       (not (not-closed-sd15))))
 (:action ugly186wait_cb4-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd16)) :effect (and (done-0)))
 (:action ugly187close_sd8-condeff0-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd12) (closed-sd11) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly188wait_cb4-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd18)) :effect (and (done-1)))
 (:action ugly189close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly190wait_cb5-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb5-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly191wait_cb3-condeff2-no-0 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd15)) :effect (and (done-2)))
 (:action ugly192open-sd15 :parameters () :precondition
  (and (do-normal) (closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd15) (not (closed-sd15))))
 (:action ugly193close_sd4-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly194close_sd15-condeff0-yes :parameters () :precondition
  (and (do-close_sd15-condeffs) (closed-sd11) (closed-sd8) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))) 