
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (closed-sd6) (updated-cb1) (closed-sd9) (not-closed-sd11)
  (closed-cb1) (not-closed-cb1) (not-closed-cb2) (closed-sd12)
  (do-close_sd10-condeffs) (not-closed-sd8) (updated-cb2) (not-closed-sd9)
  (do-normal) (closed-sd5) (not-closed-sd13) (not-closed-sd6) (not-closed-sd5)
  (do-wait_cb2-condeffs) (not-closed-sd4) (done-0) (not-updated-cb2)
  (not-closed-sd10) (not-closed-sd3) (closed-sd11) (closed-cb2) (updated-cb3)
  (do-close_sd11-condeffs) (closed-sd8) (not-closed-sd1) (closed-sd3)
  (closed-sd2) (do-close_sd12-condeffs) (closed-cb3) (not-closed-cb3)
  (do-close_sd1-condeffs) (not-closed-sd12) (closed-sd10) (not-closed-sd7)
  (closed-sd4) (closed-sd1) (not-updated-cb1) (do-close_sd13-condeffs)
  (closed-sd7) (closed-sd13) (do-wait_cb1-condeffs) (not-updated-cb3)
  (not-closed-sd2) (done-1))
 (:action ugly1ugly37ugly7ugly40close_sd1-endof-condeffs :parameters ()
  :precondition (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly2ugly38ugly43ugly28wait_cb2-condeff1-yes :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (closed-sd13) (closed-sd12))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly3ugly12ugly20ugly4wait_cb2-condeff1-no-1 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd12)) :effect
  (and (done-1)))
 (:action ugly4ugly29ugly23ugly34open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly5ugly14ugly54ugly39close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd8) (not (not-closed-sd8))))
 (:action ugly6ugly32ugly52ugly24open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly7ugly40ugly21ugly35close_sd13-condeff0-yes :parameters ()
  :precondition (and (do-close_sd13-condeffs) (closed-sd12) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly8ugly15ugly53ugly63wait_cb2-condeff0-no-0 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd10)) :effect
  (and (done-0)))
 (:action ugly9ugly60ugly13ugly33open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly10ugly56ugly55ugly16close_sd1-condeff0-yes :parameters ()
  :precondition (and (do-close_sd1-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly11ugly3ugly12ugly20close_sd13-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd13-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly12ugly20ugly4ugly29wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly13ugly33ugly41ugly50open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly14ugly54ugly39ugly11close_sd13-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd13-condeffs) (not-closed-sd12)) :effect
  (and (done-0)))
 (:action ugly15ugly53ugly63ugly25close_sd11 :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action ugly16ugly19ugly1ugly37close_sd11-condeff0-yes :parameters ()
  :precondition (and (do-close_sd11-condeffs) (closed-sd10) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly17ugly9ugly60ugly13open-sd13 :parameters () :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd13) (not (closed-sd13))))
 (:action ugly18ugly30ugly46ugly10close_sd10-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd10-condeffs) (not-closed-sd11)) :effect
  (and (done-0)))
 (:action ugly19ugly1ugly37ugly7open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly20ugly4ugly29ugly23open-sd12 :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd12) (not (closed-sd12))))
 (:action ugly21ugly35ugly2ugly38open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly22ugly18ugly30ugly46close_sd11-endof-condeffs :parameters ()
  :precondition (and (do-close_sd11-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0))))
 (:action ugly23ugly34ugly42ugly49wait_cb2-condeff0-no-1 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd11)) :effect
  (and (done-0)))
 (:action ugly24ugly48ugly58ugly31close_sd11-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd11-condeffs) (not-closed-sd10)) :effect
  (and (done-0)))
 (:action ugly25ugly6ugly32ugly52wait_cb2-condeff0-yes :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (closed-sd10) (closed-sd11))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly26ugly51ugly64ugly47wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly27ugly44ugly59ugly17close_sd11-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd11-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly28ugly27ugly44ugly59close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly29ugly23ugly34ugly42close_sd12 :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd12-condeffs) (closed-sd12)
       (not (not-closed-sd12))))
 (:action ugly30ugly46ugly10ugly56close_sd10-condeff0-yes :parameters ()
  :precondition (and (do-close_sd10-condeffs) (closed-sd11) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly31ugly8ugly15ugly53wait_cb1-condeff0-no-0 :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly32ugly52ugly24ugly48close_sd10-endof-condeffs :parameters ()
  :precondition (and (do-close_sd10-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))))
 (:action ugly33ugly41ugly50ugly36close_sd13-endof-condeffs :parameters ()
  :precondition (and (do-close_sd13-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd13-condeffs)) (not (done-0))))
 (:action ugly34ugly42ugly49ugly26close_sd12-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd12-condeffs) (not-closed-sd13)) :effect
  (and (done-0)))
 (:action ugly35ugly2ugly38ugly43wait_cb2-condeff1-no-0 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd13)) :effect
  (and (done-1)))
 (:action ugly36ugly5ugly14ugly54open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly37ugly7ugly40ugly21open-sd11 :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly38ugly43ugly28ugly27open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly39ugly11ugly3ugly12close_sd1-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly40ugly21ugly35ugly2open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly41ugly50ugly36ugly5close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly42ugly49ugly26ugly51wait_cb1-endof-condeffs :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0))))
 (:action ugly43ugly28ugly27ugly44close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd9) (not (not-closed-sd9))))
 (:action ugly44ugly59ugly17ugly9wait_cb3 :parameters () :precondition
  (and (do-normal) (not-updated-cb3)) :effect
  (and (not-closed-cb3) (updated-cb3) (not (closed-cb3))
       (not (not-updated-cb3))))
 (:action ugly45ugly22ugly18ugly30open-cb3 :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly46ugly10ugly56ugly55close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly47ugly61ugly62ugly57open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly48ugly58ugly31ugly8close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly49ugly26ugly51ugly64open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly50ugly36ugly5ugly14close_sd10 :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action ugly51ugly64ugly47ugly61wait_cb1-condeff0-yes :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly52ugly24ugly48ugly58close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly53ugly63ugly25ugly6close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly54ugly39ugly11ugly3close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd7) (not (not-closed-sd7))))
 (:action ugly55ugly16ugly19ugly1open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly56ugly55ugly16ugly19close_sd13 :parameters () :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd13-condeffs) (closed-sd13)
       (not (not-closed-sd13))))
 (:action ugly57ugly45ugly22ugly18wait_cb2-endof-condeffs :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly58ugly31ugly8ugly15close_sd12-endof-condeffs :parameters ()
  :precondition (and (do-close_sd12-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd12-condeffs)) (not (done-0))))
 (:action ugly59ugly17ugly9ugly60close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly60ugly13ugly33ugly41close_sd12-condeff0-yes :parameters ()
  :precondition (and (do-close_sd12-condeffs) (closed-sd13) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly61ugly62ugly57ugly45close_cb3 :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly62ugly57ugly45ugly22close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly63ugly25ugly6ugly32close_sd12-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd12-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly64ugly47ugly61ugly62close_sd10-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd10-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))) 