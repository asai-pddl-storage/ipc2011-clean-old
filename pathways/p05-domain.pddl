
(define (domain pathways-propositional) (:requirements :typing :adl)
 (:predicates (available ?x - molecule) (next ?l1 ?l2 - level)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal3)
  (possible ?x - molecule) (goal1) (goal4)
  (synthesis-reaction ?x1 ?x2 - molecule) (goal6) (goal2)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (num-subs ?l - level)
  (chosen ?s - simple) (goal5))
 (:types level molecule - object simple complex - molecule)
 (:constants cdk1p1p2-gadd45 c-myc cyce e2f5-dp12-ge2 p130-e2f5-dp12p1-ge2
  p21-cdk2p1-cycep1 pcna-p21 pcna-p21-cdk2-cyce pcna-p21-cdk2p1-cyce
  pcna-p21-cdk2p1-cycep1 sp1-p107 sp1-p107p1 - complex)
 (:action ugly1ugly11dummy-action-5 :parameters () :precondition
  (or (available sp1-p107p1) (available pcna-p21-cdk2p1-cyce)) :effect
  (and (goal5)))
 (:action ugly2ugly3associate-with-catalyze :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect (and (not (available ?x1)) (available ?x3)))
 (:action ugly3ugly4dummy-action-2 :parameters () :precondition
  (or (available sp1-p107) (available p21-cdk2p1-cycep1)) :effect
  (and (goal2)))
 (:action ugly4ugly7synthesize :parameters (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly5ugly2associate :parameters (?x1 ?x2 - molecule ?x3 - complex)
  :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect (and (not (available ?x1)) (not (available ?x2)) (available ?x3)))
 (:action ugly6ugly8dummy-action-4 :parameters () :precondition
  (or (available pcna-p21) (available p130-e2f5-dp12p1-ge2)) :effect
  (and (goal4)))
 (:action ugly7ugly5initialize :parameters (?x - simple) :precondition
  (and (chosen ?x)) :effect (and (available ?x)))
 (:action ugly8ugly9dummy-action-1 :parameters () :precondition
  (or (available cyce) (available pcna-p21-cdk2p1-cycep1)) :effect
  (and (goal1)))
 (:action ugly9ugly6dummy-action-3 :parameters () :precondition
  (or (available pcna-p21-cdk2-cyce) (available cdk1p1p2-gadd45)) :effect
  (and (goal3)))
 (:action ugly10ugly1dummy-action-6 :parameters () :precondition
  (or (available e2f5-dp12-ge2) (available c-myc)) :effect (and (goal6)))
 (:action ugly11ugly10choose :parameters (?x - simple ?l1 ?l2 - level)
  :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))) 