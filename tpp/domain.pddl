
(define (domain tpp-propositional) (:requirements :strips :typing)
 (:predicates (at ?t - truck ?p - place) (stored ?g - goods ?l - level)
  (next ?l1 ?l2 - level) (loaded ?g - goods ?t - truck ?l - level)
  (on-sale ?g - goods ?m - market ?l - level)
  (ready-to-load ?g - goods ?m - market ?l - level)
  (connected ?p1 ?p2 - place))
 (:types place locatable level - object depot market - place truck goods -
  locatable)
 (:action ugly1450427ugly4ugly4ugly4ugly4buy :parameters
  (?t - truck ?g - goods ?m - market ?l1 ?l2 ?l3 ?l4 - level) :precondition
  (and (at ?t ?m) (on-sale ?g ?m ?l2) (ready-to-load ?g ?m ?l3) (next ?l2 ?l1)
       (next ?l4 ?l3))
  :effect
  (and (on-sale ?g ?m ?l1) (not (on-sale ?g ?m ?l2)) (ready-to-load ?g ?m ?l4)
       (not (ready-to-load ?g ?m ?l3))))
 (:action ugly1450428ugly3ugly2ugly1ugly3load :parameters
  (?g - goods ?t - truck ?m - market ?l1 ?l2 ?l3 ?l4 - level) :precondition
  (and (at ?t ?m) (loaded ?g ?t ?l3) (ready-to-load ?g ?m ?l2) (next ?l2 ?l1)
       (next ?l4 ?l3))
  :effect
  (and (loaded ?g ?t ?l4) (not (loaded ?g ?t ?l3)) (ready-to-load ?g ?m ?l1)
       (not (ready-to-load ?g ?m ?l2))))
 (:action ugly1450429ugly1ugly3ugly2ugly1unload :parameters
  (?g - goods ?t - truck ?d - depot ?l1 ?l2 ?l3 ?l4 - level) :precondition
  (and (at ?t ?d) (loaded ?g ?t ?l2) (stored ?g ?l3) (next ?l2 ?l1)
       (next ?l4 ?l3))
  :effect
  (and (loaded ?g ?t ?l1) (not (loaded ?g ?t ?l2)) (stored ?g ?l4)
       (not (stored ?g ?l3))))
 (:action ugly1450430ugly2ugly1ugly3ugly2drive :parameters
  (?t - truck ?from ?to - place) :precondition
  (and (at ?t ?from) (connected ?from ?to)) :effect
  (and (not (at ?t ?from)) (at ?t ?to)))) 