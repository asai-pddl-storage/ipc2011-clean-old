
(define (domain openstacks-sequencedstrips-nonadl-nonnegated)
 (:requirements :typing :action-costs)
 (:predicates (made ?p - product) (includes ?o - order ?p - product)
  (not-made ?p - product) (stacks-avail ?s - count) (shipped ?o - order)
  (next-count ?s ?ns - count) (waiting ?o - order) (started ?o - order))
 (:types order product count)
 (:constants p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  p20 p21 p22 p23 p24 p25 - product o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13
  o14 o15 o16 o17 o18 o19 o20 o21 o22 o23 o24 o25 - order)
 (:functions (total-cost) - number)
 (:action ugly1433560ugly47ugly22ugly48ugly41ship-order-o9 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o9) (made p3) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o9)) (shipped o9) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433561ugly39ugly39ugly39ugly39ship-order-o12 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o12) (made p8) (made p19) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o12)) (shipped o12) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433562ugly9ugly45ugly20ugly28ship-order-o7 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o7) (made p20) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o7)) (shipped o7) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433563ugly6ugly2ugly37ugly12ship-order-o2 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o2) (made p2) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o2)) (shipped o2) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433564ugly46ugly49ugly42ugly6start-order :parameters
  (?o - order ?avail ?new-avail - count) :precondition
  (and (waiting ?o) (stacks-avail ?avail) (next-count ?new-avail ?avail))
  :effect
  (and (not (waiting ?o)) (started ?o) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433565ugly1ugly44ugly17ugly9ship-order-o18 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o18) (made p14) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o18)) (shipped o18) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433566ugly41ugly36ugly43ugly21ship-order-o6 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o6) (made p22) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o6)) (shipped o6) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433567ugly49ugly42ugly6ugly2ship-order-o10 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o10) (made p1) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o10)) (shipped o10) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433568ugly52ugly18ugly13ugly5ship-order-o4 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o4) (made p2) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o4)) (shipped o4) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433569ugly26ugly7ugly23ugly14ship-order-o11 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o11) (made p12) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o11)) (shipped o11) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433570ugly30ugly32ugly46ugly49ship-order-o15 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o15) (made p4) (made p15) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o15)) (shipped o15) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433571ugly50ugly50ugly50ugly50ship-order-o23 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o23) (made p14) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o23)) (shipped o23) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433572ugly43ugly21ugly33ugly4make-product-p6 :parameters ()
  :precondition (and (not-made p6) (started o5)) :effect
  (and (not (not-made p6)) (made p6)))
 (:action ugly1433573ugly28ugly34ugly52ugly18make-product-p11 :parameters ()
  :precondition (and (not-made p11) (started o13)) :effect
  (and (not (not-made p11)) (made p11)))
 (:action ugly1433574ugly5ugly31ugly16ugly11open-new-stack :parameters
  (?open ?new-open - count) :precondition
  (and (stacks-avail ?open) (next-count ?open ?new-open)) :effect
  (and (not (stacks-avail ?open)) (stacks-avail ?new-open)
       (increase (total-cost) 1)))
 (:action ugly1433575ugly32ugly46ugly49ugly42make-product-p4 :parameters ()
  :precondition (and (not-made p4) (started o3) (started o15)) :effect
  (and (not (not-made p4)) (made p4)))
 (:action ugly1433576ugly37ugly12ugly29ugly10ship-order-o8 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o8) (made p8) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o8)) (shipped o8) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433577ugly45ugly20ugly28ugly34ship-order-o25 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o25) (made p21) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o25)) (shipped o25) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433578ugly13ugly5ugly31ugly16make-product-p9 :parameters ()
  :precondition (and (not-made p9) (started o17) (started o21)) :effect
  (and (not (not-made p9)) (made p9)))
 (:action ugly1433579ugly42ugly6ugly2ugly37make-product-p10 :parameters ()
  :precondition (and (not-made p10) (started o14)) :effect
  (and (not (not-made p10)) (made p10)))
 (:action ugly1433580ugly16ugly11ugly1ugly44make-product-p15 :parameters ()
  :precondition (and (not-made p15) (started o15)) :effect
  (and (not (not-made p15)) (made p15)))
 (:action ugly1433581ugly22ugly48ugly41ugly36ship-order-o16 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o16) (made p5) (made p20) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o16)) (shipped o16) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433582ugly4ugly8ugly47ugly22ship-order-o21 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o21) (made p9) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o21)) (shipped o21) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433583ugly35ugly25ugly30ugly32ship-order-o19 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o19) (made p17) (made p21) (made p25) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o19)) (shipped o19) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433584ugly51ugly51ugly51ugly51ship-order-o24 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o24) (made p23) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o24)) (shipped o24) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433585ugly21ugly33ugly4ugly8ship-order-o20 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o20) (made p24) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o20)) (shipped o20) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433586ugly12ugly29ugly10ugly35make-product-p23 :parameters ()
  :precondition (and (not-made p23) (started o24)) :effect
  (and (not (not-made p23)) (made p23)))
 (:action ugly1433587ugly14ugly38ugly27ugly15make-product-p1 :parameters ()
  :precondition (and (not-made p1) (started o3) (started o10)) :effect
  (and (not (not-made p1)) (made p1)))
 (:action ugly1433588ugly36ugly43ugly21ugly33make-product-p2 :parameters ()
  :precondition (and (not-made p2) (started o2) (started o4)) :effect
  (and (not (not-made p2)) (made p2)))
 (:action ugly1433589ugly44ugly17ugly9ugly45make-product-p18 :parameters ()
  :precondition (and (not-made p18) (started o13) (started o14)) :effect
  (and (not (not-made p18)) (made p18)))
 (:action ugly1433590ugly34ugly52ugly18ugly13make-product-p3 :parameters ()
  :precondition (and (not-made p3) (started o9)) :effect
  (and (not (not-made p3)) (made p3)))
 (:action ugly1433591ugly20ugly28ugly34ugly52make-product-p16 :parameters ()
  :precondition (and (not-made p16) (started o5)) :effect
  (and (not (not-made p16)) (made p16)))
 (:action ugly1433592ugly23ugly14ugly38ugly27make-product-p13 :parameters ()
  :precondition (and (not-made p13) (started o3)) :effect
  (and (not (not-made p13)) (made p13)))
 (:action ugly1433593ugly25ugly30ugly32ugly46ship-order-o22 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o22) (made p22) (made p24) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o22)) (shipped o22) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433594ugly17ugly9ugly45ugly20ship-order-o1 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o1) (made p12) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o1)) (shipped o1) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433595ugly38ugly27ugly15ugly3ship-order-o13 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o13) (made p11) (made p14) (made p18) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o13)) (shipped o13) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433596ugly15ugly3ugly40ugly19make-product-p24 :parameters ()
  :precondition (and (not-made p24) (started o5) (started o20) (started o22))
  :effect (and (not (not-made p24)) (made p24)))
 (:action ugly1433597ugly48ugly41ugly36ugly43make-product-p19 :parameters ()
  :precondition (and (not-made p19) (started o12)) :effect
  (and (not (not-made p19)) (made p19)))
 (:action ugly1433598ugly18ugly13ugly5ugly31make-product-p14 :parameters ()
  :precondition (and (not-made p14) (started o13) (started o18) (started o23))
  :effect (and (not (not-made p14)) (made p14)))
 (:action ugly1433599ugly7ugly23ugly14ugly38make-product-p25 :parameters ()
  :precondition (and (not-made p25) (started o19)) :effect
  (and (not (not-made p25)) (made p25)))
 (:action ugly1433600ugly11ugly1ugly44ugly17make-product-p7 :parameters ()
  :precondition (and (not-made p7) (started o3)) :effect
  (and (not (not-made p7)) (made p7)))
 (:action ugly1433601ugly2ugly37ugly12ugly29make-product-p8 :parameters ()
  :precondition (and (not-made p8) (started o8) (started o12)) :effect
  (and (not (not-made p8)) (made p8)))
 (:action ugly1433602ugly29ugly10ugly35ugly25ship-order-o3 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o3) (made p1) (made p4) (made p7) (made p13)
       (stacks-avail ?avail) (next-count ?avail ?new-avail))
  :effect
  (and (not (started o3)) (shipped o3) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433603ugly3ugly40ugly19ugly26make-product-p5 :parameters ()
  :precondition (and (not-made p5) (started o16)) :effect
  (and (not (not-made p5)) (made p5)))
 (:action ugly1433604ugly31ugly16ugly11ugly1ship-order-o17 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o17) (made p9) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o17)) (shipped o17) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433605ugly8ugly47ugly22ugly48ship-order-o14 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o14) (made p10) (made p18) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o14)) (shipped o14) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433606ugly33ugly4ugly8ugly47make-product-p20 :parameters ()
  :precondition (and (not-made p20) (started o7) (started o16)) :effect
  (and (not (not-made p20)) (made p20)))
 (:action ugly1433607ugly27ugly15ugly3ugly40make-product-p17 :parameters ()
  :precondition (and (not-made p17) (started o19)) :effect
  (and (not (not-made p17)) (made p17)))
 (:action ugly1433608ugly40ugly19ugly26ugly7make-product-p21 :parameters ()
  :precondition (and (not-made p21) (started o19) (started o25)) :effect
  (and (not (not-made p21)) (made p21)))
 (:action ugly1433609ugly10ugly35ugly25ugly30ship-order-o5 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o5) (made p6) (made p16) (made p24) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o5)) (shipped o5) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433610ugly24ugly24ugly24ugly24make-product-p22 :parameters ()
  :precondition (and (not-made p22) (started o6) (started o22)) :effect
  (and (not (not-made p22)) (made p22)))
 (:action ugly1433611ugly19ugly26ugly7ugly23make-product-p12 :parameters ()
  :precondition (and (not-made p12) (started o1) (started o11)) :effect
  (and (not (not-made p12)) (made p12)))) 