
(define (domain openstacks-sequencedstrips-nonadl-nonnegated)
 (:requirements :typing :action-costs)
 (:predicates (waiting ?o - order) (includes ?o - order ?p - product)
  (not-made ?p - product) (stacks-avail ?s - count) (next-count ?s ?ns - count)
  (started ?o - order) (shipped ?o - order) (made ?p - product))
 (:types order product count)
 (:constants p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  p20 p21 p22 p23 p24 p25 p26 - product o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12
  o13 o14 o15 o16 o17 o18 o19 o20 o21 o22 o23 o24 o25 o26 - order)
 (:functions (total-cost) - number)
 (:action ugly1ugly44ugly53ugly25make-product-p20 :parameters () :precondition
  (and (not-made p20) (started o16) (started o17)) :effect
  (and (not (not-made p20)) (made p20)))
 (:action ugly2ugly37ugly16ugly11open-new-stack :parameters
  (?open ?new-open - count) :precondition
  (and (stacks-avail ?open) (next-count ?open ?new-open)) :effect
  (and (not (stacks-avail ?open)) (stacks-avail ?new-open)
       (increase (total-cost) 1)))
 (:action ugly3ugly40ugly14ugly38make-product-p13 :parameters () :precondition
  (and (not-made p13) (started o1) (started o16) (started o19)) :effect
  (and (not (not-made p13)) (made p13)))
 (:action ugly4ugly8ugly47ugly24make-product-p10 :parameters () :precondition
  (and (not-made p10) (started o5)) :effect
  (and (not (not-made p10)) (made p10)))
 (:action ugly5ugly31ugly17ugly9ship-order-o17 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o17) (made p8) (made p17) (made p20) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o17)) (shipped o17) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly6ugly2ugly37ugly16make-product-p9 :parameters () :precondition
  (and (not-made p9) (started o11) (started o13) (started o14)) :effect
  (and (not (not-made p9)) (made p9)))
 (:action ugly7ugly23ugly7ugly23make-product-p5 :parameters () :precondition
  (and (not-made p5) (started o8)) :effect (and (not (not-made p5)) (made p5)))
 (:action ugly8ugly47ugly24ugly12ship-order-o1 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o1) (made p11) (made p13) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o1)) (shipped o1) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly9ugly45ugly36ugly20make-product-p26 :parameters () :precondition
  (and (not-made p26) (started o21)) :effect
  (and (not (not-made p26)) (made p26)))
 (:action ugly10ugly35ugly32ugly46ship-order-o13 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o13) (made p2) (made p9) (made p12) (made p14) (made p18)
       (made p21) (stacks-avail ?avail) (next-count ?avail ?new-avail))
  :effect
  (and (not (started o13)) (shipped o13) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly11ugly1ugly44ugly53make-product-p23 :parameters () :precondition
  (and (not-made p23) (started o10)) :effect
  (and (not (not-made p23)) (made p23)))
 (:action ugly12ugly29ugly18ugly13make-product-p3 :parameters () :precondition
  (and (not-made p3) (started o15)) :effect
  (and (not (not-made p3)) (made p3)))
 (:action ugly13ugly5ugly31ugly17make-product-p7 :parameters () :precondition
  (and (not-made p7) (started o15) (started o26)) :effect
  (and (not (not-made p7)) (made p7)))
 (:action ugly14ugly38ugly15ugly3ship-order-o12 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o12) (made p4) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o12)) (shipped o12) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly15ugly3ugly40ugly14ship-order-o10 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o10) (made p14) (made p23) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o10)) (shipped o10) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly16ugly11ugly1ugly44ship-order-o25 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o25) (made p4) (made p12) (made p14) (made p15)
       (stacks-avail ?avail) (next-count ?avail ?new-avail))
  :effect
  (and (not (started o25)) (shipped o25) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly17ugly9ugly45ugly36make-product-p18 :parameters () :precondition
  (and (not-made p18) (started o13)) :effect
  (and (not (not-made p18)) (made p18)))
 (:action ugly18ugly13ugly5ugly31make-product-p15 :parameters () :precondition
  (and (not-made p15) (started o16) (started o20) (started o25)) :effect
  (and (not (not-made p15)) (made p15)))
 (:action ugly19ugly26ugly39ugly19make-product-p24 :parameters () :precondition
  (and (not-made p24) (started o9)) :effect
  (and (not (not-made p24)) (made p24)))
 (:action ugly20ugly28ugly34ugly54ship-order-o14 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o14) (made p9) (made p16) (made p19) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o14)) (shipped o14) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly21ugly33ugly51ugly48make-product-p25 :parameters () :precondition
  (and (not-made p25) (started o7) (started o9)) :effect
  (and (not (not-made p25)) (made p25)))
 (:action ugly22ugly6ugly2ugly37make-product-p14 :parameters () :precondition
  (and (not-made p14) (started o10) (started o13) (started o25)) :effect
  (and (not (not-made p14)) (made p14)))
 (:action ugly23ugly7ugly23ugly7make-product-p21 :parameters () :precondition
  (and (not-made p21) (started o4) (started o7) (started o13)) :effect
  (and (not (not-made p21)) (made p21)))
 (:action ugly24ugly12ugly29ugly18make-product-p11 :parameters () :precondition
  (and (not-made p11) (started o1)) :effect
  (and (not (not-made p11)) (made p11)))
 (:action ugly25ugly22ugly6ugly2ship-order-o9 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o9) (made p24) (made p25) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o9)) (shipped o9) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly26ugly39ugly19ugly26ship-order-o11 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o11) (made p9) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o11)) (shipped o11) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly27ugly21ugly33ugly51ship-order-o20 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o20) (made p15) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o20)) (shipped o20) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly28ugly34ugly54ugly42make-product-p8 :parameters () :precondition
  (and (not-made p8) (started o3) (started o17)) :effect
  (and (not (not-made p8)) (made p8)))
 (:action ugly29ugly18ugly13ugly5ship-order-o3 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o3) (made p8) (made p12) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o3)) (shipped o3) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly30ugly43ugly4ugly8ship-order-o19 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o19) (made p13) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o19)) (shipped o19) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly31ugly17ugly9ugly45ship-order-o8 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o8) (made p5) (made p6) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o8)) (shipped o8) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly32ugly46ugly41ugly30ship-order-o15 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o15) (made p3) (made p7) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o15)) (shipped o15) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly33ugly51ugly48ugly27make-product-p19 :parameters () :precondition
  (and (not-made p19) (started o14) (started o18) (started o21)) :effect
  (and (not (not-made p19)) (made p19)))
 (:action ugly34ugly54ugly42ugly10ship-order-o7 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o7) (made p1) (made p21) (made p25) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o7)) (shipped o7) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly35ugly32ugly46ugly41ship-order-o2 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o2) (made p2) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o2)) (shipped o2) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly36ugly20ugly28ugly34ship-order-o26 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o26) (made p7) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o26)) (shipped o26) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly37ugly16ugly11ugly1ship-order-o16 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o16) (made p13) (made p15) (made p17) (made p20) (made p22)
       (stacks-avail ?avail) (next-count ?avail ?new-avail))
  :effect
  (and (not (started o16)) (shipped o16) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly38ugly15ugly3ugly40make-product-p12 :parameters () :precondition
  (and (not-made p12) (started o3) (started o13) (started o25)) :effect
  (and (not (not-made p12)) (made p12)))
 (:action ugly39ugly19ugly26ugly39make-product-p17 :parameters () :precondition
  (and (not-made p17) (started o16) (started o17) (started o18)) :effect
  (and (not (not-made p17)) (made p17)))
 (:action ugly40ugly14ugly38ugly15make-product-p1 :parameters () :precondition
  (and (not-made p1) (started o7)) :effect (and (not (not-made p1)) (made p1)))
 (:action ugly41ugly30ugly43ugly4make-product-p6 :parameters () :precondition
  (and (not-made p6) (started o6) (started o8)) :effect
  (and (not (not-made p6)) (made p6)))
 (:action ugly42ugly10ugly35ugly32ship-order-o18 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o18) (made p17) (made p19) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o18)) (shipped o18) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly43ugly4ugly8ugly47make-product-p22 :parameters () :precondition
  (and (not-made p22) (started o16) (started o24)) :effect
  (and (not (not-made p22)) (made p22)))
 (:action ugly44ugly53ugly25ugly22make-product-p4 :parameters () :precondition
  (and (not-made p4) (started o12) (started o23) (started o25)) :effect
  (and (not (not-made p4)) (made p4)))
 (:action ugly45ugly36ugly20ugly28ship-order-o6 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o6) (made p6) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o6)) (shipped o6) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly46ugly41ugly30ugly43make-product-p2 :parameters () :precondition
  (and (not-made p2) (started o2) (started o13)) :effect
  (and (not (not-made p2)) (made p2)))
 (:action ugly47ugly24ugly12ugly29make-product-p16 :parameters () :precondition
  (and (not-made p16) (started o14) (started o22)) :effect
  (and (not (not-made p16)) (made p16)))
 (:action ugly48ugly27ugly21ugly33ship-order-o23 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o23) (made p4) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o23)) (shipped o23) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly49ugly50ugly49ugly50ship-order-o21 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o21) (made p19) (made p26) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o21)) (shipped o21) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly50ugly49ugly50ugly49ship-order-o22 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o22) (made p16) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o22)) (shipped o22) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly51ugly48ugly27ugly21ship-order-o5 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o5) (made p10) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o5)) (shipped o5) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly52ugly52ugly52ugly52ship-order-o24 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o24) (made p22) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o24)) (shipped o24) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly53ugly25ugly22ugly6start-order :parameters
  (?o - order ?avail ?new-avail - count) :precondition
  (and (waiting ?o) (stacks-avail ?avail) (next-count ?new-avail ?avail))
  :effect
  (and (not (waiting ?o)) (started ?o) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly54ugly42ugly10ugly35ship-order-o4 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o4) (made p21) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o4)) (shipped o4) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))) 