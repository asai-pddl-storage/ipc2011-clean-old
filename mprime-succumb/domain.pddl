
(define (domain mystery-prime-strips)
 (:requirements :negative-preconditions :equality :action-costs)
 (:predicates (pain ?x) (orbits ?i ?j) (locale ?n ?a) (harmony ?v ?s)
  (province ?x) (food ?x) (planet ?x) (pleasure ?x) (fears ?c ?v)
  (craves ?v ?n) (eats ?n1 ?n2) (attacks ?i ?j))
 (:action ugly11095ugly11097ugly11096ugly11098ugly1ugly1ugly1ugly1overcome
  :parameters (?c ?v ?n ?s1 ?s2) :precondition
  (and (pain ?c) (pleasure ?v) (craves ?c ?n) (craves ?v ?n) (food ?n)
       (harmony ?v ?s2) (planet ?s2) (orbits ?s1 ?s2) (planet ?s1))
  :effect
  (and (not (craves ?c ?n)) (fears ?c ?v) (not (harmony ?v ?s2))
       (harmony ?v ?s1)))
 (:action ugly11096ugly11098ugly11095ugly11097ugly2ugly3ugly2ugly3feast
  :parameters (?v ?n1 ?n2 ?l1 ?l2) :precondition
  (and (craves ?v ?n1) (food ?n1) (pleasure ?v) (eats ?n1 ?n2) (food ?n2)
       (locale ?n1 ?l2) (attacks ?l1 ?l2))
  :effect
  (and (not (craves ?v ?n1)) (craves ?v ?n2) (not (locale ?n1 ?l2))
       (locale ?n1 ?l1)))
 (:action ugly11097ugly11096ugly11098ugly11095ugly3ugly2ugly3ugly2succumb
  :parameters (?c ?v ?n ?s1 ?s2) :precondition
  (and (fears ?c ?v) (pain ?c) (pleasure ?v) (craves ?v ?n) (food ?n)
       (harmony ?v ?s1) (orbits ?s1 ?s2))
  :effect
  (and (not (fears ?c ?v)) (craves ?c ?n) (not (harmony ?v ?s1))
       (harmony ?v ?s2) (increase (total-cost) 1)))
 (:action ugly11098ugly11095ugly11097ugly11096ugly4ugly4ugly4ugly4drink
  :parameters (?n1 ?n2 ?l11 ?l12 ?l13 ?l21 ?l22) :precondition
  (and (not (= ?n1 ?n2)) (locale ?n1 ?l11) (attacks ?l12 ?l11)
       (attacks ?l13 ?l12) (locale ?n2 ?l21) (attacks ?l21 ?l22))
  :effect
  (and (not (locale ?n1 ?l11)) (locale ?n1 ?l12) (not (locale ?n2 ?l21))
       (locale ?n2 ?l22)))) 