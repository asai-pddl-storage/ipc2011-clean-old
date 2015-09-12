
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (do-close_sd8-condeffs) (closed-sd11) (not-updated-cb1)
  (not-closed-sd4) (closed-sd6) (not-closed-sd1) (not-updated-cb2) (do-normal)
  (updated-cb1) (not-closed-sd3) (closed-sd10) (closed-sd9) (closed-sd7)
  (closed-cb1) (not-closed-cb1) (closed-sd1) (closed-sd8) (not-closed-cb2)
  (updated-cb2) (not-closed-sd10) (closed-sd5) (not-closed-sd5) (closed-sd2)
  (done-0) (closed-sd3) (not-closed-sd7) (closed-cb2) (not-closed-sd11)
  (closed-sd4) (not-closed-sd9) (not-closed-sd8) (not-closed-sd2)
  (do-close_sd7-condeffs) (do-wait_cb2-condeffs) (not-closed-sd6))
 (:action ugly1435653ugly33ugly8ugly17ugly25close_cb1 :parameters ()
  :precondition (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly1435654ugly11ugly18ugly24ugly38open-sd1 :parameters ()
  :precondition (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly1435655ugly27ugly16ugly36ugly37close_sd6 :parameters ()
  :precondition (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly1435656ugly20ugly1ugly12ugly31open-sd2 :parameters ()
  :precondition (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly1435657ugly31ugly29ugly3ugly28wait_cb2-endof-condeffs :parameters
  () :precondition (and (do-wait_cb2-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0))))
 (:action ugly1435658ugly4ugly6ugly15ugly23close_sd8-condeff0-yes :parameters
  () :precondition (and (do-close_sd8-condeffs) (closed-sd7) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1435659ugly13ugly27ugly16ugly36wait_cb2-condeff0-no-0 :parameters
  () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd8)) :effect
  (and (done-0)))
 (:action ugly1435660ugly24ugly38ugly30ugly21close_sd5 :parameters ()
  :precondition (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly1435661ugly2ugly20ugly1ugly12open-cb2 :parameters ()
  :precondition (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1435662ugly12ugly31ugly29ugly3open-sd3 :parameters ()
  :precondition (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly1435663ugly26ugly34ugly26ugly34open-sd5 :parameters ()
  :precondition (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly1435664ugly38ugly30ugly21ugly33close_sd8-endof-condeffs
  :parameters () :precondition (and (do-close_sd8-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))))
 (:action ugly1435665ugly39ugly13ugly27ugly16wait_cb2-condeff0-yes :parameters
  () :precondition (and (do-wait_cb2-condeffs) (closed-sd8) (closed-sd7))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1435666ugly30ugly21ugly33ugly8close_sd1 :parameters ()
  :precondition (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd1) (not (not-closed-sd1))))
 (:action ugly1435667ugly35ugly9ugly35ugly9wait_cb2 :parameters ()
  :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly1435668ugly16ugly36ugly37ugly14close_sd8 :parameters ()
  :precondition (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly1435669ugly19ugly22ugly40ugly2open-sd11 :parameters ()
  :precondition (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly1435670ugly8ugly17ugly25ugly19open-sd9 :parameters ()
  :precondition (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly1435671ugly1ugly12ugly31ugly29close_sd9 :parameters ()
  :precondition (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd9) (not (not-closed-sd9))))
 (:action ugly1435672ugly36ugly37ugly14ugly4close_sd8-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd8-condeffs) (not-closed-sd7)) :effect
  (and (done-0)))
 (:action ugly1435673ugly23ugly5ugly7ugly32close_sd7-condeff0-yes :parameters
  () :precondition (and (do-close_sd7-condeffs) (closed-sd8) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1435674ugly25ugly19ugly22ugly40close_sd10 :parameters ()
  :precondition (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd10) (not (not-closed-sd10))))
 (:action ugly1435675ugly3ugly28ugly39ugly13open-sd4 :parameters ()
  :precondition (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly1435676ugly5ugly7ugly32ugly10close_sd7-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd7-condeffs) (not-closed-sd8)) :effect
  (and (done-0)))
 (:action ugly1435677ugly15ugly23ugly5ugly7open-cb1 :parameters ()
  :precondition (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435678ugly18ugly24ugly38ugly30open-sd10 :parameters ()
  :precondition (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly1435679ugly34ugly26ugly34ugly26close_sd4 :parameters ()
  :precondition (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly1435680ugly6ugly15ugly23ugly5close_sd8-condeff0-no-1 :parameters
  () :precondition (and (do-close_sd8-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly1435681ugly21ugly33ugly8ugly17open-sd6 :parameters ()
  :precondition (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly1435682ugly28ugly39ugly13ugly27close_sd2 :parameters ()
  :precondition (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly1435683ugly7ugly32ugly10ugly11close_cb2 :parameters ()
  :precondition (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly1435684ugly9ugly35ugly9ugly35close_sd7 :parameters ()
  :precondition (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly1435685ugly10ugly11ugly18ugly24wait_cb2-condeff0-no-1 :parameters
  () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd7)) :effect
  (and (done-0)))
 (:action ugly1435686ugly32ugly10ugly11ugly18open-sd7 :parameters ()
  :precondition (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly1435687ugly17ugly25ugly19ugly22wait_cb1 :parameters ()
  :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not-closed-cb1) (updated-cb1) (not (closed-cb1))
       (not (not-updated-cb1))))
 (:action ugly1435688ugly37ugly14ugly4ugly6close_sd3 :parameters ()
  :precondition (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly1435689ugly22ugly40ugly2ugly20close_sd11 :parameters ()
  :precondition (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2))
  :effect (and (closed-sd11) (not (not-closed-sd11))))
 (:action ugly1435690ugly40ugly2ugly20ugly1close_sd7-condeff0-no-1 :parameters
  () :precondition (and (do-close_sd7-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly1435691ugly14ugly4ugly6ugly15open-sd8 :parameters ()
  :precondition (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly1435692ugly29ugly3ugly28ugly39close_sd7-endof-condeffs
  :parameters () :precondition (and (do-close_sd7-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))))) 