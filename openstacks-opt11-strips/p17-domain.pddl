
(define (domain openstacks-sequencedstrips-nonadl-nonnegated)
 (:requirements :typing :action-costs)
 (:predicates (waiting ?o - order) (includes ?o - order ?p - product)
  (not-made ?p - product) (stacks-avail ?s - count) (next-count ?s ?ns - count)
  (started ?o - order) (shipped ?o - order) (made ?p - product))
 (:types order product count)
 (:constants p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  p20 p21 p22 p23 p24 - product o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14
  o15 o16 o17 o18 o19 o20 o21 o22 o23 o24 - order)
 (:functions (total-cost) - number)
 (:action ugly1ugly44ugly14ugly38make-product-p24 :parameters () :precondition
  (and (not-made p24) (started o13)) :effect
  (and (not (not-made p24)) (made p24)))
 (:action ugly2ugly37ugly25ugly19ship-order-o10 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o10) (made p11) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o10)) (shipped o10) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly3ugly40ugly42ugly16make-product-p9 :parameters () :precondition
  (and (not-made p9) (started o7)) :effect (and (not (not-made p9)) (made p9)))
 (:action ugly4ugly8ugly47ugly7make-product-p21 :parameters () :precondition
  (and (not-made p21) (started o3) (started o7) (started o13)) :effect
  (and (not (not-made p21)) (made p21)))
 (:action ugly5ugly31ugly28ugly43ship-order-o7 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o7) (made p9) (made p18) (made p21) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o7)) (shipped o7) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly6ugly2ugly37ugly25make-product-p17 :parameters () :precondition
  (and (not-made p17) (started o18)) :effect
  (and (not (not-made p17)) (made p17)))
 (:action ugly7ugly23ugly32ugly17make-product-p7 :parameters () :precondition
  (and (not-made p7) (started o2)) :effect (and (not (not-made p7)) (made p7)))
 (:action ugly8ugly47ugly7ugly23ship-order-o6 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o6) (made p2) (made p3) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o6)) (shipped o6) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly9ugly45ugly4ugly8ship-order-o21 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o21) (made p1) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o21)) (shipped o21) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly10ugly35ugly24ugly6start-order :parameters
  (?o - order ?avail ?new-avail - count) :precondition
  (and (waiting ?o) (stacks-avail ?avail) (next-count ?new-avail ?avail))
  :effect
  (and (not (waiting ?o)) (started ?o) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly11ugly1ugly44ugly14ship-order-o12 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o12) (made p5) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o12)) (shipped o12) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly12ugly29ugly22ugly12ship-order-o3 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o3) (made p21) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o3)) (shipped o3) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly13ugly5ugly31ugly28ship-order-o17 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o17) (made p20) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o17)) (shipped o17) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly14ugly38ugly26ugly34make-product-p13 :parameters () :precondition
  (and (not-made p13) (started o1) (started o4) (started o19)) :effect
  (and (not (not-made p13)) (made p13)))
 (:action ugly15ugly3ugly40ugly42make-product-p14 :parameters () :precondition
  (and (not-made p14) (started o4) (started o22)) :effect
  (and (not (not-made p14)) (made p14)))
 (:action ugly16ugly11ugly1ugly44make-product-p12 :parameters () :precondition
  (and (not-made p12) (started o9) (started o11) (started o22)) :effect
  (and (not (not-made p12)) (made p12)))
 (:action ugly17ugly9ugly45ugly4make-product-p6 :parameters () :precondition
  (and (not-made p6) (started o2)) :effect (and (not (not-made p6)) (made p6)))
 (:action ugly18ugly13ugly5ugly31ship-order-o2 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o2) (made p6) (made p7) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o2)) (shipped o2) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly19ugly36ugly49ugly20ship-order-o20 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o20) (made p10) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o20)) (shipped o20) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly20ugly46ugly50ugly41ship-order-o22 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o22) (made p8) (made p12) (made p14) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o22)) (shipped o22) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly21ugly10ugly35ugly24make-product-p4 :parameters () :precondition
  (and (not-made p4) (started o5) (started o16)) :effect
  (and (not (not-made p4)) (made p4)))
 (:action ugly22ugly12ugly29ugly22make-product-p10 :parameters () :precondition
  (and (not-made p10) (started o1) (started o20)) :effect
  (and (not (not-made p10)) (made p10)))
 (:action ugly23ugly32ugly17ugly9ship-order-o19 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o19) (made p13) (made p18) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o19)) (shipped o19) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly24ugly6ugly2ugly37make-product-p23 :parameters () :precondition
  (and (not-made p23) (started o14)) :effect
  (and (not (not-made p23)) (made p23)))
 (:action ugly25ugly19ugly36ugly49make-product-p18 :parameters () :precondition
  (and (not-made p18) (started o7) (started o9) (started o19)) :effect
  (and (not (not-made p18)) (made p18)))
 (:action ugly26ugly34ugly15ugly3ship-order-o14 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o14) (made p23) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o14)) (shipped o14) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly27ugly39ugly18ugly13make-product-p3 :parameters () :precondition
  (and (not-made p3) (started o6)) :effect (and (not (not-made p3)) (made p3)))
 (:action ugly28ugly43ugly33ugly27ship-order-o13 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o13) (made p19) (made p21) (made p24) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o13)) (shipped o13) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly29ugly22ugly12ugly29make-product-p20 :parameters () :precondition
  (and (not-made p20) (started o17)) :effect
  (and (not (not-made p20)) (made p20)))
 (:action ugly30ugly21ugly10ugly35make-product-p22 :parameters () :precondition
  (and (not-made p22) (started o16)) :effect
  (and (not (not-made p22)) (made p22)))
 (:action ugly31ugly28ugly43ugly33ship-order-o1 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o1) (made p10) (made p13) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o1)) (shipped o1) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly32ugly17ugly9ugly45make-product-p2 :parameters () :precondition
  (and (not-made p2) (started o6)) :effect (and (not (not-made p2)) (made p2)))
 (:action ugly33ugly27ugly39ugly18make-product-p11 :parameters () :precondition
  (and (not-made p11) (started o10)) :effect
  (and (not (not-made p11)) (made p11)))
 (:action ugly34ugly15ugly3ugly40ship-order-o16 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o16) (made p4) (made p22) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o16)) (shipped o16) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly35ugly24ugly6ugly2ship-order-o11 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o11) (made p12) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o11)) (shipped o11) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly36ugly49ugly20ugly46ship-order-o24 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o24) (made p19) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o24)) (shipped o24) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly37ugly25ugly19ugly36ship-order-o23 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o23) (made p16) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o23)) (shipped o23) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly38ugly26ugly34ugly15make-product-p1 :parameters () :precondition
  (and (not-made p1) (started o8) (started o21)) :effect
  (and (not (not-made p1)) (made p1)))
 (:action ugly39ugly18ugly13ugly5ship-order-o5 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o5) (made p4) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o5)) (shipped o5) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly40ugly42ugly16ugly11open-new-stack :parameters
  (?open ?new-open - count) :precondition
  (and (stacks-avail ?open) (next-count ?open ?new-open)) :effect
  (and (not (stacks-avail ?open)) (stacks-avail ?new-open)
       (increase (total-cost) 1)))
 (:action ugly41ugly48ugly30ugly21make-product-p8 :parameters () :precondition
  (and (not-made p8) (started o22)) :effect
  (and (not (not-made p8)) (made p8)))
 (:action ugly42ugly16ugly11ugly1ship-order-o18 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o18) (made p17) (made p19) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o18)) (shipped o18) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly43ugly33ugly27ugly39make-product-p16 :parameters () :precondition
  (and (not-made p16) (started o15) (started o23)) :effect
  (and (not (not-made p16)) (made p16)))
 (:action ugly44ugly14ugly38ugly26ship-order-o8 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o8) (made p1) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o8)) (shipped o8) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly45ugly4ugly8ugly47make-product-p5 :parameters () :precondition
  (and (not-made p5) (started o12)) :effect
  (and (not (not-made p5)) (made p5)))
 (:action ugly46ugly50ugly41ugly48ship-order-o4 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o4) (made p13) (made p14) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o4)) (shipped o4) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly47ugly7ugly23ugly32make-product-p15 :parameters () :precondition
  (and (not-made p15) (started o9)) :effect
  (and (not (not-made p15)) (made p15)))
 (:action ugly48ugly30ugly21ugly10ship-order-o9 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o9) (made p12) (made p15) (made p18) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o9)) (shipped o9) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly49ugly20ugly46ugly50ship-order-o15 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o15) (made p16) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o15)) (shipped o15) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly50ugly41ugly48ugly30make-product-p19 :parameters () :precondition
  (and (not-made p19) (started o13) (started o18) (started o24)) :effect
  (and (not (not-made p19)) (made p19)))) 