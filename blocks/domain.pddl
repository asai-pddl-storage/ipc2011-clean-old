
(define (domain blocks) (:requirements :strips)
 (:predicates (ontable ?x) (clear ?x) (on ?x ?y) (handempty) (holding ?x))
 (:action
  ugly37490ugly37492ugly37490ugly37492ugly37490ugly37492ugly1ugly1ugly1ugly1pick-up
  :parameters (?x) :precondition (and (clear ?x) (ontable ?x) (handempty))
  :effect
  (and (not (ontable ?x)) (not (clear ?x)) (not (handempty)) (holding ?x)))
 (:action
  ugly37491ugly37493ugly37491ugly37493ugly37491ugly37493ugly2ugly3ugly4ugly2stack
  :parameters (?x ?y) :precondition (and (holding ?x) (clear ?y)) :effect
  (and (not (holding ?x)) (not (clear ?y)) (clear ?x) (handempty) (on ?x ?y)))
 (:action
  ugly37492ugly37490ugly37492ugly37490ugly37492ugly37490ugly3ugly4ugly2ugly3unstack
  :parameters (?x ?y) :precondition (and (on ?x ?y) (clear ?x) (handempty))
  :effect
  (and (holding ?x) (clear ?y) (not (clear ?x)) (not (handempty))
       (not (on ?x ?y))))
 (:action
  ugly37493ugly37491ugly37493ugly37491ugly37493ugly37491ugly4ugly2ugly3ugly4put-down
  :parameters (?x) :precondition (holding ?x) :effect
  (and (not (holding ?x)) (clear ?x) (handempty) (ontable ?x)))) 