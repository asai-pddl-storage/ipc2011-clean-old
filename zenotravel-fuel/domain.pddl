
(define (domain zeno-travel) (:requirements)
 (:predicates (in ?p ?a) (at ?x ?c) (person ?x) (city ?x) (flevel ?x)
  (fuel-level ?a ?l) (next ?l1 ?l2) (aircraft ?p))
 (:functions (total-cost) - number)
 (:action
  ugly11908ugly11909ugly11912ugly11908ugly11909ugly11912ugly1ugly3ugly4ugly1fly
  :parameters (?a ?c1 ?c2 ?l1 ?l2) :precondition
  (and (aircraft ?a) (city ?c1) (city ?c2) (flevel ?l1) (flevel ?l2)
       (at ?a ?c1) (fuel-level ?a ?l1) (next ?l2 ?l1))
  :effect
  (and (at ?a ?c2) (fuel-level ?a ?l2) (not (at ?a ?c1))
       (not (fuel-level ?a ?l1)) (increase (total-cost) 1)))
 (:action
  ugly11909ugly11912ugly11908ugly11909ugly11912ugly11908ugly2ugly5ugly2ugly5debark
  :parameters (?p ?a ?c) :precondition
  (and (person ?p) (aircraft ?a) (city ?c) (in ?p ?a) (at ?a ?c)) :effect
  (and (at ?p ?c) (not (in ?p ?a))))
 (:action
  ugly11910ugly11910ugly11910ugly11910ugly11910ugly11910ugly3ugly4ugly1ugly3zoom
  :parameters (?a ?c1 ?c2 ?l1 ?l2 ?l3) :precondition
  (and (aircraft ?a) (city ?c1) (city ?c2) (flevel ?l1) (flevel ?l2)
       (flevel ?l3) (at ?a ?c1) (fuel-level ?a ?l1) (next ?l2 ?l1)
       (next ?l3 ?l2))
  :effect
  (and (at ?a ?c2) (fuel-level ?a ?l3) (not (at ?a ?c1))
       (not (fuel-level ?a ?l1)) (increase (total-cost) 2)))
 (:action
  ugly11911ugly11911ugly11911ugly11911ugly11911ugly11911ugly4ugly1ugly3ugly4board
  :parameters (?p ?a ?c) :precondition
  (and (person ?p) (aircraft ?a) (city ?c) (at ?p ?c) (at ?a ?c)) :effect
  (and (in ?p ?a) (not (at ?p ?c))))
 (:action
  ugly11912ugly11908ugly11909ugly11912ugly11908ugly11909ugly5ugly2ugly5ugly2refuel
  :parameters (?a ?c ?l ?l1) :precondition
  (and (aircraft ?a) (city ?c) (flevel ?l) (flevel ?l1) (fuel-level ?a ?l)
       (next ?l ?l1) (at ?a ?c))
  :effect (and (fuel-level ?a ?l1) (not (fuel-level ?a ?l))))) 