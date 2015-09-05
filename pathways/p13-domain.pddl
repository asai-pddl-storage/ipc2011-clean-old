
(define (domain pathways-propositional) (:requirements :typing :adl)
 (:predicates (goal15) (goal8) (goal7) (goal1) (chosen ?s - simple) (goal9)
  (goal2) (goal5) (num-subs ?l - level) (goal12) (goal3) (goal11)
  (available ?x - molecule)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal17)
  (possible ?x - molecule) (goal10) (goal13)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal14)
  (goal4) (goal6) (next ?l1 ?l2 - level)
  (synthesis-reaction ?x1 ?x2 - molecule) (goal16))
 (:types level molecule - object simple complex - molecule)
 (:constants cdc25a cdc25ap1 cdk2-cyca-e2f13 cdk2p1-cyca-e2f13 cdk46 cdk46-cycd
  cdk46-cycdp1 cdk46p1-cycd cdk46p1-cycdp1 dmp1-cycdp1 dmp1p1-gp19arf
  mdm2-e2f13-dp12p1 p21-cdk2p1-cyca p21-cdk46-cycd p21-cdk46-cycdp1
  p27-cdk2p1-cyca p27-cdk46-cycd p27-cdk46-cycdp1 p57-cdk2-cyce p57-cdk2-cycep1
  p57-cdk2p1-cyca p57-cdk46-cycd p57-cdk46-cycdp1 pcna-gadd45
  pcna-p21-cdk2p1-cyca pcna-p21-cdk46-cycd pcna-p21-cdk46-cycdp1 prbp1p2-jun
  raf1-cdc25a raf1-cdc25ap1 raf1-p130-e2f5-dp12-ge2 skp2-cdk2p1-cyca
  skp2-skp1-cdk2-cyca skp2-skp1-cdk2p1-cyca - complex)
 (:action ugly1dummy-action-9 :parameters () :precondition
  (or (available p57-cdk2-cyce) (available skp2-skp1-cdk2p1-cyca)) :effect
  (and (goal9)))
 (:action ugly2dummy-action-14 :parameters () :precondition
  (or (available pcna-gadd45) (available mdm2-e2f13-dp12p1)) :effect
  (and (goal14)))
 (:action ugly3dummy-action-12 :parameters () :precondition
  (or (available p21-cdk2p1-cyca) (available p57-cdk2-cycep1)) :effect
  (and (goal12)))
 (:action ugly4dummy-action-6 :parameters () :precondition
  (or (available p27-cdk46-cycdp1) (available cdc25ap1)) :effect (and (goal6)))
 (:action ugly5choose :parameters (?x - simple ?l1 ?l2 - level) :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly6initialize :parameters (?x - simple) :precondition
  (and (chosen ?x)) :effect (and (available ?x)))
 (:action ugly7dummy-action-13 :parameters () :precondition
  (or (available p57-cdk2p1-cyca) (available cdc25a)) :effect (and (goal13)))
 (:action ugly8dummy-action-11 :parameters () :precondition
  (or (available cdk46p1-cycdp1) (available pcna-p21-cdk2p1-cyca)) :effect
  (and (goal11)))
 (:action ugly9dummy-action-16 :parameters () :precondition
  (or (available cdk46p1-cycd) (available p27-cdk2p1-cyca)) :effect
  (and (goal16)))
 (:action ugly10dummy-action-15 :parameters () :precondition
  (or (available cdk2-cyca-e2f13) (available prbp1p2-jun)) :effect
  (and (goal15)))
 (:action ugly11associate-with-catalyze :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect (and (not (available ?x1)) (available ?x3)))
 (:action ugly12associate :parameters (?x1 ?x2 - molecule ?x3 - complex)
  :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect (and (not (available ?x1)) (not (available ?x2)) (available ?x3)))
 (:action ugly13dummy-action-1 :parameters () :precondition
  (or (available p27-cdk46-cycd) (available dmp1-cycdp1)) :effect
  (and (goal1)))
 (:action ugly14dummy-action-5 :parameters () :precondition
  (or (available p57-cdk46-cycdp1) (available pcna-p21-cdk46-cycd)) :effect
  (and (goal5)))
 (:action ugly15dummy-action-7 :parameters () :precondition
  (or (available p21-cdk46-cycdp1) (available raf1-cdc25ap1)) :effect
  (and (goal7)))
 (:action ugly16dummy-action-4 :parameters () :precondition
  (or (available p57-cdk46-cycd) (available cdk46-cycdp1)) :effect
  (and (goal4)))
 (:action ugly17dummy-action-3 :parameters () :precondition
  (or (available cdk46-cycd) (available p21-cdk46-cycd)) :effect (and (goal3)))
 (:action ugly18synthesize :parameters (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly19dummy-action-8 :parameters () :precondition
  (or (available raf1-cdc25a) (available skp2-cdk2p1-cyca)) :effect
  (and (goal8)))
 (:action ugly20dummy-action-17 :parameters () :precondition
  (or (available skp2-skp1-cdk2-cyca) (available dmp1p1-gp19arf)) :effect
  (and (goal17)))
 (:action ugly21dummy-action-10 :parameters () :precondition
  (or (available cdk2p1-cyca-e2f13) (available raf1-p130-e2f5-dp12-ge2))
  :effect (and (goal10)))
 (:action ugly22dummy-action-2 :parameters () :precondition
  (or (available pcna-p21-cdk46-cycdp1) (available cdk46)) :effect
  (and (goal2)))) 