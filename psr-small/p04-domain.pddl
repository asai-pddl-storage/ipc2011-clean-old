
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (closed-sd1) (closed-sd5) (do-close_sd1-condeffs)
  (do-close_sd4-condeffs) (do-wait_cb1-condeffs) (not-updated-cb1)
  (not-closed-sd6) (done-1) (closed-cb1) (not-closed-sd4) (not-closed-sd5)
  (not-closed-sd1) (closed-sd3) (closed-sd4) (closed-sd6) (updated-cb1)
  (do-close_sd3-condeffs) (do-close_sd2-condeffs) (not-closed-cb1) (do-normal)
  (do-close_sd5-condeffs) (not-closed-sd2) (closed-sd2) (done-0)
  (not-closed-sd3))
 (:action ugly1435227ugly8ugly53ugly21ugly34close_sd5-condeff0-no-3 :parameters
  () :precondition (and (do-close_sd5-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly1435228ugly17ugly55ugly17ugly55close_sd2-condeff0-yes :parameters
  () :precondition
  (and (do-close_sd2-condeffs) (closed-sd3) (closed-sd1) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435229ugly57ugly58ugly35ugly14close_sd2-condeff0-no-1
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1435230ugly54ugly24ugly49ugly40open-sd2 :parameters ()
  :precondition (and (do-normal) (closed-sd2) (updated-cb1)) :effect
  (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly1435231ugly55ugly17ugly55ugly17wait_cb1-condeff0-no-1 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect
  (and (done-0)))
 (:action ugly1435232ugly46ugly42ugly54ugly24close_sd3-condeff0-no-1
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1435233ugly50ugly60ugly4ugly62close_sd4-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd4-condeffs) (not-closed-sd5)) :effect
  (and (done-0)))
 (:action ugly1435234ugly9ugly3ugly52ugly50wait_cb1-condeff1-no-2 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect
  (and (done-1)))
 (:action ugly1435235ugly26ugly28ugly8ugly53close_sd2-condeff1-yes :parameters
  () :precondition
  (and (do-close_sd2-condeffs) (closed-sd5) (closed-sd4) (closed-sd1)
       (closed-cb1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435236ugly43ugly16ugly61ugly37wait_cb1-condeff1-yes :parameters
  () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd5) (closed-sd4) (closed-sd2)
       (closed-sd1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435237ugly47ugly30ugly56ugly47close_sd1-condeff0-no-1
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1435238ugly25ugly2ugly15ugly12close_sd1 :parameters ()
  :precondition (and (do-normal) (not-closed-sd1) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly1435239ugly49ugly40ugly43ugly16wait_cb1-condeff1-no-3 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect
  (and (done-1)))
 (:action ugly1435240ugly13ugly6ugly13ugly6close_sd4-condeff0-no-2 :parameters
  () :precondition (and (do-close_sd4-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly1435241ugly3ugly52ugly50ugly60close_sd5-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd5-condeffs) (not-closed-sd4)) :effect
  (and (done-0)))
 (:action ugly1435242ugly56ugly47ugly30ugly56close_sd3-condeff0-yes :parameters
  () :precondition
  (and (do-close_sd3-condeffs) (closed-sd2) (closed-sd1) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435243ugly2ugly15ugly12ugly27close_sd1-condeff1-no-3 :parameters
  () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect
  (and (done-1)))
 (:action ugly1435244ugly62ugly11ugly23ugly41close_sd2-condeff0-no-2
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1435245ugly15ugly12ugly27ugly36open-sd1 :parameters ()
  :precondition (and (do-normal) (closed-sd1) (updated-cb1)) :effect
  (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly1435246ugly40ugly43ugly16ugly61close_sd1-endof-condeffs
  :parameters () :precondition (and (do-close_sd1-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1435247ugly39ugly10ugly18ugly45wait_cb1-condeff1-no-1 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd4)) :effect
  (and (done-1)))
 (:action ugly1435248ugly19ugly25ugly2ugly15close_sd4-condeff0-no-1 :parameters
  () :precondition (and (do-close_sd4-condeffs) (not-closed-sd2)) :effect
  (and (done-0)))
 (:action ugly1435249ugly34ugly7ugly48ugly31close_sd1-condeff1-yes :parameters
  () :precondition
  (and (do-close_sd1-condeffs) (closed-sd5) (closed-sd4) (closed-sd2)
       (closed-cb1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435250ugly10ugly18ugly45ugly59close_sd5-condeff0-no-1
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1435251ugly44ugly26ugly28ugly8wait_cb1-condeff0-yes :parameters
  () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd3) (closed-sd2) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435252ugly5ugly51ugly1ugly29close_cb1 :parameters ()
  :precondition (and (do-normal) (not-closed-cb1) (updated-cb1)) :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly1435253ugly37ugly57ugly58ugly35close_sd4-condeff0-no-3
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1435254ugly14ugly19ugly25ugly2close_sd4-endof-condeffs
  :parameters () :precondition (and (do-close_sd4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))))
 (:action ugly1435255ugly23ugly41ugly20ugly22close_sd1-condeff1-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd5))
  :effect (and (done-1)))
 (:action ugly1435256ugly27ugly36ugly44ugly26close_sd1-condeff0-yes :parameters
  () :precondition
  (and (do-close_sd1-condeffs) (closed-sd3) (closed-sd2) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435257ugly31ugly32ugly39ugly10close_sd2-condeff0-no-0
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1435258ugly59ugly5ugly51ugly1close_sd1-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd1-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly1435259ugly41ugly20ugly22ugly33close_sd4 :parameters ()
  :precondition (and (do-normal) (not-closed-sd4) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly1435260ugly38ugly46ugly42ugly54close_sd2-condeff1-no-2
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd1))
  :effect (and (done-1)))
 (:action ugly1435261ugly61ugly37ugly57ugly58close_sd1-condeff1-no-2
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd2))
  :effect (and (done-1)))
 (:action ugly1435262ugly21ugly34ugly7ugly48close_sd1-condeff0-no-2 :parameters
  () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly1435263ugly1ugly29ugly38ugly46open-sd3 :parameters ()
  :precondition (and (do-normal) (closed-sd3) (updated-cb1)) :effect
  (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly1435264ugly53ugly21ugly34ugly7close_sd3-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd3-condeffs) (not-closed-sd2)) :effect
  (and (done-0)))
 (:action ugly1435265ugly52ugly50ugly60ugly4wait_cb1-endof-condeffs :parameters
  () :precondition (and (do-wait_cb1-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly1435266ugly60ugly4ugly62ugly11close_sd2-condeff1-no-1 :parameters
  () :precondition (and (do-close_sd2-condeffs) (not-closed-sd4)) :effect
  (and (done-1)))
 (:action ugly1435267ugly51ugly1ugly29ugly38close_sd3 :parameters ()
  :precondition (and (do-normal) (not-closed-sd3) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly1435268ugly33ugly9ugly3ugly52close_sd3-condeff0-no-2 :parameters
  () :precondition (and (do-close_sd3-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly1435269ugly42ugly54ugly24ugly49open-sd5 :parameters ()
  :precondition (and (do-normal) (closed-sd5) (updated-cb1)) :effect
  (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly1435270ugly18ugly45ugly59ugly5close_sd3-endof-condeffs
  :parameters () :precondition (and (do-close_sd3-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))))
 (:action ugly1435271ugly7ugly48ugly31ugly32open-sd6 :parameters ()
  :precondition (and (do-normal) (closed-sd6) (updated-cb1)) :effect
  (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly1435272ugly35ugly14ugly19ugly25close_sd5 :parameters ()
  :precondition (and (do-normal) (not-closed-sd5) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action ugly1435273ugly28ugly8ugly53ugly21close_sd1-condeff1-no-1 :parameters
  () :precondition (and (do-close_sd1-condeffs) (not-closed-sd4)) :effect
  (and (done-1)))
 (:action ugly1435274ugly22ugly33ugly9ugly3wait_cb1 :parameters ()
  :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly1435275ugly45ugly59ugly5ugly51close_sd6 :parameters ()
  :precondition (and (do-normal) (not-closed-sd6) (updated-cb1)) :effect
  (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly1435276ugly30ugly56ugly47ugly30wait_cb1-condeff0-no-2 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly1435277ugly12ugly27ugly36ugly44close_sd2-endof-condeffs
  :parameters () :precondition (and (do-close_sd2-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1435278ugly36ugly44ugly26ugly28close_sd5-endof-condeffs
  :parameters () :precondition (and (do-close_sd5-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))))
 (:action ugly1435279ugly29ugly38ugly46ugly42wait_cb1-condeff0-no-0 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly1435280ugly58ugly35ugly14ugly19close_sd2-condeff1-no-3
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-cb1))
  :effect (and (done-1)))
 (:action ugly1435281ugly16ugly61ugly37ugly57wait_cb1-condeff1-no-0 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd5)) :effect
  (and (done-1)))
 (:action ugly1435282ugly20ugly22ugly33ugly9close_sd5-condeff0-yes :parameters
  () :precondition
  (and (do-close_sd5-condeffs) (closed-sd4) (closed-sd2) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435283ugly6ugly13ugly6ugly13close_sd5-condeff0-no-2 :parameters
  () :precondition (and (do-close_sd5-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly1435284ugly11ugly23ugly41ugly20close_sd2-condeff1-no-0
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd5))
  :effect (and (done-1)))
 (:action ugly1435285ugly4ugly62ugly11ugly23open-sd4 :parameters ()
  :precondition (and (do-normal) (closed-sd4) (updated-cb1)) :effect
  (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly1435286ugly32ugly39ugly10ugly18open-cb1 :parameters ()
  :precondition (and (do-normal) (closed-cb1) (updated-cb1)) :effect
  (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1435287ugly24ugly49ugly40ugly43close_sd2 :parameters ()
  :precondition (and (do-normal) (not-closed-sd2) (updated-cb1)) :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly1435288ugly48ugly31ugly32ugly39close_sd4-condeff0-yes :parameters
  () :precondition
  (and (do-close_sd4-condeffs) (closed-sd5) (closed-sd2) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))) 