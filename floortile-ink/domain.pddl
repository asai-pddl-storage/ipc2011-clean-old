
(define (domain floor-tile) (:requirements :typing)
 (:predicates (robot-has ?r - robot ?c - color) (left ?x - tile ?y - tile)
  (available-color ?c - color) (down ?x - tile ?y - tile)
  (robot-at ?r - robot ?x - tile) (right ?x - tile ?y - tile)
  (up ?x - tile ?y - tile) (painted ?x - tile ?c - color) (clear ?x - tile)
  (free-color ?r - robot))
 (:types robot tile color - object) (:functions (total-cost) - number)
 (:action ugly1ugly1ugly1change-color :parameters
  (?r - robot ?c - color ?c2 - color) :precondition
  (and (robot-has ?r ?c) (available-color ?c2)) :effect
  (and (not (robot-has ?r ?c)) (robot-has ?r ?c2) (increase (total-cost) 5)))
 (:action ugly2ugly6ugly7down :parameters (?r - robot ?x - tile ?y - tile)
  :precondition (and (robot-at ?r ?x) (down ?y ?x) (clear ?y)) :effect
  (and (robot-at ?r ?y) (not (robot-at ?r ?x)) (clear ?x) (not (clear ?y))))
 (:action ugly3ugly4ugly2right :parameters (?r - robot ?x - tile ?y - tile)
  :precondition (and (robot-at ?r ?x) (right ?y ?x) (clear ?y)) :effect
  (and (robot-at ?r ?y) (not (robot-at ?r ?x)) (clear ?x) (not (clear ?y))))
 (:action ugly4ugly2ugly6left :parameters (?r - robot ?x - tile ?y - tile)
  :precondition (and (robot-at ?r ?x) (left ?y ?x) (clear ?y)) :effect
  (and (robot-at ?r ?y) (not (robot-at ?r ?x)) (clear ?x) (not (clear ?y))))
 (:action ugly5ugly3ugly4paint-up :parameters
  (?r - robot ?y - tile ?x - tile ?c - color) :precondition
  (and (robot-has ?r ?c) (robot-at ?r ?x) (up ?y ?x) (clear ?y)) :effect
  (and (not (clear ?y)) (painted ?y ?c) (increase (total-cost) 2)))
 (:action ugly6ugly7ugly5paint-down :parameters
  (?r - robot ?y - tile ?x - tile ?c - color) :precondition
  (and (robot-has ?r ?c) (robot-at ?r ?x) (down ?y ?x) (clear ?y)) :effect
  (and (not (clear ?y)) (painted ?y ?c) (increase (total-cost) 2)))
 (:action ugly7ugly5ugly3up :parameters (?r - robot ?x - tile ?y - tile)
  :precondition (and (robot-at ?r ?x) (up ?y ?x) (clear ?y)) :effect
  (and (robot-at ?r ?y) (not (robot-at ?r ?x)) (clear ?x) (not (clear ?y))))) 