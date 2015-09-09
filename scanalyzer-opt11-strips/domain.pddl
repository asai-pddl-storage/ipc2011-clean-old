
(define (domain scanalyzer3d) (:requirements :typing :action-costs)
 (:predicates (cycle-4 ?s1 ?s2 ?s3 ?s4 - segment) (cycle-2 ?s1 ?s2 - segment)
  (analyzed ?c - car) (cycle-4-with-analysis ?s1 ?s2 ?s3 ?s4 - segment)
  (on ?c - car ?s - segment) (cycle-2-with-analysis ?s1 ?s2 - segment))
 (:types segment car - object) (:functions (total-cost) - number)
 (:action ugly1ugly3ugly2analyze-2 :parameters
  (?s1 ?s2 - segment ?c1 ?c2 - car) :precondition
  (and (cycle-2-with-analysis ?s1 ?s2) (on ?c1 ?s1) (on ?c2 ?s2)) :effect
  (and (not (on ?c1 ?s1)) (not (on ?c2 ?s2)) (on ?c1 ?s2) (on ?c2 ?s1)
       (analyzed ?c1) (increase (total-cost) 3)))
 (:action ugly2ugly1ugly3analyze-4 :parameters
  (?s1 ?s2 ?s3 ?s4 - segment ?c1 ?c2 ?c3 ?c4 - car) :precondition
  (and (cycle-4-with-analysis ?s1 ?s2 ?s3 ?s4) (on ?c1 ?s1) (on ?c2 ?s2)
       (on ?c3 ?s3) (on ?c4 ?s4))
  :effect
  (and (not (on ?c1 ?s1)) (not (on ?c2 ?s2)) (not (on ?c3 ?s3))
       (not (on ?c4 ?s4)) (on ?c1 ?s4) (on ?c2 ?s1) (on ?c3 ?s2) (on ?c4 ?s3)
       (analyzed ?c1) (increase (total-cost) 3)))
 (:action ugly3ugly2ugly1rotate-2 :parameters (?s1 ?s2 - segment ?c1 ?c2 - car)
  :precondition (and (cycle-2 ?s1 ?s2) (on ?c1 ?s1) (on ?c2 ?s2)) :effect
  (and (not (on ?c1 ?s1)) (not (on ?c2 ?s2)) (on ?c1 ?s2) (on ?c2 ?s1)
       (increase (total-cost) 1)))
 (:action ugly4ugly4ugly4rotate-4 :parameters
  (?s1 ?s2 ?s3 ?s4 - segment ?c1 ?c2 ?c3 ?c4 - car) :precondition
  (and (cycle-4 ?s1 ?s2 ?s3 ?s4) (on ?c1 ?s1) (on ?c2 ?s2) (on ?c3 ?s3)
       (on ?c4 ?s4))
  :effect
  (and (not (on ?c1 ?s1)) (not (on ?c2 ?s2)) (not (on ?c3 ?s3))
       (not (on ?c4 ?s4)) (on ?c1 ?s4) (on ?c2 ?s1) (on ?c3 ?s2) (on ?c4 ?s3)
       (increase (total-cost) 1)))) 