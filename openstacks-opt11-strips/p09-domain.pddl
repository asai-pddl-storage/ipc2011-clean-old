
(define (domain openstacks-sequencedstrips-nonadl-nonnegated)
 (:requirements :typing :action-costs)
 (:predicates (shipped ?o - order) (waiting ?o - order)
  (next-count ?s ?ns - count) (stacks-avail ?s - count) (not-made ?p - product)
  (made ?p - product) (includes ?o - order ?p - product) (started ?o - order))
 (:types order product count)
 (:constants p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 -
  product o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16 o17 o18 -
  order)
 (:functions (total-cost) - number)
 (:action ugly1433248ugly29ugly8ugly9ugly26make-product-p15 :parameters ()
  :precondition (and (not-made p15) (started o9)) :effect
  (and (not (not-made p15)) (made p15)))
 (:action ugly1433249ugly24ugly11ugly34ugly27make-product-p18 :parameters ()
  :precondition (and (not-made p18) (started o18)) :effect
  (and (not (not-made p18)) (made p18)))
 (:action ugly1433250ugly5ugly21ugly32ugly10make-product-p1 :parameters ()
  :precondition (and (not-made p1) (started o12)) :effect
  (and (not (not-made p1)) (made p1)))
 (:action ugly1433251ugly30ugly5ugly21ugly32make-product-p8 :parameters ()
  :precondition (and (not-made p8) (started o2) (started o14) (started o18))
  :effect (and (not (not-made p8)) (made p8)))
 (:action ugly1433252ugly13ugly2ugly6ugly31ship-order-o3 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o3) (made p13) (made p17) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o3)) (shipped o3) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433253ugly22ugly30ugly5ugly21ship-order-o12 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o12) (made p1) (made p13) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o12)) (shipped o12) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433254ugly32ugly10ugly3ugly29make-product-p6 :parameters ()
  :precondition (and (not-made p6) (started o1) (started o13)) :effect
  (and (not (not-made p6)) (made p6)))
 (:action ugly1433255ugly4ugly35ugly37ugly19make-product-p13 :parameters ()
  :precondition
  (and (not-made p13) (started o3) (started o5) (started o11) (started o12))
  :effect (and (not (not-made p13)) (made p13)))
 (:action ugly1433256ugly17ugly13ugly2ugly6ship-order-o11 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o11) (made p12) (made p13) (made p16) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o11)) (shipped o11) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433257ugly27ugly20ugly16ugly7ship-order-o13 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o13) (made p5) (made p6) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o13)) (shipped o13) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433258ugly23ugly4ugly35ugly37make-product-p17 :parameters ()
  :precondition (and (not-made p17) (started o3) (started o7) (started o10))
  :effect (and (not (not-made p17)) (made p17)))
 (:action ugly1433259ugly7ugly33ugly12ugly22ship-order-o10 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o10) (made p17) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o10)) (shipped o10) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433260ugly3ugly29ugly8ugly9ship-order-o6 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o6) (made p3) (made p9) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o6)) (shipped o6) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433261ugly36ugly1ugly36ugly1ship-order-o16 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o16) (made p14) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o16)) (shipped o16) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433262ugly1ugly36ugly1ugly36open-new-stack :parameters
  (?open ?new-open - count) :precondition
  (and (stacks-avail ?open) (next-count ?open ?new-open)) :effect
  (and (not (stacks-avail ?open)) (stacks-avail ?new-open)
       (increase (total-cost) 1)))
 (:action ugly1433263ugly37ugly19ugly15ugly28ship-order-o4 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o4) (made p3) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o4)) (shipped o4) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433264ugly12ugly22ugly30ugly5ship-order-o1 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o1) (made p4) (made p6) (made p11) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o1)) (shipped o1) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433265ugly26ugly17ugly13ugly2make-product-p4 :parameters ()
  :precondition (and (not-made p4) (started o1) (started o8)) :effect
  (and (not (not-made p4)) (made p4)))
 (:action ugly1433266ugly31ugly23ugly4ugly35ship-order-o17 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o17) (made p5) (made p7) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o17)) (shipped o17) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433267ugly2ugly6ugly31ugly23make-product-p2 :parameters ()
  :precondition (and (not-made p2) (started o5)) :effect
  (and (not (not-made p2)) (made p2)))
 (:action ugly1433268ugly38ugly14ugly38ugly14ship-order-o18 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o18) (made p8) (made p18) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o18)) (shipped o18) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433269ugly33ugly12ugly22ugly30make-product-p3 :parameters ()
  :precondition (and (not-made p3) (started o4) (started o6)) :effect
  (and (not (not-made p3)) (made p3)))
 (:action ugly1433270ugly10ugly3ugly29ugly8make-product-p7 :parameters ()
  :precondition (and (not-made p7) (started o17)) :effect
  (and (not (not-made p7)) (made p7)))
 (:action ugly1433271ugly18ugly25ugly18ugly25make-product-p16 :parameters ()
  :precondition (and (not-made p16) (started o11)) :effect
  (and (not (not-made p16)) (made p16)))
 (:action ugly1433272ugly20ugly16ugly7ugly33make-product-p10 :parameters ()
  :precondition (and (not-made p10) (started o14)) :effect
  (and (not (not-made p10)) (made p10)))
 (:action ugly1433273ugly15ugly28ugly24ugly11ship-order-o14 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o14) (made p8) (made p10) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o14)) (shipped o14) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433274ugly21ugly32ugly10ugly3ship-order-o9 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o9) (made p15) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o9)) (shipped o9) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433275ugly11ugly34ugly27ugly20make-product-p14 :parameters ()
  :precondition (and (not-made p14) (started o15) (started o16)) :effect
  (and (not (not-made p14)) (made p14)))
 (:action ugly1433276ugly14ugly38ugly14ugly38make-product-p12 :parameters ()
  :precondition (and (not-made p12) (started o11)) :effect
  (and (not (not-made p12)) (made p12)))
 (:action ugly1433277ugly19ugly15ugly28ugly24make-product-p9 :parameters ()
  :precondition (and (not-made p9) (started o6)) :effect
  (and (not (not-made p9)) (made p9)))
 (:action ugly1433278ugly9ugly26ugly17ugly13start-order :parameters
  (?o - order ?avail ?new-avail - count) :precondition
  (and (waiting ?o) (stacks-avail ?avail) (next-count ?new-avail ?avail))
  :effect
  (and (not (waiting ?o)) (started ?o) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433279ugly25ugly18ugly25ugly18ship-order-o5 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o5) (made p2) (made p13) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o5)) (shipped o5) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433280ugly8ugly9ugly26ugly17make-product-p11 :parameters ()
  :precondition (and (not-made p11) (started o1)) :effect
  (and (not (not-made p11)) (made p11)))
 (:action ugly1433281ugly35ugly37ugly19ugly15ship-order-o8 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o8) (made p4) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o8)) (shipped o8) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433282ugly28ugly24ugly11ugly34ship-order-o7 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o7) (made p17) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o7)) (shipped o7) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433283ugly6ugly31ugly23ugly4ship-order-o15 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o15) (made p14) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o15)) (shipped o15) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433284ugly34ugly27ugly20ugly16make-product-p5 :parameters ()
  :precondition (and (not-made p5) (started o13) (started o17)) :effect
  (and (not (not-made p5)) (made p5)))
 (:action ugly1433285ugly16ugly7ugly33ugly12ship-order-o2 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o2) (made p8) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o2)) (shipped o2) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))) 