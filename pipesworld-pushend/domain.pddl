
(define (domain pipesworld_strips)
 (:requirements :strips :typing :action-costs)
 (:predicates (occupied ?tank-slot - tank-slot)
  (connect ?from ?to - area ?pipe - pipe)
  (is-product ?batch-atom - batch-atom ?product - product)
  (on ?batch-atom - batch-atom ?area - area) (push-updating ?pipe - pipe)
  (last ?batch-atom - batch-atom ?pipe - pipe) (normal ?pipe - pipe)
  (pop-updating ?pipe - pipe) (first ?batch-atom - batch-atom ?pipe - pipe)
  (not-occupied ?tank-slot - tank-slot)
  (tank-slot-product-location ?tank-slot - tank-slot ?product - product ?area -
   area)
  (follow ?next ?previous - batch-atom)
  (may-interface ?product-a ?product-b - product) (not-unitary ?pipe - pipe)
  (unitary ?pipe - pipe))
 (:types pipe area product batch-atom tank-slot)
 (:constants lco gasoleo rat-a oca1 oc1b - product)
 (:functions (total-cost) - number)
 (:action ugly37ugly4ugly3ugly6ugly4pop-start :parameters
  (?pipe - pipe ?batch-atom-in - batch-atom ?from-area - area ?to-area - area
   ?last-batch-atom - batch-atom ?product-batch-atom-in - product
   ?product-last-batch - product ?tank-slot - tank-slot)
  :precondition
  (and (normal ?pipe) (not-unitary ?pipe) (connect ?from-area ?to-area ?pipe)
       (last ?last-batch-atom ?pipe) (on ?batch-atom-in ?to-area)
       (is-product ?batch-atom-in ?product-batch-atom-in)
       (is-product ?last-batch-atom ?product-last-batch)
       (may-interface ?product-batch-atom-in ?product-last-batch)
       (tank-slot-product-location ?tank-slot ?product-batch-atom-in ?to-area)
       (occupied ?tank-slot))
  :effect
  (and (pop-updating ?pipe) (not (normal ?pipe)) (last ?batch-atom-in ?pipe)
       (not (last ?last-batch-atom ?pipe))
       (follow ?batch-atom-in ?last-batch-atom)
       (not (on ?batch-atom-in ?to-area)) (not (occupied ?tank-slot))
       (not-occupied ?tank-slot)))
 (:action ugly38ugly1ugly2ugly5ugly1push-end :parameters
  (?pipe - pipe ?from-area - area ?to-area - area ?last-batch-atom - batch-atom
   ?next-last-batch-atom - batch-atom ?product-last-batch - product ?tank-slot
   - tank-slot)
  :precondition
  (and (push-updating ?pipe) (not-unitary ?pipe)
       (connect ?from-area ?to-area ?pipe) (last ?last-batch-atom ?pipe)
       (follow ?last-batch-atom ?next-last-batch-atom)
       (is-product ?last-batch-atom ?product-last-batch)
       (tank-slot-product-location ?tank-slot ?product-last-batch ?to-area)
       (not-occupied ?tank-slot))
  :effect
  (and (increase (total-cost) 1) (not (push-updating ?pipe)) (normal ?pipe)
       (not (follow ?last-batch-atom ?next-last-batch-atom))
       (last ?next-last-batch-atom ?pipe) (not (last ?last-batch-atom ?pipe))
       (on ?last-batch-atom ?to-area) (occupied ?tank-slot)
       (not (not-occupied ?tank-slot))))
 (:action ugly39ugly3ugly6ugly4ugly3pop-unitarypipe :parameters
  (?pipe - pipe ?batch-atom-in - batch-atom ?from-area - area ?to-area - area
   ?first-batch-atom - batch-atom ?product-batch-atom-in - product
   ?product-first-batch - product ?from-tank-slot - tank-slot ?to-tank-slot -
   tank-slot)
  :precondition
  (and (first ?first-batch-atom ?pipe) (connect ?from-area ?to-area ?pipe)
       (on ?batch-atom-in ?to-area) (unitary ?pipe)
       (is-product ?batch-atom-in ?product-batch-atom-in)
       (is-product ?first-batch-atom ?product-first-batch)
       (may-interface ?product-batch-atom-in ?product-first-batch)
       (tank-slot-product-location ?to-tank-slot ?product-batch-atom-in
        ?to-area)
       (occupied ?to-tank-slot)
       (tank-slot-product-location ?from-tank-slot ?product-first-batch
        ?from-area)
       (not-occupied ?from-tank-slot))
  :effect
  (and (last ?batch-atom-in ?pipe) (not (last ?first-batch-atom ?pipe))
       (first ?batch-atom-in ?pipe) (not (first ?first-batch-atom ?pipe))
       (not (on ?batch-atom-in ?to-area)) (not (occupied ?to-tank-slot))
       (not-occupied ?to-tank-slot) (on ?first-batch-atom ?from-area)
       (occupied ?from-tank-slot) (not (not-occupied ?from-tank-slot))))
 (:action ugly40ugly6ugly4ugly3ugly6pop-end :parameters
  (?pipe - pipe ?from-area - area ?to-area - area ?first-batch-atom -
   batch-atom ?next-first-batch-atom - batch-atom ?product-first-batch -
   product ?tank-slot - tank-slot)
  :precondition
  (and (pop-updating ?pipe) (not-unitary ?pipe)
       (connect ?from-area ?to-area ?pipe) (first ?first-batch-atom ?pipe)
       (follow ?next-first-batch-atom ?first-batch-atom)
       (tank-slot-product-location ?tank-slot ?product-first-batch ?from-area)
       (not-occupied ?tank-slot))
  :effect
  (and (not (pop-updating ?pipe)) (normal ?pipe)
       (not (follow ?next-first-batch-atom ?first-batch-atom))
       (first ?next-first-batch-atom ?pipe)
       (not (first ?first-batch-atom ?pipe)) (on ?first-batch-atom ?from-area)
       (occupied ?tank-slot) (not (not-occupied ?tank-slot))))
 (:action ugly41ugly2ugly5ugly1ugly2push-unitarypipe :parameters
  (?pipe - pipe ?batch-atom-in - batch-atom ?from-area - area ?to-area - area
   ?first-batch-atom - batch-atom ?product-batch-atom-in - product
   ?product-first-batch - product ?from-tank-slot - tank-slot ?to-tank-slot -
   tank-slot)
  :precondition
  (and (first ?first-batch-atom ?pipe) (connect ?from-area ?to-area ?pipe)
       (on ?batch-atom-in ?from-area) (unitary ?pipe)
       (is-product ?batch-atom-in ?product-batch-atom-in)
       (is-product ?first-batch-atom ?product-first-batch)
       (may-interface ?product-batch-atom-in ?product-first-batch)
       (tank-slot-product-location ?from-tank-slot ?product-batch-atom-in
        ?from-area)
       (occupied ?from-tank-slot)
       (tank-slot-product-location ?to-tank-slot ?product-first-batch ?to-area)
       (not-occupied ?to-tank-slot))
  :effect
  (and (first ?batch-atom-in ?pipe) (not (first ?first-batch-atom ?pipe))
       (last ?batch-atom-in ?pipe) (not (last ?first-batch-atom ?pipe))
       (not (on ?batch-atom-in ?from-area)) (not (occupied ?from-tank-slot))
       (not-occupied ?from-tank-slot) (on ?first-batch-atom ?to-area)
       (occupied ?to-tank-slot) (not (not-occupied ?to-tank-slot))))
 (:action ugly42ugly5ugly1ugly2ugly5push-start :parameters
  (?pipe - pipe ?batch-atom-in - batch-atom ?from-area - area ?to-area - area
   ?first-batch-atom - batch-atom ?product-batch-atom-in - product
   ?product-first-batch - product ?tank-slot - tank-slot)
  :precondition
  (and (normal ?pipe) (not-unitary ?pipe) (connect ?from-area ?to-area ?pipe)
       (first ?first-batch-atom ?pipe) (on ?batch-atom-in ?from-area)
       (is-product ?batch-atom-in ?product-batch-atom-in)
       (is-product ?first-batch-atom ?product-first-batch)
       (may-interface ?product-batch-atom-in ?product-first-batch)
       (tank-slot-product-location ?tank-slot ?product-batch-atom-in
        ?from-area)
       (occupied ?tank-slot))
  :effect
  (and (push-updating ?pipe) (not (normal ?pipe)) (first ?batch-atom-in ?pipe)
       (not (first ?first-batch-atom ?pipe))
       (follow ?first-batch-atom ?batch-atom-in)
       (not (on ?batch-atom-in ?from-area)) (not (occupied ?tank-slot))
       (not-occupied ?tank-slot)))) 