
(define (domain pathways-propositional)
 (:requirements :typing :adl :action-costs)
 (:predicates (possible ?x - molecule) (chosen ?s - simple) (goal1) (goal4)
  (goal2) (available ?x - molecule)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex)
  (next ?l1 ?l2 - level) (num-subs ?l - level)
  (synthesis-reaction ?x1 ?x2 - molecule) (goal3) (goal6) (goal5)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex))
 (:types level molecule - object simple complex - molecule)
 (:constants cdk1p1p2-gadd45 c-myc cyce e2f5-dp12-ge2 p130-e2f5-dp12p1-ge2
  p21-cdk2p1-cycep1 pcna-p21 pcna-p21-cdk2-cyce pcna-p21-cdk2p1-cyce
  pcna-p21-cdk2p1-cycep1 sp1-p107 sp1-p107p1 - complex)
 (:functions (total-cost) - number)
 (:action ugly11132ugly11135ugly5ugly2ugly3ugly4dummy-action-2 :parameters ()
  :precondition (or (available sp1-p107) (available p21-cdk2p1-cycep1)) :effect
  (and (goal2)))
 (:action ugly11133ugly11142ugly6ugly8ugly9ugly6dummy-action-3 :parameters ()
  :precondition (or (available pcna-p21-cdk2-cyce) (available cdk1p1p2-gadd45))
  :effect (and (goal3)))
 (:action ugly11134ugly11139ugly7ugly5ugly2ugly3associate-with-catalyze
  :parameters (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (available ?x3)))
 (:action ugly11135ugly11136ugly9ugly6ugly8ugly9dummy-action-1 :parameters ()
  :precondition (or (available cyce) (available pcna-p21-cdk2p1-cycep1))
  :effect (and (goal1)))
 (:action ugly11136ugly11140ugly3ugly4ugly7ugly5initialize :parameters
  (?x - simple) :precondition (and (chosen ?x)) :effect (and (available ?x)))
 (:action ugly11137ugly11141ugly1ugly11ugly10ugly1dummy-action-6 :parameters ()
  :precondition (or (available e2f5-dp12-ge2) (available c-myc)) :effect
  (and (goal6)))
 (:action ugly11138ugly11133ugly11ugly10ugly1ugly11dummy-action-5 :parameters
  () :precondition (or (available sp1-p107p1) (available pcna-p21-cdk2p1-cyce))
  :effect (and (goal5)))
 (:action ugly11139ugly11138ugly2ugly3ugly4ugly7synthesize :parameters
  (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly11140ugly11134ugly8ugly9ugly6ugly8dummy-action-4 :parameters ()
  :precondition (or (available pcna-p21) (available p130-e2f5-dp12p1-ge2))
  :effect (and (goal4)))
 (:action ugly11141ugly11132ugly4ugly7ugly5ugly2associate :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (not (available ?x2))
       (available ?x3)))
 (:action ugly11142ugly11137ugly10ugly1ugly11ugly10choose :parameters
  (?x - simple ?l1 ?l2 - level) :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))) 