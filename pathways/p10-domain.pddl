
(define (domain pathways-propositional) (:requirements :typing :adl)
 (:predicates (num-subs ?l - level) (goal7) (goal4) (chosen ?s - simple)
  (goal1) (goal9) (available ?x - molecule) (possible ?x - molecule)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal2)
  (goal13) (goal8) (goal14) (synthesis-reaction ?x1 ?x2 - molecule)
  (next ?l1 ?l2 - level) (goal11)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal3) (goal6)
  (goal10) (goal12) (goal5))
 (:types level molecule - object simple complex - molecule)
 (:constants cdc25ap1 cdk2-cyca cdk2-cyca-e2f13 cdk2-cyce cdk2-cycep1
  cdk2p1-cyca-e2f13 cdk46 cdk46-cycd c-myc cyca hdac1-p107-e2f4-dp12-ge2
  hdac1-p130-e2f5-dp12 p27-cdk2-cyca p27-cdk2-cyce p27-cdk2-cycep1
  p27-cdk46-cycd p27-cdk46-cycdp1 p57-cdk2-cyca p57-cdk2-cyce p57-cdk2-cycep1
  p57-cdk46-cycd p57-cdk46-cycdp1 p57p1-cdk46-cycd p57p1-cdk46-cycdp1 pol
  raf1-cdc25a raf1-cdc25ap1 skp2-cdk2-cyca - complex)
 (:action ugly1ugly14ugly3dummy-action-12 :parameters () :precondition
  (or (available raf1-cdc25a) (available skp2-cdk2-cyca)) :effect
  (and (goal12)))
 (:action ugly2ugly19ugly9dummy-action-1 :parameters () :precondition
  (or (available p57p1-cdk46-cycd) (available p57p1-cdk46-cycdp1)) :effect
  (and (goal1)))
 (:action ugly3ugly17ugly12associate-with-catalyze :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect (and (not (available ?x1)) (available ?x3)))
 (:action ugly4ugly11ugly8dummy-action-11 :parameters () :precondition
  (or (available pol) (available cdk2-cyca)) :effect (and (goal11)))
 (:action ugly5ugly1ugly14associate :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect (and (not (available ?x1)) (not (available ?x2)) (available ?x3)))
 (:action ugly6ugly2ugly19dummy-action-4 :parameters () :precondition
  (or (available hdac1-p107-e2f4-dp12-ge2) (available c-myc)) :effect
  (and (goal4)))
 (:action ugly7ugly18ugly13dummy-action-2 :parameters () :precondition
  (or (available p27-cdk46-cycd) (available cyca)) :effect (and (goal2)))
 (:action ugly8ugly16ugly15synthesize :parameters (?x1 ?x2 - molecule)
  :precondition (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly9ugly6ugly2dummy-action-14 :parameters () :precondition
  (or (available p57-cdk2-cyca) (available cdk2p1-cyca-e2f13)) :effect
  (and (goal14)))
 (:action ugly10ugly10ugly10dummy-action-5 :parameters () :precondition
  (or (available p57-cdk2-cyce) (available p27-cdk46-cycdp1)) :effect
  (and (goal5)))
 (:action ugly11ugly8ugly16dummy-action-10 :parameters () :precondition
  (or (available cdk2-cyce) (available raf1-cdc25ap1)) :effect (and (goal10)))
 (:action ugly12ugly4ugly11dummy-action-3 :parameters () :precondition
  (or (available p57-cdk46-cycd) (available p57-cdk46-cycdp1)) :effect
  (and (goal3)))
 (:action ugly13ugly7ugly18dummy-action-8 :parameters () :precondition
  (or (available hdac1-p130-e2f5-dp12) (available cdk46-cycd)) :effect
  (and (goal8)))
 (:action ugly14ugly3ugly17dummy-action-7 :parameters () :precondition
  (or (available p27-cdk2-cycep1) (available cdk2-cyca-e2f13)) :effect
  (and (goal7)))
 (:action ugly15ugly5ugly1dummy-action-9 :parameters () :precondition
  (or (available cdk2-cycep1) (available cdk46)) :effect (and (goal9)))
 (:action ugly16ugly15ugly5choose :parameters (?x - simple ?l1 ?l2 - level)
  :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly17ugly12ugly4dummy-action-6 :parameters () :precondition
  (or (available p27-cdk2-cyce) (available p27-cdk2-cyca)) :effect
  (and (goal6)))
 (:action ugly18ugly13ugly7dummy-action-13 :parameters () :precondition
  (or (available p57-cdk2-cycep1) (available cdc25ap1)) :effect (and (goal13)))
 (:action ugly19ugly9ugly6initialize :parameters (?x - simple) :precondition
  (and (chosen ?x)) :effect (and (available ?x)))) 