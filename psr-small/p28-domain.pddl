
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (not-closed-sd11) (not-updated-cb3) (done-0) (closed-sd10)
  (do-wait_cb3-condeffs) (closed-sd3) (not-closed-sd7) (not-closed-cb1)
  (do-normal) (closed-sd6) (not-closed-sd5) (not-updated-cb1) (closed-sd11)
  (not-closed-sd8) (closed-sd1) (not-closed-sd10) (closed-sd8) (not-closed-sd9)
  (not-closed-cb3) (not-closed-sd2) (updated-cb2) (closed-cb2) (closed-sd7)
  (closed-cb3) (not-closed-sd6) (closed-sd4) (not-closed-cb2) (closed-sd9)
  (closed-cb1) (updated-cb1) (updated-cb3) (done-2) (do-close_sd10-condeffs)
  (done-1) (do-close_sd3-condeffs) (not-closed-sd1) (do-close_sd8-condeffs)
  (closed-sd5) (not-closed-sd4) (not-closed-sd3) (closed-sd2)
  (not-updated-cb2))
 (:action ugly1446606ugly7ugly33ugly21ugly20open-sd8 :parameters ()
  :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly1446607ugly13ugly9ugly16ugly25close_cb2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly1446608ugly15ugly7ugly33ugly21open-sd5 :parameters ()
  :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly1446609ugly38ugly24ugly46ugly29close_sd11 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd11) (not (not-closed-sd11))))
 (:action ugly1446610ugly42ugly28ugly45ugly23wait_cb1 :parameters ()
  :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not-closed-cb1) (updated-cb1) (not (closed-cb1))
       (not (not-updated-cb1))))
 (:action ugly1446611ugly40ugly40ugly40ugly40wait_cb3-condeff0-no-0 :parameters
  () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly1446612ugly32ugly4ugly13ugly9open-sd9 :parameters ()
  :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly1446613ugly22ugly8ugly41ugly22close_sd5 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly1446614ugly28ugly45ugly23ugly47open-sd7 :parameters ()
  :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly1446615ugly12ugly32ugly4ugly13close_sd4 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly1446616ugly25ugly12ugly32ugly4close_cb1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly1446617ugly21ugly20ugly17ugly31close_sd10 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action ugly1446618ugly3ugly39ugly27ugly43close_sd3-endof-condeffs
  :parameters () :precondition (and (do-close_sd3-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))))
 (:action ugly1446619ugly2ugly38ugly24ugly46close_sd8 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly1446620ugly1ugly3ugly39ugly27wait_cb3-condeff2-yes :parameters ()
  :precondition (and (do-wait_cb3-condeffs) (closed-sd10)) :effect
  (and (done-2) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1446621ugly4ugly13ugly9ugly16open-cb3 :parameters ()
  :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1446622ugly27ugly43ugly36ugly5close_sd8-condeff0-yes :parameters
  () :precondition (and (do-close_sd8-condeffs) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1446623ugly43ugly36ugly5ugly30wait_cb3-condeff1-no-0 :parameters
  () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd8)) :effect
  (and (done-1)))
 (:action ugly1446624ugly29ugly1ugly3ugly39open-cb1 :parameters ()
  :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1446625ugly17ugly31ugly2ugly38open-sd1 :parameters ()
  :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly1446626ugly44ugly10ugly11ugly19wait_cb3-condeff2-no-0 :parameters
  () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd10)) :effect
  (and (done-2)))
 (:action ugly1446627ugly19ugly44ugly10ugly11open-sd6 :parameters ()
  :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly1446628ugly33ugly21ugly20ugly17close_sd8-condeff0-no-0
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1446629ugly37ugly6ugly15ugly7close_sd3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly1446630ugly35ugly35ugly35ugly35close_sd3-condeff0-no-0
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1446631ugly26ugly34ugly37ugly6open-sd10 :parameters ()
  :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly1446632ugly9ugly16ugly25ugly12close_sd8-endof-condeffs
  :parameters () :precondition (and (do-close_sd8-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))))
 (:action ugly1446633ugly8ugly41ugly22ugly8wait_cb3-condeff1-yes :parameters ()
  :precondition (and (do-wait_cb3-condeffs) (closed-sd8)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1446634ugly18ugly14ugly26ugly34close_sd2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly1446635ugly20ugly17ugly31ugly2wait_cb3 :parameters ()
  :precondition (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action ugly1446636ugly30ugly42ugly28ugly45open-sd2 :parameters ()
  :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly1446637ugly45ugly23ugly47ugly18open-sd11 :parameters ()
  :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly1446638ugly24ugly46ugly29ugly1close_sd10-condeff0-yes :parameters
  () :precondition (and (do-close_sd10-condeffs) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1446639ugly34ugly37ugly6ugly15close_sd6 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly1446640ugly36ugly5ugly30ugly42close_sd9 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd9) (not (not-closed-sd9))))
 (:action ugly1446641ugly41ugly22ugly8ugly41open-sd3 :parameters ()
  :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly1446642ugly23ugly47ugly18ugly14open-cb2 :parameters ()
  :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1446643ugly14ugly26ugly34ugly37close_sd7 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd7) (not (not-closed-sd7))))
 (:action ugly1446644ugly5ugly30ugly42ugly28wait_cb3-endof-condeffs :parameters
  () :precondition (and (do-wait_cb3-condeffs) (done-0) (done-1) (done-2))
  :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly1446645ugly46ugly29ugly1ugly3wait_cb3-condeff0-yes :parameters ()
  :precondition (and (do-wait_cb3-condeffs) (closed-sd3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1446646ugly6ugly15ugly7ugly33open-sd4 :parameters ()
  :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly1446647ugly16ugly25ugly12ugly32close_sd10-condeff0-no-0
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1446648ugly11ugly19ugly44ugly10close_cb3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly1446649ugly39ugly27ugly43ugly36close_sd10-endof-condeffs
  :parameters () :precondition (and (do-close_sd10-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))))
 (:action ugly1446650ugly31ugly2ugly38ugly24wait_cb2 :parameters ()
  :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not-closed-cb2) (updated-cb2) (not (closed-cb2))
       (not (not-updated-cb2))))
 (:action ugly1446651ugly10ugly11ugly19ugly44close_sd1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd1) (not (not-closed-sd1))))
 (:action ugly1446652ugly47ugly18ugly14ugly26close_sd3-condeff0-yes :parameters
  () :precondition (and (do-close_sd3-condeffs) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))) 