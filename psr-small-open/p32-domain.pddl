
(define (domain grounded-strips-psr) (:requirements :strips :action-costs)
 (:predicates (not-updated-cb1) (not-closed-sd16) (not-closed-sd19)
  (closed-sd7) (not-closed-sd1) (closed-sd17) (not-closed-cb4) (not-closed-sd9)
  (closed-sd5) (not-updated-cb4) (closed-sd21) (updated-cb2) (updated-cb4)
  (not-updated-cb3) (not-updated-cb2) (not-closed-sd3) (closed-sd8)
  (not-closed-sd11) (not-closed-sd14) (not-closed-sd6) (closed-sd4)
  (closed-sd6) (closed-sd11) (done-1) (done-0) (do-close_sd18-condeffs)
  (not-closed-sd15) (closed-sd19) (not-closed-cb3) (not-closed-cb2)
  (closed-sd3) (closed-sd16) (closed-sd20) (closed-cb4) (closed-sd14)
  (not-closed-sd17) (not-closed-sd12) (not-closed-sd7) (closed-cb3) (do-normal)
  (not-closed-sd21) (closed-sd12) (closed-sd9) (updated-cb1)
  (do-close_sd10-condeffs) (closed-cb1) (not-closed-sd13) (closed-cb2)
  (closed-sd13) (not-closed-sd10) (not-closed-sd4) (closed-sd2) (closed-sd1)
  (updated-cb3) (do-wait_cb4-condeffs) (do-wait_cb2-condeffs)
  (do-close_sd21-condeffs) (not-closed-cb1) (not-closed-sd18)
  (do-close_sd8-condeffs) (not-closed-sd5) (not-closed-sd20) (not-closed-sd8)
  (closed-sd15) (not-closed-sd2) (closed-sd10) (closed-sd18))
 (:functions (total-cost) - number)
 (:action ugly704ugly775ugly42ugly70ugly4ugly55close_sd8-condeff0-no-0
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly705ugly752ugly32ugly27ugly42ugly70close_sd21-endof-condeffs
  :parameters () :precondition (and (do-close_sd21-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd21-condeffs)) (not (done-0))))
 (:action ugly706ugly767ugly43ugly30ugly76ugly13wait_cb3 :parameters ()
  :precondition (and (do-normal) (not-updated-cb3)) :effect
  (and (not-closed-cb3) (updated-cb3) (not (closed-cb3))
       (not (not-updated-cb3))))
 (:action ugly707ugly726ugly4ugly55ugly22ugly57close_sd8-condeff0-yes
  :parameters () :precondition (and (do-close_sd8-condeffs) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly708ugly766ugly26ugly9ugly48ugly67close_sd21-condeff0-no-0
  :parameters () :precondition (and (do-close_sd21-condeffs) (not-closed-cb4))
  :effect (and (done-0)))
 (:action ugly709ugly722ugly46ugly51ugly28ugly61close_sd21 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd21) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd21-condeffs) (closed-sd21)
       (not (not-closed-sd21))))
 (:action ugly710ugly763ugly48ugly67ugly3ugly14open-sd20 :parameters ()
  :precondition
  (and (do-normal) (closed-sd20) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd20) (not (closed-sd20))))
 (:action ugly711ugly716ugly15ugly6ugly23ugly32close_sd2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly712ugly706ugly64ugly60ugly53ugly18open-sd18 :parameters ()
  :precondition
  (and (do-normal) (closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd18) (not (closed-sd18))))
 (:action ugly713ugly774ugly61ugly1ugly64ugly60open-sd1 :parameters ()
  :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd1) (not (closed-sd1))))
 (:action ugly714ugly768ugly20ugly25ugly2ugly10close_sd4 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly715ugly740ugly52ugly12ugly45ugly74close_sd18 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd18-condeffs) (closed-sd18)
       (not (not-closed-sd18))))
 (:action ugly716ugly718ugly40ugly66ugly68ugly41close_sd17 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd17) (not (not-closed-sd17))))
 (:action ugly717ugly777ugly14ugly34ugly38ugly17close_sd8 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly718ugly743ugly55ugly22ugly57ugly21close_sd10 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action ugly719ugly724ugly67ugly3ugly14ugly34open-sd16 :parameters ()
  :precondition
  (and (do-normal) (closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd16) (not (closed-sd16))))
 (:action ugly720ugly720ugly17ugly20ugly25ugly2close_sd18-endof-condeffs
  :parameters () :precondition (and (do-close_sd18-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd18-condeffs)) (not (done-0))))
 (:action ugly721ugly748ugly12ugly45ugly74ugly7open-sd5 :parameters ()
  :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd5) (not (closed-sd5))))
 (:action ugly722ugly749ugly8ugly62ugly52ugly12open-sd9 :parameters ()
  :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd9) (not (closed-sd9))))
 (:action ugly723ugly708ugly63ugly40ugly66ugly68open-sd13 :parameters ()
  :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd13) (not (closed-sd13))))
 (:action ugly724ugly770ugly2ugly10ugly26ugly9open-sd6 :parameters ()
  :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd6) (not (closed-sd6))))
 (:action ugly725ugly704ugly72ugly43ugly30ugly76close_sd14 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd14) (not (not-closed-sd14))))
 (:action ugly726ugly707ugly23ugly32ugly27ugly42wait_cb2 :parameters ()
  :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly727ugly756ugly27ugly42ugly70ugly4open-cb3 :parameters ()
  :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly728ugly744ugly56ugly47ugly44ugly19open-cb4 :parameters ()
  :precondition
  (and (do-normal) (closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly729ugly747ugly70ugly4ugly55ugly22open-cb1 :parameters ()
  :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly730ugly757ugly68ugly41ugly11ugly8close_sd3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly731ugly712ugly3ugly14ugly34ugly38close_sd10-condeff0-yes
  :parameters () :precondition (and (do-close_sd10-condeffs) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly732ugly772ugly18ugly36ugly46ugly51close_sd1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd1) (not (not-closed-sd1))))
 (:action ugly733ugly737ugly11ugly8ugly62ugly52close_sd15 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd15) (not (not-closed-sd15))))
 (:action ugly734ugly725ugly1ugly64ugly60ugly53close_sd10-condeff0-no-0
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly735ugly733ugly34ugly38ugly17ugly20close_sd5 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly736ugly750ugly62ugly52ugly12ugly45wait_cb2-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd10))
  :effect (and (done-1)))
 (:action ugly737ugly714ugly65ugly39ugly15ugly6close_sd8-endof-condeffs
  :parameters () :precondition (and (do-close_sd8-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))))
 (:action ugly738ugly713ugly71ugly5ugly29ugly71close_sd20 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd20) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd20) (not (not-closed-sd20))))
 (:action ugly739ugly732ugly69ugly50ugly65ugly39close_sd12 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd12) (not (not-closed-sd12))))
 (:action ugly740ugly755ugly35ugly73ugly59ugly24wait_cb4 :parameters ()
  :precondition (and (do-normal) (not-updated-cb4)) :effect
  (and (not (do-normal)) (do-wait_cb4-condeffs) (updated-cb4)
       (not (not-updated-cb4))))
 (:action ugly741ugly753ugly25ugly2ugly10ugly26close_sd18-condeff0-no-0
  :parameters () :precondition (and (do-close_sd18-condeffs) (not-closed-cb4))
  :effect (and (done-0)))
 (:action ugly742ugly727ugly53ugly18ugly36ugly46open-sd3 :parameters ()
  :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd3) (not (closed-sd3))))
 (:action ugly743ugly758ugly58ugly31ugly58ugly31close_sd16 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd16) (not (not-closed-sd16))))
 (:action ugly744ugly759ugly57ugly21ugly16ugly56open-sd7 :parameters ()
  :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd7) (not (closed-sd7))))
 (:action ugly745ugly736ugly47ugly44ugly19ugly54open-sd17 :parameters ()
  :precondition
  (and (do-normal) (closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd17) (not (closed-sd17))))
 (:action ugly746ugly769ugly73ugly59ugly24ugly63open-sd14 :parameters ()
  :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd14) (not (closed-sd14))))
 (:action ugly747ugly773ugly28ugly61ugly1ugly64close_sd9 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd9) (not (not-closed-sd9))))
 (:action ugly748ugly715ugly37ugly33ugly35ugly73close_sd11 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd11) (not (not-closed-sd11))))
 (:action ugly749ugly711ugly13ugly69ugly50ugly65open-sd15 :parameters ()
  :precondition
  (and (do-normal) (closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd15) (not (closed-sd15))))
 (:action ugly750ugly765ugly6ugly23ugly32ugly27open-sd12 :parameters ()
  :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd12) (not (closed-sd12))))
 (:action ugly751ugly762ugly31ugly58ugly31ugly58close_cb2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly752ugly735ugly30ugly76ugly13ugly69open-sd4 :parameters ()
  :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd4) (not (closed-sd4))))
 (:action ugly753ugly728ugly41ugly11ugly8ugly62open-sd2 :parameters ()
  :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd2) (not (closed-sd2))))
 (:action ugly754ugly739ugly29ugly71ugly5ugly29wait_cb2-condeff0-yes
  :parameters () :precondition (and (do-wait_cb2-condeffs) (closed-sd8))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly755ugly738ugly10ugly26ugly9ugly48wait_cb4-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd21))
  :effect (and (done-1)))
 (:action ugly756ugly730ugly54ugly37ugly33ugly35wait_cb2-condeff1-yes
  :parameters () :precondition (and (do-wait_cb2-condeffs) (closed-sd10))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly757ugly771ugly75ugly75ugly75ugly75wait_cb2-endof-condeffs
  :parameters () :precondition (and (do-wait_cb2-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly758ugly761ugly51ugly28ugly61ugly1wait_cb4-condeff0-yes
  :parameters () :precondition (and (do-wait_cb4-condeffs) (closed-sd18))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly759ugly760ugly38ugly17ugly20ugly25close_sd21-condeff0-yes
  :parameters () :precondition (and (do-close_sd21-condeffs) (closed-cb4))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly760ugly741ugly50ugly65ugly39ugly15close_sd19 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd19) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd19) (not (not-closed-sd19))))
 (:action ugly761ugly754ugly36ugly46ugly51ugly28close_sd7 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd7) (not (not-closed-sd7))))
 (:action ugly762ugly734ugly22ugly57ugly21ugly16open-cb2 :parameters ()
  :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly763ugly751ugly59ugly24ugly63ugly40wait_cb4-condeff1-yes
  :parameters () :precondition (and (do-wait_cb4-condeffs) (closed-sd21))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly764ugly779ugly7ugly49ugly72ugly43close_cb3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly765ugly709ugly19ugly54ugly37ugly33open-sd19 :parameters ()
  :precondition
  (and (do-normal) (closed-sd19) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd19) (not (closed-sd19))))
 (:action ugly766ugly729ugly44ugly19ugly54ugly37open-sd21 :parameters ()
  :precondition
  (and (do-normal) (closed-sd21) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd21) (not (closed-sd21))))
 (:action ugly767ugly746ugly66ugly68ugly41ugly11close_sd18-condeff0-yes
  :parameters () :precondition (and (do-close_sd18-condeffs) (closed-cb4))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly768ugly723ugly5ugly29ugly71ugly5close_cb4 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb4) (not-updated-cb4) (not (not-closed-cb4))
       (not (updated-cb4))))
 (:action ugly769ugly776ugly16ugly56ugly47ugly44close_sd10-endof-condeffs
  :parameters () :precondition (and (do-close_sd10-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))))
 (:action ugly770ugly705ugly49ugly72ugly43ugly30wait_cb1 :parameters ()
  :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not-closed-cb1) (updated-cb1) (not (closed-cb1))
       (not (not-updated-cb1))))
 (:action ugly771ugly778ugly39ugly15ugly6ugly23close_cb1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly772ugly721ugly45ugly74ugly7ugly49wait_cb2-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action ugly773ugly731ugly9ugly48ugly67ugly3close_sd13 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd13) (not (not-closed-sd13))))
 (:action ugly774ugly764ugly76ugly13ugly69ugly50wait_cb4-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd18))
  :effect (and (done-0)))
 (:action ugly775ugly745ugly33ugly35ugly73ugly59close_sd6 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly776ugly719ugly21ugly16ugly56ugly47open-sd10 :parameters ()
  :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd10) (not (closed-sd10))))
 (:action ugly777ugly717ugly74ugly7ugly49ugly72open-sd11 :parameters ()
  :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd11) (not (closed-sd11))))
 (:action ugly778ugly742ugly24ugly63ugly40ugly66wait_cb4-endof-condeffs
  :parameters () :precondition (and (do-wait_cb4-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-wait_cb4-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly779ugly710ugly60ugly53ugly18ugly36open-sd8 :parameters ()
  :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd8) (not (closed-sd8))))) 