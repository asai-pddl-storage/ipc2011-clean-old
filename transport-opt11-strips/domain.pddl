
(define (domain transport) (:requirements :typing :action-costs)
 (:predicates (at ?x - locatable ?v - location)
  (capacity-predecessor ?s1 ?s2 - capacity-number) (road ?l1 ?l2 - location)
  (capacity ?v - vehicle ?s1 - capacity-number) (in ?x - package ?v - vehicle))
 (:types location target locatable - object vehicle package - locatable
  capacity-number - object)
 (:functions (total-cost) - number)
 (:action ugly1450431ugly3ugly2ugly3ugly2drop :parameters
  (?v - vehicle ?l - location ?p - package ?s1 ?s2 - capacity-number)
  :precondition
  (and (at ?v ?l) (in ?p ?v) (capacity-predecessor ?s1 ?s2) (capacity ?v ?s1))
  :effect
  (and (not (in ?p ?v)) (at ?p ?l) (capacity ?v ?s2) (not (capacity ?v ?s1))
       (increase (total-cost) 1)))
 (:action ugly1450432ugly2ugly3ugly2ugly3pick-up :parameters
  (?v - vehicle ?l - location ?p - package ?s1 ?s2 - capacity-number)
  :precondition
  (and (at ?v ?l) (at ?p ?l) (capacity-predecessor ?s1 ?s2) (capacity ?v ?s2))
  :effect
  (and (not (at ?p ?l)) (in ?p ?v) (capacity ?v ?s1) (not (capacity ?v ?s2))
       (increase (total-cost) 1)))
 (:action ugly1450433ugly1ugly1ugly1ugly1drive :parameters
  (?v - vehicle ?l1 ?l2 - location) :precondition
  (and (at ?v ?l1) (road ?l1 ?l2)) :effect
  (and (not (at ?v ?l1)) (at ?v ?l2)
       (increase (total-cost) (road-length ?l1 ?l2))))) 