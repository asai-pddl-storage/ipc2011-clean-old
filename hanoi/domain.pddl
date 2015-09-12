
(define (domain hanoi) (:requirements :strips)
 (:predicates (clear ?x) (smaller ?x ?y) (on ?x ?y))
 (:action ugly1432995ugly1ugly1ugly1ugly1move :parameters (?disc ?from ?to)
  :precondition
  (and (smaller ?to ?disc) (on ?disc ?from) (clear ?disc) (clear ?to)) :effect
  (and (clear ?from) (on ?disc ?to) (not (on ?disc ?from)) (not (clear ?to))))) 