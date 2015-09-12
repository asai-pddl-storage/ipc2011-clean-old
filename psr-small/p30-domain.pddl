
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (closed-sd7) (closed-sd5) (closed-sd3) (done-2) (not-closed-sd18)
  (do-close_sd9-condeffs) (not-closed-sd4) (closed-sd1) (not-closed-sd10)
  (not-closed-sd2) (not-closed-cb3) (not-closed-cb2) (closed-cb2)
  (do-close_sd1-condeffs) (not-closed-sd3) (updated-cb1)
  (do-close_sd11-condeffs) (closed-sd12) (not-closed-sd13) (closed-sd15)
  (not-closed-sd16) (closed-sd4) (closed-sd10) (do-close_sd8-condeffs)
  (closed-sd8) (closed-sd14) (do-normal) (not-updated-cb2) (not-closed-sd14)
  (do-wait_cb2-condeffs) (not-closed-sd1) (do-close_sd2-condeffs) (closed-sd9)
  (not-closed-sd15) (not-closed-sd11) (not-updated-cb3) (closed-sd11)
  (not-closed-sd5) (not-closed-cb1) (not-updated-cb1) (closed-sd6)
  (closed-sd16) (not-closed-sd7) (not-closed-sd8) (closed-sd2)
  (not-closed-sd17) (not-closed-sd12) (updated-cb3) (closed-sd18) (updated-cb2)
  (done-0) (closed-sd17) (closed-sd13) (do-close_sd10-condeffs)
  (do-wait_cb1-condeffs) (closed-cb1) (not-closed-sd6) (closed-cb3) (done-1)
  (not-closed-sd9))
 (:action ugly1446832ugly59ugly74ugly90ugly11close_sd8-condeff1-no-1
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd9))
  :effect (and (done-1)))
 (:action ugly1446833ugly17ugly33ugly24ugly93close_sd9-endof-condeffs
  :parameters () :precondition (and (do-close_sd9-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1446834ugly58ugly81ugly95ugly50close_sd8-condeff2-no-2
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-cb2))
  :effect (and (done-2)))
 (:action ugly1446835ugly39ugly32ugly84ugly13close_sd8-condeff0-yes :parameters
  () :precondition (and (do-close_sd8-condeffs) (closed-sd2) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1446836ugly50ugly40ugly78ugly38close_sd6 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly1446837ugly6ugly20ugly53ugly63open-sd6 :parameters ()
  :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly1446838ugly60ugly44ugly91ugly59close_sd14 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd14) (not (not-closed-sd14))))
 (:action ugly1446839ugly67ugly68ugly26ugly10open-sd10 :parameters ()
  :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly1446840ugly32ugly84ugly13ugly30close_sd17 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd17) (not (not-closed-sd17))))
 (:action ugly1446841ugly54ugly41ugly12ugly83close_sd2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly1446842ugly44ugly91ugly59ugly74wait_cb2-condeff2-yes :parameters
  () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd11) (closed-sd9) (closed-sd8)) :effect
  (and (done-2) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1446843ugly98ugly98ugly98ugly98wait_cb1-endof-condeffs
  :parameters () :precondition (and (do-wait_cb1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0))))
 (:action ugly1446844ugly21ugly29ugly94ugly43close_sd2-condeff0-no-1
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly1446845ugly72ugly17ugly33ugly24wait_cb2-condeff2-no-2 :parameters
  () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd8)) :effect
  (and (done-2)))
 (:action ugly1446846ugly31ugly73ugly75ugly58wait_cb3 :parameters ()
  :precondition (and (do-normal) (not-updated-cb3)) :effect
  (and (not-closed-cb3) (updated-cb3) (not (closed-cb3))
       (not (not-updated-cb3))))
 (:action ugly1446847ugly61ugly71ugly5ugly14open-sd15 :parameters ()
  :precondition
  (and (do-normal) (closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd15) (not (closed-sd15))))
 (:action ugly1446848ugly43ugly79ugly54ugly41close_sd11-endof-condeffs
  :parameters () :precondition (and (do-close_sd11-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0))))
 (:action ugly1446849ugly23ugly85ugly92ugly57wait_cb1-condeff0-yes :parameters
  () :precondition (and (do-wait_cb1-condeffs) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1446850ugly85ugly92ugly57ugly96wait_cb2-condeff1-yes :parameters
  () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd10) (closed-sd9) (closed-sd8)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1446851ugly19ugly7ugly70ugly1close_sd15 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd15) (not (not-closed-sd15))))
 (:action ugly1446852ugly25ugly60ugly44ugly91open-sd12 :parameters ()
  :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd12) (not (closed-sd12))))
 (:action ugly1446853ugly63ugly65ugly9ugly6close_sd9-condeff0-yes :parameters
  () :precondition
  (and (do-close_sd9-condeffs) (closed-sd10) (closed-sd8) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1446854ugly3ugly15ugly69ugly97close_sd1-condeff0-no-0 :parameters
  () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly1446855ugly82ugly23ugly85ugly92open-sd14 :parameters ()
  :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd14) (not (closed-sd14))))
 (:action ugly1446856ugly40ugly78ugly38ugly42close_cb1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly1446857ugly24ugly93ugly28ugly67open-sd3 :parameters ()
  :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly1446858ugly48ugly3ugly15ugly69wait_cb1-condeff0-no-0 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly1446859ugly49ugly88ugly72ugly17close_sd8-condeff1-yes :parameters
  () :precondition
  (and (do-close_sd8-condeffs) (closed-sd10) (closed-sd9) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1446860ugly84ugly13ugly30ugly2close_sd3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly1446861ugly15ugly69ugly97ugly48close_sd16 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd16) (not (not-closed-sd16))))
 (:action ugly1446862ugly53ugly63ugly65ugly9close_sd12 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd12) (not (not-closed-sd12))))
 (:action ugly1446863ugly33ugly24ugly93ugly28open-sd4 :parameters ()
  :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly1446864ugly70ugly1ugly4ugly22wait_cb2-condeff1-no-2 :parameters
  () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd8)) :effect
  (and (done-1)))
 (:action ugly1446865ugly18ugly87ugly47ugly31open-cb1 :parameters ()
  :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1446866ugly81ugly95ugly50ugly40close_sd2-condeff0-no-0
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action ugly1446867ugly69ugly97ugly48ugly3close_sd10-condeff0-no-0
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action ugly1446868ugly29ugly94ugly43ugly79open-sd17 :parameters ()
  :precondition
  (and (do-normal) (closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd17) (not (closed-sd17))))
 (:action ugly1446869ugly95ugly50ugly40ugly78close_sd8-condeff2-no-0
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd11))
  :effect (and (done-2)))
 (:action ugly1446870ugly52ugly21ugly29ugly94close_sd5 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly1446871ugly28ugly67ugly68ugly26close_sd11-condeff0-no-1
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action ugly1446872ugly45ugly8ugly16ugly55close_sd9-condeff1-no-0 :parameters
  () :precondition (and (do-close_sd9-condeffs) (not-closed-sd11)) :effect
  (and (done-1)))
 (:action ugly1446873ugly91ugly59ugly74ugly90close_sd11-condeff0-no-2
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly1446874ugly79ugly54ugly41ugly12wait_cb2-condeff0-yes :parameters
  () :precondition (and (do-wait_cb2-condeffs) (closed-sd2) (closed-sd8))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1446875ugly65ugly9ugly6ugly20open-sd18 :parameters ()
  :precondition
  (and (do-normal) (closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd18) (not (closed-sd18))))
 (:action ugly1446876ugly73ugly75ugly58ugly81wait_cb1 :parameters ()
  :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly1446877ugly13ugly30ugly2ugly45close_sd11-condeff0-yes :parameters
  () :precondition
  (and (do-close_sd11-condeffs) (closed-sd9) (closed-sd8) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1446878ugly8ugly16ugly55ugly25open-sd11 :parameters ()
  :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly1446879ugly7ugly70ugly1ugly4close_sd9-condeff0-no-1 :parameters
  () :precondition (and (do-close_sd9-condeffs) (not-closed-sd8)) :effect
  (and (done-0)))
 (:action ugly1446880ugly2ugly45ugly8ugly16open-sd16 :parameters ()
  :precondition
  (and (do-normal) (closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd16) (not (closed-sd16))))
 (:action ugly1446881ugly93ugly28ugly67ugly68close_sd9-condeff1-no-1
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd8))
  :effect (and (done-1)))
 (:action ugly1446882ugly20ugly53ugly63ugly65close_sd11-condeff0-no-0
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action ugly1446883ugly94ugly43ugly79ugly54close_sd8-endof-condeffs
  :parameters () :precondition
  (and (do-close_sd8-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly1446884ugly74ugly90ugly11ugly35open-sd9 :parameters ()
  :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly1446885ugly78ugly38ugly42ugly52close_sd9-condeff0-no-0
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd10))
  :effect (and (done-0)))
 (:action ugly1446886ugly75ugly58ugly81ugly95close_cb3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly1446887ugly83ugly76ugly77ugly27close_sd8-condeff1-no-2
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-cb2))
  :effect (and (done-1)))
 (:action ugly1446888ugly89ugly66ugly19ugly7open-sd1 :parameters ()
  :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly1446889ugly36ugly46ugly49ugly88open-cb2 :parameters ()
  :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1446890ugly66ugly19ugly7ugly70close_sd18 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd18) (not (not-closed-sd18))))
 (:action ugly1446891ugly55ugly25ugly60ugly44wait_cb2-condeff2-no-0 :parameters
  () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd11)) :effect
  (and (done-2)))
 (:action ugly1446892ugly11ugly35ugly62ugly51close_sd8-condeff2-yes :parameters
  () :precondition
  (and (do-close_sd8-condeffs) (closed-sd11) (closed-sd9) (closed-cb2)) :effect
  (and (done-2) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1446893ugly9ugly6ugly20ugly53open-sd8 :parameters ()
  :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly1446894ugly41ugly12ugly83ugly76close_sd2-condeff0-yes :parameters
  () :precondition (and (do-close_sd2-condeffs) (closed-sd8) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1446895ugly10ugly61ugly71ugly5close_sd10-condeff0-yes :parameters
  () :precondition
  (and (do-close_sd10-condeffs) (closed-sd9) (closed-sd8) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1446896ugly37ugly39ugly32ugly84close_sd10 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action ugly1446897ugly71ugly5ugly14ugly56close_sd10-endof-condeffs
  :parameters () :precondition (and (do-close_sd10-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))))
 (:action ugly1446898ugly86ugly64ugly34ugly80wait_cb2 :parameters ()
  :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly1446899ugly27ugly36ugly46ugly49wait_cb2-condeff1-no-1 :parameters
  () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd9)) :effect
  (and (done-1)))
 (:action ugly1446900ugly1ugly4ugly22ugly89open-sd5 :parameters ()
  :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly1446901ugly42ugly52ugly21ugly29wait_cb2-endof-condeffs
  :parameters () :precondition
  (and (do-wait_cb2-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly1446902ugly56ugly18ugly87ugly47close_sd8-condeff0-no-0
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1446903ugly57ugly96ugly86ugly64close_sd8-condeff1-no-0
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd10))
  :effect (and (done-1)))
 (:action ugly1446904ugly80ugly82ugly23ugly85wait_cb2-condeff2-no-1 :parameters
  () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd9)) :effect
  (and (done-2)))
 (:action ugly1446905ugly97ugly48ugly3ugly15open-sd2 :parameters ()
  :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly1446906ugly92ugly57ugly96ugly86open-sd7 :parameters ()
  :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly1446907ugly30ugly2ugly45ugly8close_sd10-condeff0-no-1 :parameters
  () :precondition (and (do-close_sd10-condeffs) (not-closed-sd8)) :effect
  (and (done-0)))
 (:action ugly1446908ugly22ugly89ugly66ugly19close_sd11 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action ugly1446909ugly46ugly49ugly88ugly72close_sd10-condeff0-no-2
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly1446910ugly35ugly62ugly51ugly37close_sd8-condeff2-no-1
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd9))
  :effect (and (done-2)))
 (:action ugly1446911ugly77ugly27ugly36ugly46close_sd1-endof-condeffs
  :parameters () :precondition (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly1446912ugly34ugly80ugly82ugly23wait_cb2-condeff0-no-1 :parameters
  () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd8)) :effect
  (and (done-0)))
 (:action ugly1446913ugly87ugly47ugly31ugly73close_sd7 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd7) (not (not-closed-sd7))))
 (:action ugly1446914ugly12ugly83ugly76ugly77close_sd9-condeff1-no-2
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-cb2))
  :effect (and (done-1)))
 (:action ugly1446915ugly16ugly55ugly25ugly60close_sd4 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly1446916ugly26ugly10ugly61ugly71close_sd13 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd13) (not (not-closed-sd13))))
 (:action ugly1446917ugly88ugly72ugly17ugly33close_sd9-condeff1-yes :parameters
  () :precondition
  (and (do-close_sd9-condeffs) (closed-sd11) (closed-sd8) (closed-cb2)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1446918ugly14ugly56ugly18ugly87close_sd1-condeff0-yes :parameters
  () :precondition (and (do-close_sd1-condeffs) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1446919ugly4ugly22ugly89ugly66close_sd9 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action ugly1446920ugly38ugly42ugly52ugly21close_sd8 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly1446921ugly47ugly31ugly73ugly75open-sd13 :parameters ()
  :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd13) (not (closed-sd13))))
 (:action ugly1446922ugly96ugly86ugly64ugly34close_sd2-endof-condeffs
  :parameters () :precondition (and (do-close_sd2-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))))
 (:action ugly1446923ugly68ugly26ugly10ugly61open-cb3 :parameters ()
  :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1446924ugly5ugly14ugly56ugly18wait_cb2-condeff1-no-0 :parameters
  () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd10)) :effect
  (and (done-1)))
 (:action ugly1446925ugly51ugly37ugly39ugly32wait_cb2-condeff0-no-0 :parameters
  () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd2)) :effect
  (and (done-0)))
 (:action ugly1446926ugly90ugly11ugly35ugly62close_cb2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly1446927ugly62ugly51ugly37ugly39close_sd8-condeff0-no-1
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly1446928ugly76ugly77ugly27ugly36close_sd1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly1446929ugly64ugly34ugly80ugly82close_sd9-condeff0-no-2
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-cb2))
  :effect (and (done-0)))) 