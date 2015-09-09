
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (closed-sd16) (do-wait_cb1-condeffs) (do-close_sd11-condeffs)
  (not-updated-cb1) (closed-sd8) (not-closed-sd3) (closed-sd3)
  (do-close_sd9-condeffs) (not-closed-sd7) (not-updated-cb2) (not-closed-sd8)
  (closed-sd5) (closed-sd14) (closed-sd15) (do-close_sd2-condeffs)
  (do-close_sd8-condeffs) (closed-cb3) (closed-sd7) (not-closed-cb3)
  (not-closed-sd4) (not-closed-sd2) (not-closed-sd1) (not-closed-sd11)
  (not-closed-sd9) (not-closed-sd13) (closed-sd11) (closed-sd9) (closed-sd2)
  (do-wait_cb2-condeffs) (not-closed-sd15) (closed-sd13) (closed-sd6)
  (not-closed-sd6) (not-closed-sd16) (closed-sd1) (not-closed-sd10)
  (closed-sd4) (not-closed-sd17) (do-close_sd1-condeffs) (updated-cb3) (done-1)
  (closed-sd12) (do-close_sd10-condeffs) (not-updated-cb3) (closed-cb1)
  (not-closed-sd5) (not-closed-cb2) (not-closed-sd18) (not-closed-sd12)
  (closed-sd18) (done-2) (closed-sd10) (closed-cb2) (do-normal) (updated-cb1)
  (not-closed-cb1) (closed-sd17) (done-0) (not-closed-sd14) (updated-cb2))
 (:action ugly1close_sd15 :parameters () :precondition
  (and (do-normal) (not-closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd15) (not (not-closed-sd15))))
 (:action ugly2close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly3close_sd10-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly4close_sd9-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly5close_sd10-condeff0-yes :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-sd9) (closed-sd8) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly6close_sd9-condeff0-yes :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd10) (closed-sd8) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly7open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly8close_sd10-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly9close_sd12 :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd12) (not (not-closed-sd12))))
 (:action ugly10open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly11close_sd8-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly12wait_cb2-condeff0-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd2) (closed-sd8)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly13close_sd8-condeff0-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd2) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly14open-sd15 :parameters () :precondition
  (and (do-normal) (closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd15) (not (closed-sd15))))
 (:action ugly15open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly16open-sd16 :parameters () :precondition
  (and (do-normal) (closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd16) (not (closed-sd16))))
 (:action ugly17close_sd8-condeff1-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd10) (closed-sd9) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly18wait_cb2-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly19close_sd11 :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action ugly20open-sd18 :parameters () :precondition
  (and (do-normal) (closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd18) (not (closed-sd18))))
 (:action ugly21close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly22wait_cb2-condeff1-no-2 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly23wait_cb2-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly24wait_cb2-condeff2-no-2 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd8)) :effect (and (done-2)))
 (:action ugly25open-sd11 :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly26close_sd11-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly27close_sd8-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly28open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly29wait_cb2-endof-condeffs :parameters () :precondition
  (and (do-wait_cb2-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly30close_sd17 :parameters () :precondition
  (and (do-normal) (not-closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd17) (not (not-closed-sd17))))
 (:action ugly31open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly32wait_cb2-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly33close_sd9-condeff1-yes :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd11) (closed-sd8) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly34close_sd2-endof-condeffs :parameters () :precondition
  (and (do-close_sd2-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))))
 (:action ugly35open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly36close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly37close_sd8-condeff2-no-1 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd9)) :effect (and (done-2)))
 (:action ugly38close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly39close_sd8-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly40close_sd2-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly41close_sd11-endof-condeffs :parameters () :precondition
  (and (do-close_sd11-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0))))
 (:action ugly42close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly43close_sd2-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly44wait_cb2-condeff2-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd11)) :effect (and (done-2)))
 (:action ugly45close_sd11-condeff0-yes :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd9) (closed-sd8) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly46close_sd1-endof-condeffs :parameters () :precondition
  (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly47close_sd8-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly48close_sd16 :parameters () :precondition
  (and (do-normal) (not-closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd16) (not (not-closed-sd16))))
 (:action ugly49wait_cb2-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly50close_sd8-condeff2-no-2 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-cb2)) :effect (and (done-2)))
 (:action ugly51close_sd8-condeff2-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd11) (closed-sd9) (closed-cb2)) :effect
  (and (done-2) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly52close_sd9-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd10)) :effect (and (done-0)))
 (:action ugly53open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly54close_sd8-endof-condeffs :parameters () :precondition
  (and (do-close_sd8-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly55close_sd9-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly56close_sd10-endof-condeffs :parameters () :precondition
  (and (do-close_sd10-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))))
 (:action ugly57wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly58wait_cb3 :parameters () :precondition
  (and (do-normal) (not-updated-cb3)) :effect
  (and (not-closed-cb3) (updated-cb3) (not (closed-cb3))
       (not (not-updated-cb3))))
 (:action ugly59close_sd14 :parameters () :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd14) (not (not-closed-sd14))))
 (:action ugly60close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly61open-cb3 :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly62close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly63open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly64close_sd8-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly65close_sd11-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly66close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action ugly67open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly68close_sd9-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly69wait_cb1-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly70close_sd18 :parameters () :precondition
  (and (do-normal) (not-closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd18) (not (not-closed-sd18))))
 (:action ugly71close_sd13 :parameters () :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd13) (not (not-closed-sd13))))
 (:action ugly72close_sd10-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly73close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd7) (not (not-closed-sd7))))
 (:action ugly74wait_cb2-condeff2-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd11) (closed-sd9) (closed-sd8)) :effect
  (and (done-2) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly75open-sd13 :parameters () :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd13) (not (closed-sd13))))
 (:action ugly76close_sd2-condeff0-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd8) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly77close_sd9-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly78close_sd8-condeff2-no-0 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd11)) :effect (and (done-2)))
 (:action ugly79open-sd17 :parameters () :precondition
  (and (do-normal) (closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd17) (not (closed-sd17))))
 (:action ugly80wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly81wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly82close_sd9-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly83close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly84close_sd10 :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action ugly85wait_cb2-condeff2-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd9)) :effect (and (done-2)))
 (:action ugly86open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly87close_sd1-condeff0-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly88open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly89open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly90close_sd11-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly91open-sd12 :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd12) (not (closed-sd12))))
 (:action ugly92open-sd14 :parameters () :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd14) (not (closed-sd14))))
 (:action ugly93close_sd9-endof-condeffs :parameters () :precondition
  (and (do-close_sd9-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly94close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly95close_cb3 :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly96wait_cb2-condeff1-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd10) (closed-sd9) (closed-sd8)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly97close_sd1-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly98wait_cb1-endof-condeffs :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0))))) 