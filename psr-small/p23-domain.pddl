
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (closed-sd15) (done-1) (do-close_sd15-condeffs) (not-updated-cb1)
  (closed-sd4) (not-closed-sd1) (closed-cb2) (do-close_sd13-condeffs)
  (not-closed-sd7) (not-updated-cb2) (not-closed-sd6) (closed-sd2) (closed-sd8)
  (closed-sd14) (do-normal) (do-close_sd10-condeffs) (not-closed-sd10)
  (closed-sd7) (not-closed-cb3) (not-closed-sd2) (not-closed-sd5) (closed-sd10)
  (not-closed-sd12) (not-closed-sd9) (not-closed-sd14) (not-closed-sd8)
  (do-wait_cb3-condeffs) (not-closed-sd11) (not-closed-sd13) (closed-sd1)
  (not-closed-sd3) (closed-sd18) (closed-cb1) (not-updated-cb3)
  (do-close_sd14-condeffs) (not-closed-cb1) (closed-sd16) (closed-sd6)
  (not-closed-sd18) (closed-sd9) (not-closed-sd4) (updated-cb2)
  (not-closed-sd15) (updated-cb1) (not-closed-sd16) (closed-cb3)
  (not-closed-cb2) (done-0) (closed-sd5) (closed-sd11) (not-closed-sd17)
  (closed-sd12) (closed-sd3) (updated-cb3) (closed-sd17) (closed-sd13))
 (:action ugly1close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly2close_sd16 :parameters () :precondition
  (and (do-normal) (not-closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd16) (not (not-closed-sd16))))
 (:action ugly3open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly4close_sd15-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd13)) :effect (and (done-0)))
 (:action ugly5open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly6close_sd13-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd15)) :effect (and (done-0)))
 (:action ugly7close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly8close_sd13-condeff0-yes :parameters () :precondition
  (and (do-close_sd13-condeffs) (closed-sd15) (closed-sd14) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly9close_sd11 :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd11) (not (not-closed-sd11))))
 (:action ugly10close_sd15-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd14)) :effect (and (done-0)))
 (:action ugly11wait_cb3-endof-condeffs :parameters () :precondition
  (and (do-wait_cb3-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly12close_sd15-endof-condeffs :parameters () :precondition
  (and (do-close_sd15-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd15-condeffs)) (not (done-0))))
 (:action ugly13close_sd10-condeff0-yes :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly14wait_cb3-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd15)) :effect (and (done-1)))
 (:action ugly15open-sd12 :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd12) (not (closed-sd12))))
 (:action ugly16wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not-closed-cb1) (updated-cb1) (not (closed-cb1))
       (not (not-updated-cb1))))
 (:action ugly17close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd9) (not (not-closed-sd9))))
 (:action ugly18close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd8) (not (not-closed-sd8))))
 (:action ugly19wait_cb3-condeff1-no-2 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly20open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly21open-sd13 :parameters () :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd13) (not (closed-sd13))))
 (:action ugly22wait_cb3-condeff1-yes :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd15) (closed-sd14) (closed-sd13))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly23close_sd13-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd14)) :effect (and (done-0)))
 (:action ugly24wait_cb3-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd10)) :effect (and (done-0)))
 (:action ugly25open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly26close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly27close_sd17 :parameters () :precondition
  (and (do-normal) (not-closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd17) (not (not-closed-sd17))))
 (:action ugly28open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly29wait_cb3-condeff0-yes :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd10)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly30close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly31close_sd14-endof-condeffs :parameters () :precondition
  (and (do-close_sd14-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd14-condeffs)) (not (done-0))))
 (:action ugly32open-sd16 :parameters () :precondition
  (and (do-normal) (closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd16) (not (closed-sd16))))
 (:action ugly33open-cb3 :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly34wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not-closed-cb2) (updated-cb2) (not (closed-cb2))
       (not (not-updated-cb2))))
 (:action ugly35open-sd11 :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly36close_sd13-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly37close_sd13-endof-condeffs :parameters () :precondition
  (and (do-close_sd13-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd13-condeffs)) (not (done-0))))
 (:action ugly38close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly39close_sd10 :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action ugly40close_sd15 :parameters () :precondition
  (and (do-normal) (not-closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd15-condeffs) (closed-sd15)
       (not (not-closed-sd15))))
 (:action ugly41open-sd18 :parameters () :precondition
  (and (do-normal) (closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd18) (not (closed-sd18))))
 (:action ugly42close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd1) (not (not-closed-sd1))))
 (:action ugly43close_sd10-endof-condeffs :parameters () :precondition
  (and (do-close_sd10-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))))
 (:action ugly44close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly45open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly46close_cb3 :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly47open-sd14 :parameters () :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd14) (not (closed-sd14))))
 (:action ugly48open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly49close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd7) (not (not-closed-sd7))))
 (:action ugly50open-sd15 :parameters () :precondition
  (and (do-normal) (closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd15) (not (closed-sd15))))
 (:action ugly51close_sd14-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-sd13)) :effect (and (done-0)))
 (:action ugly52close_sd14-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-sd15)) :effect (and (done-0)))
 (:action ugly53close_sd15-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly54close_sd18 :parameters () :precondition
  (and (do-normal) (not-closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd18) (not (not-closed-sd18))))
 (:action ugly55close_sd14-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly56wait_cb3 :parameters () :precondition
  (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action ugly57close_sd12 :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd12) (not (not-closed-sd12))))
 (:action ugly58open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly59open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly60close_sd13 :parameters () :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd13-condeffs) (closed-sd13)
       (not (not-closed-sd13))))
 (:action ugly61wait_cb3-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd14)) :effect (and (done-1)))
 (:action ugly62open-sd17 :parameters () :precondition
  (and (do-normal) (closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd17) (not (closed-sd17))))
 (:action ugly63close_sd10-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly64open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly65close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly66open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly67open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly68close_sd15-condeff0-yes :parameters () :precondition
  (and (do-close_sd15-condeffs) (closed-sd14) (closed-sd13) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly69close_sd14-condeff0-yes :parameters () :precondition
  (and (do-close_sd14-condeffs) (closed-sd15) (closed-sd13) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly70close_sd14 :parameters () :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd14-condeffs) (closed-sd14)
       (not (not-closed-sd14))))) 