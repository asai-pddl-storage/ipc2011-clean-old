
(define (domain openstacks-sequencedstrips-nonadl-nonnegated)
 (:requirements :typing :action-costs)
 (:predicates (shipped ?o - order) (stacks-avail ?s - count)
  (next-count ?s ?ns - count) (not-made ?p - product) (waiting ?o - order)
  (made ?p - product) (started ?o - order) (includes ?o - order ?p - product))
 (:types order product count)
 (:constants p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  p20 p21 p22 p23 p24 p25 p26 p27 - product o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11
  o12 o13 o14 o15 o16 o17 o18 o19 o20 o21 o22 o23 o24 o25 o26 o27 - order)
 (:functions (total-cost) - number)
 (:action ugly1ugly44ugly6start-order :parameters
  (?o - order ?avail ?new-avail - count) :precondition
  (and (waiting ?o) (stacks-avail ?avail) (next-count ?new-avail ?avail))
  :effect
  (and (not (waiting ?o)) (started ?o) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly2ugly37ugly28make-product-p20 :parameters () :precondition
  (and (not-made p20) (started o8) (started o9) (started o18) (started o23))
  :effect (and (not (not-made p20)) (made p20)))
 (:action ugly3ugly40ugly42make-product-p18 :parameters () :precondition
  (and (not-made p18) (started o24)) :effect
  (and (not (not-made p18)) (made p18)))
 (:action ugly4ugly8ugly47make-product-p24 :parameters () :precondition
  (and (not-made p24) (started o6)) :effect
  (and (not (not-made p24)) (made p24)))
 (:action ugly5ugly31ugly33make-product-p2 :parameters () :precondition
  (and (not-made p2) (started o20)) :effect
  (and (not (not-made p2)) (made p2)))
 (:action ugly6ugly2ugly37make-product-p26 :parameters () :precondition
  (and (not-made p26) (started o8) (started o20)) :effect
  (and (not (not-made p26)) (made p26)))
 (:action ugly7ugly23ugly38make-product-p23 :parameters () :precondition
  (and (not-made p23) (started o5) (started o27)) :effect
  (and (not (not-made p23)) (made p23)))
 (:action ugly8ugly47ugly26make-product-p5 :parameters () :precondition
  (and (not-made p5) (started o3) (started o12)) :effect
  (and (not (not-made p5)) (made p5)))
 (:action ugly9ugly45ugly49make-product-p3 :parameters () :precondition
  (and (not-made p3) (started o8)) :effect (and (not (not-made p3)) (made p3)))
 (:action ugly10ugly35ugly53ship-order-o21 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o21) (made p19) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o21)) (shipped o21) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly11ugly1ugly44make-product-p4 :parameters () :precondition
  (and (not-made p4) (started o4)) :effect (and (not (not-made p4)) (made p4)))
 (:action ugly12ugly29ugly56make-product-p9 :parameters () :precondition
  (and (not-made p9) (started o7)) :effect (and (not (not-made p9)) (made p9)))
 (:action ugly13ugly55ugly15ship-order-o10 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o10) (made p13) (made p21) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o10)) (shipped o10) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly14ugly32ugly17make-product-p7 :parameters () :precondition
  (and (not-made p7) (started o16) (started o26)) :effect
  (and (not (not-made p7)) (made p7)))
 (:action ugly15ugly39ugly18ship-order-o17 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o17) (made p12) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o17)) (shipped o17) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly16ugly41ugly16ship-order-o12 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o12) (made p5) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o12)) (shipped o12) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly17ugly9ugly45ship-order-o20 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o20) (made p2) (made p17) (made p26) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o20)) (shipped o20) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly18ugly46ugly13ship-order-o26 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o26) (made p6) (made p7) (made p10) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o26)) (shipped o26) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly19ugly14ugly32make-product-p15 :parameters () :precondition
  (and (not-made p15) (started o1)) :effect
  (and (not (not-made p15)) (made p15)))
 (:action ugly20ugly27ugly3ship-order-o11 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o11) (made p14) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o11)) (shipped o11) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly21ugly12ugly29ship-order-o27 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o27) (made p19) (made p23) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o27)) (shipped o27) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly22ugly34ugly48ship-order-o14 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o14) (made p1) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o14)) (shipped o14) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly23ugly38ugly25ship-order-o1 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o1) (made p15) (made p19) (made p27) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o1)) (shipped o1) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly24ugly24ugly24make-product-p22 :parameters () :precondition
  (and (not-made p22) (started o18)) :effect
  (and (not (not-made p22)) (made p22)))
 (:action ugly25ugly30ugly36make-product-p19 :parameters () :precondition
  (and (not-made p19) (started o1) (started o13) (started o21) (started o27))
  :effect (and (not (not-made p19)) (made p19)))
 (:action ugly26ugly7ugly23ship-order-o9 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o9) (made p20) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o9)) (shipped o9) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly27ugly3ugly40ship-order-o13 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o13) (made p19) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o13)) (shipped o13) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly28ugly22ugly34ship-order-o19 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o19) (made p16) (made p25) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o19)) (shipped o19) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly29ugly56ugly11open-new-stack :parameters
  (?open ?new-open - count) :precondition
  (and (stacks-avail ?open) (next-count ?open ?new-open)) :effect
  (and (not (stacks-avail ?open)) (stacks-avail ?new-open)
       (increase (total-cost) 1)))
 (:action ugly30ugly36ugly21make-product-p10 :parameters () :precondition
  (and (not-made p10) (started o7) (started o16) (started o24) (started o26))
  :effect (and (not (not-made p10)) (made p10)))
 (:action ugly31ugly33ugly4make-product-p6 :parameters () :precondition
  (and (not-made p6) (started o16) (started o24) (started o26)) :effect
  (and (not (not-made p6)) (made p6)))
 (:action ugly32ugly17ugly9ship-order-o16 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o16) (made p6) (made p7) (made p10) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o16)) (shipped o16) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly33ugly4ugly8ship-order-o18 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o18) (made p20) (made p22) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o18)) (shipped o18) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly34ugly48ugly43make-product-p17 :parameters () :precondition
  (and (not-made p17) (started o20)) :effect
  (and (not (not-made p17)) (made p17)))
 (:action ugly35ugly53ugly50make-product-p8 :parameters () :precondition
  (and (not-made p8) (started o24)) :effect
  (and (not (not-made p8)) (made p8)))
 (:action ugly36ugly21ugly12make-product-p27 :parameters () :precondition
  (and (not-made p27) (started o1) (started o22)) :effect
  (and (not (not-made p27)) (made p27)))
 (:action ugly37ugly28ugly22ship-order-o5 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o5) (made p23) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o5)) (shipped o5) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly38ugly25ugly30ship-order-o7 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o7) (made p9) (made p10) (made p13) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o7)) (shipped o7) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly39ugly18ugly46make-product-p11 :parameters () :precondition
  (and (not-made p11) (started o2)) :effect
  (and (not (not-made p11)) (made p11)))
 (:action ugly40ugly42ugly20make-product-p25 :parameters () :precondition
  (and (not-made p25) (started o19)) :effect
  (and (not (not-made p25)) (made p25)))
 (:action ugly41ugly16ugly41make-product-p14 :parameters () :precondition
  (and (not-made p14) (started o11) (started o15) (started o25)) :effect
  (and (not (not-made p14)) (made p14)))
 (:action ugly42ugly20ugly27make-product-p1 :parameters () :precondition
  (and (not-made p1) (started o14)) :effect
  (and (not (not-made p1)) (made p1)))
 (:action ugly43ugly19ugly14ship-order-o3 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o3) (made p5) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o3)) (shipped o3) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly44ugly6ugly2ship-order-o8 :parameters (?avail ?new-avail - count)
  :precondition
  (and (started o8) (made p3) (made p20) (made p26) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o8)) (shipped o8) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly45ugly49ugly5ship-order-o2 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o2) (made p11) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o2)) (shipped o2) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly46ugly13ugly55make-product-p13 :parameters () :precondition
  (and (not-made p13) (started o4) (started o7) (started o10)) :effect
  (and (not (not-made p13)) (made p13)))
 (:action ugly47ugly26ugly7make-product-p21 :parameters () :precondition
  (and (not-made p21) (started o10)) :effect
  (and (not (not-made p21)) (made p21)))
 (:action ugly48ugly43ugly19make-product-p12 :parameters () :precondition
  (and (not-made p12) (started o17)) :effect
  (and (not (not-made p12)) (made p12)))
 (:action ugly49ugly5ugly31ship-order-o4 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o4) (made p4) (made p13) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o4)) (shipped o4) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly50ugly10ugly35ship-order-o24 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o24) (made p6) (made p8) (made p10) (made p18)
       (stacks-avail ?avail) (next-count ?avail ?new-avail))
  :effect
  (and (not (started o24)) (shipped o24) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly51ugly52ugly51ship-order-o23 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o23) (made p20) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o23)) (shipped o23) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly52ugly51ugly52ship-order-o22 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o22) (made p27) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o22)) (shipped o22) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly53ugly50ugly10ship-order-o6 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o6) (made p24) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o6)) (shipped o6) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly54ugly54ugly54ship-order-o25 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o25) (made p14) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o25)) (shipped o25) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly55ugly15ugly39make-product-p16 :parameters () :precondition
  (and (not-made p16) (started o19)) :effect
  (and (not (not-made p16)) (made p16)))
 (:action ugly56ugly11ugly1ship-order-o15 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o15) (made p14) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o15)) (shipped o15) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))) 