
(define (domain pathways-propositional) (:requirements :typing :adl)
 (:predicates (goal14) (goal4) (goal31) (goal8) (available ?x - molecule)
  (goal27) (goal25) (goal33) (goal28) (goal19) (goal29) (goal22) (goal13)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal23)
  (goal26) (goal2) (goal10) (goal20) (possible ?x - molecule)
  (chosen ?s - simple) (goal21) (goal24) (goal3) (goal6) (goal1)
  (num-subs ?l - level) (goal30)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal9) (goal12)
  (goal7) (goal5) (goal17) (synthesis-reaction ?x1 ?x2 - molecule)
  (next ?l1 ?l2 - level) (goal18) (goal16) (goal15) (goal32) (goal11) (goal34))
 (:types level molecule - object simple complex - molecule)
 (:constants c-abl-prbp1p2 cdc25a cdc25ap1 cdk1 cdk1p1p2p3-cyca cdk1p3-cyca
  cdk1p3-cycb cdk2-cyca-e2f13p1 cdk2-cycep1 cdk2p1-cyca-e2f13p1
  cdk2p2-cyca-e2f13 cdk46 cdk46-cycd cdk46-cycdp1 cdk46p2 cdk46p2-cycd
  cdk46p2-cycdp1 cebp-prbp1-gp dmp1p1-cycd hdac1-prb-e2f13-dp12-ge2 p107
  p130-e2f4-dp12p1-ge2 p16-cdk46 p16-cdk46p2 p27-cdk2p1-cyca p27-cdk2p2-cycep1
  p27-cdk46-cycd p27-cdk46-cycdp1 p27-cdk46p1p2-cycd p27-cdk46p2-cycd
  p27-cdk46p2-cycdp1 p27p1-cdk2-cyca p27p1-cdk2-cycep1 p27p1-cdk2p1-cyca
  p27p1-cdk2p1-cycep1 p27p1-cdk2p1p2-cyca p27p1-cdk2p2-cyce p27p1-cdk46-cycd
  p27p1-cdk46-cycdp1 p27p1-cdk46p1-cycd p27p1-cdk46p1-cycdp1
  p27p1-cdk46p1p2-cycdp1 p27p1-cdk46p2-cycd p27p1-cdk46p2-cycdp1
  p57-cdk2p1-cyca p57-cdk46-cycd p57-cdk46-cycdp1 p57-cdk46p2-cycd
  p57-cdk46p2-cycdp1 p57p1-cdk46-cycd p57p1-cdk46-cycdp1 p57p1-cdk46p1p2-cycd
  p57p1-cdk46p2-cycd p57p1-cdk46p2-cycdp1 p68p1p2 prbp1-e2f4-dp12p1 raf1-cdc25a
  raf1-cdc25ap1 skp2-cdk2p1-cyca skp2-cdk2p1p2-cyca skp2p1-skp1p1
  skp2-skp1p1-cdk2-cyca skp2-skp1p1-cdk2p1-cyca skp2-skp1p1-cdk2p1p2-cyca
  skp2-skp1p1-cdk2p2-cyca sl1p1 sp1-e2f13p1 sp1-e2f13p1-gp - complex)
 (:action ugly1ugly3dummy-action-34 :parameters () :precondition
  (or (available p27p1-cdk46p1p2-cycdp1) (available cdc25a)) :effect
  (and (goal34)))
 (:action ugly2ugly38dummy-action-9 :parameters () :precondition
  (or (available p27p1-cdk2p1-cycep1) (available cdk46p2)) :effect
  (and (goal9)))
 (:action ugly3ugly39dummy-action-13 :parameters () :precondition
  (or (available p57-cdk46p2-cycdp1) (available sp1-e2f13p1-gp)) :effect
  (and (goal13)))
 (:action ugly4ugly13dummy-action-16 :parameters () :precondition
  (or (available cdk2-cycep1) (available skp2-skp1p1-cdk2p1p2-cyca)) :effect
  (and (goal16)))
 (:action ugly5ugly30dummy-action-6 :parameters () :precondition
  (or (available p57-cdk46-cycdp1) (available raf1-cdc25ap1)) :effect
  (and (goal6)))
 (:action ugly6ugly15dummy-action-18 :parameters () :precondition
  (or (available skp2-skp1p1-cdk2p2-cyca) (available sl1p1)) :effect
  (and (goal18)))
 (:action ugly7ugly33dummy-action-19 :parameters () :precondition
  (or (available p57p1-cdk46-cycd) (available cdc25ap1)) :effect
  (and (goal19)))
 (:action ugly8ugly9dummy-action-11 :parameters () :precondition
  (or (available p27-cdk46-cycd) (available p57p1-cdk46p1p2-cycd)) :effect
  (and (goal11)))
 (:action ugly9ugly16dummy-action-17 :parameters () :precondition
  (or (available raf1-cdc25a) (available p57-cdk46p2-cycd)) :effect
  (and (goal17)))
 (:action ugly10ugly29dummy-action-22 :parameters () :precondition
  (or (available p27-cdk46p2-cycdp1) (available sp1-e2f13p1)) :effect
  (and (goal22)))
 (:action ugly11ugly25dummy-action-3 :parameters () :precondition
  (or (available cdk46p2-cycd) (available hdac1-prb-e2f13-dp12-ge2)) :effect
  (and (goal3)))
 (:action ugly12ugly4dummy-action-8 :parameters () :precondition
  (or (available p27p1-cdk46-cycdp1) (available p27p1-cdk46p2-cycdp1)) :effect
  (and (goal8)))
 (:action ugly13ugly21synthesize :parameters (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly14ugly34dummy-action-30 :parameters () :precondition
  (or (available dmp1p1-cycd) (available c-abl-prbp1p2)) :effect
  (and (goal30)))
 (:action ugly15ugly23dummy-action-14 :parameters () :precondition
  (or (available p57-cdk46-cycd) (available p57p1-cdk46-cycdp1)) :effect
  (and (goal14)))
 (:action ugly16ugly22dummy-action-31 :parameters () :precondition
  (or (available cdk2-cyca-e2f13p1) (available cdk2p1-cyca-e2f13p1)) :effect
  (and (goal31)))
 (:action ugly17ugly20initialize :parameters (?x - simple) :precondition
  (and (chosen ?x)) :effect (and (available ?x)))
 (:action ugly18ugly10dummy-action-24 :parameters () :precondition
  (or (available p27p1-cdk46p1-cycd) (available skp2p1-skp1p1)) :effect
  (and (goal24)))
 (:action ugly19ugly31dummy-action-21 :parameters () :precondition
  (or (available p68p1p2) (available p27p1-cdk2-cycep1)) :effect
  (and (goal21)))
 (:action ugly20ugly2dummy-action-33 :parameters () :precondition
  (or (available skp2-cdk2p1-cyca) (available p27p1-cdk2p1p2-cyca)) :effect
  (and (goal33)))
 (:action ugly21ugly5dummy-action-25 :parameters () :precondition
  (or (available skp2-cdk2p1p2-cyca) (available cebp-prbp1-gp)) :effect
  (and (goal25)))
 (:action ugly22ugly36dummy-action-23 :parameters () :precondition
  (or (available p57-cdk2p1-cyca) (available cdk1p3-cycb)) :effect
  (and (goal23)))
 (:action ugly23ugly19dummy-action-26 :parameters () :precondition
  (or (available p27-cdk46p1p2-cycd) (available cdk2p2-cyca-e2f13)) :effect
  (and (goal26)))
 (:action ugly24ugly7dummy-action-28 :parameters () :precondition
  (or (available p27p1-cdk2-cyca) (available p27-cdk2p1-cyca)) :effect
  (and (goal28)))
 (:action ugly25ugly8dummy-action-4 :parameters () :precondition
  (or (available p57p1-cdk46p2-cycdp1) (available p27p1-cdk46-cycd)) :effect
  (and (goal4)))
 (:action ugly26ugly17dummy-action-15 :parameters () :precondition
  (or (available skp2-skp1p1-cdk2-cyca) (available skp2-skp1p1-cdk2p1-cyca))
  :effect (and (goal15)))
 (:action ugly27ugly37choose :parameters (?x - simple ?l1 ?l2 - level)
  :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly28ugly6dummy-action-10 :parameters () :precondition
  (or (available p57p1-cdk46p2-cycd) (available cdk46)) :effect (and (goal10)))
 (:action ugly29ugly27dummy-action-32 :parameters () :precondition
  (or (available p27p1-cdk2p2-cyce) (available cdk1)) :effect (and (goal32)))
 (:action ugly30ugly11dummy-action-20 :parameters () :precondition
  (or (available p27-cdk46p2-cycd) (available p27p1-cdk2p1-cyca)) :effect
  (and (goal20)))
 (:action ugly31ugly26dummy-action-12 :parameters () :precondition
  (or (available cdk46-cycd) (available cdk46p2-cycdp1)) :effect
  (and (goal12)))
 (:action ugly32ugly32dummy-action-27 :parameters () :precondition
  (or (available p27-cdk2p2-cycep1) (available p27p1-cdk46p1-cycdp1)) :effect
  (and (goal27)))
 (:action ugly33ugly24dummy-action-2 :parameters () :precondition
  (or (available p27p1-cdk46p2-cycd) (available p27-cdk46-cycdp1)) :effect
  (and (goal2)))
 (:action ugly34ugly35dummy-action-7 :parameters () :precondition
  (or (available p16-cdk46) (available p130-e2f4-dp12p1-ge2)) :effect
  (and (goal7)))
 (:action ugly35ugly12associate-with-catalyze :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect (and (not (available ?x1)) (available ?x3)))
 (:action ugly36ugly28dummy-action-1 :parameters () :precondition
  (or (available prbp1-e2f4-dp12p1) (available cdk1p1p2p3-cyca)) :effect
  (and (goal1)))
 (:action ugly37ugly1associate :parameters (?x1 ?x2 - molecule ?x3 - complex)
  :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect (and (not (available ?x1)) (not (available ?x2)) (available ?x3)))
 (:action ugly38ugly14dummy-action-29 :parameters () :precondition
  (or (available p107) (available cdk1p3-cyca)) :effect (and (goal29)))
 (:action ugly39ugly18dummy-action-5 :parameters () :precondition
  (or (available cdk46-cycdp1) (available p16-cdk46p2)) :effect (and (goal5)))) 