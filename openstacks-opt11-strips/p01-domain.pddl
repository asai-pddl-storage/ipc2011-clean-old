
(define (domain openstacks-sequencedstrips-nonadl-nonnegated)
 (:requirements :typing :action-costs)
 (:predicates (started ?o - order) (stacks-avail ?s - count)
  (waiting ?o - order) (shipped ?o - order) (made ?p - product)
  (not-made ?p - product) (next-count ?s ?ns - count)
  (includes ?o - order ?p - product))
 (:types order product count)
 (:constants p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 - product o1 o2 o3 o4 o5 o6 o7 o8
  o9 o10 - order)
 (:functions (total-cost) - number)
 (:action ugly1433016ugly22ugly6ugly13ugly20ship-order-o6 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o6) (made p5) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o6)) (shipped o6) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433017ugly20ugly18ugly14ugly16make-product-p2 :parameters ()
  :precondition (and (not-made p2) (started o2)) :effect
  (and (not (not-made p2)) (made p2)))
 (:action ugly1433018ugly13ugly20ugly18ugly14ship-order-o4 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o4) (made p4) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o4)) (shipped o4) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433019ugly6ugly13ugly20ugly18ship-order-o2 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o2) (made p2) (made p10) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o2)) (shipped o2) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433020ugly4ugly3ugly8ugly17start-order :parameters
  (?o - order ?avail ?new-avail - count) :precondition
  (and (waiting ?o) (stacks-avail ?avail) (next-count ?new-avail ?avail))
  :effect
  (and (not (waiting ?o)) (started ?o) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433021ugly9ugly19ugly9ugly19make-product-p7 :parameters ()
  :precondition (and (not-made p7) (started o3)) :effect
  (and (not (not-made p7)) (made p7)))
 (:action ugly1433022ugly7ugly11ugly1ugly12ship-order-o3 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o3) (made p1) (made p7) (made p8) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o3)) (shipped o3) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433023ugly12ugly15ugly10ugly7make-product-p9 :parameters ()
  :precondition (and (not-made p9) (started o1) (started o10)) :effect
  (and (not (not-made p9)) (made p9)))
 (:action ugly1433024ugly1ugly12ugly15ugly10make-product-p5 :parameters ()
  :precondition (and (not-made p5) (started o6) (started o7)) :effect
  (and (not (not-made p5)) (made p5)))
 (:action ugly1433025ugly10ugly7ugly11ugly1make-product-p10 :parameters ()
  :precondition (and (not-made p10) (started o1) (started o2)) :effect
  (and (not (not-made p10)) (made p10)))
 (:action ugly1433026ugly11ugly1ugly12ugly15make-product-p8 :parameters ()
  :precondition (and (not-made p8) (started o3)) :effect
  (and (not (not-made p8)) (made p8)))
 (:action ugly1433027ugly14ugly16ugly4ugly3make-product-p6 :parameters ()
  :precondition (and (not-made p6) (started o1)) :effect
  (and (not (not-made p6)) (made p6)))
 (:action ugly1433028ugly3ugly8ugly17ugly2make-product-p3 :parameters ()
  :precondition (and (not-made p3) (started o5) (started o8)) :effect
  (and (not (not-made p3)) (made p3)))
 (:action ugly1433029ugly21ugly22ugly6ugly13ship-order-o8 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o8) (made p3) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o8)) (shipped o8) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433030ugly18ugly14ugly16ugly4make-product-p1 :parameters ()
  :precondition (and (not-made p1) (started o3) (started o9)) :effect
  (and (not (not-made p1)) (made p1)))
 (:action ugly1433031ugly17ugly2ugly5ugly21ship-order-o10 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o10) (made p9) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o10)) (shipped o10) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433032ugly16ugly4ugly3ugly8ship-order-o5 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o5) (made p3) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o5)) (shipped o5) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433033ugly2ugly5ugly21ugly22make-product-p4 :parameters ()
  :precondition (and (not-made p4) (started o4)) :effect
  (and (not (not-made p4)) (made p4)))
 (:action ugly1433034ugly15ugly10ugly7ugly11open-new-stack :parameters
  (?open ?new-open - count) :precondition
  (and (stacks-avail ?open) (next-count ?open ?new-open)) :effect
  (and (not (stacks-avail ?open)) (stacks-avail ?new-open)
       (increase (total-cost) 1)))
 (:action ugly1433035ugly8ugly17ugly2ugly5ship-order-o9 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o9) (made p1) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o9)) (shipped o9) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433036ugly5ugly21ugly22ugly6ship-order-o1 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o1) (made p6) (made p9) (made p10) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o1)) (shipped o1) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433037ugly19ugly9ugly19ugly9ship-order-o7 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o7) (made p5) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o7)) (shipped o7) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))) 