
(define (domain openstacks-sequencedstrips-nonadl-nonnegated)
 (:requirements :typing :action-costs)
 (:predicates (started ?o - order) (made ?p - product) (not-made ?p - product)
  (includes ?o - order ?p - product) (waiting ?o - order)
  (next-count ?s ?ns - count) (stacks-avail ?s - count) (shipped ?o - order))
 (:types order product count)
 (:constants p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 - product o1 o2 o3 o4 o5 o6
  o7 o8 o9 o10 o11 o12 - order)
 (:functions (total-cost) - number)
 (:action ugly1433062ugly11ugly6ugly13ugly22ship-order-o4 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o4) (made p4) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o4)) (shipped o4) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433063ugly19ugly23ugly16ugly17ship-order-o10 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o10) (made p1) (made p8) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o10)) (shipped o10) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433064ugly1ugly12ugly10ugly20make-product-p5 :parameters ()
  :precondition (and (not-made p5) (started o11)) :effect
  (and (not (not-made p5)) (made p5)))
 (:action ugly1433065ugly15ugly14ugly4ugly3make-product-p6 :parameters ()
  :precondition (and (not-made p6) (started o5) (started o8) (started o12))
  :effect (and (not (not-made p6)) (made p6)))
 (:action ugly1433066ugly14ugly4ugly3ugly8make-product-p7 :parameters ()
  :precondition (and (not-made p7) (started o5)) :effect
  (and (not (not-made p7)) (made p7)))
 (:action ugly1433067ugly8ugly9ugly26ugly25ship-order-o5 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o5) (made p6) (made p7) (made p9) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o5)) (shipped o5) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433068ugly4ugly3ugly8ugly9ship-order-o12 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o12) (made p6) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o12)) (shipped o12) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433069ugly23ugly16ugly17ugly24open-new-stack :parameters
  (?open ?new-open - count) :precondition
  (and (stacks-avail ?open) (next-count ?open ?new-open)) :effect
  (and (not (stacks-avail ?open)) (stacks-avail ?new-open)
       (increase (total-cost) 1)))
 (:action ugly1433070ugly21ugly2ugly5ugly21start-order :parameters
  (?o - order ?avail ?new-avail - count) :precondition
  (and (waiting ?o) (stacks-avail ?avail) (next-count ?new-avail ?avail))
  :effect
  (and (not (waiting ?o)) (started ?o) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433071ugly25ugly19ugly23ugly16ship-order-o3 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o3) (made p4) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o3)) (shipped o3) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433072ugly16ugly17ugly24ugly1make-product-p10 :parameters ()
  :precondition (and (not-made p10) (started o2)) :effect
  (and (not (not-made p10)) (made p10)))
 (:action ugly1433073ugly7ugly11ugly6ugly13ship-order-o8 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o8) (made p4) (made p6) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o8)) (shipped o8) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433074ugly5ugly21ugly2ugly5ship-order-o7 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o7) (made p11) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o7)) (shipped o7) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433075ugly12ugly10ugly20ugly7make-product-p9 :parameters ()
  :precondition (and (not-made p9) (started o5)) :effect
  (and (not (not-made p9)) (made p9)))
 (:action ugly1433076ugly20ugly7ugly11ugly6make-product-p11 :parameters ()
  :precondition
  (and (not-made p11) (started o2) (started o6) (started o7) (started o9)
       (started o11))
  :effect (and (not (not-made p11)) (made p11)))
 (:action ugly1433077ugly17ugly24ugly1ugly12make-product-p8 :parameters ()
  :precondition (and (not-made p8) (started o10)) :effect
  (and (not (not-made p8)) (made p8)))
 (:action ugly1433078ugly26ugly25ugly19ugly23ship-order-o2 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o2) (made p10) (made p11) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o2)) (shipped o2) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433079ugly3ugly8ugly9ugly26ship-order-o11 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o11) (made p5) (made p11) (made p12) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o11)) (shipped o11) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433080ugly9ugly26ugly25ugly19ship-order-o9 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o9) (made p11) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o9)) (shipped o9) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433081ugly18ugly15ugly14ugly4make-product-p1 :parameters ()
  :precondition (and (not-made p1) (started o10)) :effect
  (and (not (not-made p1)) (made p1)))
 (:action ugly1433082ugly6ugly13ugly22ugly18ship-order-o1 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o1) (made p2) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o1)) (shipped o1) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433083ugly13ugly22ugly18ugly15make-product-p12 :parameters ()
  :precondition (and (not-made p12) (started o11)) :effect
  (and (not (not-made p12)) (made p12)))
 (:action ugly1433084ugly22ugly18ugly15ugly14make-product-p2 :parameters ()
  :precondition (and (not-made p2) (started o1)) :effect
  (and (not (not-made p2)) (made p2)))
 (:action ugly1433085ugly2ugly5ugly21ugly2make-product-p3 :parameters ()
  :precondition (and (not-made p3) (started o6)) :effect
  (and (not (not-made p3)) (made p3)))
 (:action ugly1433086ugly10ugly20ugly7ugly11make-product-p4 :parameters ()
  :precondition (and (not-made p4) (started o3) (started o4) (started o8))
  :effect (and (not (not-made p4)) (made p4)))
 (:action ugly1433087ugly24ugly1ugly12ugly10ship-order-o6 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o6) (made p3) (made p11) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o6)) (shipped o6) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))) 