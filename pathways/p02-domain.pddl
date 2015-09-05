
(define (domain pathways-propositional) (:requirements :typing :adl)
 (:predicates (next ?l1 ?l2 - level)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex)
  (possible ?x - molecule) (chosen ?s - simple) (num-subs ?l - level) (goal1)
  (available ?x - molecule)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex)
  (synthesis-reaction ?x1 ?x2 - molecule) (goal2))
 (:types level molecule - object simple complex - molecule)
 (:constants c-myc-max cycdp1 p107-e2f4-dp12p1 p107-e2f4-dp12p1-ge2 - complex)
 (:action ugly1choose :parameters (?x - simple ?l1 ?l2 - level) :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly2dummy-action-1 :parameters () :precondition
  (or (available p107-e2f4-dp12p1-ge2) (available p107-e2f4-dp12p1)) :effect
  (and (goal1)))
 (:action ugly3associate-with-catalyze :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect (and (not (available ?x1)) (available ?x3)))
 (:action ugly4initialize :parameters (?x - simple) :precondition
  (and (chosen ?x)) :effect (and (available ?x)))
 (:action ugly5associate :parameters (?x1 ?x2 - molecule ?x3 - complex)
  :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect (and (not (available ?x1)) (not (available ?x2)) (available ?x3)))
 (:action ugly6dummy-action-2 :parameters () :precondition
  (or (available cycdp1) (available c-myc-max)) :effect (and (goal2)))
 (:action ugly7synthesize :parameters (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))) 