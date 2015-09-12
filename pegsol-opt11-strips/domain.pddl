
(define (domain pegsolitaire-sequential) (:requirements :typing :action-costs)
 (:predicates (occupied ?l - location) (free ?l - location) (move-ended)
  (in-line ?x ?y ?z - location) (last-visited ?l - location))
 (:types location - object) (:functions (total-cost) - number)
 (:action ugly1435141ugly1ugly1ugly1ugly1jump-new-move :parameters
  (?from - location ?over - location ?to - location) :precondition
  (and (move-ended) (in-line ?from ?over ?to) (occupied ?from) (occupied ?over)
       (free ?to))
  :effect
  (and (not (move-ended)) (not (occupied ?from)) (not (occupied ?over))
       (not (free ?to)) (free ?from) (free ?over) (occupied ?to)
       (last-visited ?to) (increase (total-cost) 1)))
 (:action ugly1435142ugly2ugly3ugly2ugly3jump-continue-move :parameters
  (?from - location ?over - location ?to - location) :precondition
  (and (last-visited ?from) (in-line ?from ?over ?to) (occupied ?from)
       (occupied ?over) (free ?to))
  :effect
  (and (not (occupied ?from)) (not (occupied ?over)) (not (free ?to))
       (free ?from) (free ?over) (occupied ?to) (not (last-visited ?from))
       (last-visited ?to)))
 (:action ugly1435143ugly3ugly2ugly3ugly2end-move :parameters (?loc - location)
  :precondition (last-visited ?loc) :effect
  (and (move-ended) (not (last-visited ?loc))))) 