
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (not-updated-cb1) (do-wait_cb2-condeffs) (not-closed-sd3)
  (closed-sd1) (not-closed-cb2) (do-close_sd1-condeffs) (closed-sd6)
  (closed-sd5) (closed-cb1) (closed-sd4) (closed-sd2) (not-closed-sd5)
  (do-close_sd6-condeffs) (not-updated-cb2) (done-0) (closed-sd3)
  (do-close_sd5-condeffs) (do-normal) (updated-cb1) (closed-cb2)
  (not-closed-sd6) (not-closed-sd4) (not-closed-sd1) (do-wait_cb1-condeffs)
  (not-closed-sd2) (updated-cb2) (not-closed-cb1))
 (:action ugly1435582ugly29ugly6ugly11ugly13close_sd2 :parameters ()
  :precondition (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly1435583ugly4ugly19ugly26ugly35close_sd5-condeff0-yes :parameters
  () :precondition (and (do-close_sd5-condeffs) (closed-sd6) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1435584ugly28ugly23ugly12ugly25wait_cb2-condeff0-yes :parameters
  () :precondition (and (do-wait_cb2-condeffs) (closed-sd6) (closed-sd5))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1435585ugly12ugly25ugly29ugly6close_sd4 :parameters ()
  :precondition (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly1435586ugly5ugly5ugly5ugly5close_sd6-endof-condeffs :parameters
  () :precondition (and (do-close_sd6-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))))
 (:action ugly1435587ugly31ugly32ugly31ugly32wait_cb2-condeff0-no-1 :parameters
  () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd5)) :effect
  (and (done-0)))
 (:action ugly1435588ugly6ugly11ugly13ugly27close_cb1 :parameters ()
  :precondition (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly1435589ugly32ugly31ugly32ugly31wait_cb2-endof-condeffs
  :parameters () :precondition (and (do-wait_cb2-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0))))
 (:action ugly1435590ugly10ugly16ugly36ugly24close_cb2 :parameters ()
  :precondition (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly1435591ugly17ugly14ugly28ugly23close_sd3 :parameters ()
  :precondition (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly1435592ugly2ugly10ugly16ugly36open-sd1 :parameters ()
  :precondition (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly1435593ugly7ugly4ugly19ugly26wait_cb1-condeff0-no-0 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly1435594ugly9ugly3ugly15ugly33wait_cb2-condeff0-no-0 :parameters
  () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd6)) :effect
  (and (done-0)))
 (:action ugly1435595ugly23ugly12ugly25ugly29close_sd5 :parameters ()
  :precondition (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action ugly1435596ugly15ugly33ugly30ugly9close_sd6-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd6-condeffs) (not-closed-sd5)) :effect
  (and (done-0)))
 (:action ugly1435597ugly11ugly13ugly27ugly18close_sd6-condeff0-yes :parameters
  () :precondition (and (do-close_sd6-condeffs) (closed-sd5) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1435598ugly19ugly26ugly35ugly7close_sd6-condeff0-no-1 :parameters
  () :precondition (and (do-close_sd6-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly1435599ugly22ugly20ugly22ugly20open-sd3 :parameters ()
  :precondition (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly1435600ugly8ugly21ugly1ugly8open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly1435601ugly25ugly29ugly6ugly11close_sd1 :parameters ()
  :precondition (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly1435602ugly16ugly36ugly24ugly17close_sd1-condeff0-yes :parameters
  () :precondition (and (do-close_sd1-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435603ugly18ugly2ugly10ugly16wait_cb1-endof-condeffs :parameters
  () :precondition (and (do-wait_cb1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0))))
 (:action ugly1435604ugly26ugly35ugly7ugly4open-sd6 :parameters ()
  :precondition (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly1435605ugly36ugly24ugly17ugly14wait_cb2 :parameters ()
  :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly1435606ugly35ugly7ugly4ugly19open-cb1 :parameters ()
  :precondition (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435607ugly21ugly1ugly8ugly21close_sd6 :parameters ()
  :precondition (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly1435608ugly3ugly15ugly33ugly30close_sd5-condeff0-no-1 :parameters
  () :precondition (and (do-close_sd5-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly1435609ugly13ugly27ugly18ugly2close_sd5-endof-condeffs
  :parameters () :precondition (and (do-close_sd5-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))))
 (:action ugly1435610ugly14ugly28ugly23ugly12open-cb2 :parameters ()
  :precondition (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1435611ugly27ugly18ugly2ugly10close_sd1-endof-condeffs
  :parameters () :precondition (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly1435612ugly24ugly17ugly14ugly28open-sd2 :parameters ()
  :precondition (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly1435613ugly30ugly9ugly3ugly15wait_cb1 :parameters ()
  :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly1435614ugly34ugly34ugly34ugly34wait_cb1-condeff0-yes :parameters
  () :precondition (and (do-wait_cb1-condeffs) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435615ugly1ugly8ugly21ugly1close_sd5-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd5-condeffs) (not-closed-sd6)) :effect
  (and (done-0)))
 (:action ugly1435616ugly20ugly22ugly20ugly22open-sd5 :parameters ()
  :precondition (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly1435617ugly33ugly30ugly9ugly3close_sd1-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))) 