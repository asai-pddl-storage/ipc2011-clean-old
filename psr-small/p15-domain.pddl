
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (goal-reached) (do-close_sd7-condeffs) (not-closed-sd3)
  (do-close_sd1-condeffs) (do-close_sd5-condeffs) (done-0) (not-closed-sd8)
  (do-close_sd4-condeffs) (closed-sd6) (not-closed-sd6) (do-close_sd2-condeffs)
  (not-closed-cb1) (do-close_sd8-condeffs) (closed-sd5) (closed-sd1)
  (not-closed-cb2) (do-wait_cb1-condeffs) (not-closed-sd1) (not-closed-sd10)
  (not-updated-cb2) (do-close_sd3-condeffs) (not-closed-sd9) (closed-sd9)
  (closed-sd8) (not-closed-sd2) (closed-cb2) (do-close_sd6-condeffs)
  (closed-sd10) (closed-sd4) (closed-sd7) (not-updated-cb1)
  (do-wait_cb2-condeffs) (done-1) (not-closed-sd4) (closed-sd2) (closed-sd3)
  (updated-cb2) (do-close_sd10-condeffs) (closed-cb1) (not-closed-sd5)
  (do-close_sd9-condeffs) (do-normal) (not-closed-sd7) (updated-cb1))
 (:action ugly1reach-goal-356 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly2reach-goal-202 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly3reach-goal-475 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly4reach-goal-460 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly5reach-goal-158 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly6reach-goal-486 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly7close_sd3-condeff0-yes :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd4) (closed-sd2) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly8wait_cb2-condeff0-no-2 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly9reach-goal-137 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly10close_sd3-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly11reach-goal-350 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly12reach-goal-307 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly13reach-goal-242 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly14reach-goal-184 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly15reach-goal-160 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly16reach-goal-280 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly17reach-goal-4 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly18close_sd9-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly19reach-goal-325 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly20reach-goal-274 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly21reach-goal-428 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly22reach-goal-381 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly23close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2)) :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly24reach-goal-112 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd7) (closed-sd8)
       (closed-sd6) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly25reach-goal-395 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly26reach-goal-207 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly27reach-goal-134 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly28reach-goal-66 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly29reach-goal-44 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly30reach-goal-482 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly31reach-goal-337 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly32reach-goal-367 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly33close_sd9-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly34reach-goal-245 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly35reach-goal-170 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly36reach-goal-373 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly37reach-goal-14 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly38reach-goal-483 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly39reach-goal-393 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly40reach-goal-492 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly41reach-goal-305 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly42reach-goal-336 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd6) (closed-sd9)
       (closed-sd8) (closed-sd7) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly43reach-goal-128 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly44reach-goal-186 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly45reach-goal-352 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly46close_sd2-endof-condeffs :parameters () :precondition
  (and (do-close_sd2-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly47reach-goal-92 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly48reach-goal-330 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly49reach-goal-506 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly50close_sd7-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly51reach-goal-156 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly52reach-goal-215 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly53reach-goal-163 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly54reach-goal-383 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly55reach-goal-272 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd6) (closed-sd9)
       (closed-sd8) (closed-sd7) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly56reach-goal-204 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly57close_sd2-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly58reach-goal-370 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly59close_sd9-condeff1-yes :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd5) (closed-sd10) (closed-sd8)
       (closed-sd7) (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly60reach-goal-284 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly61reach-goal-70 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly62reach-goal-90 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly63reach-goal-357 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly64open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly65close_sd4-condeff1-no-6 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly66close_sd3-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly67reach-goal-123 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly68reach-goal-133 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly69reach-goal-388 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly70close_sd2-condeff1-no-6 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly71close_sd6-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly72reach-goal-294 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly73reach-goal-5 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly74reach-goal-281 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly75reach-goal-53 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly76open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly77reach-goal-316 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly78reach-goal-398 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly79reach-goal-217 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly80reach-goal-435 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly81reach-goal-169 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly82reach-goal-115 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly83reach-goal-181 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly84close_sd4-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly85close_sd6-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd3)) :effect (and (done-1)))
 (:action ugly86close_sd4-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd2)) :effect (and (done-1)))
 (:action ugly87reach-goal-33 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly88reach-goal-312 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly89reach-goal-28 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly90reach-goal-397 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly91close_sd2-condeff0-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd4) (closed-sd3) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly92close_sd6-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly93reach-goal-472 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly94reach-goal-223 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly95reach-goal-166 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly96reach-goal-310 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly97close_sd9-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly98reach-goal-446 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly99close_sd9-condeff0-no-6 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly100reach-goal-114 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly101close_sd10 :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action ugly102close_sd6-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd10)) :effect (and (done-0)))
 (:action ugly103close_sd8-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly104close_sd9-condeff0-yes :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd4) (closed-sd3) (closed-sd2)
       (closed-sd6) (closed-sd8) (closed-sd7) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly105reach-goal-152 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly106reach-goal-301 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly107reach-goal-354 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly108open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly109reach-goal-265 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly110reach-goal-469 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly111reach-goal-360 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly112reach-goal-174 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly113close_sd6-condeff1-yes :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd4) (closed-sd3) (closed-sd2)
       (closed-sd9) (closed-sd8) (closed-sd7) (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly114reach-goal-297 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly115close_sd8-condeff0-no-6 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly116reach-goal-288 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly117reach-goal-224 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly118wait_cb2-condeff0-no-5 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly119close_sd2-condeff1-no-5 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly120close_sd8-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly121close_sd9-endof-condeffs :parameters () :precondition
  (and (do-close_sd9-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly122close_sd8-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly123reach-goal-474 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly124reach-goal-408 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly125reach-goal-458 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly126close_sd1-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly127reach-goal-459 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly128reach-goal-175 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly129reach-goal-61 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly130open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly131reach-goal-185 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly132close_sd9-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly133reach-goal-429 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly134reach-goal-73 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly135reach-goal-234 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly136reach-goal-24 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly137reach-goal-321 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly138reach-goal-139 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly139reach-goal-74 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly140reach-goal-363 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly141reach-goal-487 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly142wait_cb2-condeff0-no-6 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly143reach-goal-138 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly144reach-goal-338 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly145reach-goal-448 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly146reach-goal-421 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly147reach-goal-118 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly148reach-goal-407 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly149open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly150reach-goal-309 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly151reach-goal-106 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly152reach-goal-504 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly153reach-goal-30 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly154reach-goal-149 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly155reach-goal-122 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly156close_sd7-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd5)) :effect (and (done-1)))
 (:action ugly157reach-goal-318 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly158reach-goal-277 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly159wait_cb1-condeff1-no-3 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-1)))
 (:action ugly160reach-goal-29 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly161close_sd3-endof-condeffs :parameters () :precondition
  (and (do-close_sd3-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly162reach-goal-200 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly163close_sd1-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly164reach-goal-269 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly165reach-goal-1 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly166wait_cb1-condeff1-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd5) (closed-sd10) (closed-sd6)
       (closed-sd1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly167reach-goal-311 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly168open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly169reach-goal-285 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly170close_sd7-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly171reach-goal-182 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly172close_sd10-condeff0-yes :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-sd5) (closed-sd6) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly173reach-goal-464 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd6) (closed-sd9)
       (closed-sd8) (closed-sd7) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly174reach-goal-75 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly175reach-goal-8 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly176close_sd3-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd2)) :effect (and (done-1)))
 (:action ugly177close_sd2-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly178reach-goal-141 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly179reach-goal-238 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly180close_sd10-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly181reach-goal-95 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly182reach-goal-484 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly183close_sd4-condeff0-yes :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd3) (closed-sd2) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly184reach-goal-82 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly185reach-goal-261 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly186close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly187reach-goal-42 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly188reach-goal-427 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly189close_sd7-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly190reach-goal-276 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly191close_sd10-endof-condeffs :parameters () :precondition
  (and (do-close_sd10-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly192reach-goal-216 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly193reach-goal-36 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly194wait_cb1-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd5)) :effect (and (done-1)))
 (:action ugly195reach-goal-89 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly196reach-goal-98 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly197reach-goal-378 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly198reach-goal-231 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly199reach-goal-52 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly200reach-goal-99 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly201reach-goal-326 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly202reach-goal-300 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly203close_sd4-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly204close_sd7-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly205reach-goal-386 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly206reach-goal-168 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly207reach-goal-499 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly208reach-goal-71 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly209reach-goal-355 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly210reach-goal-116 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly211reach-goal-226 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly212close_sd6-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly213close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly214close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action ugly215reach-goal-389 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly216reach-goal-172 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly217reach-goal-453 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly218close_sd6-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd4)) :effect (and (done-1)))
 (:action ugly219wait_cb1-endof-condeffs :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly220close_sd7-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly221reach-goal-439 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly222close_sd5-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly223reach-goal-382 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly224close_sd6-condeff0-yes :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd5) (closed-sd10) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly225reach-goal-496 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd7) (closed-sd8)
       (closed-sd9) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly226reach-goal-461 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly227wait_cb1-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly228reach-goal-379 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly229close_sd4-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly230reach-goal-380 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly231close_sd8-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly232wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly233reach-goal-376 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly234reach-goal-502 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly235reach-goal-86 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly236reach-goal-183 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly237reach-goal-314 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly238reach-goal-364 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly239close_sd5-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly240close_sd1-endof-condeffs :parameters () :precondition
  (and (do-close_sd1-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly241reach-goal-308 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly242close_sd4-condeff1-yes :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd3) (closed-sd2) (closed-sd6)
       (closed-sd9) (closed-sd8) (closed-sd7) (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly243reach-goal-72 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly244reach-goal-146 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly245wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly246reach-goal-292 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly247reach-goal-214 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly248reach-goal-47 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly249close_sd7-condeff1-yes :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd5) (closed-sd10) (closed-sd9)
       (closed-sd8) (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly250reach-goal-230 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly251close_sd7-condeff0-yes :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd4) (closed-sd3) (closed-sd2)
       (closed-sd6) (closed-sd9) (closed-sd8) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly252reach-goal-27 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly253close_sd8-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd5)) :effect (and (done-1)))
 (:action ugly254reach-goal-11 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly255close_sd3-condeff1-yes :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd4) (closed-sd2) (closed-sd6)
       (closed-sd9) (closed-sd8) (closed-sd7) (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly256close_sd8-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly257reach-goal-199 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly258reach-goal-426 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly259reach-goal-450 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly260reach-goal-197 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly261reach-goal-454 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly262close_sd5-condeff1-yes :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly263reach-goal-56 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly264reach-goal-239 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly265reach-goal-49 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly266close_sd10-condeff1-yes :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-sd5) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly267reach-goal-237 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly268reach-goal-91 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly269reach-goal-127 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly270reach-goal-456 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly271reach-goal-306 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly272close_sd5-endof-condeffs :parameters () :precondition
  (and (do-close_sd5-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly273reach-goal-498 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly274reach-goal-418 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly275reach-goal-9 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly276reach-goal-121 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly277close_sd2-condeff1-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd4) (closed-sd3) (closed-sd6)
       (closed-sd9) (closed-sd8) (closed-sd7) (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly278reach-goal-228 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly279close_sd10-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly280reach-goal-344 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly281reach-goal-431 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly282reach-goal-21 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly283reach-goal-468 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly284open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly285reach-goal-372 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly286reach-goal-46 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly287reach-goal-39 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly288reach-goal-148 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly289reach-goal-251 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly290reach-goal-406 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly291reach-goal-399 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly292reach-goal-81 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly293reach-goal-130 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly294open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly295reach-goal-250 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly296reach-goal-341 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly297reach-goal-278 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly298wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd4) (closed-sd3) (closed-sd2)
       (closed-sd1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly299close_sd9-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly300reach-goal-150 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly301reach-goal-466 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly302reach-goal-328 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly303reach-goal-403 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly304reach-goal-211 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly305reach-goal-102 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly306reach-goal-83 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly307reach-goal-345 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly308close_sd9-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly309reach-goal-324 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly310reach-goal-291 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly311reach-goal-179 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly312close_sd1-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly313reach-goal-154 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly314reach-goal-193 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly315reach-goal-57 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly316reach-goal-256 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly317reach-goal-140 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly318close_sd2-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly319reach-goal-13 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly320reach-goal-334 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly321close_sd9-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly322reach-goal-54 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly323reach-goal-409 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly324reach-goal-420 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly325reach-goal-315 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly326reach-goal-227 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly327reach-goal-268 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly328close_sd7-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly329reach-goal-162 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly330reach-goal-262 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly331wait_cb2-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd5)) :effect (and (done-1)))
 (:action ugly332open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly333reach-goal-38 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly334reach-goal-477 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly335reach-goal-319 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly336reach-goal-299 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly337reach-goal-333 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly338close_sd10-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly339reach-goal-444 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly340reach-goal-187 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly341wait_cb1-condeff1-no-2 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly342reach-goal-436 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly343reach-goal-97 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly344reach-goal-402 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly345reach-goal-144 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd6) (closed-sd9)
       (closed-sd8) (closed-sd7) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly346reach-goal-279 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly347reach-goal-0 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly348reach-goal-287 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly349close_sd3-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly350reach-goal-31 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly351reach-goal-203 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly352reach-goal-84 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly353close_sd7-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly354reach-goal-343 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly355reach-goal-196 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly356reach-goal-465 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly357close_sd9-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd5)) :effect (and (done-1)))
 (:action ugly358reach-goal-400 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd6) (closed-sd9)
       (closed-sd8) (closed-sd7) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly359reach-goal-17 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly360close_sd3-condeff1-no-6 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly361close_sd1-condeff1-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd5) (closed-sd10) (closed-sd6)
       (closed-cb1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly362reach-goal-351 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly363reach-goal-180 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly364open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly365reach-goal-209 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly366wait_cb2-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly367reach-goal-489 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly368reach-goal-270 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly369reach-goal-151 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly370reach-goal-59 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly371wait_cb2-condeff1-no-3 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly372close_sd10-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly373reach-goal-63 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly374reach-goal-384 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly375reach-goal-145 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly376wait_cb2-condeff1-no-4 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly377reach-goal-135 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly378reach-goal-244 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly379reach-goal-117 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly380reach-goal-303 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly381reach-goal-282 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly382reach-goal-34 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly383reach-goal-12 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly384close_sd8-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly385reach-goal-365 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly386reach-goal-313 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly387reach-goal-257 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly388reach-goal-18 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly389wait_cb2-condeff0-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd4) (closed-sd3) (closed-sd2)
       (closed-sd6) (closed-sd9) (closed-sd8) (closed-sd7))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly390reach-goal-64 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly391reach-goal-132 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly392reach-goal-462 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly393reach-goal-143 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly394reach-goal-488 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly395reach-goal-412 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly396close_sd7-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly397reach-goal-58 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly398reach-goal-109 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly399reach-goal-508 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly400reach-goal-88 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly401reach-goal-349 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly402reach-goal-467 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly403reach-goal-283 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly404reach-goal-189 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly405reach-goal-219 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly406close_sd8-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly407reach-goal-248 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly408reach-goal-233 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly409reach-goal-271 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly410close_sd7-endof-condeffs :parameters () :precondition
  (and (do-close_sd7-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly411close_sd5-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly412reach-goal-161 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly413reach-goal-68 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly414reach-goal-164 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly415reach-goal-113 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly416close_sd10-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly417reach-goal-7 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly418reach-goal-296 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly419close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly420reach-goal-339 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly421close_sd5-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd10)) :effect (and (done-0)))
 (:action ugly422close_sd1-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly423reach-goal-394 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly424reach-goal-35 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly425wait_cb1-condeff0-no-3 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly426reach-goal-335 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly427reach-goal-32 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly428reach-goal-43 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly429close_sd7-condeff0-no-6 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly430reach-goal-222 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly431reach-goal-259 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly432wait_cb2-condeff0-no-3 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly433reach-goal-332 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly434reach-goal-105 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly435reach-goal-129 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly436close_sd2-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly437reach-goal-342 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly438reach-goal-254 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly439close_sd7-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly440reach-goal-41 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly441close_sd5-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly442reach-goal-23 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly443reach-goal-366 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly444reach-goal-401 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly445reach-goal-289 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly446wait_cb1-condeff0-no-2 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly447reach-goal-108 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly448reach-goal-77 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly449reach-goal-195 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly450reach-goal-471 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly451reach-goal-212 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly452reach-goal-275 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly453reach-goal-100 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly454reach-goal-411 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly455reach-goal-440 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly456reach-goal-505 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly457reach-goal-377 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly458reach-goal-290 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly459reach-goal-218 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly460close_sd1-condeff0-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd4) (closed-sd3) (closed-sd2)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly461close_sd6-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly462reach-goal-480 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly463close_sd8-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly464reach-goal-205 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly465reach-goal-40 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly466wait_cb2-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly467reach-goal-481 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly468reach-goal-485 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly469reach-goal-507 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly470wait_cb2-condeff0-no-4 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly471reach-goal-213 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly472reach-goal-414 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly473close_sd4-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly474reach-goal-255 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly475close_sd8-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly476reach-goal-479 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly477reach-goal-405 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly478reach-goal-423 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly479close_sd3-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd4)) :effect (and (done-1)))
 (:action ugly480reach-goal-263 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly481reach-goal-430 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly482reach-goal-2 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly483reach-goal-243 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly484reach-goal-295 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly485reach-goal-173 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly486reach-goal-50 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly487close_sd2-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly488reach-goal-327 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly489close_sd4-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly490reach-goal-6 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly491close_sd3-condeff1-no-5 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly492reach-goal-387 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly493reach-goal-346 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly494wait_cb2-endof-condeffs :parameters () :precondition
  (and (do-wait_cb2-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly495close_sd9-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly496reach-goal-131 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly497reach-goal-449 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly498reach-goal-178 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly499reach-goal-273 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly500reach-goal-267 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly501close_sd3-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly502reach-goal-260 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly503close_sd6-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly504reach-goal-221 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly505reach-goal-432 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd7) (closed-sd6)
       (closed-sd9) (closed-sd8) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly506reach-goal-368 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd7) (closed-sd8)
       (closed-sd6) (closed-sd9) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly507reach-goal-500 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly508reach-goal-171 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly509reach-goal-10 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly510reach-goal-93 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly511reach-goal-495 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly512reach-goal-473 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly513reach-goal-124 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly514reach-goal-329 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly515reach-goal-157 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly516close_sd2-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly517reach-goal-22 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly518close_sd1-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly519close_sd4-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly520reach-goal-249 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly521reach-goal-225 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly522reach-goal-375 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly523close_sd5-condeff0-yes :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-sd10) (closed-sd6) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly524reach-goal-258 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly525reach-goal-490 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly526wait_cb2-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly527open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly528reach-goal-491 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly529close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action ugly530reach-goal-417 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly531close_sd1-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-1)))
 (:action ugly532reach-goal-235 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly533reach-goal-87 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly534reach-goal-390 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly535reach-goal-361 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly536reach-goal-396 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly537reach-goal-433 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly538reach-goal-391 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly539reach-goal-142 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly540reach-goal-62 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly541reach-goal-369 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly542reach-goal-413 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly543close_sd8-endof-condeffs :parameters () :precondition
  (and (do-close_sd8-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly544reach-goal-79 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly545reach-goal-476 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly546reach-goal-45 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly547reach-goal-190 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly548reach-goal-441 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly549reach-goal-48 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd7) (closed-sd6)
       (closed-sd9) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly550close_sd8-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly551reach-goal-19 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly552reach-goal-198 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly553reach-goal-67 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly554close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2)) :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly555close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly556wait_cb2-condeff1-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd5) (closed-sd10) (closed-sd9)
       (closed-sd8) (closed-sd7))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly557reach-goal-110 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly558reach-goal-51 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly559reach-goal-96 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly560reach-goal-340 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly561close_sd9-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly562reach-goal-320 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly563reach-goal-503 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly564reach-goal-463 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly565close_sd10-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly566reach-goal-120 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly567close_sd1-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd5)) :effect (and (done-1)))
 (:action ugly568close_sd4-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly569close_sd4-condeff1-no-5 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly570reach-goal-65 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly571close_sd6-condeff1-no-5 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly572reach-goal-220 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly573close_sd7-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly574wait_cb1-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly575reach-goal-374 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly576reach-goal-510 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly577reach-goal-478 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly578reach-goal-419 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly579reach-goal-322 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly580reach-goal-55 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly581reach-goal-176 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd7) (closed-sd6)
       (closed-sd9) (closed-sd8) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly582reach-goal-194 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly583reach-goal-494 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly584reach-goal-126 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly585close_sd6-endof-condeffs :parameters () :precondition
  (and (do-close_sd6-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly586reach-goal-25 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly587reach-goal-232 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly588reach-goal-286 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly589wait_cb2-condeff1-no-2 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly590reach-goal-167 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly591reach-goal-416 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly592reach-goal-37 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly593reach-goal-415 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly594reach-goal-323 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly595close_sd10-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly596reach-goal-20 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly597reach-goal-422 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly598reach-goal-264 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly599reach-goal-353 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly600reach-goal-60 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly601reach-goal-177 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly602close_sd5-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly603reach-goal-434 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly604open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly605close_sd6-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd2)) :effect (and (done-1)))
 (:action ugly606reach-goal-348 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly607reach-goal-155 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly608reach-goal-252 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly609reach-goal-470 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly610reach-goal-293 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly611reach-goal-457 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly612reach-goal-104 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly613reach-goal-452 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly614reach-goal-358 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly615reach-goal-147 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly616reach-goal-501 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly617reach-goal-385 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly618reach-goal-246 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly619reach-goal-136 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly620reach-goal-208 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd6) (closed-sd9)
       (closed-sd8) (closed-sd7) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly621reach-goal-445 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly622reach-goal-424 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly623reach-goal-304 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd7) (closed-sd6)
       (closed-sd9) (closed-sd8) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly624reach-goal-253 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly625reach-goal-443 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly626close_sd1-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly627reach-goal-16 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd6) (closed-sd9)
       (closed-sd8) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly628close_sd9-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly629reach-goal-94 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly630reach-goal-201 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly631close_sd5-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly632close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly633close_sd10-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd5)) :effect (and (done-1)))
 (:action ugly634close_sd3-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly635reach-goal-425 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly636reach-goal-78 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly637reach-goal-111 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly638reach-goal-442 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly639close_sd5-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly640reach-goal-455 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly641reach-goal-3 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly642reach-goal-392 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly643reach-goal-509 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly644close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly645reach-goal-107 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly646close_sd3-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly647reach-goal-85 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly648reach-goal-240 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd7) (closed-sd8)
       (closed-sd9) (closed-sd6) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly649reach-goal-15 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly650close_sd2-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd4)) :effect (and (done-1)))
 (:action ugly651close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly652reach-goal-241 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly653close_sd2-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd3)) :effect (and (done-1)))
 (:action ugly654close_sd8-condeff0-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd4) (closed-sd3) (closed-sd2)
       (closed-sd6) (closed-sd9) (closed-sd7) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly655reach-goal-447 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly656reach-goal-511 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly657reach-goal-298 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly658reach-goal-103 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly659reach-goal-362 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly660reach-goal-192 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly661reach-goal-80 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd6) (closed-sd9)
       (closed-sd8) (closed-sd7) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly662reach-goal-229 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly663reach-goal-438 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly664reach-goal-153 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly665reach-goal-302 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly666reach-goal-359 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly667reach-goal-437 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly668reach-goal-247 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly669reach-goal-76 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly670close_sd6-condeff1-no-6 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly671reach-goal-119 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly672reach-goal-125 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly673close_sd2-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly674reach-goal-410 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly675reach-goal-493 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly676reach-goal-347 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly677close_sd8-condeff1-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd5) (closed-sd10) (closed-sd9)
       (closed-sd7) (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly678close_sd5-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly679reach-goal-188 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly680reach-goal-165 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly681close_sd4-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd3)) :effect (and (done-1)))
 (:action ugly682close_sd10-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly683reach-goal-451 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly684reach-goal-497 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly685close_sd3-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly686reach-goal-69 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly687reach-goal-206 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly688reach-goal-26 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly689reach-goal-404 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly690close_sd4-endof-condeffs :parameters () :precondition
  (and (do-close_sd4-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly691reach-goal-210 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly692reach-goal-371 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly693wait_cb1-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly694reach-goal-159 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly695reach-goal-266 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly696reach-goal-236 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly697reach-goal-101 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly698reach-goal-331 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly699reach-goal-191 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly700reach-goal-317 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))) 