
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (closed-sd4) (do-normal) (not-closed-sd6) (done-1) (closed-sd3)
  (do-close_sd1-condeffs) (done-0) (closed-sd6) (not-updated-cb1)
  (not-closed-sd5) (do-close_sd2-condeffs) (not-closed-sd1)
  (do-wait_cb1-condeffs) (closed-cb1) (not-closed-sd4) (closed-cb2)
  (closed-sd1) (closed-sd2) (closed-sd5) (not-closed-sd2) (not-closed-cb2)
  (not-closed-cb1) (not-updated-cb2) (updated-cb2) (updated-cb1)
  (do-close_sd4-condeffs) (not-closed-sd3))
 (:action ugly1435618ugly15ugly29ugly32ugly3open-sd5 :parameters ()
  :precondition (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly1435619ugly26ugly35ugly23ugly27close_sd2-condeff0-yes :parameters
  () :precondition (and (do-close_sd2-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435620ugly9ugly22ugly24ugly11open-sd3 :parameters ()
  :precondition (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly1435621ugly10ugly16ugly34ugly18close_sd1-condeff0-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action ugly1435622ugly17ugly7ugly12ugly14wait_cb2 :parameters ()
  :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not-closed-cb2) (updated-cb2) (not (closed-cb2))
       (not (not-updated-cb2))))
 (:action ugly1435623ugly4ugly30ugly31ugly4wait_cb1-condeff0-yes :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (closed-sd4) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435624ugly32ugly3ugly15ugly29wait_cb1-condeff0-no-1 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly1435625ugly25ugly2ugly10ugly16wait_cb1-condeff1-no-0 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect
  (and (done-1)))
 (:action ugly1435626ugly21ugly19ugly21ugly19open-cb1 :parameters ()
  :precondition (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435627ugly28ugly13ugly26ugly35close_sd1 :parameters ()
  :precondition (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly1435628ugly2ugly10ugly16ugly34open-sd2 :parameters ()
  :precondition (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly1435629ugly12ugly14ugly28ugly13close_sd1-condeff0-no-1
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1435630ugly3ugly15ugly29ugly32close_sd4 :parameters ()
  :precondition (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly1435631ugly30ugly31ugly4ugly30wait_cb1-condeff0-no-0 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd4)) :effect
  (and (done-0)))
 (:action ugly1435632ugly20ugly1ugly8ugly5open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1435633ugly18ugly25ugly2ugly10open-sd4 :parameters ()
  :precondition (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly1435634ugly16ugly34ugly18ugly25close_sd5 :parameters ()
  :precondition (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly1435635ugly23ugly27ugly9ugly22close_sd1-condeff0-yes :parameters
  () :precondition (and (do-close_sd1-condeffs) (closed-sd4) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435636ugly1ugly8ugly5ugly20close_sd6 :parameters ()
  :precondition (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly1435637ugly19ugly21ugly19ugly21open-sd1 :parameters ()
  :precondition (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly1435638ugly29ugly32ugly3ugly15wait_cb1 :parameters ()
  :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly1435639ugly6ugly6ugly6ugly6close_sd4-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly1435640ugly7ugly12ugly14ugly28close_cb1 :parameters ()
  :precondition (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly1435641ugly11ugly17ugly7ugly12open-sd6 :parameters ()
  :precondition (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly1435642ugly33ugly33ugly33ugly33wait_cb1-condeff1-yes :parameters
  () :precondition (and (do-wait_cb1-condeffs) (closed-sd2)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435643ugly34ugly18ugly25ugly2close_sd2-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd2-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly1435644ugly24ugly11ugly17ugly7close_cb2 :parameters ()
  :precondition (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly1435645ugly27ugly9ugly22ugly24close_sd2-endof-condeffs
  :parameters () :precondition (and (do-close_sd2-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))))
 (:action ugly1435646ugly8ugly5ugly20ugly1close_sd2 :parameters ()
  :precondition (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2))
  :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly1435647ugly13ugly26ugly35ugly23close_sd1-endof-condeffs
  :parameters () :precondition (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly1435648ugly35ugly23ugly27ugly9close_sd3 :parameters ()
  :precondition (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly1435649ugly5ugly20ugly1ugly8close_sd4-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd4-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly1435650ugly31ugly4ugly30ugly31close_sd4-condeff0-yes :parameters
  () :precondition (and (do-close_sd4-condeffs) (closed-sd1) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435651ugly14ugly28ugly13ugly26wait_cb1-endof-condeffs
  :parameters () :precondition (and (do-wait_cb1-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly1435652ugly22ugly24ugly11ugly17close_sd4-endof-condeffs
  :parameters () :precondition (and (do-close_sd4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))))) 