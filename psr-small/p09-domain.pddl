
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (closed-cb1) (do-close_sd1-condeffs) (not-closed-sd5)
  (closed-sd5) (closed-sd1) (not-closed-sd1) (done-0) (not-closed-sd4)
  (do-close_sd2-condeffs) (not-updated-cb1) (not-closed-sd3) (not-closed-cb1)
  (do-close_sd3-condeffs) (do-wait_cb1-condeffs) (closed-sd4) (do-normal)
  (updated-cb1) (closed-sd3) (closed-sd2) (not-closed-sd2))
 (:action ugly1435412ugly10ugly6ugly19ugly32close_sd2-condeff0-no-2 :parameters
  () :precondition (and (do-close_sd2-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly1435413ugly32ugly13ugly21ugly10close_sd3-condeff0-no-1
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1435414ugly1ugly25ugly29ugly4close_sd3 :parameters ()
  :precondition (and (do-normal) (not-closed-sd3) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly1435415ugly19ugly32ugly13ugly21close_sd2-condeff0-yes :parameters
  () :precondition
  (and (do-close_sd2-condeffs) (closed-sd3) (closed-sd1) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435416ugly24ugly20ugly14ugly26close_sd2-condeff0-no-1
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1435417ugly18ugly15ugly30ugly18close_sd1 :parameters ()
  :precondition (and (do-normal) (not-closed-sd1) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly1435418ugly14ugly26ugly12ugly23close_sd5 :parameters ()
  :precondition (and (do-normal) (not-closed-sd5) (updated-cb1)) :effect
  (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly1435419ugly33ugly5ugly33ugly5wait_cb1-endof-condeffs :parameters
  () :precondition (and (do-wait_cb1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0))))
 (:action ugly1435420ugly22ugly28ugly2ugly27close_sd2-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd2-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly1435421ugly12ugly23ugly1ugly25wait_cb1-condeff0-yes :parameters
  () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd3) (closed-sd2) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435422ugly31ugly17ugly8ugly22wait_cb1 :parameters ()
  :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly1435423ugly23ugly1ugly25ugly29close_sd3-condeff0-yes :parameters
  () :precondition
  (and (do-close_sd3-condeffs) (closed-sd2) (closed-sd1) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435424ugly15ugly30ugly18ugly15wait_cb1-condeff0-no-0 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly1435425ugly11ugly7ugly24ugly20close_sd2-endof-condeffs
  :parameters () :precondition (and (do-close_sd2-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))))
 (:action ugly1435426ugly6ugly19ugly32ugly13close_cb1 :parameters ()
  :precondition (and (do-normal) (not-closed-cb1) (updated-cb1)) :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly1435427ugly27ugly11ugly7ugly24close_sd1-endof-condeffs
  :parameters () :precondition (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly1435428ugly20ugly14ugly26ugly12open-sd4 :parameters ()
  :precondition (and (do-normal) (closed-sd4) (updated-cb1)) :effect
  (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly1435429ugly21ugly10ugly6ugly19wait_cb1-condeff0-no-2 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly1435430ugly30ugly18ugly15ugly30close_sd1-condeff0-no-1
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1435431ugly13ugly21ugly10ugly6close_sd1-condeff0-no-2 :parameters
  () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly1435432ugly26ugly12ugly23ugly1open-sd2 :parameters ()
  :precondition (and (do-normal) (closed-sd2) (updated-cb1)) :effect
  (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly1435433ugly9ugly16ugly9ugly16close_sd2 :parameters ()
  :precondition (and (do-normal) (not-closed-sd2) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly1435434ugly4ugly3ugly31ugly17close_sd3-endof-condeffs :parameters
  () :precondition (and (do-close_sd3-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))))
 (:action ugly1435435ugly7ugly24ugly20ugly14open-sd1 :parameters ()
  :precondition (and (do-normal) (closed-sd1) (updated-cb1)) :effect
  (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly1435436ugly28ugly2ugly27ugly11close_sd3-condeff0-no-2 :parameters
  () :precondition (and (do-close_sd3-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly1435437ugly2ugly27ugly11ugly7open-sd3 :parameters ()
  :precondition (and (do-normal) (closed-sd3) (updated-cb1)) :effect
  (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly1435438ugly29ugly4ugly3ugly31close_sd1-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd1-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly1435439ugly3ugly31ugly17ugly8open-sd5 :parameters ()
  :precondition (and (do-normal) (closed-sd5) (updated-cb1)) :effect
  (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly1435440ugly16ugly9ugly16ugly9close_sd1-condeff0-yes :parameters
  () :precondition
  (and (do-close_sd1-condeffs) (closed-sd3) (closed-sd2) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435441ugly17ugly8ugly22ugly28close_sd4 :parameters ()
  :precondition (and (do-normal) (not-closed-sd4) (updated-cb1)) :effect
  (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly1435442ugly8ugly22ugly28ugly2open-cb1 :parameters ()
  :precondition (and (do-normal) (closed-cb1) (updated-cb1)) :effect
  (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435443ugly25ugly29ugly4ugly3wait_cb1-condeff0-no-1 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect
  (and (done-0)))
 (:action ugly1435444ugly5ugly33ugly5ugly33close_sd3-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd3-condeffs) (not-closed-sd2)) :effect
  (and (done-0)))) 