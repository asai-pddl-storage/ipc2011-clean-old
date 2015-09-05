
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (goal-reached) (closed-sd7) (closed-sd4) (do-wait_cb3-condeffs)
  (do-close_sd14-condeffs) (not-closed-sd7) (not-updated-cb1) (not-closed-sd4)
  (closed-sd6) (not-closed-cb2) (closed-sd16) (do-close_sd10-condeffs)
  (do-close_sd13-condeffs) (closed-sd1) (closed-sd5) (closed-sd9)
  (do-close_sd11-condeffs) (not-closed-cb3) (not-updated-cb3) (not-closed-cb1)
  (not-closed-sd6) (do-close_sd12-condeffs) (not-closed-sd13) (closed-sd12)
  (done-1) (closed-sd8) (not-closed-sd8) (not-closed-sd14) (closed-sd14)
  (not-closed-sd1) (closed-sd15) (not-closed-sd12) (not-closed-sd3)
  (closed-cb2) (not-closed-sd9) (do-normal) (closed-sd11)
  (do-close_sd9-condeffs) (do-close_sd1-condeffs) (do-close_sd7-condeffs)
  (closed-sd2) (not-closed-sd11) (not-updated-cb2) (do-close_sd16-condeffs)
  (do-close_sd5-condeffs) (updated-cb3) (not-closed-sd16) (not-closed-sd2)
  (do-close_sd8-condeffs) (closed-sd10) (not-closed-sd5) (not-closed-sd15)
  (do-wait_cb1-condeffs) (do-close_sd4-condeffs) (updated-cb1) (closed-cb3)
  (do-wait_cb2-condeffs) (closed-cb1) (do-close_sd15-condeffs) (closed-sd3)
  (updated-cb2) (done-0) (do-close_sd3-condeffs) (not-closed-sd10)
  (closed-sd13) (do-close_sd6-condeffs))
 (:action ugly1reach-goal-142 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2close_sd11-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd15)) :effect (and (done-0)))
 (:action ugly3close_sd16-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly4reach-goal-310 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly5reach-goal-259 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly6reach-goal-413 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly7reach-goal-366 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly8close_sd8-condeff1-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd7) (closed-sd12) (closed-sd9)
       (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly9reach-goal-97 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly10open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly11reach-goal-381 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly12reach-goal-193 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly13reach-goal-120 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly14reach-goal-52 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly15reach-goal-30 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly16reach-goal-468 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly17reach-goal-323 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly18reach-goal-353 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly19wait_cb3-condeff0-no-2 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd10)) :effect (and (done-0)))
 (:action ugly20close_sd16-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-cb3)) :effect (and (done-1)))
 (:action ugly21reach-goal-232 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly22reach-goal-157 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly23close_sd7-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd14)) :effect (and (done-1)))
 (:action ugly24reach-goal-361 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly25reach-goal-148 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly26reach-goal-471 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly27reach-goal-10 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly28reach-goal-480 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly29close_sd11-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd14)) :effect (and (done-0)))
 (:action ugly30reach-goal-294 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly31reach-goal-325 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly32reach-goal-117 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly33reach-goal-175 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly34reach-goal-341 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly35close_sd10-endof-condeffs :parameters () :precondition
  (and (do-close_sd10-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly36reach-goal-81 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly37reach-goal-319 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly38reach-goal-495 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly39close_sd14-condeff1-yes :parameters () :precondition
  (and (do-close_sd14-condeffs) (closed-sd7) (closed-sd12) (closed-sd10)
       (closed-sd11) (closed-sd15) (closed-sd13) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly40reach-goal-145 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly41reach-goal-204 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly42reach-goal-152 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly43reach-goal-372 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly44reach-goal-261 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly45reach-goal-11 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly46close_sd10-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly47reach-goal-359 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly48reach-goal-19 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly49reach-goal-273 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly50reach-goal-59 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly51reach-goal-79 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly52open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly53reach-goal-347 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly54close_sd4-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly55close_sd12-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly56close_sd10 :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action ugly57close_sd5-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly58reach-goal-51 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly59reach-goal-115 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly60reach-goal-125 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly61reach-goal-380 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly62close_sd11-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd16)) :effect (and (done-0)))
 (:action ugly63close_sd9-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd16)) :effect (and (done-0)))
 (:action ugly64close_sd1-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly65reach-goal-287 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly66reach-goal-479 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly67reach-goal-274 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly68reach-goal-376 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly69close_sd4-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly70reach-goal-309 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly71reach-goal-391 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly72reach-goal-210 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly73wait_cb1-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly74reach-goal-429 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly75reach-goal-163 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly76reach-goal-109 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly77reach-goal-32 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-cb3) (closed-sd11) (closed-sd15) (closed-sd14)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly78close_sd5-endof-condeffs :parameters () :precondition
  (and (do-close_sd5-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))))
 (:action ugly79close_sd13-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd16)) :effect (and (done-1)))
 (:action ugly80close_cb3 :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly81wait_cb3-condeff0-yes :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd7) (closed-sd12) (closed-sd10)
       (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly82close_sd12-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly83reach-goal-241 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly84reach-goal-308 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly85reach-goal-348 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly86reach-goal-393 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly87close_sd10-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly88wait_cb2-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd14)) :effect (and (done-0)))
 (:action ugly89reach-goal-15 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly90reach-goal-219 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly91reach-goal-162 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly92reach-goal-306 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly93close_sd15-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly94close_sd11-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd14)) :effect (and (done-1)))
 (:action ugly95reach-goal-443 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly96close_sd15-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd10)) :effect (and (done-0)))
 (:action ugly97reach-goal-111 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly98reach-goal-509 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly99close_sd1-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly100close_sd14-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly101reach-goal-47 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly102reach-goal-149 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly103reach-goal-298 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly104reach-goal-351 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly105close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly106reach-goal-262 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly107reach-goal-466 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly108reach-goal-357 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly109reach-goal-171 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly110reach-goal-50 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly111reach-goal-29 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly112close_sd14-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-sd15)) :effect (and (done-0)))
 (:action ugly113reach-goal-285 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly114wait_cb3-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly115reach-goal-222 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly116close_sd8-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly117close_sd9-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd10)) :effect (and (done-0)))
 (:action ugly118close_sd14-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly119close_sd15-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly120reach-goal-38 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly121close_sd7-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly122reach-goal-473 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly123reach-goal-407 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly124reach-goal-457 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly125close_sd8-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd15)) :effect (and (done-0)))
 (:action ugly126reach-goal-458 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly127reach-goal-174 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly128close_sd10-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd14)) :effect (and (done-1)))
 (:action ugly129wait_cb1-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly130close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly131reach-goal-185 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly132close_sd11-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly133close_sd15-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly134reach-goal-430 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly135reach-goal-282 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly136reach-goal-235 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly137reach-goal-396 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly138reach-goal-322 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly139reach-goal-140 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly140reach-goal-384 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13)
       (closed-cb3) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly141reach-goal-364 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly142reach-goal-488 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly143close_sd6-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly144reach-goal-139 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly145reach-goal-339 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly146reach-goal-449 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly147reach-goal-422 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly148close_sd9-condeff1-yes :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd7) (closed-sd12) (closed-sd8)
       (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly149close_sd11-condeff0-yes :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd16) (closed-sd14) (closed-sd15)
       (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly150reach-goal-409 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly151close_sd3-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly152reach-goal-311 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly153reach-goal-356 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly154reach-goal-506 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly155reach-goal-144 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly156reach-goal-151 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly157reach-goal-476 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly158close_sd13-condeff0-no-6 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly159reach-goal-320 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13)
       (closed-cb3) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly160reach-goal-279 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly161close_sd11 :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action ugly162close_sd11-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly163close_sd11-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd10)) :effect (and (done-0)))
 (:action ugly164wait_cb1-condeff1-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd6)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly165reach-goal-487 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly166close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action ugly167reach-goal-205 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly168reach-goal-124 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly169reach-goal-66 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly170reach-goal-207 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly171close_sd7-condeff1-no-6 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-cb3)) :effect (and (done-1)))
 (:action ugly172reach-goal-72 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly173reach-goal-24 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly174reach-goal-318 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly175wait_cb2-condeff0-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd16) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly176reach-goal-292 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly177reach-goal-21 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly178wait_cb3 :parameters () :precondition
  (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action ugly179reach-goal-190 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly180close_sd16-condeff1-yes :parameters () :precondition
  (and (do-close_sd16-condeffs) (closed-sd13) (closed-cb3)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly181reach-goal-472 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly182close_sd1-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly183reach-goal-371 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly184close_sd10-condeff1-no-5 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly185reach-goal-116 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly186reach-goal-68 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly187reach-goal-246 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly188reach-goal-2 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly189reach-goal-173 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly190reach-goal-492 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly191close_sd12-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly192reach-goal-189 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly193reach-goal-269 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly194close_sd13-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd10)) :effect (and (done-0)))
 (:action ugly195close_sd9-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly196reach-goal-435 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly197close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action ugly198open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly199reach-goal-401 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly200reach-goal-26 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly201wait_cb3-condeff0-no-4 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd15)) :effect (and (done-0)))
 (:action ugly202close_sd14-condeff0-no-6 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly203reach-goal-328 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly204reach-goal-385 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly205close_sd11-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly206reach-goal-498 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly207reach-goal-293 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly208reach-goal-354 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly209reach-goal-223 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly210close_sd5-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly211reach-goal-181 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly212close_sd13-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-cb3)) :effect (and (done-1)))
 (:action ugly213reach-goal-387 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly214reach-goal-450 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly215close_sd14-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly216wait_cb2-condeff0-no-6 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly217close_sd3-endof-condeffs :parameters () :precondition
  (and (do-close_sd3-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))))
 (:action ugly218open-sd15 :parameters () :precondition
  (and (do-normal) (closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd15) (not (closed-sd15))))
 (:action ugly219close_sd13-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd15)) :effect (and (done-0)))
 (:action ugly220wait_cb2-condeff1-no-2 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly221reach-goal-138 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly222reach-goal-490 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly223wait_cb3-condeff0-no-3 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly224reach-goal-57 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly225close_sd9-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd14)) :effect (and (done-0)))
 (:action ugly226reach-goal-368 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly227reach-goal-69 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly228close_sd14-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-sd16)) :effect (and (done-0)))
 (:action ugly229reach-goal-56 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly230reach-goal-386 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly231close_sd15-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly232reach-goal-112 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly233reach-goal-198 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly234reach-goal-90 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly235reach-goal-426 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly236reach-goal-73 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly237close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly238reach-goal-178 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly239reach-goal-491 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly240reach-goal-337 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly241reach-goal-53 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly242reach-goal-176 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly243reach-goal-278 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly244reach-goal-469 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly245close_sd13-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly246close_sd16-endof-condeffs :parameters () :precondition
  (and (do-close_sd16-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd16-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly247reach-goal-96 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-cb3) (closed-sd13) (closed-sd11) (closed-sd15)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly248reach-goal-312 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly249reach-goal-84 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly250open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly251reach-goal-456 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly252reach-goal-177 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly253reach-goal-184 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly254reach-goal-373 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly255reach-goal-182 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly256open-sd12 :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd12) (not (closed-sd12))))
 (:action ugly257reach-goal-365 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly258reach-goal-374 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly259wait_cb2-condeff1-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd7) (closed-sd12) (closed-sd9)
       (closed-sd8))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly260reach-goal-245 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly261reach-goal-167 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly262close_sd15 :parameters () :precondition
  (and (do-normal) (not-closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd15-condeffs) (closed-sd15)
       (not (not-closed-sd15))))
 (:action ugly263reach-goal-83 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly264reach-goal-221 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly265reach-goal-236 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly266reach-goal-208 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly267reach-goal-497 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly268reach-goal-137 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly269reach-goal-434 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly270reach-goal-296 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly271reach-goal-254 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly272close_sd8-condeff0-no-6 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly273close_sd16-condeff0-no-6 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly274close_sd14-condeff0-yes :parameters () :precondition
  (and (do-close_sd14-condeffs) (closed-sd16) (closed-sd15) (closed-sd11)
       (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly275reach-goal-313 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly276reach-goal-496 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly277reach-goal-76 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly278reach-goal-67 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly279close_sd11-endof-condeffs :parameters () :precondition
  (and (do-close_sd11-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly280reach-goal-483 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly281reach-goal-40 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly282close_sd10-condeff0-yes :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-sd16) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd9) (closed-sd8) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly283reach-goal-444 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly284reach-goal-126 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly285reach-goal-340 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly286close_sd16-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly287reach-goal-123 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly288close_sd12-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly289close_sd3-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly290open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly291reach-goal-28 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly292reach-goal-91 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly293reach-goal-510 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly294reach-goal-470 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly295reach-goal-199 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly296reach-goal-392 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly297reach-goal-179 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly298reach-goal-103 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly299close_sd13-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd14)) :effect (and (done-0)))
 (:action ugly300close_sd15-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly301close_sd11-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd15)) :effect (and (done-1)))
 (:action ugly302close_sd10-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly303close_sd12-condeff1-yes :parameters () :precondition
  (and (do-close_sd12-condeffs) (closed-sd7) (closed-sd10) (closed-sd11)
       (closed-sd15) (closed-sd14) (closed-sd13) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly304reach-goal-252 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly305close_sd8-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd14)) :effect (and (done-0)))
 (:action ugly306wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd5) (closed-sd4) (closed-sd3)
       (closed-sd1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly307close_sd7-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd15)) :effect (and (done-1)))
 (:action ugly308wait_cb1-condeff0-no-2 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly309reach-goal-369 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly310reach-goal-453 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly311reach-goal-3 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly312reach-goal-330 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly313reach-goal-226 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly314reach-goal-166 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly315reach-goal-420 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly316reach-goal-403 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly317reach-goal-258 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly318reach-goal-412 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly319reach-goal-146 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly320reach-goal-378 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly321reach-goal-424 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly322reach-goal-158 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly323reach-goal-332 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly324close_sd8-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd16)) :effect (and (done-0)))
 (:action ugly325reach-goal-218 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly326reach-goal-343 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly327reach-goal-290 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly328close_sd14-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-sd10)) :effect (and (done-0)))
 (:action ugly329close_sd4-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly330close_sd14-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly331reach-goal-379 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly332reach-goal-355 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly333reach-goal-442 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly334close_sd16 :parameters () :precondition
  (and (do-normal) (not-closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd16-condeffs) (closed-sd16)
       (not (not-closed-sd16))))
 (:action ugly335reach-goal-326 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly336reach-goal-36 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly337reach-goal-197 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly338close_sd16-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly339reach-goal-302 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly340reach-goal-127 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly341close_sd4-endof-condeffs :parameters () :precondition
  (and (do-close_sd4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))))
 (:action ugly342reach-goal-493 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly343close_sd8-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly344close_sd7-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly345open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly346reach-goal-477 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly347close_sd9-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly348reach-goal-206 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly349reach-goal-135 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly350reach-goal-265 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly351reach-goal-486 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly352reach-goal-169 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly353reach-goal-304 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly354reach-goal-502 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly355close_sd8-endof-condeffs :parameters () :precondition
  (and (do-close_sd8-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly356reach-goal-6 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly357reach-goal-315 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly358close_sd11-condeff1-no-5 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly359close_sd8-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly360reach-goal-335 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly361reach-goal-303 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly362close_sd9-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly363reach-goal-202 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly364reach-goal-61 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly365reach-goal-452 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly366close_sd14-condeff1-no-5 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly367reach-goal-13 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly368reach-goal-299 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly369close_sd9-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly370close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly371reach-goal-410 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly372reach-goal-12 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly373reach-goal-161 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly374reach-goal-104 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly375reach-goal-225 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly376reach-goal-211 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly377reach-goal-415 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly378reach-goal-448 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13)
       (closed-cb3) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly379reach-goal-133 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly380reach-goal-474 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly381reach-goal-398 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly382close_sd7-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly383reach-goal-160 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-cb3) (closed-sd11) (closed-sd15) (closed-sd14)
       (closed-sd13) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly384reach-goal-99 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly385reach-goal-187 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly386reach-goal-286 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly387reach-goal-275 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly388reach-goal-256 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13)
       (closed-cb3) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly389reach-goal-436 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly390reach-goal-455 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly391close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly392close_sd10-condeff0-no-6 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly393reach-goal-327 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly394close_sd15-condeff1-no-6 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-cb3)) :effect (and (done-1)))
 (:action ugly395reach-goal-77 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly396reach-goal-214 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly397reach-goal-344 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly398reach-goal-18 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly399reach-goal-33 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly400wait_cb2-endof-condeffs :parameters () :precondition
  (and (do-wait_cb2-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly401wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly402close_sd13-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd12)) :effect (and (done-0)))
 (:action ugly403reach-goal-228 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly404wait_cb2-condeff1-no-3 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly405reach-goal-55 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly406reach-goal-16 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly407reach-goal-54 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly408reach-goal-217 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly409reach-goal-8 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly410reach-goal-358 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly411reach-goal-239 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly412close_sd15-condeff1-yes :parameters () :precondition
  (and (do-close_sd15-condeffs) (closed-sd7) (closed-sd12) (closed-sd10)
       (closed-sd11) (closed-sd14) (closed-sd13) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly413reach-goal-314 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly414wait_cb3-endof-condeffs :parameters () :precondition
  (and (do-wait_cb3-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly415wait_cb2-condeff0-no-5 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly416reach-goal-147 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly417reach-goal-352 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-cb3) (closed-sd13) (closed-sd11) (closed-sd15)
       (closed-sd14) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly418close_sd11-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly419reach-goal-400 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly420close_sd7-condeff0-yes :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd12) (closed-sd9) (closed-sd8)
       (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly421reach-goal-271 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly422reach-goal-280 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly423reach-goal-107 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly424open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly425reach-goal-297 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly426reach-goal-92 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly427reach-goal-154 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly428reach-goal-20 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly429close_sd7-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd12)) :effect (and (done-0)))
 (:action ugly430reach-goal-350 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly431open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly432reach-goal-58 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly433close_sd11-condeff1-yes :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd7) (closed-sd12) (closed-sd10)
       (closed-sd15) (closed-sd14) (closed-sd13) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly434reach-goal-489 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly435close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly436reach-goal-264 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly437close_sd9-condeff0-no-6 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly438reach-goal-128 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13)
       (closed-cb3) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly439reach-goal-377 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly440reach-goal-45 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly441reach-goal-78 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly442reach-goal-65 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly443reach-goal-122 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly444wait_cb2-condeff0-no-2 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd15)) :effect (and (done-0)))
 (:action ugly445reach-goal-238 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly446reach-goal-243 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly447reach-goal-102 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly448reach-goal-136 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly449reach-goal-408 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly450close_sd7-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly451reach-goal-31 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly452reach-goal-501 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly453reach-goal-260 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly454close_sd13-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly455open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly456open-cb3 :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly457reach-goal-170 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly458close_sd7-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly459reach-goal-416 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-cb3) (closed-sd11) (closed-sd15) (closed-sd14)
       (closed-sd13) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly460close_sd7-condeff1-no-5 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly461reach-goal-478 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly462reach-goal-500 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly463close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly464close_sd13-endof-condeffs :parameters () :precondition
  (and (do-close_sd13-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd13-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly465reach-goal-88 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly466reach-goal-237 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly467reach-goal-277 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly468reach-goal-421 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly469reach-goal-74 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly470open-sd11 :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly471reach-goal-0 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly472close_sd14 :parameters () :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd14-condeffs) (closed-sd14)
       (not (not-closed-sd14))))
 (:action ugly473close_sd13-condeff0-yes :parameters () :precondition
  (and (do-close_sd13-condeffs) (closed-sd7) (closed-sd12) (closed-sd10)
       (closed-sd11) (closed-sd15) (closed-sd14) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly474reach-goal-463 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly475close_sd12-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd15)) :effect (and (done-1)))
 (:action ugly476reach-goal-130 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly477reach-goal-432 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly478reach-goal-342 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly479close_sd16-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-sd14)) :effect (and (done-0)))
 (:action ugly480reach-goal-215 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly481reach-goal-417 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly482wait_cb2-condeff0-no-3 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly483reach-goal-338 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly484reach-goal-389 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly485reach-goal-423 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly486reach-goal-334 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly487reach-goal-216 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly488close_sd1-endof-condeffs :parameters () :precondition
  (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly489reach-goal-402 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly490reach-goal-180 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly491reach-goal-229 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly492close_sd4-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly493reach-goal-1 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly494close_sd14-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly495close_sd5-condeff0-yes :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-sd4) (closed-sd3) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly496reach-goal-75 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly497close_sd9-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly498reach-goal-267 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly499reach-goal-439 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly500close_sd16-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-sd15)) :effect (and (done-0)))
 (:action ugly501reach-goal-121 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly502reach-goal-431 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly503reach-goal-451 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly504reach-goal-333 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly505reach-goal-440 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly506reach-goal-159 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly507reach-goal-27 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly508reach-goal-46 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly509reach-goal-143 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly510reach-goal-482 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly511reach-goal-231 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly512close_sd12-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly513reach-goal-247 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly514close_sd8-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly515reach-goal-270 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly516wait_cb3-condeff0-no-6 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd13)) :effect (and (done-0)))
 (:action ugly517reach-goal-503 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly518wait_cb3-condeff0-no-5 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd14)) :effect (and (done-0)))
 (:action ugly519reach-goal-82 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly520reach-goal-481 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly521reach-goal-244 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly522reach-goal-86 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly523reach-goal-48 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly524reach-goal-200 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly525close_sd9-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly526reach-goal-7 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly527reach-goal-224 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd11)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly528reach-goal-507 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly529reach-goal-168 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly530reach-goal-255 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly531reach-goal-39 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly532close_sd14-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly533reach-goal-438 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly534reach-goal-414 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly535wait_cb1-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly536reach-goal-390 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly537close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly538reach-goal-349 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly539reach-goal-108 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly540reach-goal-129 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly541close_sd7-endof-condeffs :parameters () :precondition
  (and (do-close_sd7-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly542close_sd14-endof-condeffs :parameters () :precondition
  (and (do-close_sd14-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd14-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly543reach-goal-22 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly544close_sd10-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd15)) :effect (and (done-1)))
 (:action ugly545close_sd8-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly546reach-goal-131 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly547wait_cb3-condeff1-yes :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd16) (closed-sd13)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly548reach-goal-34 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly549reach-goal-44 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly550reach-goal-370 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly551reach-goal-132 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly552close_sd3-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly553reach-goal-428 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly554reach-goal-388 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly555reach-goal-454 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly556reach-goal-234 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly557close_sd12-condeff0-yes :parameters () :precondition
  (and (do-close_sd12-condeffs) (closed-sd7) (closed-sd9) (closed-sd8)
       (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly558reach-goal-155 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly559open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly560close_sd15-endof-condeffs :parameters () :precondition
  (and (do-close_sd15-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd15-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly561reach-goal-300 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly562reach-goal-397 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly563close_sd9-condeff0-yes :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd16) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd8) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly564reach-goal-95 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly565reach-goal-248 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly566reach-goal-93 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly567reach-goal-475 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly568reach-goal-253 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly569reach-goal-268 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly570close_sd6-condeff0-yes :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly571wait_cb3-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly572reach-goal-508 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly573reach-goal-305 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly574close_sd1-condeff0-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd5) (closed-sd4) (closed-sd3)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly575close_sd10-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd15)) :effect (and (done-0)))
 (:action ugly576close_sd8-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly577reach-goal-212 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly578reach-goal-251 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly579reach-goal-209 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly580wait_cb1-condeff0-no-3 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly581reach-goal-383 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly582close_sd16-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-sd10)) :effect (and (done-0)))
 (:action ugly583reach-goal-87 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly584reach-goal-464 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly585reach-goal-165 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly586reach-goal-485 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly587reach-goal-201 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly588reach-goal-266 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly589reach-goal-150 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly590reach-goal-427 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly591reach-goal-41 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly592reach-goal-336 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly593reach-goal-375 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly594close_sd11-condeff0-no-6 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly595reach-goal-382 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly596reach-goal-288 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-cb3) (closed-sd11) (closed-sd15) (closed-sd14)
       (closed-sd13) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly597reach-goal-71 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly598reach-goal-89 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly599close_sd10-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly600reach-goal-194 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly601reach-goal-85 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly602reach-goal-316 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly603wait_cb2-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly604reach-goal-395 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly605reach-goal-446 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly606reach-goal-164 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly607close_sd5-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly608reach-goal-230 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly609reach-goal-462 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly610reach-goal-110 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly611reach-goal-460 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly612reach-goal-172 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly613reach-goal-60 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly614reach-goal-281 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly615close_sd13-condeff1-yes :parameters () :precondition
  (and (do-close_sd13-condeffs) (closed-sd16) (closed-cb3)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly616reach-goal-289 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly617reach-goal-35 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly618reach-goal-100 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly619reach-goal-494 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly620close_sd12-condeff1-no-5 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly621close_sd15-condeff1-no-5 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly622reach-goal-405 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly623reach-goal-404 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly624reach-goal-425 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly625reach-goal-94 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly626reach-goal-98 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly627close_sd12-endof-condeffs :parameters () :precondition
  (and (do-close_sd12-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd12-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly628reach-goal-367 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly629close_sd15-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly630reach-goal-291 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly631open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly632close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly633reach-goal-134 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly634wait_cb2-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly635reach-goal-63 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly636reach-goal-37 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly637reach-goal-411 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly638reach-goal-394 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly639reach-goal-263 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly640reach-goal-418 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly641reach-goal-484 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly642reach-goal-504 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly643close_sd8-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd10)) :effect (and (done-0)))
 (:action ugly644reach-goal-43 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly645close_sd15-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd14)) :effect (and (done-1)))
 (:action ugly646reach-goal-272 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly647reach-goal-345 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly648reach-goal-295 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly649close_sd12 :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd12-condeffs) (closed-sd12)
       (not (not-closed-sd12))))
 (:action ugly650close_sd10-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly651close_sd12-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd14)) :effect (and (done-1)))
 (:action ugly652reach-goal-461 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly653reach-goal-64 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13)
       (closed-cb3) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly654reach-goal-196 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly655reach-goal-321 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly656reach-goal-9 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly657close_sd1-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly658wait_cb3-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd16)) :effect (and (done-1)))
 (:action ugly659close_sd12-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly660reach-goal-511 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly661reach-goal-406 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly662reach-goal-141 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly663close_sd15-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd14)) :effect (and (done-0)))
 (:action ugly664reach-goal-191 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly665reach-goal-505 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly666close_sd6-endof-condeffs :parameters () :precondition
  (and (do-close_sd6-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))))
 (:action ugly667reach-goal-445 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly668reach-goal-284 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly669reach-goal-276 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly670close_sd15-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd16)) :effect (and (done-0)))
 (:action ugly671reach-goal-257 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly672reach-goal-23 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly673reach-goal-5 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly674close_sd4-condeff0-yes :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd5) (closed-sd3) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly675close_sd11-condeff1-no-6 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-cb3)) :effect (and (done-1)))
 (:action ugly676reach-goal-186 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly677reach-goal-233 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly678close_sd12-condeff1-no-6 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-cb3)) :effect (and (done-1)))
 (:action ugly679reach-goal-70 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly680reach-goal-447 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly681reach-goal-14 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly682reach-goal-283 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly683close_sd12-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly684reach-goal-113 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly685reach-goal-203 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly686reach-goal-183 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly687reach-goal-441 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly688reach-goal-301 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly689close_sd14-condeff1-no-6 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-cb3)) :effect (and (done-1)))
 (:action ugly690reach-goal-42 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly691open-sd16 :parameters () :precondition
  (and (do-normal) (closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd16) (not (closed-sd16))))
 (:action ugly692close_sd15-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly693reach-goal-119 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly694reach-goal-101 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly695open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly696reach-goal-465 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly697reach-goal-346 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly698wait_cb1-endof-condeffs :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly699reach-goal-227 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly700reach-goal-363 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly701reach-goal-114 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly702reach-goal-49 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly703reach-goal-362 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly704reach-goal-62 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly705reach-goal-213 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly706close_sd15-condeff0-no-6 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly707close_sd13 :parameters () :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd13-condeffs) (closed-sd13)
       (not (not-closed-sd13))))
 (:action ugly708reach-goal-250 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly709close_sd8-condeff0-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd16) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly710reach-goal-156 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly711close_sd14-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly712reach-goal-4 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly713close_sd10-condeff1-no-6 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-cb3)) :effect (and (done-1)))
 (:action ugly714close_sd16-condeff0-yes :parameters () :precondition
  (and (do-close_sd16-condeffs) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly715reach-goal-437 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly716close_sd16-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly717reach-goal-399 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly718reach-goal-105 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly719wait_cb2-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd16)) :effect (and (done-0)))
 (:action ugly720reach-goal-249 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly721close_sd10-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd14)) :effect (and (done-0)))
 (:action ugly722close_sd9-endof-condeffs :parameters () :precondition
  (and (do-close_sd9-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly723open-sd13 :parameters () :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd13) (not (closed-sd13))))
 (:action ugly724close_sd15-condeff0-yes :parameters () :precondition
  (and (do-close_sd15-condeffs) (closed-sd16) (closed-sd14) (closed-sd11)
       (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly725reach-goal-220 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly726reach-goal-317 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly727wait_cb2-condeff0-no-4 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd10)) :effect (and (done-0)))
 (:action ugly728reach-goal-17 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly729close_sd10-condeff1-yes :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-sd7) (closed-sd12) (closed-sd11)
       (closed-sd15) (closed-sd14) (closed-sd13) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly730reach-goal-25 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly731reach-goal-419 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly732close_sd11-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly733reach-goal-459 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly734close_sd10-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly735open-sd14 :parameters () :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd14) (not (closed-sd14))))
 (:action ugly736reach-goal-118 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly737close_sd9-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd15)) :effect (and (done-0)))
 (:action ugly738close_sd10-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd16)) :effect (and (done-0)))
 (:action ugly739reach-goal-195 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly740wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly741reach-goal-240 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly742close_sd7-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly743wait_cb3-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd12)) :effect (and (done-0)))
 (:action ugly744close_sd3-condeff0-yes :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd5) (closed-sd4) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly745reach-goal-80 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly746reach-goal-467 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly747reach-goal-329 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly748reach-goal-242 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly749close_sd5-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly750reach-goal-106 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly751reach-goal-499 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly752close_sd14-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd14-condeffs) (not-closed-sd15)) :effect (and (done-1)))
 (:action ugly753reach-goal-324 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly754reach-goal-331 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly755reach-goal-153 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly756reach-goal-192 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13)
       (closed-cb3) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly757reach-goal-188 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly758close_sd3-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly759reach-goal-433 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly760close_sd7-condeff1-yes :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd12) (closed-sd10) (closed-sd11)
       (closed-sd15) (closed-sd14) (closed-sd13) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly761reach-goal-360 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly762reach-goal-307 :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))) 