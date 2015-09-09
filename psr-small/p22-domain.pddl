
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (closed-sd6) (done-2) (do-close_sd3-condeffs)
  (do-close_sd1-condeffs) (not-updated-cb3) (not-closed-sd4)
  (do-close_sd11-condeffs) (do-wait_cb2-condeffs) (do-close_sd6-condeffs)
  (do-close_sd2-condeffs) (not-closed-sd9) (not-updated-cb1) (not-closed-sd1)
  (closed-sd5) (done-0) (do-wait_cb1-condeffs) (do-close_sd9-condeffs)
  (closed-sd7) (not-closed-cb3) (not-closed-sd5) (do-close_sd5-condeffs)
  (not-closed-sd2) (not-closed-sd12) (not-closed-sd10) (closed-cb3)
  (do-close_sd8-condeffs) (do-normal) (not-closed-sd11) (not-closed-sd13)
  (do-close_sd12-condeffs) (not-closed-sd6) (closed-sd10)
  (do-close_sd10-condeffs) (do-close_sd4-condeffs) (do-wait_cb3-condeffs)
  (not-closed-cb1) (closed-sd8) (not-closed-sd3) (closed-sd12) (not-closed-sd7)
  (not-closed-sd8) (updated-cb2) (closed-cb2) (updated-cb1) (closed-cb1)
  (closed-sd11) (not-closed-cb2) (done-1) (closed-sd3) (closed-sd1)
  (closed-sd13) (closed-sd2) (not-updated-cb2) (updated-cb3) (closed-sd9)
  (closed-sd4))
 (:action ugly1open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly2wait_cb3-condeff0-yes :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd2) (closed-sd3) (closed-sd9)
       (closed-sd8))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly3open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly4close_sd8-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly5wait_cb3-endof-condeffs :parameters () :precondition
  (and (do-wait_cb3-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly6open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly7close_sd11-condeff0-yes :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd10) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly8open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly9wait_cb3-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly10close_sd4-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly11close_sd10-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly12close_sd2-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly13close_sd9-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly14close_sd8-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly15close_sd9-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly16close_sd12-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd10)) :effect (and (done-0)))
 (:action ugly17close_sd11 :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action ugly18close_sd9-endof-condeffs :parameters () :precondition
  (and (do-close_sd9-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0))))
 (:action ugly19close_sd10-condeff1-yes :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-sd12) (closed-cb3)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly20open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly21close_sd5-endof-condeffs :parameters () :precondition
  (and (do-close_sd5-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))))
 (:action ugly22close_sd11-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd10)) :effect (and (done-0)))
 (:action ugly23wait_cb1-endof-condeffs :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0))))
 (:action ugly24close_sd5-condeff0-yes :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-sd6) (closed-sd4) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly25open-sd12 :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd12) (not (closed-sd12))))
 (:action ugly26close_sd10-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd12)) :effect (and (done-1)))
 (:action ugly27open-sd13 :parameters () :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd13) (not (closed-sd13))))
 (:action ugly28close_sd5-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly29wait_cb3-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly30open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly31wait_cb1-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly32close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly33close_sd10-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly34wait_cb3-condeff2-no-1 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd10)) :effect (and (done-2)))
 (:action ugly35wait_cb3-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly36wait_cb2-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly37open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly38open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly39close_sd4-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly40open-cb3 :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly41wait_cb2-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly42close_sd2-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly43close_sd3-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly44wait_cb3-condeff1-yes :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd11) (closed-sd10)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly45close_sd6-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly46wait_cb3-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly47close_sd13 :parameters () :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd13) (not (not-closed-sd13))))
 (:action ugly48close_sd11-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly49close_sd2-condeff0-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd3) (closed-sd9) (closed-sd8)
       (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly50wait_cb3-condeff0-no-3 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly51close_sd3-endof-condeffs :parameters () :precondition
  (and (do-close_sd3-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))))
 (:action ugly52wait_cb3-condeff0-no-2 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly53close_cb3 :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly54wait_cb3 :parameters () :precondition
  (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action ugly55close_sd12-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly56close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly57close_sd1-condeff0-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly58close_sd3-condeff0-yes :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd2) (closed-sd9) (closed-sd8)
       (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly59close_sd10-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-cb3)) :effect (and (done-1)))
 (:action ugly60wait_cb3-condeff2-yes :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd12) (closed-sd10)) :effect
  (and (done-2) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly61close_sd4-endof-condeffs :parameters () :precondition
  (and (do-close_sd4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))))
 (:action ugly62close_sd6-endof-condeffs :parameters () :precondition
  (and (do-close_sd6-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))))
 (:action ugly63close_sd9-condeff0-yes :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd2) (closed-sd3) (closed-sd8)
       (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly64close_sd4-condeff0-yes :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd6) (closed-sd5) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly65close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly66close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action ugly67close_sd8-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly68wait_cb2-condeff0-no-2 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly69close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly70close_sd5-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly71close_sd10 :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action ugly72close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd7) (not (not-closed-sd7))))
 (:action ugly73close_sd1-endof-condeffs :parameters () :precondition
  (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly74close_sd12-condeff0-yes :parameters () :precondition
  (and (do-close_sd12-condeffs) (closed-sd10) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly75close_sd12 :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd12-condeffs) (closed-sd12)
       (not (not-closed-sd12))))
 (:action ugly76close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly77close_sd10-endof-condeffs :parameters () :precondition
  (and (do-close_sd10-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly78close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action ugly79close_sd10-condeff0-yes :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-sd11) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly80close_sd8-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly81wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly82close_sd9-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly83close_sd5-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly84close_sd4-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly85close_sd3-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly86close_sd2-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly87close_sd9-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly88close_sd1-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly89wait_cb3-condeff2-no-0 :parameters () :precondition
  (and (do-wait_cb3-condeffs) (not-closed-sd12)) :effect (and (done-2)))
 (:action ugly90close_sd8-endof-condeffs :parameters () :precondition
  (and (do-close_sd8-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))))
 (:action ugly91close_sd6-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly92close_sd11-endof-condeffs :parameters () :precondition
  (and (do-close_sd11-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0))))
 (:action ugly93open-sd11 :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly94close_sd6-condeff0-yes :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd5) (closed-sd4) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly95close_sd3-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly96wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly97wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly98close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly99open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly100close_sd2-endof-condeffs :parameters () :precondition
  (and (do-close_sd2-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))))
 (:action ugly101close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly102open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly103open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly104wait_cb2-endof-condeffs :parameters () :precondition
  (and (do-wait_cb2-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0))))
 (:action ugly105close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly106close_sd3-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-cb3)) :effect (and (done-0)))
 (:action ugly107open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly108close_sd6-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly109close_sd2-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly110close_sd12-endof-condeffs :parameters () :precondition
  (and (do-close_sd12-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd12-condeffs)) (not (done-0))))
 (:action ugly111wait_cb2-condeff0-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd6) (closed-sd5) (closed-sd4)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly112close_sd8-condeff0-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd2) (closed-sd3) (closed-sd9)
       (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))) 