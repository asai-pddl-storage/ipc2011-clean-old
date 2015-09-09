
(define (domain openstacks-sequencedstrips-nonadl-nonnegated)
 (:requirements :typing :action-costs)
 (:predicates (shipped ?o - order) (stacks-avail ?s - count)
  (next-count ?s ?ns - count) (not-made ?p - product) (waiting ?o - order)
  (made ?p - product) (started ?o - order) (includes ?o - order ?p - product))
 (:types order product count)
 (:constants p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 -
  product o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16 o17 - order)
 (:functions (total-cost) - number)
 (:action ugly1ugly36ugly10make-product-p5 :parameters () :precondition
  (and (not-made p5) (started o5) (started o11)) :effect
  (and (not (not-made p5)) (made p5)))
 (:action ugly2ugly6ugly13open-new-stack :parameters (?open ?new-open - count)
  :precondition (and (stacks-avail ?open) (next-count ?open ?new-open)) :effect
  (and (not (stacks-avail ?open)) (stacks-avail ?new-open)
       (increase (total-cost) 1)))
 (:action ugly3ugly29ugly27make-product-p16 :parameters () :precondition
  (and (not-made p16) (started o3)) :effect
  (and (not (not-made p16)) (made p16)))
 (:action ugly4ugly35ugly23make-product-p10 :parameters () :precondition
  (and (not-made p10) (started o2)) :effect
  (and (not (not-made p10)) (made p10)))
 (:action ugly5ugly21ugly17ship-order-o15 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o15) (made p1) (made p13) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o15)) (shipped o15) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly6ugly13ugly1ship-order-o17 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o17) (made p15) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o17)) (shipped o17) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly7ugly11ugly28make-product-p3 :parameters () :precondition
  (and (not-made p3) (started o2) (started o10)) :effect
  (and (not (not-made p3)) (made p3)))
 (:action ugly8ugly33ugly25make-product-p7 :parameters () :precondition
  (and (not-made p7) (started o5) (started o6) (started o8)) :effect
  (and (not (not-made p7)) (made p7)))
 (:action ugly9ugly4ugly35ship-order-o4 :parameters (?avail ?new-avail - count)
  :precondition
  (and (started o4) (made p2) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o4)) (shipped o4) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly10ugly7ugly11ship-order-o9 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o9) (made p8) (made p15) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o9)) (shipped o9) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly11ugly28ugly5ship-order-o2 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o2) (made p3) (made p10) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o2)) (shipped o2) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly12ugly31ugly22make-product-p13 :parameters () :precondition
  (and (not-made p13) (started o1) (started o15)) :effect
  (and (not (not-made p13)) (made p13)))
 (:action ugly13ugly1ugly36make-product-p8 :parameters () :precondition
  (and (not-made p8) (started o9) (started o16)) :effect
  (and (not (not-made p8)) (made p8)))
 (:action ugly14ugly24ugly2make-product-p4 :parameters () :precondition
  (and (not-made p4) (started o7)) :effect (and (not (not-made p4)) (made p4)))
 (:action ugly15ugly8ugly33ship-order-o6 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o6) (made p7) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o6)) (shipped o6) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly16ugly3ugly29ship-order-o8 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o8) (made p7) (made p14) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o8)) (shipped o8) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly17ugly34ugly20make-product-p14 :parameters () :precondition
  (and (not-made p14) (started o8)) :effect
  (and (not (not-made p14)) (made p14)))
 (:action ugly18ugly32ugly30make-product-p12 :parameters () :precondition
  (and (not-made p12) (started o1)) :effect
  (and (not (not-made p12)) (made p12)))
 (:action ugly19ugly26ugly19ship-order-o7 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o7) (made p4) (made p6) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o7)) (shipped o7) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly20ugly16ugly3ship-order-o10 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o10) (made p3) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o10)) (shipped o10) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly21ugly17ugly34ship-order-o1 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o1) (made p12) (made p13) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o1)) (shipped o1) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly22ugly15ugly8ship-order-o14 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o14) (made p15) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o14)) (shipped o14) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly23ugly12ugly31ship-order-o3 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o3) (made p16) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o3)) (shipped o3) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly24ugly2ugly6make-product-p11 :parameters () :precondition
  (and (not-made p11) (started o5)) :effect
  (and (not (not-made p11)) (made p11)))
 (:action ugly25ugly9ugly4ship-order-o16 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o16) (made p8) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o16)) (shipped o16) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly26ugly19ugly26make-product-p17 :parameters () :precondition
  (and (not-made p17) (started o11)) :effect
  (and (not (not-made p17)) (made p17)))
 (:action ugly27ugly18ugly32ship-order-o11 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o11) (made p5) (made p17) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o11)) (shipped o11) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly28ugly5ugly21make-product-p15 :parameters () :precondition
  (and (not-made p15) (started o9) (started o13) (started o14) (started o17))
  :effect (and (not (not-made p15)) (made p15)))
 (:action ugly29ugly27ugly18ship-order-o13 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o13) (made p15) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o13)) (shipped o13) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly30ugly14ugly24start-order :parameters
  (?o - order ?avail ?new-avail - count) :precondition
  (and (waiting ?o) (stacks-avail ?avail) (next-count ?new-avail ?avail))
  :effect
  (and (not (waiting ?o)) (started ?o) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly31ugly22ugly15make-product-p6 :parameters () :precondition
  (and (not-made p6) (started o7)) :effect (and (not (not-made p6)) (made p6)))
 (:action ugly32ugly30ugly14ship-order-o5 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o5) (made p5) (made p7) (made p11) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o5)) (shipped o5) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly33ugly25ugly9make-product-p2 :parameters () :precondition
  (and (not-made p2) (started o4)) :effect (and (not (not-made p2)) (made p2)))
 (:action ugly34ugly20ugly16make-product-p1 :parameters () :precondition
  (and (not-made p1) (started o15)) :effect
  (and (not (not-made p1)) (made p1)))
 (:action ugly35ugly23ugly12ship-order-o12 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o12) (made p9) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o12)) (shipped o12) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly36ugly10ugly7make-product-p9 :parameters () :precondition
  (and (not-made p9) (started o12)) :effect
  (and (not (not-made p9)) (made p9)))) 