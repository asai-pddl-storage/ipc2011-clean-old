
(define (domain transport-strips) (:requirements :typing :action-costs)
 (:predicates (sum ?a ?b ?c - fuellevel) (at ?o - locatable ?l - location)
  (in ?p - package ?t - truck) (fuelcost ?level - fuellevel ?l1 ?l2 - location)
  (fuel ?t - truck ?level - fuellevel) (connected ?l1 ?l2 - location))
 (:types location fuellevel locatable - object package truck - locatable)
 (:functions (total-cost) - number)
 (:action ugly1ugly3unload :parameters (?p - package ?t - truck ?l - location)
  :precondition (and (at ?t ?l) (in ?p ?t)) :effect
  (and (at ?p ?l) (not (in ?p ?t))))
 (:action ugly2ugly1drive :parameters
  (?t - truck ?l1 - location ?l2 - location ?fuelpost - fuellevel ?fueldelta -
   fuellevel ?fuelpre - fuellevel)
  :precondition
  (and (connected ?l1 ?l2) (fuelcost ?fueldelta ?l1 ?l2) (fuel ?t ?fuelpre)
       (sum ?fuelpost ?fueldelta ?fuelpre) (at ?t ?l1))
  :effect
  (and (not (at ?t ?l1)) (at ?t ?l2) (not (fuel ?t ?fuelpre))
       (fuel ?t ?fuelpost) (increase (total-cost) 1)))
 (:action ugly3ugly2load :parameters (?p - package ?t - truck ?l - location)
  :precondition (and (at ?t ?l) (at ?p ?l)) :effect
  (and (not (at ?p ?l)) (in ?p ?t)))) 