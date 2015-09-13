
(define (domain pathways-propositional)
 (:requirements :typing :adl :action-costs)
 (:predicates (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex)
  (possible ?x - molecule) (num-subs ?l - level)
  (synthesis-reaction ?x1 ?x2 - molecule) (next ?l1 ?l2 - level)
  (chosen ?s - simple) (available ?x - molecule)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal1))
 (:types level molecule - object simple complex - molecule)
 (:constants pcaf-p300 prbp1p2-ap2 - complex)
 (:functions (total-cost) - number)
 (:action
  ugly11102ugly11107ugly11106ugly11105ugly11102ugly6ugly5ugly1ugly3dummy-action-1
  :parameters () :precondition
  (or (available prbp1p2-ap2) (available pcaf-p300)) :effect (and (goal1)))
 (:action
  ugly11103ugly11103ugly11103ugly11103ugly11103ugly2ugly2ugly2ugly2initialize
  :parameters (?x - simple) :precondition (and (chosen ?x)) :effect
  (and (available ?x)))
 (:action
  ugly11104ugly11104ugly11104ugly11104ugly11104ugly3ugly6ugly5ugly1associate
  :parameters (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect
  (and (not (available ?x1)) (not (available ?x2)) (available ?x3)
       (increase (total-cost) 1)))
 (:action
  ugly11105ugly11102ugly11107ugly11106ugly11105ugly1ugly3ugly6ugly5choose
  :parameters (?x - simple ?l1 ?l2 - level) :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action
  ugly11106ugly11105ugly11102ugly11107ugly11106ugly4ugly4ugly4ugly4associate-with-catalyze
  :parameters (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect
  (and (not (available ?x1)) (available ?x3) (increase (total-cost) 1)))
 (:action
  ugly11107ugly11106ugly11105ugly11102ugly11107ugly5ugly1ugly3ugly6synthesize
  :parameters (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))) 