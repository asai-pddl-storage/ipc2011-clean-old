
(define (domain gripper-strips) (:requirements :strips :action-costs)
 (:predicates (at-robby ?r) (room ?r) (ball ?b) (carry ?o ?g) (free ?g)
  (at ?b ?r) (gripper ?g))
 (:functions (total-cost) - number)
 (:action ugly21ugly1ugly3ugly2ugly1drop :parameters (?obj ?room ?gripper)
  :precondition
  (and (ball ?obj) (room ?room) (gripper ?gripper) (carry ?obj ?gripper)
       (at-robby ?room))
  :effect (and (at ?obj ?room) (free ?gripper) (not (carry ?obj ?gripper))))
 (:action ugly22ugly3ugly2ugly1ugly3pick :parameters (?obj ?room ?gripper)
  :precondition
  (and (ball ?obj) (room ?room) (gripper ?gripper) (at ?obj ?room)
       (at-robby ?room) (free ?gripper))
  :effect
  (and (carry ?obj ?gripper) (not (at ?obj ?room)) (not (free ?gripper))))
 (:action ugly23ugly2ugly1ugly3ugly2move :parameters (?from ?to) :precondition
  (and (room ?from) (room ?to) (at-robby ?from)) :effect
  (and (increase (total-cost) 1) (at-robby ?to) (not (at-robby ?from))))) 