
(define (domain depot) (:requirements :strips :action-costs)
 (:predicates (clear ?x) (place ?x) (available ?x) (at ?x ?y) (truck ?x)
  (crate ?x) (surface ?x) (pallet ?x) (on ?x ?y) (locatable ?x)
  (distributor ?x) (lifting ?x ?y) (in ?x ?y) (hoist ?x) (depot ?x))
 (:functions (total-cost) - number)
 (:action ugly11034ugly11035ugly11038ugly1ugly2ugly5ugly3drive :parameters
  (?x ?y ?z) :precondition (and (truck ?x) (place ?y) (place ?z) (at ?x ?y))
  :effect (and (at ?x ?z) (not (at ?x ?y)) (increase (total-cost) 1)))
 (:action ugly11035ugly11038ugly11034ugly2ugly5ugly3ugly1lift :parameters
  (?x ?y ?z ?p) :precondition
  (and (hoist ?x) (crate ?y) (surface ?z) (place ?p) (at ?x ?p) (available ?x)
       (at ?y ?p) (on ?y ?z) (clear ?y))
  :effect
  (and (lifting ?x ?y) (clear ?z) (not (at ?y ?p)) (not (clear ?y))
       (not (available ?x)) (not (on ?y ?z))))
 (:action ugly11036ugly11037ugly11036ugly4ugly4ugly4ugly4load :parameters
  (?x ?y ?z ?p) :precondition
  (and (hoist ?x) (crate ?y) (truck ?z) (place ?p) (at ?x ?p) (at ?z ?p)
       (lifting ?x ?y))
  :effect (and (in ?y ?z) (available ?x) (not (lifting ?x ?y))))
 (:action ugly11037ugly11036ugly11037ugly3ugly1ugly2ugly5drop :parameters
  (?x ?y ?z ?p) :precondition
  (and (hoist ?x) (crate ?y) (surface ?z) (place ?p) (at ?x ?p) (at ?z ?p)
       (clear ?z) (lifting ?x ?y))
  :effect
  (and (available ?x) (at ?y ?p) (clear ?y) (on ?y ?z) (not (lifting ?x ?y))
       (not (clear ?z))))
 (:action ugly11038ugly11034ugly11035ugly5ugly3ugly1ugly2unload :parameters
  (?x ?y ?z ?p) :precondition
  (and (hoist ?x) (crate ?y) (truck ?z) (place ?p) (at ?x ?p) (at ?z ?p)
       (available ?x) (in ?y ?z))
  :effect (and (lifting ?x ?y) (not (in ?y ?z)) (not (available ?x))))) 