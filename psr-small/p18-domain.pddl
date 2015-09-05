
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (closed-sd8) (done-0) (closed-sd2) (not-closed-sd3)
  (not-closed-sd4) (do-close_sd13-condeffs) (do-wait_cb2-condeffs)
  (not-closed-sd7) (closed-sd1) (closed-sd9) (closed-sd11) (not-closed-sd9)
  (updated-cb1) (closed-sd6) (closed-sd3) (not-updated-cb1)
  (do-close_sd11-condeffs) (not-closed-sd8) (not-closed-sd14) (not-closed-sd11)
  (closed-sd4) (closed-cb1) (closed-sd7) (not-closed-sd16) (closed-cb2)
  (not-closed-sd2) (updated-cb2) (not-closed-sd12) (not-closed-sd1)
  (closed-sd15) (closed-sd16) (not-closed-cb1) (not-closed-sd15) (closed-sd10)
  (closed-sd14) (not-closed-sd13) (not-updated-cb2) (not-closed-cb2)
  (do-close_sd10-condeffs) (closed-sd12) (closed-sd13) (not-closed-sd5)
  (do-normal) (closed-sd5) (not-closed-sd10) (not-closed-sd6) (done-1))
 (:action ugly1open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly2open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly3close_sd11-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd13)) :effect (and (done-0)))
 (:action ugly4open-sd15 :parameters () :precondition
  (and (do-normal) (closed-sd15) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd15) (not (closed-sd15))))
 (:action ugly5close_sd11-endof-condeffs :parameters () :precondition
  (and (do-close_sd11-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0))))
 (:action ugly6open-sd12 :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd12) (not (closed-sd12))))
 (:action ugly7open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly8close_sd10 :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action ugly9wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not-closed-cb1) (updated-cb1) (not (closed-cb1))
       (not (not-updated-cb1))))
 (:action ugly10close_sd11-condeff0-yes :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd13) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly11close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd8) (not (not-closed-sd8))))
 (:action ugly12close_sd13-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly13wait_cb2-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly14wait_cb2-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly15close_sd10-endof-condeffs :parameters () :precondition
  (and (do-close_sd10-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))))
 (:action ugly16open-sd16 :parameters () :precondition
  (and (do-normal) (closed-sd16) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd16) (not (closed-sd16))))
 (:action ugly17open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly18close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2)) :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly19open-sd11 :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly20close_sd10-condeff0-yes :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly21close_sd14 :parameters () :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd14) (not (not-closed-sd14))))
 (:action ugly22close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd9) (not (not-closed-sd9))))
 (:action ugly23open-sd14 :parameters () :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd14) (not (closed-sd14))))
 (:action ugly24close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly25open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly26wait_cb2-condeff1-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd13) (closed-sd11)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly27open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly28close_sd15 :parameters () :precondition
  (and (do-normal) (not-closed-sd15) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd15) (not (not-closed-sd15))))
 (:action ugly29wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly30close_sd13-condeff0-yes :parameters () :precondition
  (and (do-close_sd13-condeffs) (closed-sd11) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly31open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly32open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly33wait_cb2-condeff0-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd10)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly34close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly35wait_cb2-endof-condeffs :parameters () :precondition
  (and (do-wait_cb2-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly36close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly37close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd7) (not (not-closed-sd7))))
 (:action ugly38close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly39close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly40open-sd13 :parameters () :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd13) (not (closed-sd13))))
 (:action ugly41close_sd13-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly42close_sd10-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly43close_sd16 :parameters () :precondition
  (and (do-normal) (not-closed-sd16) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd16) (not (not-closed-sd16))))
 (:action ugly44close_sd11 :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action ugly45close_sd13 :parameters () :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd13-condeffs) (closed-sd13)
       (not (not-closed-sd13))))
 (:action ugly46close_sd13-endof-condeffs :parameters () :precondition
  (and (do-close_sd13-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd13-condeffs)) (not (done-0))))
 (:action ugly47open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly48close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd1) (not (not-closed-sd1))))
 (:action ugly49close_sd12 :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd12) (not (not-closed-sd12))))
 (:action ugly50close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2)) :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly51close_sd11-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly52open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly53wait_cb2-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd10)) :effect (and (done-0)))
 (:action ugly54open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly55open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-cb1) (not (closed-cb1))))) 