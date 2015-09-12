
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (closed-sd2) (not-closed-sd5) (done-0) (closed-sd3)
  (not-closed-sd3) (not-closed-sd6) (not-closed-sd2) (closed-sd8)
  (not-closed-cb1) (closed-sd1) (done-1) (do-close_sd8-condeffs)
  (do-close_sd7-condeffs) (not-closed-sd4) (closed-sd4) (closed-sd7)
  (not-closed-sd1) (do-close_sd1-condeffs) (closed-sd6) (not-closed-sd8)
  (do-normal) (closed-sd5) (updated-cb1) (closed-cb1) (do-wait_cb1-condeffs)
  (not-updated-cb1) (not-closed-sd7))
 (:action ugly1435169ugly35ugly7ugly4ugly19open-sd3 :parameters ()
  :precondition (and (do-normal) (closed-sd3) (updated-cb1)) :effect
  (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly1435170ugly6ugly11ugly13ugly27close_sd1-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly1435171ugly32ugly31ugly32ugly31wait_cb1-condeff0-no-0 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly1435172ugly17ugly14ugly28ugly23close_sd5 :parameters ()
  :precondition (and (do-normal) (not-closed-sd5) (updated-cb1)) :effect
  (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly1435173ugly23ugly12ugly25ugly29close_sd7 :parameters ()
  :precondition (and (do-normal) (not-closed-sd7) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly1435174ugly7ugly4ugly19ugly26wait_cb1-condeff1-no-1 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd7)) :effect
  (and (done-1)))
 (:action ugly1435175ugly36ugly24ugly17ugly14open-sd1 :parameters ()
  :precondition (and (do-normal) (closed-sd1) (updated-cb1)) :effect
  (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly1435176ugly25ugly29ugly6ugly11close_sd4 :parameters ()
  :precondition (and (do-normal) (not-closed-sd4) (updated-cb1)) :effect
  (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly1435177ugly33ugly30ugly9ugly3close_sd2 :parameters ()
  :precondition (and (do-normal) (not-closed-sd2) (updated-cb1)) :effect
  (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly1435178ugly28ugly23ugly12ugly25open-cb1 :parameters ()
  :precondition (and (do-normal) (closed-cb1) (updated-cb1)) :effect
  (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435179ugly18ugly2ugly10ugly16wait_cb1-endof-condeffs :parameters
  () :precondition (and (do-wait_cb1-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly1435180ugly12ugly25ugly29ugly6close_sd6 :parameters ()
  :precondition (and (do-normal) (not-closed-sd6) (updated-cb1)) :effect
  (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly1435181ugly21ugly1ugly8ugly21close_sd8 :parameters ()
  :precondition (and (do-normal) (not-closed-sd8) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly1435182ugly2ugly10ugly16ugly36open-sd5 :parameters ()
  :precondition (and (do-normal) (closed-sd5) (updated-cb1)) :effect
  (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly1435183ugly14ugly28ugly23ugly12open-sd4 :parameters ()
  :precondition (and (do-normal) (closed-sd4) (updated-cb1)) :effect
  (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly1435184ugly10ugly16ugly36ugly24close_sd1-condeff0-yes :parameters
  () :precondition (and (do-close_sd1-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435185ugly4ugly19ugly26ugly35close_sd7-condeff0-yes :parameters
  () :precondition (and (do-close_sd7-condeffs) (closed-sd8) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435186ugly34ugly34ugly34ugly34wait_cb1-condeff1-no-0 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd8)) :effect
  (and (done-1)))
 (:action ugly1435187ugly5ugly5ugly5ugly5close_sd8-endof-condeffs :parameters
  () :precondition (and (do-close_sd8-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))))
 (:action ugly1435188ugly9ugly3ugly15ugly33wait_cb1 :parameters ()
  :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly1435189ugly27ugly18ugly2ugly10close_sd1 :parameters ()
  :precondition (and (do-normal) (not-closed-sd1) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly1435190ugly26ugly35ugly7ugly4close_sd1-endof-condeffs :parameters
  () :precondition (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly1435191ugly1ugly8ugly21ugly1close_sd7-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd7-condeffs) (not-closed-sd8)) :effect
  (and (done-0)))
 (:action ugly1435192ugly13ugly27ugly18ugly2close_sd7-endof-condeffs
  :parameters () :precondition (and (do-close_sd7-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))))
 (:action ugly1435193ugly15ugly33ugly30ugly9close_sd8-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd8-condeffs) (not-closed-sd7)) :effect
  (and (done-0)))
 (:action ugly1435194ugly20ugly22ugly20ugly22close_cb1 :parameters ()
  :precondition (and (do-normal) (not-closed-cb1) (updated-cb1)) :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly1435195ugly30ugly9ugly3ugly15wait_cb1-condeff1-yes :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (closed-sd8) (closed-sd7)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435196ugly22ugly20ugly22ugly20open-sd7 :parameters ()
  :precondition (and (do-normal) (closed-sd7) (updated-cb1)) :effect
  (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly1435197ugly29ugly6ugly11ugly13open-sd2 :parameters ()
  :precondition (and (do-normal) (closed-sd2) (updated-cb1)) :effect
  (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly1435198ugly24ugly17ugly14ugly28open-sd6 :parameters ()
  :precondition (and (do-normal) (closed-sd6) (updated-cb1)) :effect
  (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly1435199ugly3ugly15ugly33ugly30close_sd7-condeff0-no-1 :parameters
  () :precondition (and (do-close_sd7-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly1435200ugly11ugly13ugly27ugly18close_sd8-condeff0-yes :parameters
  () :precondition (and (do-close_sd8-condeffs) (closed-sd7) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435201ugly16ugly36ugly24ugly17close_sd3 :parameters ()
  :precondition (and (do-normal) (not-closed-sd3) (updated-cb1)) :effect
  (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly1435202ugly19ugly26ugly35ugly7close_sd8-condeff0-no-1 :parameters
  () :precondition (and (do-close_sd8-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly1435203ugly8ugly21ugly1ugly8open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1)) :effect
  (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly1435204ugly31ugly32ugly31ugly32wait_cb1-condeff0-yes :parameters
  () :precondition (and (do-wait_cb1-condeffs) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))) 