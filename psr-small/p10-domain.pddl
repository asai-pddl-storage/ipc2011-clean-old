
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (not-closed-sd3) (do-close_sd8-condeffs) (not-closed-sd4)
  (do-close_sd3-condeffs) (done-1) (not-closed-sd7) (updated-cb2) (done-0)
  (closed-sd2) (updated-cb1) (not-updated-cb1) (closed-sd3) (not-closed-cb1)
  (not-closed-sd8) (do-close_sd9-condeffs) (do-close_sd2-condeffs) (closed-sd6)
  (not-closed-sd6) (not-closed-sd9) (not-closed-sd2) (do-normal)
  (do-wait_cb1-condeffs) (not-updated-cb2) (closed-sd9) (closed-sd8)
  (closed-sd10) (closed-cb1) (not-closed-sd1) (not-closed-sd10) (closed-sd5)
  (closed-sd7) (not-closed-sd5) (do-close_sd11-condeffs) (closed-sd11)
  (closed-sd1) (do-close_sd7-condeffs) (not-closed-cb2) (closed-sd4)
  (closed-cb2) (not-closed-sd11))
 (:action ugly1close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd1) (not (not-closed-sd1))))
 (:action ugly2close_sd9-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly3close_sd8-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly4wait_cb1-condeff1-no-4 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect (and (done-1)))
 (:action ugly5close_sd2-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly6close_sd3-endof-condeffs :parameters () :precondition
  (and (do-close_sd3-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly7close_sd10 :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd10) (not (not-closed-sd10))))
 (:action ugly8wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd7) (closed-sd8) (closed-sd3)
       (closed-sd2))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly9wait_cb1-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly10open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly11close_sd3-condeff0-yes :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd7) (closed-sd8) (closed-sd2)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly12close_sd3-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly13close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly14close_sd9-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd11)) :effect (and (done-0)))
 (:action ugly15close_sd9-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly16close_sd3-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly17close_sd11-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly18close_sd11-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly19wait_cb1-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly20close_sd7-condeff0-yes :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd8) (closed-sd3) (closed-sd2)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly21close_sd11-condeff0-yes :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd9) (closed-sd8) (closed-sd3)
       (closed-sd2) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly22close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly23close_sd7-endof-condeffs :parameters () :precondition
  (and (do-close_sd7-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))))
 (:action ugly24close_sd3-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly25close_sd7-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly26close_sd8-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly27open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly28close_sd2-endof-condeffs :parameters () :precondition
  (and (do-close_sd2-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly29close_sd2-condeff1-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd11) (closed-sd9) (closed-sd8)
       (closed-sd3) (closed-cb1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly30open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly31close_sd9-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly32open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly33close_sd2-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly34close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly35close_sd3-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly36close_sd8-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd2)) :effect (and (done-1)))
 (:action ugly37wait_cb1-condeff0-no-2 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly38close_sd8-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly39close_sd11-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly40wait_cb1-condeff0-no-3 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly41close_sd8-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly42close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly43close_sd8-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-cb1)) :effect (and (done-1)))
 (:action ugly44close_sd8-condeff0-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd7) (closed-sd3) (closed-sd2)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly45open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly46close_sd2-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-cb1)) :effect (and (done-1)))
 (:action ugly47close_sd2-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly48close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly49wait_cb1-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly50close_sd3-condeff1-yes :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd11) (closed-sd9) (closed-sd8)
       (closed-sd2) (closed-cb1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly51close_sd7-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly52open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly53close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2)) :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly54close_sd8-condeff1-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd11) (closed-sd9) (closed-sd3)
       (closed-sd2) (closed-cb1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly55close_sd2-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly56close_sd11-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly57close_sd8-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly58close_sd11-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd11-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly59open-sd11 :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly60wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not-closed-cb2) (updated-cb2) (not (closed-cb2))
       (not (not-updated-cb2))))
 (:action ugly61close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2)) :effect
  (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly62wait_cb1-condeff1-no-3 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd3)) :effect (and (done-1)))
 (:action ugly63close_sd2-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd3)) :effect (and (done-1)))
 (:action ugly64close_sd8-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly65close_sd8-endof-condeffs :parameters () :precondition
  (and (do-close_sd8-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly66close_sd3-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly67close_sd7-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly68close_sd9-endof-condeffs :parameters () :precondition
  (and (do-close_sd9-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0))))
 (:action ugly69open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly70close_sd2-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly71close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action ugly72close_sd11 :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action ugly73close_sd3-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly74wait_cb1-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly75wait_cb1-condeff1-no-2 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly76close_sd9-condeff0-yes :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd11) (closed-sd8) (closed-sd3)
       (closed-sd2) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly77close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly78open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly79open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly80close_sd2-condeff0-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd7) (closed-sd8) (closed-sd3)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly81open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly82close_sd7-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly83wait_cb1-condeff1-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd11) (closed-sd9) (closed-sd8)
       (closed-sd3) (closed-sd2))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly84close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2)) :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly85close_sd9-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly86wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly87open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly88close_sd3-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly89close_sd2-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly90close_sd2-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly91open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly92wait_cb1-endof-condeffs :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly93close_sd3-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd2)) :effect (and (done-1)))
 (:action ugly94close_sd3-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-cb1)) :effect (and (done-1)))
 (:action ugly95close_sd8-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd3)) :effect (and (done-1)))
 (:action ugly96close_sd11-endof-condeffs :parameters () :precondition
  (and (do-close_sd11-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0))))) 