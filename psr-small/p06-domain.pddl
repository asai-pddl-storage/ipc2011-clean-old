
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (not-closed-sd6) (not-closed-cb1) (do-close_sd1-condeffs)
  (closed-cb1) (closed-sd5) (closed-sd6) (updated-cb1) (do-wait_cb1-condeffs)
  (not-closed-sd3) (closed-sd1) (closed-sd4) (closed-sd3) (not-closed-sd4)
  (not-closed-sd5) (closed-sd2) (not-closed-sd2) (done-0) (not-updated-cb1)
  (do-normal) (not-closed-sd1))
 (:action ugly1ugly14ugly12ugly3close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1)) :effect
  (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly2ugly19ugly5ugly1open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1)) :effect
  (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly3ugly17ugly15ugly9wait_cb1-endof-condeffs :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0))))
 (:action ugly4ugly11ugly4ugly11close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1)) :effect
  (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly5ugly1ugly14ugly12close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1)) :effect
  (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly6ugly2ugly19ugly5close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1)) :effect
  (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly7ugly18ugly10ugly20close_sd1-endof-condeffs :parameters ()
  :precondition (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly8ugly16ugly7ugly18open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1)) :effect
  (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly9ugly21ugly13ugly6close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1)) :effect
  (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly10ugly20ugly8ugly16close_sd1-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly11ugly4ugly11ugly4open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1)) :effect
  (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly12ugly3ugly17ugly15close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1)) :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly13ugly6ugly2ugly19close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly14ugly12ugly3ugly17open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1)) :effect
  (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly15ugly9ugly21ugly13close_sd1-condeff0-yes :parameters ()
  :precondition (and (do-close_sd1-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly16ugly7ugly18ugly10wait_cb1-condeff0-no-0 :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly17ugly15ugly9ugly21open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1)) :effect
  (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly18ugly10ugly20ugly8open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1)) :effect
  (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly19ugly5ugly1ugly14open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1)) :effect
  (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly20ugly8ugly16ugly7wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly21ugly13ugly6ugly2wait_cb1-condeff0-yes :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))) 