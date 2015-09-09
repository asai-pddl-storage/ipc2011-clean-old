
(define (domain blocks) (:requirements :strips)
 (:predicates (holding ?x) (handempty) (on ?x ?y) (clear ?x) (ontable ?x))
 (:action ugly1pick-up :parameters (?x) :precondition
  (and (clear ?x) (ontable ?x) (handempty)) :effect
  (and (not (ontable ?x)) (not (clear ?x)) (not (handempty)) (holding ?x)))
 (:action ugly2stack :parameters (?x ?y) :precondition
  (and (holding ?x) (clear ?y)) :effect
  (and (not (holding ?x)) (not (clear ?y)) (clear ?x) (handempty) (on ?x ?y)))
 (:action ugly3unstack :parameters (?x ?y) :precondition
  (and (on ?x ?y) (clear ?x) (handempty)) :effect
  (and (holding ?x) (clear ?y) (not (clear ?x)) (not (handempty))
       (not (on ?x ?y))))
 (:action ugly4put-down :parameters (?x) :precondition (holding ?x) :effect
  (and (not (holding ?x)) (clear ?x) (handempty) (ontable ?x)))) 