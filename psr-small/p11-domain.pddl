
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (closed-sd3) (closed-sd5) (closed-sd2) (closed-sd8) (closed-sd7)
  (updated-cb2) (not-closed-sd2) (closed-sd9) (not-closed-cb2) (not-closed-sd5)
  (not-closed-sd9) (not-updated-cb1) (not-closed-sd8) (not-closed-cb1)
  (do-close_sd5-condeffs) (do-wait_cb2-condeffs) (not-closed-sd4)
  (not-closed-sd3) (do-wait_cb1-condeffs) (do-normal) (not-closed-sd7)
  (closed-cb1) (do-close_sd1-condeffs) (not-closed-sd6) (closed-sd1) (done-1)
  (updated-cb1) (closed-cb2) (closed-sd6) (done-0) (do-close_sd6-condeffs)
  (not-updated-cb2) (not-closed-sd1) (closed-sd4))
 (:action ugly1435541ugly28ugly19ugly22ugly40close_sd1-condeff0-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1435542ugly15ugly23ugly5ugly7wait_cb2 :parameters ()
  :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly1435543ugly38ugly30ugly8ugly17open-sd4 :parameters ()
  :precondition (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly1435544ugly7ugly32ugly13ugly27close_sd5-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd5-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly1435545ugly10ugly11ugly18ugly24wait_cb1 :parameters ()
  :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly1435546ugly11ugly18ugly24ugly38open-cb1 :parameters ()
  :precondition (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435547ugly20ugly1ugly12ugly31open-cb2 :parameters ()
  :precondition (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1435548ugly37ugly14ugly4ugly6close_sd1-condeff0-yes :parameters
  () :precondition (and (do-close_sd1-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435549ugly29ugly39ugly41ugly2open-sd9 :parameters ()
  :precondition (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly1435550ugly25ugly21ugly33ugly3open-sd1 :parameters ()
  :precondition (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly1435551ugly30ugly8ugly17ugly25open-sd8 :parameters ()
  :precondition (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly1435552ugly40ugly16ugly36ugly37close_sd1 :parameters ()
  :precondition (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly1435553ugly2ugly20ugly1ugly12close_sd4 :parameters ()
  :precondition (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly1435554ugly6ugly15ugly23ugly5close_sd6-endof-condeffs :parameters
  () :precondition (and (do-close_sd6-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))))
 (:action ugly1435555ugly4ugly6ugly15ugly23close_sd6-condeff0-yes :parameters
  () :precondition (and (do-close_sd6-condeffs) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1435556ugly18ugly24ugly38ugly30close_sd5 :parameters ()
  :precondition (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action ugly1435557ugly35ugly26ugly9ugly35open-sd3 :parameters ()
  :precondition (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly1435558ugly14ugly4ugly6ugly15open-sd6 :parameters ()
  :precondition (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly1435559ugly33ugly3ugly28ugly19open-sd7 :parameters ()
  :precondition (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly1435560ugly1ugly12ugly31ugly29wait_cb1-condeff0-yes :parameters
  () :precondition (and (do-wait_cb1-condeffs) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435561ugly41ugly2ugly20ugly1close_sd3 :parameters ()
  :precondition (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly1435562ugly16ugly36ugly37ugly14close_sd6 :parameters ()
  :precondition (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly1435563ugly9ugly35ugly26ugly9wait_cb2-condeff1-yes :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (closed-sd6)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1435564ugly34ugly34ugly34ugly34wait_cb2-condeff0-no-0 :parameters
  () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd5)) :effect
  (and (done-0)))
 (:action ugly1435565ugly21ugly33ugly3ugly28close_cb1 :parameters ()
  :precondition (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly1435566ugly13ugly27ugly10ugly11close_cb2 :parameters ()
  :precondition (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly1435567ugly31ugly29ugly39ugly41close_sd8 :parameters ()
  :precondition (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd8) (not (not-closed-sd8))))
 (:action ugly1435568ugly32ugly13ugly27ugly10close_sd5-endof-condeffs
  :parameters () :precondition (and (do-close_sd5-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))))
 (:action ugly1435569ugly24ugly38ugly30ugly8close_sd1-endof-condeffs
  :parameters () :precondition (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly1435570ugly3ugly28ugly19ugly22wait_cb1-condeff0-no-0 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly1435571ugly5ugly7ugly32ugly13open-sd2 :parameters ()
  :precondition (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly1435572ugly12ugly31ugly29ugly39wait_cb1-endof-condeffs
  :parameters () :precondition (and (do-wait_cb1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0))))
 (:action ugly1435573ugly39ugly41ugly2ugly20close_sd9 :parameters ()
  :precondition (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd9) (not (not-closed-sd9))))
 (:action ugly1435574ugly17ugly25ugly21ugly33close_sd7 :parameters ()
  :precondition (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd7) (not (not-closed-sd7))))
 (:action ugly1435575ugly26ugly9ugly35ugly26close_sd5-condeff0-yes :parameters
  () :precondition (and (do-close_sd5-condeffs) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1435576ugly36ugly37ugly14ugly4close_sd6-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd6-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly1435577ugly23ugly5ugly7ugly32close_sd2 :parameters ()
  :precondition (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly1435578ugly22ugly40ugly16ugly36wait_cb2-endof-condeffs
  :parameters () :precondition (and (do-wait_cb2-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly1435579ugly27ugly10ugly11ugly18open-sd5 :parameters ()
  :precondition (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly1435580ugly8ugly17ugly25ugly21wait_cb2-condeff0-yes :parameters
  () :precondition (and (do-wait_cb2-condeffs) (closed-sd5)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1435581ugly19ugly22ugly40ugly16wait_cb2-condeff1-no-0 :parameters
  () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd6)) :effect
  (and (done-1)))) 