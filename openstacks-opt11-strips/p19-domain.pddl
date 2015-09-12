
(define (domain openstacks-sequencedstrips-nonadl-nonnegated)
 (:requirements :typing :action-costs)
 (:predicates (stacks-avail ?s - count) (includes ?o - order ?p - product)
  (waiting ?o - order) (started ?o - order) (made ?p - product)
  (next-count ?s ?ns - count) (not-made ?p - product) (shipped ?o - order))
 (:types order product count)
 (:constants p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  p20 p21 p22 p23 p24 p25 p26 p27 p28 - product o1 o2 o3 o4 o5 o6 o7 o8 o9 o10
  o11 o12 o13 o14 o15 o16 o17 o18 o19 o20 o21 o22 o23 o24 o25 o26 o27 o28 -
  order)
 (:functions (total-cost) - number)
 (:action ugly1433718ugly43ugly19ugly14ugly32make-product-p15 :parameters ()
  :precondition (and (not-made p15) (started o8) (started o13) (started o28))
  :effect (and (not (not-made p15)) (made p15)))
 (:action ugly1433719ugly31ugly33ugly4ugly8ship-order-o17 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o17) (made p16) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o17)) (shipped o17) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433720ugly17ugly9ugly45ugly49ship-order-o20 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o20) (made p11) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o20)) (shipped o20) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433721ugly20ugly27ugly3ugly40ship-order-o12 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o12) (made p8) (made p12) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o12)) (shipped o12) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433722ugly40ugly42ugly58ugly52make-product-p18 :parameters ()
  :precondition (and (not-made p18) (started o26)) :effect
  (and (not (not-made p18)) (made p18)))
 (:action ugly1433723ugly9ugly45ugly49ugly50make-product-p9 :parameters ()
  :precondition (and (not-made p9) (started o25)) :effect
  (and (not (not-made p9)) (made p9)))
 (:action ugly1433724ugly2ugly37ugly28ugly22ship-order-o4 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o4) (made p12) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o4)) (shipped o4) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433725ugly21ugly12ugly29ugly56make-product-p3 :parameters ()
  :precondition (and (not-made p3) (started o10) (started o19)) :effect
  (and (not (not-made p3)) (made p3)))
 (:action ugly1433726ugly15ugly39ugly18ugly46make-product-p11 :parameters ()
  :precondition (and (not-made p11) (started o20) (started o22) (started o24))
  :effect (and (not (not-made p11)) (made p11)))
 (:action ugly1433727ugly49ugly50ugly11ugly1ship-order-o14 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o14) (made p12) (made p21) (made p22) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o14)) (shipped o14) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433728ugly4ugly8ugly47ugly26make-product-p5 :parameters ()
  :precondition (and (not-made p5) (started o27)) :effect
  (and (not (not-made p5)) (made p5)))
 (:action ugly1433729ugly12ugly29ugly56ugly5ship-order-o1 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o1) (made p19) (made p24) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o1)) (shipped o1) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433730ugly14ugly32ugly17ugly9ship-order-o15 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o15) (made p13) (made p25) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o15)) (shipped o15) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433731ugly11ugly1ugly44ugly6start-order :parameters
  (?o - order ?avail ?new-avail - count) :precondition
  (and (waiting ?o) (stacks-avail ?avail) (next-count ?new-avail ?avail))
  :effect
  (and (not (waiting ?o)) (started ?o) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433732ugly44ugly6ugly2ugly37make-product-p26 :parameters ()
  :precondition (and (not-made p26) (started o3)) :effect
  (and (not (not-made p26)) (made p26)))
 (:action ugly1433733ugly56ugly5ugly31ugly33make-product-p2 :parameters ()
  :precondition (and (not-made p2) (started o6)) :effect
  (and (not (not-made p2)) (made p2)))
 (:action ugly1433734ugly55ugly15ugly39ugly18ship-order-o16 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o16) (made p8) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o16)) (shipped o16) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433735ugly46ugly13ugly55ugly15ship-order-o9 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o9) (made p1) (made p6) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o9)) (shipped o9) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433736ugly47ugly26ugly7ugly23ship-order-o8 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o8) (made p7) (made p15) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o8)) (shipped o8) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433737ugly6ugly2ugly37ugly28make-product-p20 :parameters ()
  :precondition (and (not-made p20) (started o18)) :effect
  (and (not (not-made p20)) (made p20)))
 (:action ugly1433738ugly25ugly30ugly36ugly21make-product-p10 :parameters ()
  :precondition (and (not-made p10) (started o18)) :effect
  (and (not (not-made p10)) (made p10)))
 (:action ugly1433739ugly19ugly14ugly32ugly17make-product-p7 :parameters ()
  :precondition (and (not-made p7) (started o8)) :effect
  (and (not (not-made p7)) (made p7)))
 (:action ugly1433740ugly22ugly34ugly48ugly16ship-order-o11 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o11) (made p13) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o11)) (shipped o11) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433741ugly27ugly3ugly40ugly42ship-order-o28 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o28) (made p15) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o28)) (shipped o28) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433742ugly51ugly54ugly10ugly35ship-order-o23 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o23) (made p22) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o23)) (shipped o23) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433743ugly32ugly17ugly9ugly45ship-order-o19 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o19) (made p3) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o19)) (shipped o19) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433744ugly29ugly56ugly5ugly31ship-order-o3 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o3) (made p17) (made p22) (made p26) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o3)) (shipped o3) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433745ugly18ugly46ugly13ugly55make-product-p13 :parameters ()
  :precondition (and (not-made p13) (started o11) (started o15)) :effect
  (and (not (not-made p13)) (made p13)))
 (:action ugly1433746ugly24ugly24ugly24ugly24make-product-p22 :parameters ()
  :precondition (and (not-made p22) (started o3) (started o14) (started o23))
  :effect (and (not (not-made p22)) (made p22)))
 (:action ugly1433747ugly33ugly4ugly8ugly47make-product-p24 :parameters ()
  :precondition (and (not-made p24) (started o1)) :effect
  (and (not (not-made p24)) (made p24)))
 (:action ugly1433748ugly7ugly23ugly38ugly25make-product-p28 :parameters ()
  :precondition (and (not-made p28) (started o24)) :effect
  (and (not (not-made p28)) (made p28)))
 (:action ugly1433749ugly57ugly43ugly19ugly14ship-order-o2 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o2) (made p14) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o2)) (shipped o2) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433750ugly26ugly7ugly23ugly38make-product-p23 :parameters ()
  :precondition (and (not-made p23) (started o5)) :effect
  (and (not (not-made p23)) (made p23)))
 (:action ugly1433751ugly13ugly55ugly15ugly39make-product-p16 :parameters ()
  :precondition (and (not-made p16) (started o17) (started o22)) :effect
  (and (not (not-made p16)) (made p16)))
 (:action ugly1433752ugly38ugly25ugly30ugly36make-product-p19 :parameters ()
  :precondition (and (not-made p19) (started o1) (started o24)) :effect
  (and (not (not-made p19)) (made p19)))
 (:action ugly1433753ugly53ugly51ugly54ugly10ship-order-o5 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o5) (made p4) (made p23) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o5)) (shipped o5) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433754ugly1ugly44ugly6ugly2ship-order-o7 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o7) (made p1) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o7)) (shipped o7) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433755ugly30ugly36ugly21ugly12make-product-p27 :parameters ()
  :precondition (and (not-made p27) (started o26)) :effect
  (and (not (not-made p27)) (made p27)))
 (:action ugly1433756ugly23ugly38ugly25ugly30ship-order-o6 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o6) (made p2) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o6)) (shipped o6) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433757ugly8ugly47ugly26ugly7make-product-p21 :parameters ()
  :precondition (and (not-made p21) (started o14) (started o21)) :effect
  (and (not (not-made p21)) (made p21)))
 (:action ugly1433758ugly58ugly52ugly20ugly27make-product-p1 :parameters ()
  :precondition (and (not-made p1) (started o7) (started o9)) :effect
  (and (not (not-made p1)) (made p1)))
 (:action ugly1433759ugly48ugly16ugly41ugly57ship-order-o13 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o13) (made p8) (made p15) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o13)) (shipped o13) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433760ugly50ugly11ugly1ugly44make-product-p4 :parameters ()
  :precondition (and (not-made p4) (started o5)) :effect
  (and (not (not-made p4)) (made p4)))
 (:action ugly1433761ugly34ugly48ugly16ugly41ship-order-o27 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o27) (made p5) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o27)) (shipped o27) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433762ugly39ugly18ugly46ugly13ship-order-o25 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o25) (made p6) (made p9) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o25)) (shipped o25) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433763ugly41ugly57ugly43ugly19make-product-p12 :parameters ()
  :precondition
  (and (not-made p12) (started o4) (started o12) (started o14) (started o22)
       (started o24))
  :effect (and (not (not-made p12)) (made p12)))
 (:action ugly1433764ugly10ugly35ugly53ugly51ship-order-o24 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o24) (made p11) (made p12) (made p19) (made p28)
       (stacks-avail ?avail) (next-count ?avail ?new-avail))
  :effect
  (and (not (started o24)) (shipped o24) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433765ugly28ugly22ugly34ugly48make-product-p14 :parameters ()
  :precondition (and (not-made p14) (started o2)) :effect
  (and (not (not-made p14)) (made p14)))
 (:action ugly1433766ugly16ugly41ugly57ugly43make-product-p17 :parameters ()
  :precondition (and (not-made p17) (started o3)) :effect
  (and (not (not-made p17)) (made p17)))
 (:action ugly1433767ugly54ugly10ugly35ugly53ship-order-o21 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o21) (made p21) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o21)) (shipped o21) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433768ugly52ugly20ugly27ugly3ship-order-o10 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o10) (made p3) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o10)) (shipped o10) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433769ugly3ugly40ugly42ugly58ship-order-o22 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o22) (made p11) (made p12) (made p16) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o22)) (shipped o22) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433770ugly35ugly53ugly51ugly54make-product-p8 :parameters ()
  :precondition (and (not-made p8) (started o12) (started o13) (started o16))
  :effect (and (not (not-made p8)) (made p8)))
 (:action ugly1433771ugly37ugly28ugly22ugly34ship-order-o18 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o18) (made p10) (made p20) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o18)) (shipped o18) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433772ugly36ugly21ugly12ugly29ship-order-o26 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o26) (made p18) (made p27) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o26)) (shipped o26) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433773ugly42ugly58ugly52ugly20make-product-p25 :parameters ()
  :precondition (and (not-made p25) (started o15)) :effect
  (and (not (not-made p25)) (made p25)))
 (:action ugly1433774ugly45ugly49ugly50ugly11open-new-stack :parameters
  (?open ?new-open - count) :precondition
  (and (stacks-avail ?open) (next-count ?open ?new-open)) :effect
  (and (not (stacks-avail ?open)) (stacks-avail ?new-open)
       (increase (total-cost) 1)))
 (:action ugly1433775ugly5ugly31ugly33ugly4make-product-p6 :parameters ()
  :precondition (and (not-made p6) (started o9) (started o25)) :effect
  (and (not (not-made p6)) (made p6)))) 