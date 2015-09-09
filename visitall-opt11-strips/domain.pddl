
(define (domain grid-visit-all) (:requirements :typing)
 (:predicates (connected ?x ?y - place) (at-robot ?x - place)
  (visited ?x - place))
 (:types place - object)
 (:action ugly1ugly1ugly1move :parameters (?curpos ?nextpos - place)
  :precondition (and (at-robot ?curpos) (connected ?curpos ?nextpos)) :effect
  (and (at-robot ?nextpos) (not (at-robot ?curpos)) (visited ?nextpos)))) 