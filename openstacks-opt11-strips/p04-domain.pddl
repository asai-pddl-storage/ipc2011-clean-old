
(define (domain openstacks-sequencedstrips-nonadl-nonnegated)
 (:requirements :typing :action-costs)
 (:predicates (made ?p - product) (next-count ?s ?ns - count)
  (shipped ?o - order) (waiting ?o - order) (started ?o - order)
  (stacks-avail ?s - count) (includes ?o - order ?p - product)
  (not-made ?p - product))
 (:types order product count)
 (:constants p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 - product o1 o2 o3 o4
  o5 o6 o7 o8 o9 o10 o11 o12 o13 - order)
 (:functions (total-cost) - number)
 (:action ugly1ship-order-o12 :parameters (?avail ?new-avail - count)
  :precondition
  (and (started o12) (made p1) (made p3) (made p4) (made p6) (made p8)
       (stacks-avail ?avail) (next-count ?avail ?new-avail))
  :effect
  (and (not (started o12)) (shipped o12) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly2make-product-p11 :parameters () :precondition
  (and (not-made p11) (started o6)) :effect
  (and (not (not-made p11)) (made p11)))
 (:action ugly3make-product-p4 :parameters () :precondition
  (and (not-made p4) (started o8) (started o10) (started o12)) :effect
  (and (not (not-made p4)) (made p4)))
 (:action ugly4make-product-p7 :parameters () :precondition
  (and (not-made p7) (started o2) (started o3) (started o5)) :effect
  (and (not (not-made p7)) (made p7)))
 (:action ugly5make-product-p2 :parameters () :precondition
  (and (not-made p2) (started o7)) :effect (and (not (not-made p2)) (made p2)))
 (:action ugly6ship-order-o7 :parameters (?avail ?new-avail - count)
  :precondition
  (and (started o7) (made p2) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o7)) (shipped o7) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly7make-product-p12 :parameters () :precondition
  (and (not-made p12) (started o13)) :effect
  (and (not (not-made p12)) (made p12)))
 (:action ugly8make-product-p10 :parameters () :precondition
  (and (not-made p10) (started o1) (started o9) (started o11)) :effect
  (and (not (not-made p10)) (made p10)))
 (:action ugly9make-product-p8 :parameters () :precondition
  (and (not-made p8) (started o12)) :effect
  (and (not (not-made p8)) (made p8)))
 (:action ugly10open-new-stack :parameters (?open ?new-open - count)
  :precondition (and (stacks-avail ?open) (next-count ?open ?new-open)) :effect
  (and (not (stacks-avail ?open)) (stacks-avail ?new-open)
       (increase (total-cost) 1)))
 (:action ugly11ship-order-o6 :parameters (?avail ?new-avail - count)
  :precondition
  (and (started o6) (made p9) (made p11) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o6)) (shipped o6) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly12ship-order-o10 :parameters (?avail ?new-avail - count)
  :precondition
  (and (started o10) (made p4) (made p13) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o10)) (shipped o10) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly13make-product-p5 :parameters () :precondition
  (and (not-made p5) (started o4)) :effect (and (not (not-made p5)) (made p5)))
 (:action ugly14ship-order-o9 :parameters (?avail ?new-avail - count)
  :precondition
  (and (started o9) (made p10) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o9)) (shipped o9) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly15make-product-p1 :parameters () :precondition
  (and (not-made p1) (started o12)) :effect
  (and (not (not-made p1)) (made p1)))
 (:action ugly16make-product-p6 :parameters () :precondition
  (and (not-made p6) (started o12)) :effect
  (and (not (not-made p6)) (made p6)))
 (:action ugly17ship-order-o13 :parameters (?avail ?new-avail - count)
  :precondition
  (and (started o13) (made p12) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o13)) (shipped o13) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly18ship-order-o11 :parameters (?avail ?new-avail - count)
  :precondition
  (and (started o11) (made p10) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o11)) (shipped o11) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly19ship-order-o4 :parameters (?avail ?new-avail - count)
  :precondition
  (and (started o4) (made p5) (made p9) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o4)) (shipped o4) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly20ship-order-o1 :parameters (?avail ?new-avail - count)
  :precondition
  (and (started o1) (made p10) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o1)) (shipped o1) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly21ship-order-o5 :parameters (?avail ?new-avail - count)
  :precondition
  (and (started o5) (made p7) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o5)) (shipped o5) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly22make-product-p3 :parameters () :precondition
  (and (not-made p3) (started o12)) :effect
  (and (not (not-made p3)) (made p3)))
 (:action ugly23ship-order-o3 :parameters (?avail ?new-avail - count)
  :precondition
  (and (started o3) (made p7) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o3)) (shipped o3) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly24ship-order-o8 :parameters (?avail ?new-avail - count)
  :precondition
  (and (started o8) (made p4) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o8)) (shipped o8) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly25start-order :parameters (?o - order ?avail ?new-avail - count)
  :precondition
  (and (waiting ?o) (stacks-avail ?avail) (next-count ?new-avail ?avail))
  :effect
  (and (not (waiting ?o)) (started ?o) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly26make-product-p9 :parameters () :precondition
  (and (not-made p9) (started o4) (started o6)) :effect
  (and (not (not-made p9)) (made p9)))
 (:action ugly27make-product-p13 :parameters () :precondition
  (and (not-made p13) (started o10)) :effect
  (and (not (not-made p13)) (made p13)))
 (:action ugly28ship-order-o2 :parameters (?avail ?new-avail - count)
  :precondition
  (and (started o2) (made p7) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o2)) (shipped o2) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))) 