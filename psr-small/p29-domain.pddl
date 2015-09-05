
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (closed-cb3) (closed-sd7) (do-close_sd8-condeffs)
  (not-closed-sd7) (closed-sd6) (closed-sd2) (not-closed-sd3) (closed-sd14)
  (not-closed-cb1) (closed-cb1) (not-updated-cb2) (not-closed-sd5)
  (closed-sd10) (updated-cb3) (closed-sd16) (done-1) (do-close_sd1-condeffs)
  (closed-sd12) (closed-sd5) (not-closed-cb2) (not-updated-cb3) (updated-cb2)
  (not-closed-sd13) (closed-sd17) (done-0) (closed-sd8) (closed-sd9)
  (not-closed-sd14) (closed-sd19) (closed-sd13) (updated-cb1) (not-closed-sd12)
  (closed-cb2) (not-closed-sd18) (not-closed-sd4) (not-closed-sd9)
  (do-close_sd6-condeffs) (done-2) (not-closed-sd8) (do-normal)
  (not-closed-sd19) (do-close_sd2-condeffs) (not-closed-sd10) (closed-sd15)
  (not-closed-sd16) (not-closed-sd17) (do-close_sd4-condeffs)
  (do-close_sd3-condeffs) (closed-sd1) (closed-sd18) (not-closed-sd1)
  (do-close_sd12-condeffs) (not-closed-cb3) (closed-sd3)
  (do-close_sd5-condeffs) (do-close_sd7-condeffs) (do-wait_cb1-condeffs)
  (not-closed-sd15) (not-closed-sd6) (closed-sd4) (not-closed-sd2)
  (do-close_sd19-condeffs) (not-closed-sd11) (not-updated-cb1)
  (do-close_sd9-condeffs) (do-wait_cb2-condeffs) (closed-sd11)
  (do-close_sd13-condeffs))
 (:action ugly1close_sd2-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd19)) :effect (and (done-0)))
 (:action ugly2close_cb3 :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly3wait_cb1-condeff0-no-5 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly4close_sd1-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly5close_sd13-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly6wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly7wait_cb1-condeff1-no-5 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-1)))
 (:action ugly8wait_cb1-condeff1-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd13) (closed-sd7) (closed-sd6)
       (closed-sd3) (closed-sd2) (closed-sd1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly9close_sd4-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly10close_sd12-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly11close_sd3-condeff1-yes :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd13) (closed-sd7) (closed-sd6)
       (closed-sd2) (closed-sd1) (closed-cb1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly12close_sd1-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly13close_sd5-endof-condeffs :parameters () :precondition
  (and (do-close_sd5-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))))
 (:action ugly14open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly15wait_cb1-condeff1-no-2 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly16close_sd1-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd3)) :effect (and (done-1)))
 (:action ugly17open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly18wait_cb1-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly19close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly20close_sd12-endof-condeffs :parameters () :precondition
  (and (do-close_sd12-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd12-condeffs)) (not (done-0))))
 (:action ugly21close_sd3-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly22close_sd1-condeff0-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd19) (closed-sd5) (closed-sd4)
       (closed-sd3) (closed-sd2) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly23wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd19) (closed-sd5) (closed-sd4)
       (closed-sd3) (closed-sd2) (closed-sd1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly24close_sd5-condeff0-yes :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-sd19) (closed-sd4) (closed-sd3)
       (closed-sd2) (closed-sd1) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly25close_sd19-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd19-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly26close_sd2-condeff1-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd13) (closed-sd7) (closed-sd6)
       (closed-sd3) (closed-sd1) (closed-cb1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly27close_sd19-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd19-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly28close_sd2-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly29close_sd3-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd19)) :effect (and (done-0)))
 (:action ugly30close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action ugly31close_sd7-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly32close_sd13-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly33open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly34close_sd6-endof-condeffs :parameters () :precondition
  (and (do-close_sd6-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))))
 (:action ugly35open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly36wait_cb1-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd19)) :effect (and (done-0)))
 (:action ugly37close_sd6-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly38close_sd2-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly39close_sd1-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly40close_sd9-endof-condeffs :parameters () :precondition
  (and (do-close_sd9-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0))))
 (:action ugly41close_sd4-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly42close_sd2-condeff0-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd19) (closed-sd5) (closed-sd4)
       (closed-sd3) (closed-sd1) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly43close_sd19-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd19-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly44close_sd2-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly45close_sd2-condeff1-no-5 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-cb1)) :effect (and (done-1)))
 (:action ugly46close_sd7-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly47wait_cb1-condeff2-no-2 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-2)))
 (:action ugly48open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly49close_sd3-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly50close_sd19 :parameters () :precondition
  (and (do-normal) (not-closed-sd19) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd19-condeffs) (closed-sd19)
       (not (not-closed-sd19))))
 (:action ugly51wait_cb2-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd9)) :effect (and (done-0)))
 (:action ugly52close_sd13-endof-condeffs :parameters () :precondition
  (and (do-close_sd13-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd13-condeffs)) (not (done-0))))
 (:action ugly53close_sd13 :parameters () :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd13-condeffs) (closed-sd13)
       (not (not-closed-sd13))))
 (:action ugly54close_sd12 :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd12-condeffs) (closed-sd12)
       (not (not-closed-sd12))))
 (:action ugly55wait_cb3 :parameters () :precondition
  (and (do-normal) (not-updated-cb3)) :effect
  (and (not-closed-cb3) (updated-cb3) (not (closed-cb3))
       (not (not-updated-cb3))))
 (:action ugly56open-sd12 :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd12) (not (closed-sd12))))
 (:action ugly57wait_cb1-condeff1-no-4 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect (and (done-1)))
 (:action ugly58close_sd4-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd19)) :effect (and (done-0)))
 (:action ugly59close_sd13-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly60close_sd1-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly61close_sd3-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly62open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly63close_sd7-condeff0-yes :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd13) (closed-sd6) (closed-sd3)
       (closed-sd2) (closed-sd1) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly64close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly65close_sd4-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly66close_sd6-condeff0-yes :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd13) (closed-sd7) (closed-sd3)
       (closed-sd2) (closed-sd1) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly67close_sd1-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly68close_sd3-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly69open-sd13 :parameters () :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd13) (not (closed-sd13))))
 (:action ugly70close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly71close_sd5-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly72open-sd11 :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly73close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly74close_sd12-condeff0-yes :parameters () :precondition
  (and (do-close_sd12-condeffs) (closed-sd8) (closed-sd1) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly75close_sd3-condeff0-yes :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd19) (closed-sd5) (closed-sd4)
       (closed-sd2) (closed-sd1) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly76close_sd7-endof-condeffs :parameters () :precondition
  (and (do-close_sd7-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))))
 (:action ugly77wait_cb1-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly78close_sd16 :parameters () :precondition
  (and (do-normal) (not-closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd16) (not (not-closed-sd16))))
 (:action ugly79close_sd1-condeff2-no-2 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-2)))
 (:action ugly80wait_cb2-endof-condeffs :parameters () :precondition
  (and (do-wait_cb2-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0))))
 (:action ugly81close_sd2-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly82close_sd1-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly83close_sd17 :parameters () :precondition
  (and (do-normal) (not-closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd17) (not (not-closed-sd17))))
 (:action ugly84close_sd4-condeff0-yes :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd19) (closed-sd5) (closed-sd3)
       (closed-sd2) (closed-sd1) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly85close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly86close_sd3-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd13)) :effect (and (done-1)))
 (:action ugly87wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly88close_sd4-endof-condeffs :parameters () :precondition
  (and (do-close_sd4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))))
 (:action ugly89close_sd3-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd1)) :effect (and (done-1)))
 (:action ugly90open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly91close_sd19-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd19-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly92close_sd7-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly93close_sd3-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly94close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action ugly95open-sd17 :parameters () :precondition
  (and (do-normal) (closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd17) (not (closed-sd17))))
 (:action ugly96close_sd8-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly97open-cb3 :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly98wait_cb1-condeff0-no-3 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly99wait_cb1-endof-condeffs :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly100close_sd14 :parameters () :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd14) (not (not-closed-sd14))))
 (:action ugly101close_sd1-condeff2-no-1 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd8)) :effect (and (done-2)))
 (:action ugly102close_sd3-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd2)) :effect (and (done-1)))
 (:action ugly103close_sd5-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly104close_sd19-endof-condeffs :parameters () :precondition
  (and (do-close_sd19-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd19-condeffs)) (not (done-0))))
 (:action ugly105close_sd9-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly106close_sd2-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly107close_sd6-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd7)) :effect (and (done-0)))
 (:action ugly108close_sd13-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly109wait_cb2-condeff0-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd9)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly110close_sd1-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly111open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly112wait_cb1-condeff0-no-2 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly113close_sd3-condeff1-no-5 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-cb1)) :effect (and (done-1)))
 (:action ugly114close_sd4-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly115close_sd3-condeff1-no-1 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly116close_sd5-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly117close_sd5-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd19)) :effect (and (done-0)))
 (:action ugly118close_sd19-condeff0-yes :parameters () :precondition
  (and (do-close_sd19-condeffs) (closed-sd5) (closed-sd4) (closed-sd3)
       (closed-sd2) (closed-sd1) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly119close_sd7-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly120close_sd1-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd19)) :effect (and (done-0)))
 (:action ugly121open-sd16 :parameters () :precondition
  (and (do-normal) (closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd16) (not (closed-sd16))))
 (:action ugly122open-sd18 :parameters () :precondition
  (and (do-normal) (closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd18) (not (closed-sd18))))
 (:action ugly123close_sd19-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd19-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly124close_sd6-condeff0-no-5 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly125close_sd2-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly126open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly127close_sd1-endof-condeffs :parameters () :precondition
  (and (do-close_sd1-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly128wait_cb1-condeff0-no-4 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly129close_sd1-condeff2-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd12) (closed-sd8) (closed-cb1)) :effect
  (and (done-2) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly130close_sd1-condeff1-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd13) (closed-sd7) (closed-sd6)
       (closed-sd3) (closed-sd2) (closed-cb1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly131close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly132close_sd7-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly133close_sd6-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd13)) :effect (and (done-0)))
 (:action ugly134wait_cb1-condeff2-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd8)) :effect (and (done-2)))
 (:action ugly135close_sd13-condeff0-yes :parameters () :precondition
  (and (do-close_sd13-condeffs) (closed-sd7) (closed-sd6) (closed-sd3)
       (closed-sd2) (closed-sd1) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly136close_sd4-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd4-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly137open-sd19 :parameters () :precondition
  (and (do-normal) (closed-sd19) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd19) (not (closed-sd19))))
 (:action ugly138close_sd1-condeff2-no-0 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd12)) :effect (and (done-2)))
 (:action ugly139close_sd13-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd6)) :effect (and (done-0)))
 (:action ugly140close_sd8-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd12)) :effect (and (done-0)))
 (:action ugly141close_sd2-endof-condeffs :parameters () :precondition
  (and (do-close_sd2-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly142close_sd1-condeff1-no-5 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect (and (done-1)))
 (:action ugly143close_sd10 :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd10) (not (not-closed-sd10))))
 (:action ugly144close_sd19-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd19-condeffs) (not-closed-sd5)) :effect (and (done-0)))
 (:action ugly145close_sd6-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly146close_sd18 :parameters () :precondition
  (and (do-normal) (not-closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd18) (not (not-closed-sd18))))
 (:action ugly147close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly148wait_cb1-condeff1-no-3 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd3)) :effect (and (done-1)))
 (:action ugly149close_sd13-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd13-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly150close_sd7-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd7-condeffs) (not-closed-sd13)) :effect (and (done-0)))
 (:action ugly151close_sd5-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly152close_sd8-endof-condeffs :parameters () :precondition
  (and (do-close_sd8-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))))
 (:action ugly153open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly154wait_cb1-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd7)) :effect (and (done-1)))
 (:action ugly155open-sd15 :parameters () :precondition
  (and (do-normal) (closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd15) (not (closed-sd15))))
 (:action ugly156close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly157close_sd6-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd6-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly158close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly159close_sd3-endof-condeffs :parameters () :precondition
  (and (do-close_sd3-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly160close_sd2-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd1)) :effect (and (done-1)))
 (:action ugly161close_sd11 :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd11) (not (not-closed-sd11))))
 (:action ugly162close_sd2-condeff1-no-2 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd6)) :effect (and (done-1)))
 (:action ugly163close_sd12-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-cb1)) :effect (and (done-0)))
 (:action ugly164close_sd2-condeff1-no-3 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd3)) :effect (and (done-1)))
 (:action ugly165close_sd8-condeff0-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd12) (closed-sd1) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly166close_sd12-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd12-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly167open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly168open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly169open-sd14 :parameters () :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd14) (not (closed-sd14))))
 (:action ugly170close_sd15 :parameters () :precondition
  (and (do-normal) (not-closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd15) (not (not-closed-sd15))))
 (:action ugly171close_sd1-condeff1-no-4 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd2)) :effect (and (done-1)))
 (:action ugly172wait_cb1-condeff2-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd12) (closed-sd8) (closed-sd1)) :effect
  (and (done-2) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly173close_sd2-condeff0-no-4 :parameters () :precondition
  (and (do-close_sd2-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly174close_sd1-condeff0-no-3 :parameters () :precondition
  (and (do-close_sd1-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly175wait_cb1-condeff2-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd12)) :effect (and (done-2)))
 (:action ugly176close_sd9-condeff0-yes :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly177close_sd5-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd5-condeffs) (not-closed-sd3)) :effect (and (done-0)))
 (:action ugly178close_sd3-condeff0-no-2 :parameters () :precondition
  (and (do-close_sd3-condeffs) (not-closed-sd4)) :effect (and (done-0)))
 (:action ugly179close_sd8-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-sd1)) :effect (and (done-0)))) 