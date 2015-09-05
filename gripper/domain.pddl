
(define (domain gripper-strips) (:requirements)
 (:predicates (at ?b ?r) (gripper ?g) (carry ?o ?g) (ball ?b) (free ?g)
  (at-robby ?r) (room ?r))
 (:action ugly1drop :parameters (?obj ?room ?gripper) :precondition
  (and (ball ?obj) (room ?room) (gripper ?gripper) (carry ?obj ?gripper)
       (at-robby ?room))
  :effect (and (at ?obj ?room) (free ?gripper) (not (carry ?obj ?gripper))))
 (:action ugly2move :parameters (?from ?to) :precondition
  (and (room ?from) (room ?to) (at-robby ?from)) :effect
  (and (at-robby ?to) (not (at-robby ?from))))
 (:action ugly3pick :parameters (?obj ?room ?gripper) :precondition
  (and (ball ?obj) (room ?room) (gripper ?gripper) (at ?obj ?room)
       (at-robby ?room) (free ?gripper))
  :effect
  (and (carry ?obj ?gripper) (not (at ?obj ?room)) (not (free ?gripper))))) 