
(define (domain pathways-propositional)
 (:requirements :typing :adl :action-costs)
 (:predicates (possible ?x - molecule)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex)
  (synthesis-reaction ?x1 ?x2 - molecule) (goal1) (available ?x - molecule)
  (next ?l1 ?l2 - level) (num-subs ?l - level) (chosen ?s - simple)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal2))
 (:types level molecule - object simple complex - molecule)
 (:constants c-myc-max cycdp1 p107-e2f4-dp12p1 p107-e2f4-dp12p1-ge2 - complex)
 (:functions (total-cost) - number)
 (:action ugly11108ugly11112ugly4ugly2ugly6ugly7synthesize :parameters
  (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly11109ugly11114ugly2ugly6ugly7ugly5associate :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (not (available ?x2))
       (available ?x3)))
 (:action ugly11110ugly11110ugly3ugly4ugly2ugly6dummy-action-2 :parameters ()
  :precondition (or (available cycdp1) (available c-myc-max)) :effect
  (and (goal2)))
 (:action ugly11111ugly11113ugly1ugly1ugly1ugly1choose :parameters
  (?x - simple ?l1 ?l2 - level) :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly11112ugly11111ugly6ugly7ugly5ugly3associate-with-catalyze
  :parameters (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (available ?x3)))
 (:action ugly11113ugly11108ugly5ugly3ugly4ugly2dummy-action-1 :parameters ()
  :precondition
  (or (available p107-e2f4-dp12p1-ge2) (available p107-e2f4-dp12p1)) :effect
  (and (goal1)))
 (:action ugly11114ugly11109ugly7ugly5ugly3ugly4initialize :parameters
  (?x - simple) :precondition (and (chosen ?x)) :effect (and (available ?x)))) 