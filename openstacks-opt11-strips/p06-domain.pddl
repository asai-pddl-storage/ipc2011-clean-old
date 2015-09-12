
(define (domain openstacks-sequencedstrips-nonadl-nonnegated)
 (:requirements :typing :action-costs)
 (:predicates (waiting ?o - order) (includes ?o - order ?p - product)
  (not-made ?p - product) (stacks-avail ?s - count) (next-count ?s ?ns - count)
  (started ?o - order) (shipped ?o - order) (made ?p - product))
 (:types order product count)
 (:constants p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 - product o1 o2
  o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 - order)
 (:functions (total-cost) - number)
 (:action ugly1ugly27ugly16ugly30ship-order-o8 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o8) (made p11) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o8)) (shipped o8) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly2ugly13ugly7ugly23make-product-p3 :parameters () :precondition
  (and (not-made p3) (started o7)) :effect (and (not (not-made p3)) (made p3)))
 (:action ugly3ugly6ugly32ugly22ship-order-o2 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o2) (made p10) (made p15) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o2)) (shipped o2) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly4ugly9ugly2ugly13make-product-p5 :parameters () :precondition
  (and (not-made p5) (started o9)) :effect (and (not (not-made p5)) (made p5)))
 (:action ugly5ugly4ugly9ugly2make-product-p11 :parameters () :precondition
  (and (not-made p11) (started o8) (started o10)) :effect
  (and (not (not-made p11)) (made p11)))
 (:action ugly6ugly32ugly22ugly19make-product-p12 :parameters () :precondition
  (and (not-made p12) (started o9) (started o11)) :effect
  (and (not (not-made p12)) (made p12)))
 (:action ugly7ugly23ugly5ugly4make-product-p7 :parameters () :precondition
  (and (not-made p7) (started o13)) :effect
  (and (not (not-made p7)) (made p7)))
 (:action ugly8ugly15ugly10ugly11ship-order-o11 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o11) (made p12) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o11)) (shipped o11) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly9ugly2ugly13ugly7ship-order-o6 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o6) (made p6) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o6)) (shipped o6) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly10ugly11ugly28ugly18open-new-stack :parameters
  (?open ?new-open - count) :precondition
  (and (stacks-avail ?open) (next-count ?open ?new-open)) :effect
  (and (not (stacks-avail ?open)) (stacks-avail ?new-open)
       (increase (total-cost) 1)))
 (:action ugly11ugly28ugly18ugly1ship-order-o10 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o10) (made p11) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o10)) (shipped o10) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly12ugly31ugly26ugly20make-product-p10 :parameters () :precondition
  (and (not-made p10) (started o2)) :effect
  (and (not (not-made p10)) (made p10)))
 (:action ugly13ugly7ugly23ugly5make-product-p2 :parameters () :precondition
  (and (not-made p2) (started o4)) :effect (and (not (not-made p2)) (made p2)))
 (:action ugly14ugly3ugly6ugly32ship-order-o5 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o5) (made p6) (made p8) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o5)) (shipped o5) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly15ugly10ugly11ugly28ship-order-o1 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o1) (made p8) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o1)) (shipped o1) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly16ugly30ugly25ugly17ship-order-o7 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o7) (made p3) (made p4) (made p6) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o7)) (shipped o7) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly17ugly24ugly21ugly29make-product-p6 :parameters () :precondition
  (and (not-made p6) (started o5) (started o6) (started o7)) :effect
  (and (not (not-made p6)) (made p6)))
 (:action ugly18ugly1ugly27ugly16ship-order-o13 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o13) (made p1) (made p7) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o13)) (shipped o13) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly19ugly14ugly3ugly6ship-order-o15 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o15) (made p13) (made p14) (made p15) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o15)) (shipped o15) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly20ugly12ugly31ugly26ship-order-o3 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o3) (made p8) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o3)) (shipped o3) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly21ugly29ugly8ugly15make-product-p8 :parameters () :precondition
  (and (not-made p8) (started o1) (started o3) (started o5) (started o12))
  :effect (and (not (not-made p8)) (made p8)))
 (:action ugly22ugly19ugly14ugly3make-product-p4 :parameters () :precondition
  (and (not-made p4) (started o7)) :effect (and (not (not-made p4)) (made p4)))
 (:action ugly23ugly5ugly4ugly9start-order :parameters
  (?o - order ?avail ?new-avail - count) :precondition
  (and (waiting ?o) (stacks-avail ?avail) (next-count ?new-avail ?avail))
  :effect
  (and (not (waiting ?o)) (started ?o) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly24ugly21ugly29ugly8make-product-p13 :parameters () :precondition
  (and (not-made p13) (started o15)) :effect
  (and (not (not-made p13)) (made p13)))
 (:action ugly25ugly17ugly24ugly21ship-order-o12 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o12) (made p8) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o12)) (shipped o12) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly26ugly20ugly12ugly31ship-order-o9 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o9) (made p5) (made p9) (made p12) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o9)) (shipped o9) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly27ugly16ugly30ugly25make-product-p15 :parameters () :precondition
  (and (not-made p15) (started o2) (started o15)) :effect
  (and (not (not-made p15)) (made p15)))
 (:action ugly28ugly18ugly1ugly27make-product-p14 :parameters () :precondition
  (and (not-made p14) (started o15)) :effect
  (and (not (not-made p14)) (made p14)))
 (:action ugly29ugly8ugly15ugly10make-product-p9 :parameters () :precondition
  (and (not-made p9) (started o9) (started o14)) :effect
  (and (not (not-made p9)) (made p9)))
 (:action ugly30ugly25ugly17ugly24ship-order-o4 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o4) (made p2) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o4)) (shipped o4) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly31ugly26ugly20ugly12ship-order-o14 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o14) (made p9) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o14)) (shipped o14) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly32ugly22ugly19ugly14make-product-p1 :parameters () :precondition
  (and (not-made p1) (started o13)) :effect
  (and (not (not-made p1)) (made p1)))) 