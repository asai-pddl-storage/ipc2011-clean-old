
(define (domain openstacks-sequencedstrips-nonadl-nonnegated)
 (:requirements :typing :action-costs)
 (:predicates (shipped ?o - order) (stacks-avail ?s - count)
  (next-count ?s ?ns - count) (not-made ?p - product) (waiting ?o - order)
  (made ?p - product) (started ?o - order) (includes ?o - order ?p - product))
 (:types order product count)
 (:constants p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  p20 p21 p22 - product o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16
  o17 o18 o19 o20 o21 o22 - order)
 (:functions (total-cost) - number)
 (:action ugly1ugly44ugly12ship-order-o6 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o6) (made p12) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o6)) (shipped o6) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly2ugly37ugly33ship-order-o3 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o3) (made p7) (made p21) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o3)) (shipped o3) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly3ugly40ugly24make-product-p11 :parameters () :precondition
  (and (not-made p11) (started o9) (started o16)) :effect
  (and (not (not-made p11)) (made p11)))
 (:action ugly4ugly8ugly1ship-order-o20 :parameters (?avail ?new-avail - count)
  :precondition
  (and (started o20) (made p2) (made p5) (made p8) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o20)) (shipped o20) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly5ugly31ugly11ship-order-o4 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o4) (made p10) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o4)) (shipped o4) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly6ugly2ugly37ship-order-o9 :parameters (?avail ?new-avail - count)
  :precondition
  (and (started o9) (made p3) (made p11) (made p18) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o9)) (shipped o9) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly7ugly23ugly32make-product-p15 :parameters () :precondition
  (and (not-made p15) (started o5) (started o8) (started o17)) :effect
  (and (not (not-made p15)) (made p15)))
 (:action ugly8ugly1ugly44make-product-p10 :parameters () :precondition
  (and (not-made p10) (started o4) (started o14)) :effect
  (and (not (not-made p10)) (made p10)))
 (:action ugly9ugly34ugly7make-product-p21 :parameters () :precondition
  (and (not-made p21) (started o3)) :effect
  (and (not (not-made p21)) (made p21)))
 (:action ugly10ugly43ugly18make-product-p3 :parameters () :precondition
  (and (not-made p3) (started o9) (started o12) (started o13)) :effect
  (and (not (not-made p3)) (made p3)))
 (:action ugly11ugly28ugly16make-product-p13 :parameters () :precondition
  (and (not-made p13) (started o13)) :effect
  (and (not (not-made p13)) (made p13)))
 (:action ugly12ugly30ugly21ship-order-o11 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o11) (made p14) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o11)) (shipped o11) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly13ugly6ugly2ship-order-o13 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o13) (made p3) (made p6) (made p7) (made p8) (made p9)
       (made p13) (stacks-avail ?avail) (next-count ?avail ?new-avail))
  :effect
  (and (not (started o13)) (shipped o13) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly14ugly39ugly25make-product-p17 :parameters () :precondition
  (and (not-made p17) (started o15) (started o18)) :effect
  (and (not (not-made p17)) (made p17)))
 (:action ugly15ugly10ugly43make-product-p16 :parameters () :precondition
  (and (not-made p16) (started o15)) :effect
  (and (not (not-made p16)) (made p16)))
 (:action ugly16ugly15ugly10ship-order-o19 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o19) (made p20) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o19)) (shipped o19) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly17ugly45ugly26make-product-p7 :parameters () :precondition
  (and (not-made p7) (started o3) (started o13)) :effect
  (and (not (not-made p7)) (made p7)))
 (:action ugly18ugly5ugly31make-product-p9 :parameters () :precondition
  (and (not-made p9) (started o1) (started o13)) :effect
  (and (not (not-made p9)) (made p9)))
 (:action ugly19ugly36ugly38ship-order-o18 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o18) (made p17) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o18)) (shipped o18) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly20ugly46ugly20ship-order-o22 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o22) (made p14) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o22)) (shipped o22) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly21ugly35ugly41make-product-p1 :parameters () :precondition
  (and (not-made p1) (started o15)) :effect
  (and (not (not-made p1)) (made p1)))
 (:action ugly22ugly29ugly22ship-order-o5 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o5) (made p15) (made p19) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o5)) (shipped o5) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly23ugly32ugly17ship-order-o21 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o21) (made p14) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o21)) (shipped o21) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly24ugly13ugly6start-order :parameters
  (?o - order ?avail ?new-avail - count) :precondition
  (and (waiting ?o) (stacks-avail ?avail) (next-count ?new-avail ?avail))
  :effect
  (and (not (waiting ?o)) (started ?o) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly25ugly19ugly36ship-order-o14 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o14) (made p10) (made p22) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o14)) (shipped o14) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly26ugly9ugly34make-product-p5 :parameters () :precondition
  (and (not-made p5) (started o20)) :effect
  (and (not (not-made p5)) (made p5)))
 (:action ugly27ugly14ugly39ship-order-o1 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o1) (made p9) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o1)) (shipped o1) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly28ugly16ugly15make-product-p8 :parameters () :precondition
  (and (not-made p8) (started o8) (started o13) (started o20)) :effect
  (and (not (not-made p8)) (made p8)))
 (:action ugly29ugly22ugly29make-product-p20 :parameters () :precondition
  (and (not-made p20) (started o19)) :effect
  (and (not (not-made p20)) (made p20)))
 (:action ugly30ugly21ugly35ship-order-o17 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o17) (made p15) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o17)) (shipped o17) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly31ugly11ugly28make-product-p14 :parameters () :precondition
  (and (not-made p14) (started o11) (started o21) (started o22)) :effect
  (and (not (not-made p14)) (made p14)))
 (:action ugly32ugly17ugly45ship-order-o2 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o2) (made p19) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o2)) (shipped o2) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly33ugly27ugly14ship-order-o15 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o15) (made p1) (made p16) (made p17) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o15)) (shipped o15) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly34ugly7ugly23ship-order-o8 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o8) (made p8) (made p12) (made p15) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o8)) (shipped o8) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly35ugly41ugly3ship-order-o16 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o16) (made p11) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o16)) (shipped o16) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly36ugly38ugly42make-product-p2 :parameters () :precondition
  (and (not-made p2) (started o20)) :effect
  (and (not (not-made p2)) (made p2)))
 (:action ugly37ugly33ugly27make-product-p12 :parameters () :precondition
  (and (not-made p12) (started o6) (started o7) (started o8)) :effect
  (and (not (not-made p12)) (made p12)))
 (:action ugly38ugly42ugly4make-product-p6 :parameters () :precondition
  (and (not-made p6) (started o13)) :effect
  (and (not (not-made p6)) (made p6)))
 (:action ugly39ugly25ugly19ship-order-o12 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o12) (made p3) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o12)) (shipped o12) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly40ugly24ugly13make-product-p4 :parameters () :precondition
  (and (not-made p4) (started o10)) :effect
  (and (not (not-made p4)) (made p4)))
 (:action ugly41ugly3ugly40make-product-p22 :parameters () :precondition
  (and (not-made p22) (started o14)) :effect
  (and (not (not-made p22)) (made p22)))
 (:action ugly42ugly4ugly8open-new-stack :parameters (?open ?new-open - count)
  :precondition (and (stacks-avail ?open) (next-count ?open ?new-open)) :effect
  (and (not (stacks-avail ?open)) (stacks-avail ?new-open)
       (increase (total-cost) 1)))
 (:action ugly43ugly18ugly5ship-order-o7 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o7) (made p12) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o7)) (shipped o7) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly44ugly12ugly30make-product-p19 :parameters () :precondition
  (and (not-made p19) (started o2) (started o5)) :effect
  (and (not (not-made p19)) (made p19)))
 (:action ugly45ugly26ugly9ship-order-o10 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o10) (made p4) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o10)) (shipped o10) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly46ugly20ugly46make-product-p18 :parameters () :precondition
  (and (not-made p18) (started o9)) :effect
  (and (not (not-made p18)) (made p18)))) 