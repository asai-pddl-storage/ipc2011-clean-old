
(define (domain mystery-strips) (:requirements :strips :action-costs)
 (:predicates (craves ?v ?n) (attacks ?i ?j) (fears ?c ?v) (pain ?x)
  (province ?x) (locale ?n ?a) (harmony ?v ?s) (orbits ?i ?j) (planet ?x)
  (pleasure ?x) (food ?x) (eats ?n1 ?n2))
 (:functions (total-cost) - number)
 (:action ugly1overcome :parameters (?c ?v ?n ?s1 ?s2) :precondition
  (and (pain ?c) (pleasure ?v) (craves ?c ?n) (craves ?v ?n) (food ?n)
       (harmony ?v ?s2) (planet ?s2) (orbits ?s1 ?s2) (planet ?s1))
  :effect
  (and (not (craves ?c ?n)) (fears ?c ?v) (not (harmony ?v ?s2))
       (harmony ?v ?s1)))
 (:action ugly2succumb :parameters (?c ?v ?n ?s1 ?s2) :precondition
  (and (fears ?c ?v) (pain ?c) (pleasure ?v) (craves ?v ?n) (food ?n)
       (harmony ?v ?s1) (orbits ?s1 ?s2))
  :effect
  (and (not (fears ?c ?v)) (craves ?c ?n) (not (harmony ?v ?s1))
       (harmony ?v ?s2)))
 (:action ugly3feast :parameters (?v ?n1 ?n2 ?l1 ?l2) :precondition
  (and (craves ?v ?n1) (food ?n1) (pleasure ?v) (eats ?n1 ?n2) (food ?n2)
       (locale ?n1 ?l2) (attacks ?l1 ?l2))
  :effect
  (and (increase (total-cost) 1) (not (craves ?v ?n1)) (craves ?v ?n2)
       (not (locale ?n1 ?l2)) (locale ?n1 ?l1)))) 