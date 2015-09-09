
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (closed-cb1) (do-wait_cb2-condeffs) (not-updated-cb5) (do-normal)
  (not-closed-cb3) (closed-sd6) (not-closed-cb2) (closed-cb5) (not-updated-cb1)
  (not-closed-sd4) (not-updated-cb6) (closed-sd14) (closed-sd1) (updated-cb6)
  (closed-sd13) (do-close_sd1-condeffs) (do-close_sd12-condeffs)
  (not-closed-sd14) (not-closed-cb6) (updated-cb4) (done-1) (closed-cb6)
  (not-closed-sd2) (not-closed-cb4) (not-closed-sd1) (do-close_sd9-condeffs)
  (not-closed-sd9) (closed-sd8) (not-closed-sd7) (closed-cb3) (not-closed-sd3)
  (closed-sd12) (closed-sd5) (closed-sd11) (closed-sd2) (updated-cb2)
  (not-closed-sd5) (closed-cb4) (not-closed-sd6) (not-updated-cb2)
  (not-closed-cb5) (do-wait_cb1-condeffs) (not-closed-sd8) (updated-cb5)
  (not-closed-cb1) (not-closed-sd13) (not-closed-sd12) (closed-cb2)
  (not-closed-sd10) (closed-sd3) (not-closed-sd11) (updated-cb1) (done-0)
  (closed-sd4) (not-updated-cb4) (closed-sd10) (closed-sd7)
  (do-wait_cb4-condeffs) (do-close_sd3-condeffs) (do-close_sd4-condeffs)
  (updated-cb3) (closed-sd9) (not-updated-cb3))
 (:action ugly1close_sd12-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-cb4)) :effect (and (done-0)))
 (:action ugly2open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly3close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly4close_cb4 :parameters () :precondition
  (and (do-normal) (not-closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb4) (not-updated-cb4) (not (not-closed-cb4))
       (not (updated-cb4))))
 (:action ugly5close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly6close_cb6 :parameters () :precondition
  (and (do-normal) (not-closed-cb6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb6) (not-updated-cb6) (not (not-closed-cb6))
       (not (updated-cb6))))
 (:action ugly7wait_cb4-endof-condeffs :parameters () :precondition
  (and (do-wait_cb4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb4-condeffs)) (not (done-0))))
 (:action ugly8close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly9close_sd10 :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd10) (not (not-closed-sd10))))
 (:action ugly10close_sd3-condeff0-yes :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly11open-sd12 :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd12) (not (closed-sd12))))
 (:action ugly12wait_cb5 :parameters () :precondition
  (and (do-normal) (not-updated-cb5)) :effect
  (and (not-closed-cb5) (updated-cb5) (not (closed-cb5))
       (not (not-updated-cb5))))
 (:action ugly13close_sd9-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly14close_sd11 :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd11) (not (not-closed-sd11))))
 (:action ugly15close_sd3-endof-condeffs :parameters () :precondition
  (and (do-close_sd3-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))))
 (:action ugly16open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly17open-sd13 :parameters () :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd13) (not (closed-sd13))))
 (:action ugly18close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly19close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action ugly20wait_cb1-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly21wait_cb6 :parameters () :precondition
  (and (do-normal) (not-updated-cb6)) :effect
  (and (not-closed-cb6) (updated-cb6) (not (closed-cb6))
       (not (not-updated-cb6))))
 (:action ugly22close_sd9-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly23open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly24wait_cb2-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd4)) :effect (and (done-1)))
 (:action ugly25close_sd9-condeff0-yes :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd4) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly26open-cb5 :parameters () :precondition
  (and (do-normal) (closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-cb5) (not (closed-cb5))))
 (:action ugly27close_sd1-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly28wait_cb2-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly29open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly30close_sd1-endof-condeffs :parameters () :precondition
  (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly31close_sd1-condeff0-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly32open-cb3 :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly33wait_cb4-condeff0-yes :parameters () :precondition
  (and (do-wait_cb4-condeffs) (closed-sd12)) :effect
  (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly34close_cb3 :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly35wait_cb2-endof-condeffs :parameters () :precondition
  (and (do-wait_cb2-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly36wait_cb3 :parameters () :precondition
  (and (do-normal) (not-updated-cb3)) :effect
  (and (not-closed-cb3) (updated-cb3) (not (closed-cb3))
       (not (not-updated-cb3))))
 (:action ugly37open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly38close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly39close_sd13 :parameters () :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd13) (not (not-closed-sd13))))
 (:action ugly40close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly41close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd7) (not (not-closed-sd7))))
 (:action ugly42wait_cb4-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd12)) :effect (and (done-0)))
 (:action ugly43close_sd14 :parameters () :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd14) (not (not-closed-sd14))))
 (:action ugly44wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly45open-cb4 :parameters () :precondition
  (and (do-normal) (closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-cb4) (not (closed-cb4))))
 (:action ugly46close_sd4-endof-condeffs :parameters () :precondition
  (and (do-close_sd4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))))
 (:action ugly47open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly48close_sd4-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly49open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly50close_sd12-endof-condeffs :parameters () :precondition
  (and (do-close_sd12-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd12-condeffs)) (not (done-0))))
 (:action ugly51close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd8) (not (not-closed-sd8))))
 (:action ugly52close_sd3-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly53close_sd4-condeff0-yes :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd9) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly54wait_cb1-endof-condeffs :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0))))
 (:action ugly55open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly56close_sd4-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly57wait_cb4 :parameters () :precondition
  (and (do-normal) (not-updated-cb4)) :effect
  (and (not (do-normal)) (do-wait_cb4-condeffs) (updated-cb4)
       (not (not-updated-cb4))))
 (:action ugly58open-sd14 :parameters () :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd14) (not (closed-sd14))))
 (:action ugly59close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly60close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly61wait_cb2-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly62close_cb5 :parameters () :precondition
  (and (do-normal) (not-closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb5) (not-updated-cb5) (not (not-closed-cb5))
       (not (updated-cb5))))
 (:action ugly63close_sd9-endof-condeffs :parameters () :precondition
  (and (do-close_sd9-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0))))
 (:action ugly64wait_cb2-condeff0-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd3)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly65open-sd11 :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly66close_sd12 :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd12-condeffs) (closed-sd12)
       (not (not-closed-sd12))))
 (:action ugly67close_sd12-condeff0-yes :parameters () :precondition
  (and (do-close_sd12-condeffs) (closed-cb4)) :effect
  (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly68wait_cb2-condeff1-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd9) (closed-sd4)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly69open-cb6 :parameters () :precondition
  (and (do-normal) (closed-cb6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-cb6) (not (closed-cb6))))
 (:action ugly70wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly71open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly72open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly73wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly74open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly75open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (not-closed-sd9) (not (closed-sd9))))) 