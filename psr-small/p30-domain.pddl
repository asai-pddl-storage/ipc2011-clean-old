
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (updated-cb1) (closed-sd16) (not-closed-cb3) (not-closed-sd9)
  (closed-cb3) (do-close_sd2-condeffs) (not-closed-sd3) (updated-cb2)
  (not-closed-sd5) (do-close_sd11-condeffs) (do-normal) (not-closed-sd11)
  (not-updated-cb3) (not-closed-sd2) (closed-sd17) (not-closed-sd16)
  (closed-sd6) (done-2) (not-closed-sd10) (not-closed-sd17) (closed-sd11)
  (not-closed-cb2) (do-close_sd9-condeffs) (closed-sd10) (closed-sd5)
  (closed-sd15) (done-1) (updated-cb3) (do-wait_cb1-condeffs) (closed-cb1)
  (closed-sd13) (do-close_sd1-condeffs) (not-closed-sd15) (not-updated-cb2)
  (not-closed-sd14) (closed-sd12) (closed-cb2) (closed-sd7) (not-closed-sd13)
  (not-closed-sd8) (do-close_sd10-condeffs) (closed-sd4) (closed-sd9)
  (closed-sd14) (not-closed-sd6) (not-closed-sd7) (not-closed-sd12)
  (do-close_sd8-condeffs) (closed-sd8) (closed-sd1) (not-updated-cb1)
  (not-closed-sd1) (not-closed-sd4) (closed-sd2) (not-closed-cb1)
  (do-wait_cb2-condeffs) (closed-sd3) (done-0) (closed-sd18) (not-closed-sd18))
 (:action ugly1ugly4ugly22wait_cb2-condeff1-no-2 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd8)) :effect (and (done-1)))
 (:action ugly2ugly45ugly8close_sd10-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly3ugly15ugly69wait_cb1-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect (and (done-0)))
 (:action ugly4ugly22ugly89open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly5ugly14ugly56close_sd10-endof-condeffs :parameters ()
  :precondition (and (do-close_sd10-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))))
 (:action ugly6ugly20ugly53open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly7ugly70ugly1close_sd15 :parameters () :precondition
  (and (do-normal) (not-closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd15) (not (not-closed-sd15))))
 (:action ugly8ugly16ugly55close_sd9-condeff1-no-0 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd11)) :effect (and (done-1)))
 (:action ugly9ugly6ugly20open-sd18 :parameters () :precondition
  (and (do-normal) (closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd18) (not (closed-sd18))))
 (:action ugly10ugly61ugly71close_sd13 :parameters () :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd13) (not (not-closed-sd13))))
 (:action ugly11ugly35ugly62close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly12ugly83ugly76close_sd2-condeff0-yes :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd8) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly13ugly30ugly2close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly14ugly56ugly18wait_cb2-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly15ugly69ugly97close_sd1-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly16ugly55ugly25open-sd11 :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly17ugly33ugly24wait_cb2-condeff2-no-2 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd8)) :effect (and (done-2)))
 (:action ugly18ugly87ugly47close_sd8-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd8-condeffs) (not-closed-sd2)) :effect
  (and (done-0)))
 (:action ugly19ugly7ugly70close_sd18 :parameters () :precondition
  (and (do-normal) (not-closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd18) (not (not-closed-sd18))))
 (:action ugly20ugly53ugly63open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly21ugly29ugly94close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly22ugly89ugly66close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action ugly23ugly85ugly92open-sd14 :parameters () :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd14) (not (closed-sd14))))
 (:action ugly24ugly93ugly28open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly25ugly60ugly44wait_cb2-condeff2-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd11)) :effect (and (done-2)))
 (:action ugly26ugly10ugly61open-cb3 :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly27ugly36ugly46close_sd1-endof-condeffs :parameters ()
  :precondition (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly28ugly67ugly68close_sd9-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd9-condeffs) (not-closed-sd8)) :effect
  (and (done-1)))
 (:action ugly29ugly94ugly43close_sd2-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly30ugly2ugly45close_sd11-condeff0-yes :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd9) (closed-sd8) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly31ugly73ugly75open-sd13 :parameters () :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd13) (not (closed-sd13))))
 (:action ugly32ugly84ugly13close_sd8-condeff0-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd2) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly33ugly24ugly93close_sd9-endof-condeffs :parameters ()
  :precondition (and (do-close_sd9-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly34ugly80ugly82close_sd9-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd9-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly35ugly62ugly51close_sd8-condeff2-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd11) (closed-sd9) (closed-cb2)) :effect
  (and (done-2) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly36ugly46ugly49wait_cb2-condeff1-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd9)) :effect (and (done-1)))
 (:action ugly37ugly39ugly32wait_cb2-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd2)) :effect (and (done-0)))
 (:action ugly38ugly42ugly52close_sd9-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd9-condeffs) (not-closed-sd10)) :effect
  (and (done-0)))
 (:action ugly39ugly32ugly84close_sd10 :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action ugly40ugly78ugly38close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly41ugly12ugly83close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly42ugly52ugly21close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly43ugly79ugly54close_sd8-endof-condeffs :parameters ()
  :precondition (and (do-close_sd8-condeffs) (done-0) (done-1) (done-2))
  :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly44ugly91ugly59close_sd14 :parameters () :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd14) (not (not-closed-sd14))))
 (:action ugly45ugly8ugly16open-sd16 :parameters () :precondition
  (and (do-normal) (closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd16) (not (closed-sd16))))
 (:action ugly46ugly49ugly88open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly47ugly31ugly73close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd7) (not (not-closed-sd7))))
 (:action ugly48ugly3ugly15open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly49ugly88ugly72close_sd10-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd10-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly50ugly40ugly78close_sd8-condeff2-no-0 :parameters ()
  :precondition (and (do-close_sd8-condeffs) (not-closed-sd11)) :effect
  (and (done-2)))
 (:action ugly51ugly37ugly39close_sd8-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd8-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly52ugly21ugly29wait_cb2-endof-condeffs :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly53ugly63ugly65close_sd11-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd11-condeffs) (not-closed-sd9)) :effect
  (and (done-0)))
 (:action ugly54ugly41ugly12wait_cb2-condeff0-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd2) (closed-sd8)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly55ugly25ugly60close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly56ugly18ugly87close_sd1-condeff0-yes :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly57ugly96ugly86open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly58ugly81ugly95close_cb3 :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly59ugly74ugly90close_sd11-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd11-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly60ugly44ugly91open-sd12 :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd12) (not (closed-sd12))))
 (:action ugly61ugly71ugly5close_sd10-condeff0-yes :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-sd9) (closed-sd8) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly62ugly51ugly37close_sd8-condeff2-no-1 :parameters ()
  :precondition (and (do-close_sd8-condeffs) (not-closed-sd9)) :effect
  (and (done-2)))
 (:action ugly63ugly65ugly9close_sd12 :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd12) (not (not-closed-sd12))))
 (:action ugly64ugly34ugly80wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly65ugly9ugly6close_sd9-condeff0-yes :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd10) (closed-sd8) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly66ugly19ugly7open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly67ugly68ugly26close_sd11-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd11-condeffs) (not-closed-sd8)) :effect
  (and (done-0)))
 (:action ugly68ugly26ugly10open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly69ugly97ugly48close_sd16 :parameters () :precondition
  (and (do-normal) (not-closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd16) (not (not-closed-sd16))))
 (:action ugly70ugly1ugly4close_sd9-condeff0-no-1 :parameters () :precondition
  (and (do-close_sd9-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly71ugly5ugly14open-sd15 :parameters () :precondition
  (and (do-normal) (closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd15) (not (closed-sd15))))
 (:action ugly72ugly17ugly33close_sd9-condeff1-yes :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd11) (closed-sd8) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly73ugly75ugly58wait_cb3 :parameters () :precondition
  (and (do-normal) (not-updated-cb3)) :effect
  (and (not-closed-cb3) (updated-cb3) (not (closed-cb3))
       (not (not-updated-cb3))))
 (:action ugly74ugly90ugly11close_sd8-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd8-condeffs) (not-closed-sd9)) :effect
  (and (done-1)))
 (:action ugly75ugly58ugly81wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly76ugly77ugly27close_sd8-condeff1-no-2 :parameters ()
  :precondition (and (do-close_sd8-condeffs) (not-closed-cb2)) :effect
  (and (done-1)))
 (:action ugly77ugly27ugly36close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly78ugly38ugly42close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly79ugly54ugly41close_sd11-endof-condeffs :parameters ()
  :precondition (and (do-close_sd11-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0))))
 (:action ugly80ugly82ugly23wait_cb2-condeff0-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly81ugly95ugly50close_sd8-condeff2-no-2 :parameters ()
  :precondition (and (do-close_sd8-condeffs) (not-closed-cb2)) :effect
  (and (done-2)))
 (:action ugly82ugly23ugly85wait_cb2-condeff2-no-1 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd9)) :effect (and (done-2)))
 (:action ugly83ugly76ugly77close_sd9-condeff1-no-2 :parameters ()
  :precondition (and (do-close_sd9-condeffs) (not-closed-cb2)) :effect
  (and (done-1)))
 (:action ugly84ugly13ugly30close_sd17 :parameters () :precondition
  (and (do-normal) (not-closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd17) (not (not-closed-sd17))))
 (:action ugly85ugly92ugly57wait_cb1-condeff0-yes :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly86ugly64ugly34close_sd2-endof-condeffs :parameters ()
  :precondition (and (do-close_sd2-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))))
 (:action ugly87ugly47ugly31open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly88ugly72ugly17close_sd8-condeff1-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd10) (closed-sd9) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly89ugly66ugly19close_sd11 :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action ugly90ugly11ugly35open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly91ugly59ugly74wait_cb2-condeff2-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd11) (closed-sd9) (closed-sd8)) :effect
  (and (done-2) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly92ugly57ugly96wait_cb2-condeff1-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd10) (closed-sd9) (closed-sd8)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly93ugly28ugly67open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly94ugly43ugly79open-sd17 :parameters () :precondition
  (and (do-normal) (closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd17) (not (closed-sd17))))
 (:action ugly95ugly50ugly40close_sd2-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-sd8)) :effect
  (and (done-0)))
 (:action ugly96ugly86ugly64close_sd8-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd8-condeffs) (not-closed-sd10)) :effect
  (and (done-1)))
 (:action ugly97ugly48ugly3close_sd10-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd10-condeffs) (not-closed-sd9)) :effect
  (and (done-0)))
 (:action ugly98ugly98ugly98wait_cb1-endof-condeffs :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0))))) 