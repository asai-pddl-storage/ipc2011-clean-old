
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (not-closed-sd6) (not-closed-sd1) (done-1) (done-0) (closed-sd3)
  (not-closed-sd4) (not-closed-sd5) (do-normal) (not-closed-sd7) (closed-sd5)
  (do-close_sd6-condeffs) (closed-sd1) (not-closed-sd3) (do-wait_cb1-condeffs)
  (do-close_sd3-condeffs) (not-closed-sd2) (closed-sd2) (not-updated-cb1)
  (not-closed-cb1) (closed-sd4) (do-close_sd4-condeffs) (updated-cb1)
  (closed-sd6) (closed-sd7) (closed-cb1))
 (:action ugly1435289ugly32ugly14ugly16ugly30close_sd4-condeff0-no-0
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1435290ugly29ugly38ugly22ugly1open-cb1 :parameters ()
  :precondition (and (do-normal) (closed-cb1) (updated-cb1)) :effect
  (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435291ugly35ugly34ugly35ugly34wait_cb1-condeff0-no-1 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly1435292ugly2ugly15ugly28ugly32close_sd3-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd3-condeffs) (not-closed-sd4)) :effect
  (and (done-0)))
 (:action ugly1435293ugly14ugly16ugly30ugly9close_sd6-endof-condeffs
  :parameters () :precondition (and (do-close_sd6-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))))
 (:action ugly1435294ugly4ugly12ugly39ugly27close_sd1 :parameters ()
  :precondition (and (do-normal) (not-closed-sd1) (updated-cb1)) :effect
  (and (closed-sd1) (not (not-closed-sd1))))
 (:action ugly1435295ugly38ugly22ugly1ugly29wait_cb1-condeff1-no-1 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd3)) :effect
  (and (done-1)))
 (:action ugly1435296ugly16ugly30ugly9ugly6close_cb1 :parameters ()
  :precondition (and (do-normal) (not-closed-cb1) (updated-cb1)) :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly1435297ugly19ugly4ugly12ugly39open-sd2 :parameters ()
  :precondition (and (do-normal) (closed-sd2) (updated-cb1)) :effect
  (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly1435298ugly17ugly31ugly26ugly2close_sd3-condeff0-no-1 :parameters
  () :precondition (and (do-close_sd3-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly1435299ugly36ugly33ugly18ugly36wait_cb1-condeff0-yes :parameters
  () :precondition (and (do-wait_cb1-condeffs) (closed-sd4) (closed-sd3))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435300ugly10ugly23ugly25ugly3close_sd4-condeff0-no-1 :parameters
  () :precondition (and (do-close_sd4-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly1435301ugly13ugly19ugly4ugly12wait_cb1-endof-condeffs :parameters
  () :precondition (and (do-wait_cb1-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly1435302ugly6ugly21ugly8ugly13close_sd3-endof-condeffs :parameters
  () :precondition (and (do-close_sd3-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1435303ugly37ugly37ugly37ugly37wait_cb1-condeff1-no-0 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd6)) :effect
  (and (done-1)))
 (:action ugly1435304ugly31ugly26ugly2ugly15open-sd1 :parameters ()
  :precondition (and (do-normal) (closed-sd1) (updated-cb1)) :effect
  (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly1435305ugly3ugly10ugly23ugly25close_sd6-condeff0-yes :parameters
  () :precondition (and (do-close_sd6-condeffs) (closed-sd3) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435306ugly39ugly27ugly20ugly11close_sd6-condeff0-no-1
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1435307ugly1ugly29ugly38ugly22close_sd7 :parameters ()
  :precondition (and (do-normal) (not-closed-sd7) (updated-cb1)) :effect
  (and (closed-sd7) (not (not-closed-sd7))))
 (:action ugly1435308ugly12ugly39ugly27ugly20close_sd4-endof-condeffs
  :parameters () :precondition (and (do-close_sd4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))))
 (:action ugly1435309ugly15ugly28ugly32ugly14close_sd3-condeff1-yes :parameters
  () :precondition (and (do-close_sd3-condeffs) (closed-sd6) (closed-cb1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435310ugly25ugly3ugly10ugly23open-sd4 :parameters ()
  :precondition (and (do-normal) (closed-sd4) (updated-cb1)) :effect
  (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly1435311ugly24ugly24ugly24ugly24open-sd5 :parameters ()
  :precondition (and (do-normal) (closed-sd5) (updated-cb1)) :effect
  (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly1435312ugly26ugly2ugly15ugly28wait_cb1 :parameters ()
  :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly1435313ugly7ugly7ugly7ugly7close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly1435314ugly30ugly9ugly6ugly21close_sd4-condeff0-yes :parameters
  () :precondition (and (do-close_sd4-condeffs) (closed-sd3) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435315ugly20ugly11ugly5ugly17close_sd2 :parameters ()
  :precondition (and (do-normal) (not-closed-sd2) (updated-cb1)) :effect
  (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly1435316ugly11ugly5ugly17ugly31open-sd3 :parameters ()
  :precondition (and (do-normal) (closed-sd3) (updated-cb1)) :effect
  (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly1435317ugly18ugly36ugly33ugly18wait_cb1-condeff1-yes :parameters
  () :precondition (and (do-wait_cb1-condeffs) (closed-sd6) (closed-sd3))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435318ugly8ugly13ugly19ugly4close_sd3 :parameters ()
  :precondition (and (do-normal) (not-closed-sd3) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly1435319ugly33ugly18ugly36ugly33close_sd3-condeff1-no-1
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-cb1))
  :effect (and (done-1)))
 (:action ugly1435320ugly34ugly35ugly34ugly35wait_cb1-condeff0-no-0 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd4)) :effect
  (and (done-0)))
 (:action ugly1435321ugly27ugly20ugly11ugly5close_sd3-condeff1-no-0 :parameters
  () :precondition (and (do-close_sd3-condeffs) (not-closed-sd6)) :effect
  (and (done-1)))
 (:action ugly1435322ugly21ugly8ugly13ugly19close_sd6-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd6-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly1435323ugly28ugly32ugly14ugly16close_sd5 :parameters ()
  :precondition (and (do-normal) (not-closed-sd5) (updated-cb1)) :effect
  (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly1435324ugly22ugly1ugly29ugly38open-sd7 :parameters ()
  :precondition (and (do-normal) (closed-sd7) (updated-cb1)) :effect
  (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly1435325ugly9ugly6ugly21ugly8close_sd3-condeff0-yes :parameters ()
  :precondition (and (do-close_sd3-condeffs) (closed-sd4) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435326ugly5ugly17ugly31ugly26close_sd6 :parameters ()
  :precondition (and (do-normal) (not-closed-sd6) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly1435327ugly23ugly25ugly3ugly10open-sd6 :parameters ()
  :precondition (and (do-normal) (closed-sd6) (updated-cb1)) :effect
  (and (not-closed-sd6) (not (closed-sd6))))) 