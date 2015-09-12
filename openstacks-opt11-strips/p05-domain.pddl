
(define (domain openstacks-sequencedstrips-nonadl-nonnegated)
 (:requirements :typing :action-costs)
 (:predicates (shipped ?o - order) (made ?p - product) (not-made ?p - product)
  (next-count ?s ?ns - count) (stacks-avail ?s - count)
  (includes ?o - order ?p - product) (waiting ?o - order) (started ?o - order))
 (:types order product count)
 (:constants p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 - product o1 o2 o3
  o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 - order)
 (:functions (total-cost) - number)
 (:action ugly1433116ugly28ugly23ugly15ugly8make-product-p10 :parameters ()
  :precondition (and (not-made p10) (started o3)) :effect
  (and (not (not-made p10)) (made p10)))
 (:action ugly1433117ugly25ugly7ugly14ugly28ship-order-o7 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o7) (made p3) (made p6) (made p7) (made p11)
       (stacks-avail ?avail) (next-count ?avail ?new-avail))
  :effect
  (and (not (started o7)) (shipped o7) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433118ugly24ugly18ugly29ugly24ship-order-o2 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o2) (made p6) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o2)) (shipped o2) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433119ugly16ugly25ugly7ugly14ship-order-o12 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o12) (made p4) (made p6) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o12)) (shipped o12) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433120ugly14ugly28ugly23ugly15make-product-p6 :parameters ()
  :precondition (and (not-made p6) (started o2) (started o7) (started o12))
  :effect (and (not (not-made p6)) (made p6)))
 (:action ugly1433121ugly27ugly2ugly13ugly26make-product-p14 :parameters ()
  :precondition (and (not-made p14) (started o1)) :effect
  (and (not (not-made p14)) (made p14)))
 (:action ugly1433122ugly21ugly21ugly21ugly21ship-order-o5 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o5) (made p7) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o5)) (shipped o5) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433123ugly15ugly8ugly12ugly3make-product-p4 :parameters ()
  :precondition (and (not-made p4) (started o12)) :effect
  (and (not (not-made p4)) (made p4)))
 (:action ugly1433124ugly13ugly26ugly16ugly25make-product-p5 :parameters ()
  :precondition (and (not-made p5) (started o10)) :effect
  (and (not (not-made p5)) (made p5)))
 (:action ugly1433125ugly2ugly13ugly26ugly16ship-order-o9 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o9) (made p7) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o9)) (shipped o9) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433126ugly17ugly11ugly30ugly20ship-order-o1 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o1) (made p14) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o1)) (shipped o1) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433127ugly10ugly1ugly27ugly2make-product-p11 :parameters ()
  :precondition (and (not-made p11) (started o7) (started o10)) :effect
  (and (not (not-made p11)) (made p11)))
 (:action ugly1433128ugly29ugly24ugly18ugly29ship-order-o8 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o8) (made p2) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o8)) (shipped o8) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433129ugly8ugly12ugly3ugly6ship-order-o6 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o6) (made p9) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o6)) (shipped o6) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433130ugly18ugly29ugly24ugly18ship-order-o13 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o13) (made p8) (made p9) (made p12) (made p13)
       (stacks-avail ?avail) (next-count ?avail ?new-avail))
  :effect
  (and (not (started o13)) (shipped o13) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433131ugly1ugly27ugly2ugly13ship-order-o10 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o10) (made p5) (made p11) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o10)) (shipped o10) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433132ugly4ugly9ugly10ugly1ship-order-o11 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o11) (made p8) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o11)) (shipped o11) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433133ugly6ugly22ugly19ugly5make-product-p2 :parameters ()
  :precondition (and (not-made p2) (started o8)) :effect
  (and (not (not-made p2)) (made p2)))
 (:action ugly1433134ugly7ugly14ugly28ugly23make-product-p13 :parameters ()
  :precondition (and (not-made p13) (started o13)) :effect
  (and (not (not-made p13)) (made p13)))
 (:action ugly1433135ugly11ugly30ugly20ugly17make-product-p9 :parameters ()
  :precondition (and (not-made p9) (started o6) (started o13)) :effect
  (and (not (not-made p9)) (made p9)))
 (:action ugly1433136ugly22ugly19ugly5ugly4make-product-p7 :parameters ()
  :precondition (and (not-made p7) (started o5) (started o7) (started o9))
  :effect (and (not (not-made p7)) (made p7)))
 (:action ugly1433137ugly30ugly20ugly17ugly11ship-order-o14 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o14) (made p1) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o14)) (shipped o14) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433138ugly12ugly3ugly6ugly22ship-order-o3 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o3) (made p3) (made p10) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o3)) (shipped o3) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433139ugly20ugly17ugly11ugly30ship-order-o4 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o4) (made p3) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o4)) (shipped o4) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433140ugly19ugly5ugly4ugly9make-product-p8 :parameters ()
  :precondition (and (not-made p8) (started o11) (started o13)) :effect
  (and (not (not-made p8)) (made p8)))
 (:action ugly1433141ugly23ugly15ugly8ugly12make-product-p1 :parameters ()
  :precondition (and (not-made p1) (started o14)) :effect
  (and (not (not-made p1)) (made p1)))
 (:action ugly1433142ugly3ugly6ugly22ugly19make-product-p3 :parameters ()
  :precondition (and (not-made p3) (started o3) (started o4) (started o7))
  :effect (and (not (not-made p3)) (made p3)))
 (:action ugly1433143ugly26ugly16ugly25ugly7make-product-p12 :parameters ()
  :precondition (and (not-made p12) (started o13)) :effect
  (and (not (not-made p12)) (made p12)))
 (:action ugly1433144ugly9ugly10ugly1ugly27start-order :parameters
  (?o - order ?avail ?new-avail - count) :precondition
  (and (waiting ?o) (stacks-avail ?avail) (next-count ?new-avail ?avail))
  :effect
  (and (not (waiting ?o)) (started ?o) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433145ugly5ugly4ugly9ugly10open-new-stack :parameters
  (?open ?new-open - count) :precondition
  (and (stacks-avail ?open) (next-count ?open ?new-open)) :effect
  (and (not (stacks-avail ?open)) (stacks-avail ?new-open)
       (increase (total-cost) 1)))) 