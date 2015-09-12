
(define (domain gripper-strips) (:requirements)
 (:predicates (at ?b ?r) (room ?r) (carry ?o ?g) (gripper ?g) (at-robby ?r)
  (free ?g) (ball ?b))
 (:action ugly1432992ugly3ugly2ugly1ugly3pick :parameters (?obj ?room ?gripper)
  :precondition
  (and (ball ?obj) (room ?room) (gripper ?gripper) (at ?obj ?room)
       (at-robby ?room) (free ?gripper))
  :effect
  (and (carry ?obj ?gripper) (not (at ?obj ?room)) (not (free ?gripper))))
 (:action ugly1432993ugly1ugly3ugly2ugly1drop :parameters (?obj ?room ?gripper)
  :precondition
  (and (ball ?obj) (room ?room) (gripper ?gripper) (carry ?obj ?gripper)
       (at-robby ?room))
  :effect (and (at ?obj ?room) (free ?gripper) (not (carry ?obj ?gripper))))
 (:action ugly1432994ugly2ugly1ugly3ugly2move :parameters (?from ?to)
  :precondition (and (room ?from) (room ?to) (at-robby ?from)) :effect
  (and (at-robby ?to) (not (at-robby ?from))))) 