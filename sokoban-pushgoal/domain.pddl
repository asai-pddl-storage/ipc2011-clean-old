
(define (domain sokoban-sequential) (:requirements :typing :action-costs)
 (:predicates (clear ?l - location) (at ?t - thing ?l - location)
  (at-goal ?s - stone) (is-goal ?l - location) (is-nongoal ?l - location)
  (move-dir ?from ?to - location ?dir - direction))
 (:types thing location direction - object player stone - thing)
 (:functions (total-cost) - number)
 (:action
  ugly3493ugly3494ugly3495ugly3493ugly3494ugly3ugly2ugly1ugly3push-to-nongoal
  :parameters
  (?p - player ?s - stone ?ppos ?from ?to - location ?dir - direction)
  :precondition
  (and (at ?p ?ppos) (at ?s ?from) (clear ?to) (move-dir ?ppos ?from ?dir)
       (move-dir ?from ?to ?dir) (is-nongoal ?to))
  :effect
  (and (not (at ?p ?ppos)) (not (at ?s ?from)) (not (clear ?to)) (at ?p ?from)
       (at ?s ?to) (clear ?ppos) (not (at-goal ?s))))
 (:action
  ugly3494ugly3495ugly3493ugly3494ugly3495ugly1ugly3ugly2ugly1push-to-goal
  :parameters
  (?p - player ?s - stone ?ppos ?from ?to - location ?dir - direction)
  :precondition
  (and (at ?p ?ppos) (at ?s ?from) (clear ?to) (move-dir ?ppos ?from ?dir)
       (move-dir ?from ?to ?dir) (is-goal ?to))
  :effect
  (and (not (at ?p ?ppos)) (not (at ?s ?from)) (not (clear ?to)) (at ?p ?from)
       (at ?s ?to) (clear ?ppos) (at-goal ?s) (increase (total-cost) 1)))
 (:action ugly3495ugly3493ugly3494ugly3495ugly3493ugly2ugly1ugly3ugly2move
  :parameters (?p - player ?from ?to - location ?dir - direction) :precondition
  (and (at ?p ?from) (clear ?to) (move-dir ?from ?to ?dir)) :effect
  (and (not (at ?p ?from)) (not (clear ?to)) (at ?p ?to) (clear ?from)))) 