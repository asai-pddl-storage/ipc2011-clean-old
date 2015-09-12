
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (closed-sd2) (do-close_sd1-condeffs) (do-normal)
  (do-close_sd4-condeffs) (not-closed-cb1) (done-1) (do-wait_cb1-condeffs)
  (not-closed-sd2) (updated-cb1) (closed-sd1) (not-closed-sd4) (not-closed-sd3)
  (not-closed-sd1) (closed-cb1) (done-0) (closed-sd4) (closed-sd3)
  (not-updated-cb1))
 (:action ugly1435205ugly21ugly16ugly10ugly3wait_cb1-condeff1-no-0 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd4)) :effect
  (and (done-1)))
 (:action ugly1435206ugly11ugly19ugly18ugly8close_sd4-endof-condeffs
  :parameters () :precondition (and (do-close_sd4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))))
 (:action ugly1435207ugly22ugly2ugly12ugly9close_sd3 :parameters ()
  :precondition (and (do-normal) (not-closed-sd3) (updated-cb1)) :effect
  (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly1435208ugly4ugly17ugly6ugly1wait_cb1-condeff1-yes :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (closed-sd4)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435209ugly9ugly5ugly22ugly2open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1)) :effect
  (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly1435210ugly15ugly7ugly14ugly11wait_cb1-condeff0-no-0 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly1435211ugly3ugly21ugly16ugly10close_sd4-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd4-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly1435212ugly16ugly10ugly3ugly21open-cb1 :parameters ()
  :precondition (and (do-normal) (closed-cb1) (updated-cb1)) :effect
  (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435213ugly20ugly15ugly7ugly14close_cb1 :parameters ()
  :precondition (and (do-normal) (not-closed-cb1) (updated-cb1)) :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly1435214ugly19ugly18ugly8ugly4wait_cb1 :parameters ()
  :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly1435215ugly13ugly13ugly13ugly13open-sd3 :parameters ()
  :precondition (and (do-normal) (closed-sd3) (updated-cb1)) :effect
  (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly1435216ugly14ugly11ugly19ugly18close_sd1-condeff0-yes :parameters
  () :precondition (and (do-close_sd1-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435217ugly7ugly14ugly11ugly19wait_cb1-condeff0-yes :parameters
  () :precondition (and (do-wait_cb1-condeffs) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435218ugly2ugly12ugly9ugly5wait_cb1-endof-condeffs :parameters
  () :precondition (and (do-wait_cb1-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly1435219ugly5ugly22ugly2ugly12close_sd1-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly1435220ugly18ugly8ugly4ugly17close_sd2 :parameters ()
  :precondition (and (do-normal) (not-closed-sd2) (updated-cb1)) :effect
  (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly1435221ugly8ugly4ugly17ugly6close_sd4 :parameters ()
  :precondition (and (do-normal) (not-closed-sd4) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly1435222ugly6ugly1ugly20ugly15close_sd1 :parameters ()
  :precondition (and (do-normal) (not-closed-sd1) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly1435223ugly10ugly3ugly21ugly16close_sd1-endof-condeffs
  :parameters () :precondition (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly1435224ugly1ugly20ugly15ugly7open-sd2 :parameters ()
  :precondition (and (do-normal) (closed-sd2) (updated-cb1)) :effect
  (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly1435225ugly17ugly6ugly1ugly20open-sd1 :parameters ()
  :precondition (and (do-normal) (closed-sd1) (updated-cb1)) :effect
  (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly1435226ugly12ugly9ugly5ugly22close_sd4-condeff0-yes :parameters
  () :precondition (and (do-close_sd4-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))) 