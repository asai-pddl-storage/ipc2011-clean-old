
(define (domain transport) (:requirements :typing :action-costs)
 (:predicates (capacity-predecessor ?s1 ?s2 - capacity-number)
  (capacity ?v - vehicle ?s1 - capacity-number) (road ?l1 ?l2 - location)
  (in ?x - package ?v - vehicle) (at ?x - locatable ?v - location))
 (:types location target locatable - object vehicle package - locatable
  capacity-number - object)
 (:functions (total-cost) - number)
 (:action ugly1drive :parameters (?v - vehicle ?l1 ?l2 - location)
  :precondition (and (at ?v ?l1) (road ?l1 ?l2)) :effect
  (and (not (at ?v ?l1)) (at ?v ?l2)
       (increase (total-cost) (road-length ?l1 ?l2))))
 (:action ugly2drop :parameters
  (?v - vehicle ?l - location ?p - package ?s1 ?s2 - capacity-number)
  :precondition
  (and (at ?v ?l) (in ?p ?v) (capacity-predecessor ?s1 ?s2) (capacity ?v ?s1))
  :effect
  (and (not (in ?p ?v)) (at ?p ?l) (capacity ?v ?s2) (not (capacity ?v ?s1))
       (increase (total-cost) 1)))
 (:action ugly3pick-up :parameters
  (?v - vehicle ?l - location ?p - package ?s1 ?s2 - capacity-number)
  :precondition
  (and (at ?v ?l) (at ?p ?l) (capacity-predecessor ?s1 ?s2) (capacity ?v ?s2))
  :effect
  (and (not (at ?p ?l)) (in ?p ?v) (capacity ?v ?s1) (not (capacity ?v ?s2))
       (increase (total-cost) 1)))) 