
(define (domain openstacks-sequencedstrips-nonadl-nonnegated)
 (:requirements :typing :action-costs)
 (:predicates (includes ?o - order ?p - product) (shipped ?o - order)
  (not-made ?p - product) (started ?o - order) (next-count ?s ?ns - count)
  (made ?p - product) (waiting ?o - order) (stacks-avail ?s - count))
 (:types order product count)
 (:constants p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  p20 p21 p22 p23 - product o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15
  o16 o17 o18 o19 o20 o21 o22 o23 - order)
 (:functions (total-cost) - number)
 (:action ugly1433512ugly8ugly47ugly41ugly21make-product-p2 :parameters ()
  :precondition (and (not-made p2) (started o6)) :effect
  (and (not (not-made p2)) (made p2)))
 (:action ugly1433513ugly25ugly14ugly38ugly34ship-order-o3 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o3) (made p5) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o3)) (shipped o3) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433514ugly42ugly26ugly20ugly6start-order :parameters
  (?o - order ?avail ?new-avail - count) :precondition
  (and (waiting ?o) (stacks-avail ?avail) (next-count ?new-avail ?avail))
  :effect
  (and (not (waiting ?o)) (started ?o) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433515ugly2ugly37ugly39ugly43make-product-p7 :parameters ()
  :precondition (and (not-made p7) (started o4)) :effect
  (and (not (not-made p7)) (made p7)))
 (:action ugly1433516ugly4ugly8ugly47ugly41make-product-p19 :parameters ()
  :precondition (and (not-made p19) (started o14) (started o16) (started o17))
  :effect (and (not (not-made p19)) (made p19)))
 (:action ugly1433517ugly14ugly38ugly34ugly28make-product-p13 :parameters ()
  :precondition (and (not-made p13) (started o22)) :effect
  (and (not (not-made p13)) (made p13)))
 (:action ugly1433518ugly23ugly30ugly7ugly23ship-order-o5 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o5) (made p14) (made p21) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o5)) (shipped o5) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433519ugly45ugly25ugly14ugly38ship-order-o9 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o9) (made p18) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o9)) (shipped o9) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433520ugly19ugly32ugly12ugly29make-product-p15 :parameters ()
  :precondition (and (not-made p15) (started o16)) :effect
  (and (not (not-made p15)) (made p15)))
 (:action ugly1433521ugly44ugly19ugly32ugly12ship-order-o4 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o4) (made p6) (made p7) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o4)) (shipped o4) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433522ugly32ugly12ugly29ugly17make-product-p14 :parameters ()
  :precondition (and (not-made p14) (started o5)) :effect
  (and (not (not-made p14)) (made p14)))
 (:action ugly1433523ugly26ugly20ugly6ugly2ship-order-o12 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o12) (made p8) (made p12) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o12)) (shipped o12) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433524ugly17ugly16ugly11ugly1ship-order-o19 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o19) (made p10) (made p12) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o19)) (shipped o19) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433525ugly22ugly36ugly42ugly26make-product-p18 :parameters ()
  :precondition
  (and (not-made p18) (started o2) (started o9) (started o13) (started o16))
  :effect (and (not (not-made p18)) (made p18)))
 (:action ugly1433526ugly28ugly15ugly3ugly40make-product-p11 :parameters ()
  :precondition (and (not-made p11) (started o10)) :effect
  (and (not (not-made p11)) (made p11)))
 (:action ugly1433527ugly31ugly22ugly36ugly42ship-order-o1 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o1) (made p3) (made p17) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o1)) (shipped o1) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433528ugly43ugly9ugly45ugly25make-product-p12 :parameters ()
  :precondition (and (not-made p12) (started o10) (started o12) (started o19))
  :effect (and (not (not-made p12)) (made p12)))
 (:action ugly1433529ugly48ugly27ugly10ugly35make-product-p22 :parameters ()
  :precondition (and (not-made p22) (started o13)) :effect
  (and (not (not-made p22)) (made p22)))
 (:action ugly1433530ugly16ugly11ugly1ugly44make-product-p17 :parameters ()
  :precondition (and (not-made p17) (started o1)) :effect
  (and (not (not-made p17)) (made p17)))
 (:action ugly1433531ugly1ugly44ugly19ugly32make-product-p10 :parameters ()
  :precondition (and (not-made p10) (started o11) (started o19)) :effect
  (and (not (not-made p10)) (made p10)))
 (:action ugly1433532ugly7ugly23ugly30ugly7make-product-p21 :parameters ()
  :precondition
  (and (not-made p21) (started o5) (started o7) (started o21) (started o23))
  :effect (and (not (not-made p21)) (made p21)))
 (:action ugly1433533ugly35ugly24ugly33ugly18ship-order-o21 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o21) (made p21) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o21)) (shipped o21) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433534ugly37ugly39ugly43ugly9ship-order-o20 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o20) (made p8) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o20)) (shipped o20) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433535ugly34ugly28ugly15ugly3ship-order-o15 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o15) (made p5) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o15)) (shipped o15) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433536ugly5ugly31ugly22ugly36ship-order-o17 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o17) (made p19) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o17)) (shipped o17) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433537ugly15ugly3ugly40ugly13make-product-p3 :parameters ()
  :precondition (and (not-made p3) (started o1)) :effect
  (and (not (not-made p3)) (made p3)))
 (:action ugly1433538ugly3ugly40ugly13ugly5ship-order-o6 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o6) (made p2) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o6)) (shipped o6) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433539ugly46ugly48ugly27ugly10ship-order-o10 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o10) (made p5) (made p11) (made p12) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o10)) (shipped o10) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433540ugly24ugly33ugly18ugly46ship-order-o23 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o23) (made p21) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o23)) (shipped o23) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433541ugly39ugly43ugly9ugly45make-product-p23 :parameters ()
  :precondition (and (not-made p23) (started o2)) :effect
  (and (not (not-made p23)) (made p23)))
 (:action ugly1433542ugly10ugly35ugly24ugly33make-product-p16 :parameters ()
  :precondition (and (not-made p16) (started o13)) :effect
  (and (not (not-made p16)) (made p16)))
 (:action ugly1433543ugly20ugly6ugly2ugly37ship-order-o14 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o14) (made p19) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o14)) (shipped o14) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433544ugly40ugly13ugly5ugly31make-product-p20 :parameters ()
  :precondition (and (not-made p20) (started o13)) :effect
  (and (not (not-made p20)) (made p20)))
 (:action ugly1433545ugly38ugly34ugly28ugly15make-product-p1 :parameters ()
  :precondition (and (not-made p1) (started o18)) :effect
  (and (not (not-made p1)) (made p1)))
 (:action ugly1433546ugly9ugly45ugly25ugly14ship-order-o13 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o13) (made p16) (made p18) (made p20) (made p22)
       (stacks-avail ?avail) (next-count ?avail ?new-avail))
  :effect
  (and (not (started o13)) (shipped o13) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433547ugly13ugly5ugly31ugly22ship-order-o11 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o11) (made p9) (made p10) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o11)) (shipped o11) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433548ugly33ugly18ugly46ugly48ship-order-o2 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o2) (made p18) (made p23) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o2)) (shipped o2) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433549ugly41ugly21ugly4ugly8ship-order-o22 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o22) (made p4) (made p13) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o22)) (shipped o22) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433550ugly27ugly10ugly35ugly24ship-order-o8 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o8) (made p9) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o8)) (shipped o8) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433551ugly18ugly46ugly48ugly27make-product-p8 :parameters ()
  :precondition (and (not-made p8) (started o12) (started o20)) :effect
  (and (not (not-made p8)) (made p8)))
 (:action ugly1433552ugly47ugly41ugly21ugly4make-product-p6 :parameters ()
  :precondition (and (not-made p6) (started o4)) :effect
  (and (not (not-made p6)) (made p6)))
 (:action ugly1433553ugly21ugly4ugly8ugly47ship-order-o16 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o16) (made p15) (made p18) (made p19) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o16)) (shipped o16) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433554ugly30ugly7ugly23ugly30make-product-p5 :parameters ()
  :precondition (and (not-made p5) (started o3) (started o10) (started o15))
  :effect (and (not (not-made p5)) (made p5)))
 (:action ugly1433555ugly29ugly17ugly16ugly11open-new-stack :parameters
  (?open ?new-open - count) :precondition
  (and (stacks-avail ?open) (next-count ?open ?new-open)) :effect
  (and (not (stacks-avail ?open)) (stacks-avail ?new-open)
       (increase (total-cost) 1)))
 (:action ugly1433556ugly36ugly42ugly26ugly20make-product-p4 :parameters ()
  :precondition (and (not-made p4) (started o22)) :effect
  (and (not (not-made p4)) (made p4)))
 (:action ugly1433557ugly12ugly29ugly17ugly16make-product-p9 :parameters ()
  :precondition (and (not-made p9) (started o8) (started o11)) :effect
  (and (not (not-made p9)) (made p9)))
 (:action ugly1433558ugly11ugly1ugly44ugly19ship-order-o7 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o7) (made p21) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o7)) (shipped o7) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))
 (:action ugly1433559ugly6ugly2ugly37ugly39ship-order-o18 :parameters
  (?avail ?new-avail - count) :precondition
  (and (started o18) (made p1) (stacks-avail ?avail)
       (next-count ?avail ?new-avail))
  :effect
  (and (not (started o18)) (shipped o18) (not (stacks-avail ?avail))
       (stacks-avail ?new-avail)))) 