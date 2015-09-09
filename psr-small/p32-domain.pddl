
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (not-closed-cb2) (closed-sd9) (closed-sd7) (not-closed-sd12)
  (do-close_sd18-condeffs) (not-closed-sd13) (not-closed-sd16)
  (not-closed-sd14) (closed-sd12) (updated-cb4) (not-closed-sd2) (closed-sd10)
  (not-closed-sd9) (closed-sd1) (not-closed-sd5) (do-wait_cb4-condeffs)
  (not-closed-sd4) (do-wait_cb2-condeffs) (closed-sd6) (closed-sd4)
  (not-closed-sd7) (not-closed-cb4) (closed-sd17) (not-closed-sd20)
  (not-updated-cb4) (closed-sd19) (not-updated-cb2) (updated-cb3)
  (not-closed-sd21) (closed-sd11) (not-closed-sd8) (do-close_sd21-condeffs)
  (closed-sd13) (not-closed-sd6) (closed-cb3) (closed-sd15) (closed-sd8)
  (closed-sd5) (do-normal) (not-closed-sd17) (closed-sd14) (not-closed-cb3)
  (updated-cb1) (do-close_sd8-condeffs) (do-close_sd10-condeffs)
  (not-updated-cb3) (closed-cb1) (closed-sd16) (not-closed-sd3) (closed-sd21)
  (closed-sd3) (closed-sd2) (not-closed-sd10) (not-closed-cb1) (closed-cb4)
  (not-closed-sd19) (not-closed-sd1) (closed-sd18) (done-1) (done-0)
  (not-closed-sd18) (closed-sd20) (closed-cb2) (not-closed-sd11) (updated-cb2)
  (not-updated-cb1) (not-closed-sd15))
 (:action ugly1ugly64close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd9) (not (not-closed-sd9))))
 (:action ugly2ugly10close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly3ugly14open-sd20 :parameters () :precondition
  (and (do-normal) (closed-sd20) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd20) (not (closed-sd20))))
 (:action ugly4ugly55close_sd8-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd8-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly5ugly29wait_cb2-condeff0-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd8)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly6ugly23close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly7ugly49wait_cb2-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd8)) :effect (and (done-0)))
 (:action ugly8ugly62open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly9ugly48wait_cb4-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd21)) :effect (and (done-1)))
 (:action ugly10ugly26close_sd18-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd18-condeffs) (not-closed-cb4)) :effect (and (done-0)))
 (:action ugly11ugly8close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly12ugly45wait_cb2-condeff1-no-0 :parameters () :precondition
  (and (do-wait_cb2-condeffs) (not-closed-sd10)) :effect (and (done-1)))
 (:action ugly13ugly69open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly14ugly34open-sd16 :parameters () :precondition
  (and (do-normal) (closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd16) (not (closed-sd16))))
 (:action ugly15ugly6close_sd8-endof-condeffs :parameters () :precondition
  (and (do-close_sd8-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))))
 (:action ugly16ugly56open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly17ugly20close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly18ugly36open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly19ugly54open-sd17 :parameters () :precondition
  (and (do-normal) (closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd17) (not (closed-sd17))))
 (:action ugly20ugly25close_sd21-condeff0-yes :parameters () :precondition
  (and (do-close_sd21-condeffs) (closed-cb4)) :effect
  (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly21ugly16open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly22ugly57close_sd8-condeff0-yes :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly23ugly32close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly24ugly63open-sd14 :parameters () :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd14) (not (closed-sd14))))
 (:action ugly25ugly2close_sd18-endof-condeffs :parameters () :precondition
  (and (do-close_sd18-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd18-condeffs)) (not (done-0))))
 (:action ugly26ugly9open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly27ugly42wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly28ugly61close_sd21 :parameters () :precondition
  (and (do-normal) (not-closed-sd21) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd21-condeffs) (closed-sd21)
       (not (not-closed-sd21))))
 (:action ugly29ugly71close_sd20 :parameters () :precondition
  (and (do-normal) (not-closed-sd20) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd20) (not (not-closed-sd20))))
 (:action ugly30ugly76close_sd14 :parameters () :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd14) (not (not-closed-sd14))))
 (:action ugly31ugly58close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly32ugly27open-sd12 :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd12) (not (closed-sd12))))
 (:action ugly33ugly35wait_cb2-condeff1-yes :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd10)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly34ugly38close_sd10-condeff0-yes :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly35ugly73close_sd11 :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd11) (not (not-closed-sd11))))
 (:action ugly36ugly46open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly37ugly33open-sd19 :parameters () :precondition
  (and (do-normal) (closed-sd19) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd19) (not (closed-sd19))))
 (:action ugly38ugly17close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly39ugly15close_sd19 :parameters () :precondition
  (and (do-normal) (not-closed-sd19) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd19) (not (not-closed-sd19))))
 (:action ugly40ugly66wait_cb4-endof-condeffs :parameters () :precondition
  (and (do-wait_cb4-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb4-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly41ugly11close_sd18-condeff0-yes :parameters () :precondition
  (and (do-close_sd18-condeffs) (closed-cb4)) :effect
  (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly42ugly70close_sd21-endof-condeffs :parameters () :precondition
  (and (do-close_sd21-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd21-condeffs)) (not (done-0))))
 (:action ugly43ugly30wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not-closed-cb1) (updated-cb1) (not (closed-cb1))
       (not (not-updated-cb1))))
 (:action ugly44ugly19open-cb4 :parameters () :precondition
  (and (do-normal) (closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-cb4) (not (closed-cb4))))
 (:action ugly45ugly74close_sd18 :parameters () :precondition
  (and (do-normal) (not-closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd18-condeffs) (closed-sd18)
       (not (not-closed-sd18))))
 (:action ugly46ugly51close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd1) (not (not-closed-sd1))))
 (:action ugly47ugly44close_sd10-endof-condeffs :parameters () :precondition
  (and (do-close_sd10-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))))
 (:action ugly48ugly67close_sd21-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd21-condeffs) (not-closed-cb4)) :effect (and (done-0)))
 (:action ugly49ugly72open-sd11 :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd11) (not (closed-sd11))))
 (:action ugly50ugly65open-sd15 :parameters () :precondition
  (and (do-normal) (closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd15) (not (closed-sd15))))
 (:action ugly51ugly28close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd7) (not (not-closed-sd7))))
 (:action ugly52ugly12open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly53ugly18open-sd18 :parameters () :precondition
  (and (do-normal) (closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd18) (not (closed-sd18))))
 (:action ugly54ugly37open-sd21 :parameters () :precondition
  (and (do-normal) (closed-sd21) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd21) (not (closed-sd21))))
 (:action ugly55ugly22open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly56ugly47open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly57ugly21close_sd10 :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action ugly58ugly31close_sd16 :parameters () :precondition
  (and (do-normal) (not-closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd16) (not (not-closed-sd16))))
 (:action ugly59ugly24wait_cb4 :parameters () :precondition
  (and (do-normal) (not-updated-cb4)) :effect
  (and (not (do-normal)) (do-wait_cb4-condeffs) (updated-cb4)
       (not (not-updated-cb4))))
 (:action ugly60ugly53close_sd10-condeff0-no-0 :parameters () :precondition
  (and (do-close_sd10-condeffs) (not-closed-cb2)) :effect (and (done-0)))
 (:action ugly61ugly1wait_cb4-condeff0-yes :parameters () :precondition
  (and (do-wait_cb4-condeffs) (closed-sd18)) :effect
  (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly62ugly52close_sd15 :parameters () :precondition
  (and (do-normal) (not-closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd15) (not (not-closed-sd15))))
 (:action ugly63ugly40wait_cb4-condeff1-yes :parameters () :precondition
  (and (do-wait_cb4-condeffs) (closed-sd21)) :effect
  (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly64ugly60open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly65ugly39close_sd12 :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd12) (not (not-closed-sd12))))
 (:action ugly66ugly68open-sd13 :parameters () :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd13) (not (closed-sd13))))
 (:action ugly67ugly3close_sd13 :parameters () :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd13) (not (not-closed-sd13))))
 (:action ugly68ugly41close_sd17 :parameters () :precondition
  (and (do-normal) (not-closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd17) (not (not-closed-sd17))))
 (:action ugly69ugly50wait_cb4-condeff0-no-0 :parameters () :precondition
  (and (do-wait_cb4-condeffs) (not-closed-sd18)) :effect (and (done-0)))
 (:action ugly70ugly4open-cb3 :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly71ugly5close_cb4 :parameters () :precondition
  (and (do-normal) (not-closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb4) (not-updated-cb4) (not (not-closed-cb4))
       (not (updated-cb4))))
 (:action ugly72ugly43close_cb3 :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly73ugly59close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly74ugly7open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly75ugly75wait_cb2-endof-condeffs :parameters () :precondition
  (and (do-wait_cb2-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly76ugly13wait_cb3 :parameters () :precondition
  (and (do-normal) (not-updated-cb3)) :effect
  (and (not-closed-cb3) (updated-cb3) (not (closed-cb3))
       (not (not-updated-cb3))))) 