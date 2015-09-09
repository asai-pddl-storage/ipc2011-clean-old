
(define (domain pathways-propositional)
 (:requirements :typing :adl :action-costs)
 (:predicates (chosen ?s - simple) (next ?l1 ?l2 - level) (num-subs ?l - level)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex)
  (possible ?x - molecule)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex)
  (synthesis-reaction ?x1 ?x2 - molecule) (available ?x - molecule) (goal1))
 (:types level molecule - object simple complex - molecule)
 (:constants pcaf-p300 prbp1p2-ap2 - complex)
 (:functions (total-cost) - number)
 (:action ugly1ugly3ugly6synthesize :parameters (?x1 ?x2 - molecule)
  :precondition (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly2ugly2ugly2initialize :parameters (?x - simple) :precondition
  (and (chosen ?x)) :effect (and (available ?x)))
 (:action ugly3ugly6ugly5choose :parameters (?x - simple ?l1 ?l2 - level)
  :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly4ugly4ugly4associate-with-catalyze :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect
  (and (not (available ?x1)) (available ?x3) (increase (total-cost) 1)))
 (:action ugly5ugly1ugly3dummy-action-1 :parameters () :precondition
  (or (available prbp1p2-ap2) (available pcaf-p300)) :effect (and (goal1)))
 (:action ugly6ugly5ugly1associate :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect
  (and (not (available ?x1)) (not (available ?x2)) (available ?x3)
       (increase (total-cost) 1)))) 