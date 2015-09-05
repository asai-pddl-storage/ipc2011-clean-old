
(define (domain floor-tile) (:requirements :typing)
 (:predicates (painted ?x - tile ?c - color) (robot-at ?r - robot ?x - tile)
  (right ?x - tile ?y - tile) (clear ?x - tile)
  (robot-has ?r - robot ?c - color) (available-color ?c - color)
  (left ?x - tile ?y - tile) (up ?x - tile ?y - tile)
  (down ?x - tile ?y - tile) (free-color ?r - robot))
 (:types robot tile color - object) (:functions (total-cost) - number)
 (:action ugly1change-color :parameters (?r - robot ?c - color ?c2 - color)
  :precondition (and (robot-has ?r ?c) (available-color ?c2)) :effect
  (and (not (robot-has ?r ?c)) (robot-has ?r ?c2) (increase (total-cost) 5)))
 (:action ugly2right :parameters (?r - robot ?x - tile ?y - tile) :precondition
  (and (robot-at ?r ?x) (right ?y ?x) (clear ?y)) :effect
  (and (robot-at ?r ?y) (not (robot-at ?r ?x)) (clear ?x) (not (clear ?y))
       (increase (total-cost) 1)))
 (:action ugly3up :parameters (?r - robot ?x - tile ?y - tile) :precondition
  (and (robot-at ?r ?x) (up ?y ?x) (clear ?y)) :effect
  (and (robot-at ?r ?y) (not (robot-at ?r ?x)) (clear ?x) (not (clear ?y))
       (increase (total-cost) 3)))
 (:action ugly4paint-up :parameters (?r - robot ?y - tile ?x - tile ?c - color)
  :precondition (and (robot-has ?r ?c) (robot-at ?r ?x) (up ?y ?x) (clear ?y))
  :effect (and (not (clear ?y)) (painted ?y ?c) (increase (total-cost) 2)))
 (:action ugly5paint-down :parameters
  (?r - robot ?y - tile ?x - tile ?c - color) :precondition
  (and (robot-has ?r ?c) (robot-at ?r ?x) (down ?y ?x) (clear ?y)) :effect
  (and (not (clear ?y)) (painted ?y ?c) (increase (total-cost) 2)))
 (:action ugly6left :parameters (?r - robot ?x - tile ?y - tile) :precondition
  (and (robot-at ?r ?x) (left ?y ?x) (clear ?y)) :effect
  (and (robot-at ?r ?y) (not (robot-at ?r ?x)) (clear ?x) (not (clear ?y))
       (increase (total-cost) 1)))
 (:action ugly7down :parameters (?r - robot ?x - tile ?y - tile) :precondition
  (and (robot-at ?r ?x) (down ?y ?x) (clear ?y)) :effect
  (and (robot-at ?r ?y) (not (robot-at ?r ?x)) (clear ?x) (not (clear ?y))
       (increase (total-cost) 1)))) 