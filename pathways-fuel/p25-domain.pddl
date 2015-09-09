
(define (domain pathways-propositional)
 (:requirements :typing :adl :action-costs)
 (:predicates (goal21) (goal25) (num-subs ?l - level) (goal29) (goal32) (goal2)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal31)
  (goal17) (goal9) (goal7) (possible ?x - molecule)
  (synthesis-reaction ?x1 ?x2 - molecule) (goal3) (goal24) (goal27)
  (available ?x - molecule) (goal20) (goal4) (next ?l1 ?l2 - level) (goal30)
  (goal28) (goal22) (goal12) (goal13) (goal11) (goal8) (chosen ?s - simple)
  (goal5) (goal15) (goal14) (goal1)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal23) (goal10)
  (goal19) (goal16) (goal6) (goal33) (goal26) (goal18))
 (:types level molecule - object simple complex - molecule)
 (:constants cdc25a cdc25ap1 cdk1p1p2-gadd45 cdk1p2 cdk1p3-cks1 cdk1p3-cyca
  cdk1p3-cycb cdk1p3-gadd45 cdk2-cyca-e2f13p1 cdk2p1-cyca-e2f13p1
  cdk2p1p2-cyca-e2f13p1 cdk2p2-cyca-e2f13p1 cdk46 cdk46-cycd cdk46-cycdp1
  cdk46p2 cdk46p2-cycd cdk46p2-cycdp1 cebp-prbp1p2 c-myc-ap2 cycd e2f4-dp12-ge2
  ecadherin hdac1-p107-e2f4-dp12-ge2 hdac1-p130-e2f4-dp12 mdm2-e2f13p1-dp12
  mdm2-e2f13p1-dp12p1 p16-cdk46 p16-cdk46p2 p21-cdk46-cycd p21-cdk46-cycdp1
  p21-cdk46p2-cycd p21-cdk46p2-cycdp1 p53-dp12p1 p53p1-dp12p1 p57-cdk46-cycd
  p57-cdk46-cycdp1 p57-cdk46p2-cycd p57-cdk46p2-cycdp1 p57p1-cdk46-cycd
  p57p1-cdk46-cycdp1 p57p1-cdk46p2-cycd p57p1-cdk46p2-cycdp1 p68p1p2
  pcna-p21-cdk2p1p2-cyce pcna-p21-cdk46-cycd pcna-p21-cdk46-cycdp1
  pcna-p21-cdk46p2-cycd pcna-p21-cdk46p2-cycdp1 prbp1p2-ap2 raf1-cdc25a
  raf1-cdc25ap1 raf1-p130-e2f4-dp12-ge2 skp2p1 skp2p1-skp1 skp2p1-skp1p1
  skp2-skp1p1 skp2-skp1p1-cdk2-cyca skp2-skp1p1-cdk2p1-cyca
  skp2-skp1p1-cdk2p1p2-cyca skp2-skp1p1-cdk2p2-cyca sl1p1 sp1-e2f13p1
  sp1-e2f13p1-gp sp1-p107 wee1p1 - complex)
 (:functions (total-cost) - number)
 (:action ugly1dummy-action-21 :parameters () :precondition
  (or (available cdk2p1p2-cyca-e2f13p1) (available skp2-skp1p1-cdk2p1-cyca))
  :effect (and (goal21)))
 (:action ugly2associate-with-catalyze :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (available ?x3)))
 (:action ugly3synthesize :parameters (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly4dummy-action-8 :parameters () :precondition
  (or (available cdk46p2-cycdp1) (available e2f4-dp12-ge2)) :effect
  (and (goal8)))
 (:action ugly5dummy-action-25 :parameters () :precondition
  (or (available sl1p1) (available cycd)) :effect (and (goal25)))
 (:action ugly6dummy-action-10 :parameters () :precondition
  (or (available p57-cdk46p2-cycdp1) (available p21-cdk46p2-cycd)) :effect
  (and (goal10)))
 (:action ugly7dummy-action-28 :parameters () :precondition
  (or (available cdc25a) (available sp1-p107)) :effect (and (goal28)))
 (:action ugly8dummy-action-4 :parameters () :precondition
  (or (available p57-cdk46-cycd) (available cdk46-cycd)) :effect (and (goal4)))
 (:action ugly9dummy-action-11 :parameters () :precondition
  (or (available cdk1p3-gadd45) (available cdk46p2)) :effect (and (goal11)))
 (:action ugly10dummy-action-24 :parameters () :precondition
  (or (available hdac1-p130-e2f4-dp12) (available cdc25ap1)) :effect
  (and (goal24)))
 (:action ugly11dummy-action-20 :parameters () :precondition
  (or (available cdk1p3-cks1) (available p53-dp12p1)) :effect (and (goal20)))
 (:action ugly12initialize :parameters (?x - simple) :precondition
  (and (chosen ?x)) :effect (and (available ?x)))
 (:action ugly13dummy-action-16 :parameters () :precondition
  (or (available cdk46) (available sp1-e2f13p1-gp)) :effect (and (goal16)))
 (:action ugly14dummy-action-29 :parameters () :precondition
  (or (available sp1-e2f13p1) (available skp2p1-skp1p1)) :effect
  (and (goal29)))
 (:action ugly15dummy-action-18 :parameters () :precondition
  (or (available skp2-skp1p1-cdk2p1p2-cyca) (available skp2-skp1p1-cdk2-cyca))
  :effect (and (goal18)))
 (:action ugly16dummy-action-17 :parameters () :precondition
  (or (available wee1p1) (available raf1-cdc25a)) :effect (and (goal17)))
 (:action ugly17dummy-action-15 :parameters () :precondition
  (or (available p57p1-cdk46p2-cycdp1) (available cdk1p2)) :effect
  (and (goal15)))
 (:action ugly18dummy-action-5 :parameters () :precondition
  (or (available p21-cdk46-cycd) (available p57p1-cdk46-cycdp1)) :effect
  (and (goal5)))
 (:action ugly19dummy-action-26 :parameters () :precondition
  (or (available cdk2p2-cyca-e2f13p1) (available p68p1p2)) :effect
  (and (goal26)))
 (:action ugly20dummy-action-33 :parameters () :precondition
  (or (available ecadherin) (available skp2p1)) :effect (and (goal33)))
 (:action ugly21associate :parameters (?x1 ?x2 - molecule ?x3 - complex)
  :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (not (available ?x2))
       (available ?x3)))
 (:action ugly22dummy-action-31 :parameters () :precondition
  (or (available cdk2p1-cyca-e2f13p1) (available skp2p1-skp1)) :effect
  (and (goal31)))
 (:action ugly23dummy-action-12 :parameters () :precondition
  (or (available p57-cdk46p2-cycd) (available pcna-p21-cdk46-cycdp1)) :effect
  (and (goal12)))
 (:action ugly24dummy-action-27 :parameters () :precondition
  (or (available cdk2-cyca-e2f13p1) (available raf1-p130-e2f4-dp12-ge2))
  :effect (and (goal27)))
 (:action ugly25dummy-action-9 :parameters () :precondition
  (or (available cdk46p2-cycd) (available pcna-p21-cdk46p2-cycdp1)) :effect
  (and (goal9)))
 (:action ugly26dummy-action-32 :parameters () :precondition
  (or (available hdac1-p107-e2f4-dp12-ge2) (available cdk1p1p2-gadd45)) :effect
  (and (goal32)))
 (:action ugly27choose :parameters (?x - simple ?l1 ?l2 - level) :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly28dummy-action-14 :parameters () :precondition
  (or (available p57-cdk46-cycdp1) (available p21-cdk46p2-cycdp1)) :effect
  (and (goal14)))
 (:action ugly29dummy-action-22 :parameters () :precondition
  (or (available skp2-skp1p1-cdk2p2-cyca) (available cdk1p3-cyca)) :effect
  (and (goal22)))
 (:action ugly30dummy-action-3 :parameters () :precondition
  (or (available p16-cdk46p2) (available c-myc-ap2)) :effect (and (goal3)))
 (:action ugly31dummy-action-1 :parameters () :precondition
  (or (available p16-cdk46) (available raf1-cdc25ap1)) :effect (and (goal1)))
 (:action ugly32dummy-action-19 :parameters () :precondition
  (or (available cebp-prbp1p2) (available cdk1p3-cycb)) :effect (and (goal19)))
 (:action ugly33dummy-action-2 :parameters () :precondition
  (or (available p21-cdk46-cycdp1) (available pcna-p21-cdk46-cycd)) :effect
  (and (goal2)))
 (:action ugly34dummy-action-30 :parameters () :precondition
  (or (available skp2-skp1p1) (available mdm2-e2f13p1-dp12)) :effect
  (and (goal30)))
 (:action ugly35dummy-action-7 :parameters () :precondition
  (or (available cdk46-cycdp1) (available p57p1-cdk46-cycd)) :effect
  (and (goal7)))
 (:action ugly36dummy-action-23 :parameters () :precondition
  (or (available p53p1-dp12p1) (available pcna-p21-cdk2p1p2-cyce)) :effect
  (and (goal23)))
 (:action ugly37dummy-action-6 :parameters () :precondition
  (or (available prbp1p2-ap2) (available p57p1-cdk46p2-cycd)) :effect
  (and (goal6)))
 (:action ugly38dummy-action-13 :parameters () :precondition
  (or (available mdm2-e2f13p1-dp12p1) (available pcna-p21-cdk46p2-cycd))
  :effect (and (goal13)))) 