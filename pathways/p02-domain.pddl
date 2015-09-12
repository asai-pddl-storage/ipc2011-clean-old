
(define (domain pathways-propositional) (:requirements :typing :adl)
 (:predicates (chosen ?s - simple)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal2)
  (synthesis-reaction ?x1 ?x2 - molecule) (available ?x - molecule)
  (possible ?x - molecule) (goal1)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex)
  (next ?l1 ?l2 - level) (num-subs ?l - level))
 (:types level molecule - object simple complex - molecule)
 (:constants c-myc-max cycdp1 p107-e2f4-dp12p1 p107-e2f4-dp12p1-ge2 - complex)
 (:action ugly1434384ugly1ugly1ugly1ugly1choose :parameters
  (?x - simple ?l1 ?l2 - level) :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly1434385ugly3ugly4ugly2ugly6dummy-action-2 :parameters ()
  :precondition (or (available cycdp1) (available c-myc-max)) :effect
  (and (goal2)))
 (:action ugly1434386ugly4ugly2ugly6ugly7synthesize :parameters
  (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly1434387ugly6ugly7ugly5ugly3associate-with-catalyze :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect (and (not (available ?x1)) (available ?x3)))
 (:action ugly1434388ugly5ugly3ugly4ugly2dummy-action-1 :parameters ()
  :precondition
  (or (available p107-e2f4-dp12p1-ge2) (available p107-e2f4-dp12p1)) :effect
  (and (goal1)))
 (:action ugly1434389ugly7ugly5ugly3ugly4initialize :parameters (?x - simple)
  :precondition (and (chosen ?x)) :effect (and (available ?x)))
 (:action ugly1434390ugly2ugly6ugly7ugly5associate :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect (and (not (available ?x1)) (not (available ?x2)) (available ?x3)))) 