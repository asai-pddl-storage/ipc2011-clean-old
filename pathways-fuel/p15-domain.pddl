
(define (domain pathways-propositional)
 (:requirements :typing :adl :action-costs)
 (:predicates (goal15) (goal8) (goal7) (goal1) (chosen ?s - simple) (goal9)
  (goal2) (goal5) (num-subs ?l - level) (goal18) (goal10)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal14)
  (goal16) (goal4) (available ?x - molecule) (goal12) (goal17) (goal13)
  (synthesis-reaction ?x1 ?x2 - molecule) (possible ?x - molecule)
  (next ?l1 ?l2 - level) (goal11) (goal6)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal19) (goal3))
 (:types level molecule - object simple complex - molecule)
 (:constants cdc25a cdc25ap1 cdk2p1-cyca cdk2p1-cyca-e2f13 cdk46 cdk46-cycd
  cdk46-cycdp1 c-myc-max-gcdc25a cycep1 dmp1-cycdp1 p107-e2f4-dp12-ge2
  p130-e2f5-dp12p1-ge2 p21-cdk2-cyca p21-cdk2-cycep1 p21-cdk2p1-cyca
  p21-cdk46-cycd p21-cdk46-cycdp1 p57p1-cdk46-cycd p57p1-cdk46-cycdp1
  pcna-p21-cdk2-cyce pcna-p21-cdk2-cycep1 pcna-p21-cdk2p1-cyca
  pcna-p21-cdk46-cycd pcna-p21-cdk46-cycdp1 pcna-p21-cdk46p1-cycd
  pcna-p21-cdk46p1-cycdp1 raf1-cdc25a raf1-cdc25ap1 raf1-p130-e2f4p1-dp12-ge2
  raf1-p130-e2f5-dp12-ge2 raf1-prb-e2f13p1-dp12p1-ge2 raf1-prb-e2f4-dp12-ge2
  raf1-prbp1-e2f13p1-dp12p1-ge2 raf1-prbp1-e2f4-dp12-ge2 skp2-cdk2-cyca
  skp2-cdk2p1-cyca skp2-skp1-cdk2-cyca skp2-skp1-cdk2p1-cyca - complex)
 (:functions (total-cost) - number)
 (:action ugly1dummy-action-10 :parameters () :precondition
  (or (available p130-e2f5-dp12p1-ge2) (available raf1-p130-e2f5-dp12-ge2))
  :effect (and (goal10)))
 (:action ugly2dummy-action-4 :parameters () :precondition
  (or (available pcna-p21-cdk46-cycd) (available p21-cdk46-cycd)) :effect
  (and (goal4)))
 (:action ugly3dummy-action-7 :parameters () :precondition
  (or (available raf1-cdc25a) (available cdk2p1-cyca-e2f13)) :effect
  (and (goal7)))
 (:action ugly4dummy-action-12 :parameters () :precondition
  (or (available p21-cdk2p1-cyca) (available pcna-p21-cdk2p1-cyca)) :effect
  (and (goal12)))
 (:action ugly5dummy-action-11 :parameters () :precondition
  (or (available pcna-p21-cdk2-cycep1) (available skp2-cdk2p1-cyca)) :effect
  (and (goal11)))
 (:action ugly6dummy-action-9 :parameters () :precondition
  (or (available p57p1-cdk46-cycd) (available cdc25a)) :effect (and (goal9)))
 (:action ugly7dummy-action-14 :parameters () :precondition
  (or (available skp2-cdk2-cyca) (available skp2-skp1-cdk2p1-cyca)) :effect
  (and (goal14)))
 (:action ugly8dummy-action-18 :parameters () :precondition
  (or (available cdk2p1-cyca) (available p107-e2f4-dp12-ge2)) :effect
  (and (goal18)))
 (:action ugly9initialize :parameters (?x - simple) :precondition
  (and (chosen ?x)) :effect (and (available ?x)))
 (:action ugly10choose :parameters (?x - simple ?l1 ?l2 - level) :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly11dummy-action-3 :parameters () :precondition
  (or (available pcna-p21-cdk46-cycdp1) (available cdk46)) :effect
  (and (goal3)))
 (:action ugly12dummy-action-13 :parameters () :precondition
  (or (available raf1-prb-e2f4-dp12-ge2) (available dmp1-cycdp1)) :effect
  (and (goal13)))
 (:action ugly13dummy-action-19 :parameters () :precondition
  (or (available p21-cdk2-cyca) (available raf1-prbp1-e2f4-dp12-ge2)) :effect
  (and (goal19)))
 (:action ugly14dummy-action-15 :parameters () :precondition
  (or (available c-myc-max-gcdc25a) (available skp2-skp1-cdk2-cyca)) :effect
  (and (goal15)))
 (:action ugly15associate-with-catalyze :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (available ?x3)))
 (:action ugly16associate :parameters (?x1 ?x2 - molecule ?x3 - complex)
  :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (not (available ?x2))
       (available ?x3)))
 (:action ugly17dummy-action-16 :parameters () :precondition
  (or (available raf1-prbp1-e2f13p1-dp12p1-ge2) (available p21-cdk2-cycep1))
  :effect (and (goal16)))
 (:action ugly18dummy-action-5 :parameters () :precondition
  (or (available p57p1-cdk46-cycdp1) (available p21-cdk46-cycdp1)) :effect
  (and (goal5)))
 (:action ugly19synthesize :parameters (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly20dummy-action-2 :parameters () :precondition
  (or (available raf1-p130-e2f4p1-dp12-ge2) (available cdk46-cycd)) :effect
  (and (goal2)))
 (:action ugly21dummy-action-6 :parameters () :precondition
  (or (available cdc25ap1) (available raf1-cdc25ap1)) :effect (and (goal6)))
 (:action ugly22dummy-action-17 :parameters () :precondition
  (or (available pcna-p21-cdk46p1-cycd) (available pcna-p21-cdk46p1-cycdp1))
  :effect (and (goal17)))
 (:action ugly23dummy-action-1 :parameters () :precondition
  (or (available pcna-p21-cdk2-cyce) (available cdk46-cycdp1)) :effect
  (and (goal1)))
 (:action ugly24dummy-action-8 :parameters () :precondition
  (or (available raf1-prb-e2f13p1-dp12p1-ge2) (available cycep1)) :effect
  (and (goal8)))) 