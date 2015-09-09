
(define (domain pathways-propositional)
 (:requirements :typing :adl :action-costs)
 (:predicates (chosen ?s - simple) (goal5) (goal8) (goal1) (goal4) (goal2)
  (synthesis-reaction ?x1 ?x2 - molecule) (goal6)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex)
  (possible ?x - molecule) (goal3) (goal7) (next ?l1 ?l2 - level)
  (available ?x - molecule) (num-subs ?l - level)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex))
 (:types level molecule - object simple complex - molecule)
 (:constants cdk2p1-cyca cdk2p1-cyce hdac1-p107-e2f4-dp12 p57-cdk2p1-cyca
  p57-cdk2p1-cyce p57-cdk2p1-cycep1 p57-cdk46p1-cycd p57-cdk46p1-cycdp1
  p57p1-cdk46p1-cycd p57p1-cdk46p1-cycdp1 raf1-prbp1-e2f13-dp12p1
  raf1-prbp1-e2f4-dp12 rpa-cyca skp2-cdk2p1-cyca sp1-p107-gp sp1-p107p1-gp -
  complex)
 (:functions (total-cost) - number)
 (:action ugly1ugly2ugly5dummy-action-8 :parameters () :precondition
  (or (available p57-cdk2p1-cycep1) (available rpa-cyca)) :effect
  (and (goal8)))
 (:action ugly2ugly5ugly13dummy-action-4 :parameters () :precondition
  (or (available raf1-prbp1-e2f4-dp12) (available hdac1-p107-e2f4-dp12))
  :effect (and (goal4)))
 (:action ugly3ugly10ugly8associate-with-catalyze :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (available ?x3)))
 (:action ugly4ugly6ugly7dummy-action-6 :parameters () :precondition
  (or (available cdk2p1-cyce) (available cdk2p1-cyca)) :effect (and (goal6)))
 (:action ugly5ugly13ugly9choose :parameters (?x - simple ?l1 ?l2 - level)
  :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly6ugly7ugly11dummy-action-7 :parameters () :precondition
  (or (available p57-cdk46p1-cycdp1) (available sp1-p107p1-gp)) :effect
  (and (goal7)))
 (:action ugly7ugly11ugly12associate :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (not (available ?x2))
       (available ?x3)))
 (:action ugly8ugly4ugly6dummy-action-2 :parameters () :precondition
  (or (available sp1-p107-gp) (available p57p1-cdk46p1-cycdp1)) :effect
  (and (goal2)))
 (:action ugly9ugly1ugly2synthesize :parameters (?x1 ?x2 - molecule)
  :precondition (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly10ugly8ugly4dummy-action-1 :parameters () :precondition
  (or (available skp2-cdk2p1-cyca) (available p57-cdk2p1-cyce)) :effect
  (and (goal1)))
 (:action ugly11ugly12ugly3dummy-action-5 :parameters () :precondition
  (or (available p57-cdk46p1-cycd) (available p57p1-cdk46p1-cycd)) :effect
  (and (goal5)))
 (:action ugly12ugly3ugly10dummy-action-3 :parameters () :precondition
  (or (available p57-cdk2p1-cyca) (available raf1-prbp1-e2f13-dp12p1)) :effect
  (and (goal3)))
 (:action ugly13ugly9ugly1initialize :parameters (?x - simple) :precondition
  (and (chosen ?x)) :effect (and (available ?x)))) 