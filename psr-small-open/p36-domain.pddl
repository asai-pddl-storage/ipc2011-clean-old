
(define (domain grounded-strips-psr) (:requirements :strips :action-costs)
 (:predicates (closed-sd10) (not-closed-cb1) (goal-reached) (closed-sd5)
  (closed-sd13) (do-close_sd15-condeffs) (closed-cb3) (not-closed-sd14)
  (not-closed-cb5) (not-closed-sd18) (do-close_sd18-condeffs)
  (do-close_sd5-condeffs) (not-closed-sd7) (closed-sd18) (updated-cb5)
  (not-updated-cb2) (do-close_sd9-condeffs) (do-close_sd16-condeffs)
  (not-closed-sd17) (not-closed-cb4) (not-closed-sd4) (do-close_sd13-condeffs)
  (closed-cb2) (updated-cb2) (closed-sd16) (not-closed-sd9) (closed-cb6)
  (not-closed-sd16) (not-closed-sd1) (do-close_sd4-condeffs) (not-updated-cb5)
  (closed-sd15) (updated-cb6) (updated-cb4) (done-0) (done-1) (closed-sd4)
  (not-closed-sd6) (do-close_sd2-condeffs) (not-closed-sd12) (closed-sd12)
  (closed-sd11) (do-wait_cb3-condeffs) (do-normal) (not-closed-sd8)
  (do-wait_cb6-condeffs) (not-closed-cb6) (not-closed-sd3) (closed-sd2)
  (not-closed-sd2) (do-close_sd1-condeffs) (not-closed-sd11) (not-closed-cb3)
  (closed-sd6) (do-close_sd8-condeffs) (not-closed-sd5)
  (do-close_sd17-condeffs) (not-closed-sd10) (closed-cb5)
  (do-wait_cb2-condeffs) (closed-sd14) (closed-sd9) (do-close_sd6-condeffs)
  (not-updated-cb3) (do-close_sd7-condeffs) (not-updated-cb1) (not-updated-cb4)
  (closed-cb4) (closed-sd8) (closed-sd1) (not-closed-sd13) (closed-cb1)
  (closed-sd3) (do-close_sd3-condeffs) (closed-sd7) (not-closed-sd15)
  (updated-cb3) (closed-sd17) (not-closed-cb2) (not-updated-cb6) (updated-cb1)
  (do-wait_cb1-condeffs))
 (:functions (total-cost) - number)
 (:action ugly1close_sd3-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly2close_sd18-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd18-condeffs) (not-closed-sd5)) :effect (and (done-1)))
 (:action ugly3close_sd4-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly4wait_cb3-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly5close_sd18 :parameters () :precondition
  (and (do-normal) (not-closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd18-condeffs) (closed-sd18)
       (not (not-closed-sd18))))
 (:action ugly6close_sd8-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd17)) :effect (and (done-0)))
 (:action ugly7close_sd13-endof-condeffs :parameters () :precondition
  (and (do-close_sd13-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd13-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly8open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd6) (not (closed-sd6))))
 (:action ugly9close_sd7-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly10close_sd2-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly11reach-goal-96 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-sd5) (closed-sd6) (closed-sd17)
       (closed-cb3) (closed-sd8) (closed-cb6) (closed-sd18))
  :effect (and (goal-reached)))
 (:action ugly12close_sd14 :parameters () :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd14) (not (not-closed-sd14))))
 (:action ugly13close_sd6-condeff1-yes :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd13) (closed-sd5) (closed-sd4)
       (closed-sd7) (closed-sd18) (closed-cb6))
  :effect (and (done-1) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly14reach-goal-73 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly15reach-goal-60 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly16close_sd8-endof-condeffs :parameters () :precondition
  (and (do-close_sd8-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))))
 (:action ugly17reach-goal-18 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly18wait_cb2-condeff1-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd15) (closed-sd18) (closed-sd7)
       (closed-sd3))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly19reach-goal-124 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly20close_sd15-condeff0-yes :parameters () :precondition
  (and (do-close_sd15-condeffs) (closed-sd18) (closed-sd7) (closed-sd3)
       (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly21close_sd5-condeff1-yes :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-sd13) (closed-sd6) (closed-sd4)
       (closed-sd7) (closed-sd18) (closed-cb6))
  :effect (and (done-1) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly22close_sd18-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd18-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly23open-cb3 :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly24wait_cb2-condeff0-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd13) (closed-sd6) (closed-sd5)
       (closed-sd4) (closed-sd3))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly25close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action ugly26reach-goal-64 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-sd5) (closed-sd6) (closed-sd17)
       (closed-cb3) (closed-sd8) (closed-sd7) (closed-sd18) (closed-cb6))
  :effect (and (goal-reached)))
 (:action ugly27wait_cb3-condeff0-no-2 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly28wait_cb2-endof-condeffs :parameters () :precondition
  (and (do-wait_cb2-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly29reach-goal-38 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd3)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly30reach-goal-58 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly31close_sd13-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly32close_sd6-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly33close_sd6-endof-condeffs :parameters () :precondition
  (and (do-close_sd6-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly34reach-goal-112 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-sd5) (closed-cb6) (closed-sd18)
       (closed-sd7) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly35reach-goal-44 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly36reach-goal-57 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly37close_sd4-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd18)) :effect (and (done-1)))
 (:action ugly38close_sd13-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd5)) :effect (and (done-1)))
 (:action ugly39reach-goal-95 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-sd5)
       (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8) (closed-cb2))
  :effect (and (goal-reached)))
 (:action ugly40reach-goal-105 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly41reach-goal-22 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd3)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly42close_sd12 :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd12) (not (not-closed-sd12))))
 (:action ugly43reach-goal-77 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly44wait_cb6-condeff1-no-2 :parameters () :precondition
  (and (do-wait_cb6-condeffs) (not-closed-sd5)) :effect (and (done-1)))
 (:action ugly45reach-goal-127 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-sd5)
       (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly46open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd10) (not (closed-sd10))))
 (:action ugly47wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly48wait_cb5 :parameters () :precondition
  (and (do-normal) (not-updated-cb5)) :effect
  (and (not-closed-cb5) (updated-cb5) (not (closed-cb5))
       (not (not-updated-cb5))))
 (:action ugly49reach-goal-114 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly50close_sd15-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly51open-cb4 :parameters () :precondition
  (and (do-normal) (closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly52close_sd5-condeff1-no-5 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-cb6)) :effect (and (done-1)))
 (:action ugly53wait_cb6-condeff1-yes :parameters () :precondition
  (and (do-wait_cb6-condeffs) (closed-sd13) (closed-sd6) (closed-sd5)
       (closed-sd4) (closed-sd7) (closed-sd18))
  :effect (and (done-1) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly54close_sd17 :parameters () :precondition
  (and (do-normal) (not-closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd17-condeffs) (closed-sd17)
       (not (not-closed-sd17))))
 (:action ugly55reach-goal-88 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-cb6) (closed-sd18) (closed-sd7)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly56close_sd6-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd18)) :effect (and (done-1)))
 (:action ugly57close_sd13 :parameters () :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd13-condeffs) (closed-sd13)
       (not (not-closed-sd13))))
 (:action ugly58close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly59close_sd18-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd18-condeffs) (not-closed-sd15)) :effect (and (done-0)))
 (:action ugly60close_sd3-condeff0-yes :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd13) (closed-sd6) (closed-sd5)
       (closed-sd4) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly61close_sd3-endof-condeffs :parameters () :precondition
  (and (do-close_sd3-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly62close_sd15-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd18)) :effect (and (done-0)))
 (:action ugly63close_sd6-condeff1-no-5 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-cb6)) :effect (and (done-1)))
 (:action ugly64reach-goal-65 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly65reach-goal-21 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly66close_sd4-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly67close_sd18-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd18-condeffs) (not-closed-sd4)) :effect (and (done-1)))
 (:action ugly68open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly69wait_cb6-condeff1-no-3 :parameters () :precondition
  (and (do-wait_cb6-condeffs) (not-closed-sd4)) :effect (and (done-1)))
 (:action ugly70close_sd5-condeff0-yes :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-sd13) (closed-sd6) (closed-sd4)
       (closed-sd3) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly71reach-goal-85 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly72reach-goal-121 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly73close_sd7-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly74reach-goal-71 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-cb2)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly75open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd8) (not (closed-sd8))))
 (:action ugly76close_sd6-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd4)) :effect (and (done-1)))
 (:action ugly77reach-goal-108 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly78wait_cb6-condeff1-no-5 :parameters () :precondition
  (and (do-wait_cb6-condeffs) (not-closed-sd18)) :effect (and (done-1)))
 (:action ugly79close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly80reach-goal-53 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly81reach-goal-122 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly82open-sd13 :parameters () :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd13) (not (closed-sd13))))
 (:action ugly83open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd7) (not (closed-sd7))))
 (:action ugly84wait_cb1-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly85close_sd3-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly86close_sd4-condeff0-yes :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd13) (closed-sd6) (closed-sd5)
       (closed-sd3) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly87reach-goal-94 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd5)
       (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8) (closed-sd3))
  :effect (and (goal-reached)))
 (:action ugly88reach-goal-78 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd5)
       (closed-sd3) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly89reach-goal-45 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly90close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly91close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action ugly92close_sd2-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly93open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd9) (not (closed-sd9))))
 (:action ugly94reach-goal-2 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly95reach-goal-29 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly96reach-goal-15 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-sd5)
       (closed-cb2) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly97reach-goal-51 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly98reach-goal-68 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly99close_sd5-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd18)) :effect (and (done-1)))
 (:action ugly100reach-goal-31 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-sd5)
       (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8) (closed-cb2))
  :effect (and (goal-reached)))
 (:action ugly101wait_cb6-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb6-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly102reach-goal-93 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly103close_sd17-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd17-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly104reach-goal-111 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-sd5)
       (closed-cb2) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly105close_sd18-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd18-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly106wait_cb2-condeff0-no-4 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly107close_sd3-condeff1-yes :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd15) (closed-sd18) (closed-sd7)
       (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly108close_sd5-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly109close_sd5-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly110close_sd18-condeff0-yes :parameters () :precondition
  (and (do-close_sd18-condeffs) (closed-sd15) (closed-sd7) (closed-sd3)
       (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly111close_sd5-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd4)) :effect (and (done-1)))
 (:action ugly112close_sd13-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly113close_sd2-endof-condeffs :parameters () :precondition
  (and (do-close_sd2-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))))
 (:action ugly114reach-goal-52 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly115reach-goal-4 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly116reach-goal-41 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly117reach-goal-20 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly118open-sd17 :parameters () :precondition
  (and (do-normal) (closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd17) (not (closed-sd17))))
 (:action ugly119open-sd12 :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd12) (not (closed-sd12))))
 (:action ugly120close_sd13-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly121reach-goal-54 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd3)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly122close_sd1-condeff0-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd2) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly123reach-goal-126 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd5)
       (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly124close_sd7-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd5)) :effect (and (done-1)))
 (:action ugly125reach-goal-80 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-sd5) (closed-cb6) (closed-sd18)
       (closed-sd7) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly126reach-goal-84 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly127reach-goal-123 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly128reach-goal-86 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd3)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly129reach-goal-14 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd5)
       (closed-sd3) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly130close_sd9-condeff0-yes :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly131close_sd15-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-cb6)) :effect (and (done-1)))
 (:action ugly132reach-goal-62 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd5)
       (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8) (closed-sd3))
  :effect (and (goal-reached)))
 (:action ugly133reach-goal-76 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly134close_sd6-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly135reach-goal-17 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly136reach-goal-56 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-cb6) (closed-sd18) (closed-sd7)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly137reach-goal-90 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly138close_sd18-endof-condeffs :parameters () :precondition
  (and (do-close_sd18-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd18-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly139reach-goal-28 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly140close_cb6 :parameters () :precondition
  (and (do-normal) (not-closed-cb6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb6) (not-updated-cb6) (not (not-closed-cb6))
       (not (updated-cb6))))
 (:action ugly141reach-goal-55 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-cb2)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly142close_sd8-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly143close_sd4-endof-condeffs :parameters () :precondition
  (and (do-close_sd4-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly144close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly145reach-goal-82 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly146close_sd7-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly147reach-goal-118 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd3)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly148close_sd9-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly149close_sd5-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly150reach-goal-106 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly151reach-goal-104 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-cb6) (closed-sd18) (closed-sd7)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly152reach-goal-125 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly153close_sd5-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly154close_cb5 :parameters () :precondition
  (and (do-normal) (not-closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb5) (not-updated-cb5) (not (not-closed-cb5))
       (not (updated-cb5))))
 (:action ugly155reach-goal-13 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly156close_sd17-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd17-condeffs) (not-closed-sd16)) :effect (and (done-0)))
 (:action ugly157wait_cb3-endof-condeffs :parameters () :precondition
  (and (do-wait_cb3-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly158close_sd4-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly159open-sd14 :parameters () :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd14) (not (closed-sd14))))
 (:action ugly160reach-goal-101 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly161reach-goal-72 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-cb6) (closed-sd18) (closed-sd7)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly162close_sd16-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly163close_cb3 :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly164close_sd7-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd18)) :effect (and (done-1)))
 (:action ugly165close_sd16 :parameters () :precondition
  (and (do-normal) (not-closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd16-condeffs) (closed-sd16)
       (not (not-closed-sd16))))
 (:action ugly166reach-goal-30 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd5)
       (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8) (closed-sd3))
  :effect (and (goal-reached)))
 (:action ugly167close_sd3-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd18)) :effect (and (done-1)))
 (:action ugly168close_sd4-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly169reach-goal-19 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly170close_sd15 :parameters () :precondition
  (and (do-normal) (not-closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd15-condeffs) (closed-sd15)
       (not (not-closed-sd15))))
 (:action ugly171close_sd18-condeff1-yes :parameters () :precondition
  (and (do-close_sd18-condeffs) (closed-sd13) (closed-sd6) (closed-sd5)
       (closed-sd4) (closed-sd7) (closed-cb6))
  :effect (and (done-1) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly172reach-goal-16 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-sd5) (closed-cb6) (closed-sd18)
       (closed-sd7) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly173close_sd1-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly174reach-goal-7 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-cb2)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly175close_sd5-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly176reach-goal-117 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly177close_sd5-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly178close_sd3-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly179reach-goal-39 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-cb2)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly180close_sd13-condeff1-yes :parameters () :precondition
  (and (do-close_sd13-condeffs) (closed-sd6) (closed-sd5) (closed-sd4)
       (closed-sd7) (closed-sd18) (closed-cb6))
  :effect (and (done-1) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly181close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly182close_sd7-condeff1-no-5 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-cb6)) :effect (and (done-1)))
 (:action ugly183reach-goal-100 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly184close_sd6-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly185close_sd1-endof-condeffs :parameters () :precondition
  (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly186wait_cb6-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb6-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly187open-sd15 :parameters () :precondition
  (and (do-normal) (closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd15) (not (closed-sd15))))
 (:action ugly188reach-goal-8 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-cb6) (closed-sd18) (closed-sd7)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly189close_sd11 :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd11) (not (not-closed-sd11))))
 (:action ugly190open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd2) (not (closed-sd2))))
 (:action ugly191reach-goal-120 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-cb6) (closed-sd18) (closed-sd7)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly192close_sd13-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly193open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd4) (not (closed-sd4))))
 (:action ugly194wait_cb6-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb6-condeffs) (not-closed-sd15)) :effect (and (done-0)))
 (:action ugly195reach-goal-81 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly196reach-goal-49 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly197close_sd6-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd5)) :effect (and (done-1)))
 (:action ugly198reach-goal-5 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly199reach-goal-75 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly200reach-goal-37 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly201reach-goal-50 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly202close_cb4 :parameters () :precondition
  (and (do-normal) (not-closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb4) (not-updated-cb4) (not (not-closed-cb4))
       (not (updated-cb4))))
 (:action ugly203reach-goal-63 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-sd5)
       (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8) (closed-cb2))
  :effect (and (goal-reached)))
 (:action ugly204close_sd3-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-cb2)) :effect (and (done-1)))
 (:action ugly205close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly206close_sd13-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd4)) :effect (and (done-1)))
 (:action ugly207reach-goal-34 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly208close_sd10 :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd10) (not (not-closed-sd10))))
 (:action ugly209close_sd7-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd15)) :effect (and (done-0)))
 (:action ugly210reach-goal-10 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly211reach-goal-35 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly212close_sd1-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly213close_sd15-condeff1-yes :parameters () :precondition
  (and (do-close_sd15-condeffs) (closed-cb6)) :effect
  (and (done-1) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly214wait_cb3-condeff1-yes :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd9)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly215reach-goal-67 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly216reach-goal-119 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-cb2)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly217reach-goal-66 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly218reach-goal-47 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-sd5)
       (closed-cb2) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly219wait_cb4 :parameters () :precondition
  (and (do-normal) (not-updated-cb4)) :effect
  (and (not-closed-cb4) (updated-cb4) (not (closed-cb4))
       (not (not-updated-cb4))))
 (:action ugly220reach-goal-11 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly221open-sd11 :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd11) (not (closed-sd11))))
 (:action ugly222close_sd18-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd18-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly223close_sd7-condeff1-yes :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd13) (closed-sd6) (closed-sd5)
       (closed-sd4) (closed-sd18) (closed-cb6))
  :effect (and (done-1) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly224close_sd13-condeff1-no-5 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-cb6)) :effect (and (done-1)))
 (:action ugly225close_sd13-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly226open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd1) (not (closed-sd1))))
 (:action ugly227wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd2) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly228reach-goal-74 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly229close_sd16-condeff0-yes :parameters () :precondition
  (and (do-close_sd16-condeffs) (closed-sd17) (closed-sd8) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly230close_sd18-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd18-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly231close_sd6-condeff0-yes :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd13) (closed-sd5) (closed-sd4)
       (closed-sd3) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly232reach-goal-109 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly233reach-goal-92 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly234close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly235close_sd13-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly236close_sd17-condeff0-yes :parameters () :precondition
  (and (do-close_sd17-condeffs) (closed-sd16) (closed-sd8) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly237reach-goal-40 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-cb6) (closed-sd18) (closed-sd7)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly238reach-goal-110 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd5)
       (closed-sd3) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly239wait_cb6-condeff1-no-4 :parameters () :precondition
  (and (do-wait_cb6-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly240reach-goal-87 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-cb2)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly241open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly242reach-goal-26 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly243open-sd16 :parameters () :precondition
  (and (do-normal) (closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd16) (not (closed-sd16))))
 (:action ugly244close_sd6-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd13)) :effect (and (done-0)))
 (:action ugly245close_sd16-endof-condeffs :parameters () :precondition
  (and (do-close_sd16-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd16-condeffs)) (not (done-0))))
 (:action ugly246reach-goal-48 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-sd5) (closed-cb6) (closed-sd18)
       (closed-sd7) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly247open-cb6 :parameters () :precondition
  (and (do-normal) (closed-cb6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly248reach-goal-116 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly249close_sd4-condeff1-yes :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd13) (closed-sd6) (closed-sd5)
       (closed-sd7) (closed-sd18) (closed-cb6))
  :effect (and (done-1) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly250reach-goal-24 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-cb6) (closed-sd18) (closed-sd7)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly251reach-goal-32 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-sd5) (closed-sd6) (closed-sd17)
       (closed-cb3) (closed-sd8) (closed-cb6) (closed-sd7))
  :effect (and (goal-reached)))
 (:action ugly252close_sd8-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd16)) :effect (and (done-0)))
 (:action ugly253close_sd6-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly254reach-goal-98 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly255close_sd7-endof-condeffs :parameters () :precondition
  (and (do-close_sd7-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly256reach-goal-107 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly257close_sd16-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-sd17)) :effect (and (done-0)))
 (:action ugly258wait_cb3 :parameters () :precondition
  (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action ugly259close_sd3-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd15)) :effect (and (done-1)))
 (:action ugly260reach-goal-0 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-sd5) (closed-sd6) (closed-sd17)
       (closed-cb3) (closed-sd8) (closed-sd7) (closed-sd18))
  :effect (and (goal-reached)))
 (:action ugly261reach-goal-97 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly262open-sd18 :parameters () :precondition
  (and (do-normal) (closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd18) (not (closed-sd18))))
 (:action ugly263close_sd9-endof-condeffs :parameters () :precondition
  (and (do-close_sd9-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0))))
 (:action ugly264close_sd18-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd18-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly265wait_cb2-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd15)) :effect (and (done-1)))
 (:action ugly266reach-goal-12 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly267wait_cb1-endof-condeffs :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0))))
 (:action ugly268close_sd8-condeff0-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd16) (closed-sd17) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly269wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly270wait_cb2-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd13)) :effect (and (done-0)))
 (:action ugly271reach-goal-61 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly272close_sd18-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd18-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly273close_sd4-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd13)) :effect (and (done-0)))
 (:action ugly274reach-goal-43 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly275close_sd17-endof-condeffs :parameters () :precondition
  (and (do-close_sd17-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd17-condeffs)) (not (done-0))))
 (:action ugly276reach-goal-91 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly277close_sd16-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd16-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly278reach-goal-46 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd5)
       (closed-sd3) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly279close_sd15-endof-condeffs :parameters () :precondition
  (and (do-close_sd15-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd15-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly280close_sd4-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly281wait_cb2-condeff1-no-3 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd3)) :effect (and (done-1)))
 (:action ugly282reach-goal-102 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd3)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly283open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd3) (not (closed-sd3))))
 (:action ugly284close_sd7-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly285reach-goal-27 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly286reach-goal-99 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly287close_sd5-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly288reach-goal-59 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly289close_sd5-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd13)) :effect (and (done-0)))
 (:action ugly290close_sd13-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly291wait_cb2-condeff1-no-2 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly292close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly293close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly294reach-goal-36 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly295reach-goal-33 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly296close_sd4-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly297close_sd5-endof-condeffs :parameters () :precondition
  (and (do-close_sd5-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly298reach-goal-79 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-sd5)
       (closed-cb2) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly299reach-goal-103 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-cb2)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly300close_sd4-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd5)) :effect (and (done-1)))
 (:action ugly301reach-goal-1 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly302close_sd18-condeff1-no-5 :parameters () :precondition
  (and (do-close_sd18-condeffs) (not-closed-cb6)) :effect (and (done-1)))
 (:action ugly303reach-goal-23 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-cb2)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly304close_sd13-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd18)) :effect (and (done-1)))
 (:action ugly305wait_cb3-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd17)) :effect (and (done-0)))
 (:action ugly306wait_cb2-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly307close_sd6-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly308close_sd3-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly309wait_cb3-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd16)) :effect (and (done-0)))
 (:action ugly310wait_cb1-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly311wait_cb2-condeff0-no-2 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly312close_sd15-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly313reach-goal-113 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly314reach-goal-9 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly315reach-goal-115 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly316close_sd17-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd17-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly317reach-goal-25 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly318wait_cb3-condeff0-yes :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd16) (closed-sd17) (closed-sd8)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly319reach-goal-6 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd3)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly320close_sd6-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly321close_sd7-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd18)) :effect (and (done-0)))
 (:action ugly322wait_cb6-condeff0-yes :parameters () :precondition
  (and (do-wait_cb6-condeffs) (closed-sd15)) :effect
  (and (done-0) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly323close_sd4-condeff1-no-5 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-cb6)) :effect (and (done-1)))
 (:action ugly324close_sd4-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly325reach-goal-3 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly326close_sd3-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly327reach-goal-42 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly328close_sd7-condeff0-yes :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd15) (closed-sd18) (closed-sd3)
       (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly329close_sd2-condeff0-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd1) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly330open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd5) (not (closed-sd5))))
 (:action ugly331close_sd3-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd13)) :effect (and (done-0)))
 (:action ugly332reach-goal-89 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly333wait_cb2-condeff0-no-3 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly334wait_cb6-endof-condeffs :parameters () :precondition
  (and (do-wait_cb6-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb6-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly335open-cb5 :parameters () :precondition
  (and (do-normal) (closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly336reach-goal-70 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd3)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly337wait_cb2-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd18)) :effect (and (done-1)))
 (:action ugly338close_sd7-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd4)) :effect (and (done-1)))
 (:action ugly339reach-goal-69 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly340close_sd15-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd15-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly341reach-goal-83 :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly342wait_cb6 :parameters () :precondition
  (and (do-normal) (not-updated-cb6)) :effect
  (and (not (do-normal)) (do-wait_cb6-condeffs) (updated-cb6)
       (not (not-updated-cb6))))
 (:action ugly343close_sd13-condeff0-yes :parameters () :precondition
  (and (do-close_sd13-condeffs) (closed-sd6) (closed-sd5) (closed-sd4)
       (closed-sd3) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))) 