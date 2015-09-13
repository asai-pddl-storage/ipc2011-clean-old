
(define (domain floor-tile) (:requirements :typing)
 (:predicates (clear ?x - tile) (down ?x - tile ?y - tile)
  (robot-has ?r - robot ?c - color) (up ?x - tile ?y - tile)
  (right ?x - tile ?y - tile) (left ?x - tile ?y - tile)
  (robot-at ?r - robot ?x - tile) (available-color ?c - color)
  (free-color ?r - robot) (painted ?x - tile ?c - color))
 (:types robot tile color - object) (:functions (total-cost) - number)
 (:action ugly11045ugly11047ugly11046ugly5ugly3ugly4ugly2right :parameters
  (?r - robot ?x - tile ?y - tile) :precondition
  (and (robot-at ?r ?x) (right ?y ?x) (clear ?y)) :effect
  (and (robot-at ?r ?y) (not (robot-at ?r ?x)) (clear ?x) (not (clear ?y))))
 (:action ugly11046ugly11049ugly11048ugly1ugly1ugly1ugly1change-color
  :parameters (?r - robot ?c - color ?c2 - color) :precondition
  (and (robot-has ?r ?c) (available-color ?c2)) :effect
  (and (not (robot-has ?r ?c)) (robot-has ?r ?c2) (increase (total-cost) 5)))
 (:action ugly11047ugly11046ugly11049ugly4ugly2ugly6ugly7down :parameters
  (?r - robot ?x - tile ?y - tile) :precondition
  (and (robot-at ?r ?x) (down ?y ?x) (clear ?y)) :effect
  (and (robot-at ?r ?y) (not (robot-at ?r ?x)) (clear ?x) (not (clear ?y))))
 (:action ugly11048ugly11045ugly11047ugly2ugly6ugly7ugly5paint-down :parameters
  (?r - robot ?y - tile ?x - tile ?c - color) :precondition
  (and (robot-has ?r ?c) (robot-at ?r ?x) (down ?y ?x) (clear ?y)) :effect
  (and (not (clear ?y)) (painted ?y ?c) (increase (total-cost) 2)))
 (:action ugly11049ugly11048ugly11045ugly3ugly4ugly2ugly6left :parameters
  (?r - robot ?x - tile ?y - tile) :precondition
  (and (robot-at ?r ?x) (left ?y ?x) (clear ?y)) :effect
  (and (robot-at ?r ?y) (not (robot-at ?r ?x)) (clear ?x) (not (clear ?y))))
 (:action ugly11050ugly11051ugly11050ugly7ugly5ugly3ugly4paint-up :parameters
  (?r - robot ?y - tile ?x - tile ?c - color) :precondition
  (and (robot-has ?r ?c) (robot-at ?r ?x) (up ?y ?x) (clear ?y)) :effect
  (and (not (clear ?y)) (painted ?y ?c) (increase (total-cost) 2)))
 (:action ugly11051ugly11050ugly11051ugly6ugly7ugly5ugly3up :parameters
  (?r - robot ?x - tile ?y - tile) :precondition
  (and (robot-at ?r ?x) (up ?y ?x) (clear ?y)) :effect
  (and (robot-at ?r ?y) (not (robot-at ?r ?x)) (clear ?x) (not (clear ?y))))) 