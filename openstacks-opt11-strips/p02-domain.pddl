
(define (domain openstacks-sequencedstrips-nonadl-nonnegated)
 (:requirements :typing :action-costs)
 (:predicates (shipped ?o - order) (stacks-avail ?s - count)
  (next-count ?s ?ns - count) (not-made ?p - product) (waiting ?o - order)
  (made ?p - product) (started ?o - order) (includes ?o - order ?p - product))
 (:types order product count)
 (:constants p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 - product o1 o2 o3 o4 o5 o6 o7
  o8 o9 o10 o11 - order)
 (:functions (total-cost) - number)
 (:action ugly1ugly12ugly22ship-order-o1 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o1) (made p1) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o1)) (shipped o1) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly2ugly5ugly21start-order :parameters
  (?o - order ?avail ?new-avail - count) :precondition
  (and (waiting ?o) (stacks-avail ?avail) (next-count ?new-avail ?avail))
  :effect
  (and (not (waiting ?o)) (started ?o) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly3ugly8ugly9make-product-p8 :parameters () :precondition
  (and (not-made p8) (started o3) (started o11)) :effect
  (and (not (not-made p8)) (made p8)))
 (:action ugly4ugly3ugly8make-product-p7 :parameters () :precondition
  (and (not-made p7) (started o6) (started o10)) :effect
  (and (not (not-made p7)) (made p7)))
 (:action ugly5ugly21ugly2make-product-p3 :parameters () :precondition
  (and (not-made p3) (started o2)) :effect (and (not (not-made p3)) (made p3)))
 (:action ugly6ugly13ugly15ship-order-o11 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o11) (made p8) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o11)) (shipped o11) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly7ugly11ugly18make-product-p2 :parameters () :precondition
  (and (not-made p2) (started o3)) :effect (and (not (not-made p2)) (made p2)))
 (:action ugly8ugly9ugly10make-product-p4 :parameters () :precondition
  (and (not-made p4) (started o7)) :effect (and (not (not-made p4)) (made p4)))
 (:action ugly9ugly10ugly6make-product-p11 :parameters () :precondition
  (and (not-made p11) (started o4)) :effect
  (and (not (not-made p11)) (made p11)))
 (:action ugly10ugly6ugly13ship-order-o2 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o2) (made p1) (made p3) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o2)) (shipped o2) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly11ugly18ugly4make-product-p1 :parameters () :precondition
  (and (not-made p1) (started o1) (started o2) (started o7) (started o8)
       (started o9))
  :effect (and (not (not-made p1)) (made p1)))
 (:action ugly12ugly22ugly14open-new-stack :parameters
  (?open ?new-open - count) :precondition
  (and (stacks-avail ?open) (next-count ?open ?new-open)) :effect
  (and (not (stacks-avail ?open)) (stacks-avail ?new-open)
       (increase (total-cost) 1)))
 (:action ugly13ugly15ugly24make-product-p5 :parameters () :precondition
  (and (not-made p5) (started o6)) :effect (and (not (not-made p5)) (made p5)))
 (:action ugly14ugly1ugly12ship-order-o9 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o9) (made p1) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o9)) (shipped o9) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly15ugly24ugly7make-product-p9 :parameters () :precondition
  (and (not-made p9) (started o4)) :effect (and (not (not-made p9)) (made p9)))
 (:action ugly16ugly17ugly19ship-order-o7 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o7) (made p1) (made p4) (made p6) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o7)) (shipped o7) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly17ugly19ugly20ship-order-o10 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o10) (made p7) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o10)) (shipped o10) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly18ugly4ugly3make-product-p6 :parameters () :precondition
  (and (not-made p6) (started o7)) :effect (and (not (not-made p6)) (made p6)))
 (:action ugly19ugly20ugly23ship-order-o3 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o3) (made p2) (made p8) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o3)) (shipped o3) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly20ugly23ugly16ship-order-o4 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o4) (made p9) (made p11) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o4)) (shipped o4) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly21ugly2ugly5ship-order-o8 :parameters (?avail ?new-avail - count)
  :precondition
  (and (started o8) (made p1) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o8)) (shipped o8) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly22ugly14ugly1make-product-p10 :parameters () :precondition
  (and (not-made p10) (started o5)) :effect
  (and (not (not-made p10)) (made p10)))
 (:action ugly23ugly16ugly17ship-order-o6 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o6) (made p5) (made p7) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o6)) (shipped o6) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly24ugly7ugly11ship-order-o5 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o5) (made p10) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o5)) (shipped o5) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))) 