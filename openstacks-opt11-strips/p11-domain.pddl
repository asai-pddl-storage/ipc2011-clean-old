
(define (domain openstacks-sequencedstrips-nonadl-nonnegated)
 (:requirements :typing :action-costs)
 (:predicates (shipped ?o - order) (stacks-avail ?s - count)
  (next-count ?s ?ns - count) (not-made ?p - product) (waiting ?o - order)
  (made ?p - product) (started ?o - order) (includes ?o - order ?p - product))
 (:types order product count)
 (:constants p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  - product o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16 o17 o18 o19
  - order)
 (:functions (total-cost) - number)
 (:action ugly1ugly36ugly23ship-order-o14 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o14) (made p9) (made p16) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o14)) (shipped o14) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly2ugly39ugly6ship-order-o1 :parameters (?avail ?new-avail - count)
  :precondition
  (and (started o1) (made p16) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o1)) (shipped o1) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly3ugly7ugly32make-product-p17 :parameters () :precondition
  (and (not-made p17) (started o2) (started o9)) :effect
  (and (not (not-made p17)) (made p17)))
 (:action ugly4ugly30ugly5open-new-stack :parameters (?open ?new-open - count)
  :precondition (and (stacks-avail ?open) (next-count ?open ?new-open)) :effect
  (and (not (stacks-avail ?open)) (stacks-avail ?new-open)
       (increase (total-cost) 1)))
 (:action ugly5ugly1ugly36ship-order-o2 :parameters (?avail ?new-avail - count)
  :precondition
  (and (started o2) (made p17) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o2)) (shipped o2) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly6ugly22ugly12make-product-p2 :parameters () :precondition
  (and (not-made p2) (started o7)) :effect (and (not (not-made p2)) (made p2)))
 (:action ugly7ugly32ugly19make-product-p13 :parameters () :precondition
  (and (not-made p13) (started o9)) :effect
  (and (not (not-made p13)) (made p13)))
 (:action ugly8ugly25ugly18make-product-p6 :parameters () :precondition
  (and (not-made p6) (started o8) (started o11)) :effect
  (and (not (not-made p6)) (made p6)))
 (:action ugly9ugly28ugly34ship-order-o5 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o5) (made p7) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o5)) (shipped o5) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly10ugly33ugly13ship-order-o16 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o16) (made p12) (made p14) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o16)) (shipped o16) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly11ugly21ugly3make-product-p5 :parameters () :precondition
  (and (not-made p5) (started o12)) :effect
  (and (not (not-made p5)) (made p5)))
 (:action ugly12ugly4ugly30make-product-p3 :parameters () :precondition
  (and (not-made p3) (started o4) (started o10)) :effect
  (and (not (not-made p3)) (made p3)))
 (:action ugly13ugly37ugly27ship-order-o3 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o3) (made p15) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o3)) (shipped o3) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly14ugly2ugly39make-product-p4 :parameters () :precondition
  (and (not-made p4) (started o10)) :effect
  (and (not (not-made p4)) (made p4)))
 (:action ugly15ugly9ugly28ship-order-o13 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o13) (made p15) (made p19) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o13)) (shipped o13) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly16ugly10ugly33make-product-p11 :parameters () :precondition
  (and (not-made p11) (started o6)) :effect
  (and (not (not-made p11)) (made p11)))
 (:action ugly17ugly31ugly20make-product-p14 :parameters () :precondition
  (and (not-made p14) (started o16)) :effect
  (and (not (not-made p14)) (made p14)))
 (:action ugly18ugly8ugly25make-product-p16 :parameters () :precondition
  (and (not-made p16) (started o1) (started o7) (started o14) (started o17))
  :effect (and (not (not-made p16)) (made p16)))
 (:action ugly19ugly15ugly9ship-order-o7 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o7) (made p2) (made p16) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o7)) (shipped o7) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly20ugly16ugly10ship-order-o12 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o12) (made p5) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o12)) (shipped o12) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly21ugly3ugly7ship-order-o11 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o11) (made p6) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o11)) (shipped o11) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly22ugly12ugly4ship-order-o9 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o9) (made p13) (made p17) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o9)) (shipped o9) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly23ugly35ugly11make-product-p19 :parameters () :precondition
  (and (not-made p19) (started o13)) :effect
  (and (not (not-made p19)) (made p19)))
 (:action ugly24ugly14ugly2ship-order-o18 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o18) (made p15) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o18)) (shipped o18) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly25ugly18ugly8ship-order-o4 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o4) (made p3) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o4)) (shipped o4) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly26ugly17ugly31make-product-p18 :parameters () :precondition
  (and (not-made p18) (started o6)) :effect
  (and (not (not-made p18)) (made p18)))
 (:action ugly27ugly24ugly14start-order :parameters
  (?o - order ?avail ?new-avail - count) :precondition
  (and (waiting ?o) (stacks-avail ?avail) (next-count ?new-avail ?avail))
  :effect
  (and (not (waiting ?o)) (started ?o) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly28ugly34ugly26make-product-p15 :parameters () :precondition
  (and (not-made p15) (started o3) (started o13) (started o18) (started o19))
  :effect (and (not (not-made p15)) (made p15)))
 (:action ugly29ugly40ugly29ship-order-o19 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o19) (made p15) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o19)) (shipped o19) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly30ugly5ugly1ship-order-o15 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o15) (made p8) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o15)) (shipped o15) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly31ugly20ugly16make-product-p8 :parameters () :precondition
  (and (not-made p8) (started o15)) :effect
  (and (not (not-made p8)) (made p8)))
 (:action ugly32ugly19ugly15make-product-p7 :parameters () :precondition
  (and (not-made p7) (started o5) (started o6)) :effect
  (and (not (not-made p7)) (made p7)))
 (:action ugly33ugly13ugly37ship-order-o6 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o6) (made p7) (made p10) (made p11) (made p18)
       (stacks-avail ?avail) (next-count ?avail ?new-avail))
  :effect
  (and (not (started o6)) (shipped o6) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly34ugly26ugly17ship-order-o10 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o10) (made p3) (made p4) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o10)) (shipped o10) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly35ugly11ugly21make-product-p1 :parameters () :precondition
  (and (not-made p1) (started o8)) :effect (and (not (not-made p1)) (made p1)))
 (:action ugly36ugly23ugly35make-product-p9 :parameters () :precondition
  (and (not-made p9) (started o14)) :effect
  (and (not (not-made p9)) (made p9)))
 (:action ugly37ugly27ugly24make-product-p12 :parameters () :precondition
  (and (not-made p12) (started o16)) :effect
  (and (not (not-made p12)) (made p12)))
 (:action ugly38ugly38ugly38ship-order-o17 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o17) (made p16) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o17)) (shipped o17) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly39ugly6ugly22make-product-p10 :parameters () :precondition
  (and (not-made p10) (started o6)) :effect
  (and (not (not-made p10)) (made p10)))
 (:action ugly40ugly29ugly40ship-order-o8 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o8) (made p1) (made p6) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o8)) (shipped o8) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))) 