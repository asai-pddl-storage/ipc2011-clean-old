
(define (domain storage-propositional) (:requirements :typing)
 (:predicates (at ?h - hoist ?a - area) (compatible ?c1 ?c2 - crate)
  (lifting ?h - hoist ?c - crate) (in ?x - (either storearea crate) ?p - place)
  (available ?h - hoist) (connected ?a1 ?a2 - area) (clear ?s - storearea)
  (on ?c - crate ?s - storearea))
 (:types hoist surface place area - object container depot - place storearea
  transitarea - area area crate - surface)
 (:action ugly1move :parameters (?h - hoist ?from ?to - storearea)
  :precondition (and (at ?h ?from) (clear ?to) (connected ?from ?to)) :effect
  (and (not (at ?h ?from)) (at ?h ?to) (not (clear ?to)) (clear ?from)))
 (:action ugly2go-in :parameters
  (?h - hoist ?from - transitarea ?to - storearea) :precondition
  (and (at ?h ?from) (connected ?from ?to) (clear ?to)) :effect
  (and (not (at ?h ?from)) (at ?h ?to) (not (clear ?to))))
 (:action ugly3go-out :parameters
  (?h - hoist ?from - storearea ?to - transitarea) :precondition
  (and (at ?h ?from) (connected ?from ?to)) :effect
  (and (not (at ?h ?from)) (at ?h ?to) (clear ?from)))
 (:action ugly4lift :parameters
  (?h - hoist ?c - crate ?a1 - storearea ?a2 - area ?p - place) :precondition
  (and (connected ?a1 ?a2) (at ?h ?a2) (available ?h) (on ?c ?a1) (in ?a1 ?p))
  :effect
  (and (not (on ?c ?a1)) (clear ?a1) (not (available ?h)) (lifting ?h ?c)
       (not (in ?c ?p))))
 (:action ugly5drop :parameters
  (?h - hoist ?c - crate ?a1 - storearea ?a2 - area ?p - place) :precondition
  (and (connected ?a1 ?a2) (at ?h ?a2) (lifting ?h ?c) (clear ?a1) (in ?a1 ?p))
  :effect
  (and (not (lifting ?h ?c)) (available ?h) (not (clear ?a1)) (on ?c ?a1)
       (in ?c ?p)))) 