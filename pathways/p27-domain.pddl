
(define (domain pathways-propositional) (:requirements :typing :adl)
 (:predicates (goal31) (goal21) (goal5) (synthesis-reaction ?x1 ?x2 - molecule)
  (goal16) (chosen ?s - simple) (goal20) (goal6) (goal34) (goal29) (goal1)
  (goal19) (goal14) (goal10) (goal26) (goal17) (goal2) (goal28) (goal11)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal9) (goal3)
  (goal22) (goal25) (goal30) (goal7) (goal18) (goal32) (goal24) (goal15)
  (next ?l1 ?l2 - level) (goal4) (goal8) (goal23) (possible ?x - molecule)
  (available ?x - molecule) (num-subs ?l - level) (goal27) (goal13) (goal12)
  (goal33) (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex)
  (goal35))
 (:types level molecule - object simple complex - molecule)
 (:constants cdc25a cdc25ap1 cdk2-cyca-e2f13p1 cdk2p1-cyca-e2f13p1
  cdk2p1p2-cyce cdk2p2-cyca-e2f13p1 cdk46p2-cycdp1 cebp-prbp1p2 cyca e2f13p1
  hdac1-p107-e2f4-dp12-ge2 hdac1-p130-e2f4-dp12-ge2 p p107-e2f4-dp12p1
  p130-e2f4-dp12-ge2 p16-cdk46 p21-cdk2p1-cyce p21-cdk2p2-cyca
  p21-cdk2p2-cycep1 p21-cdk46-cycdp1 p21-cdk46p2-cycd p21-cdk46p2-cycdp1
  p21-gadd45 p27-cdk2p2-cyce p27-cdk2p2-cycep1 p27-cdk46-cycd p27-cdk46p2-cycd
  p27p1-cdk2-cyca p27p1-cdk2-cyce p27p1-cdk2p1-cyca p27p1-cdk2p1-cyce
  p27p1-cdk2p1-cycep1 p27p1-cdk2p1p2-cyca p27p1-cdk2p1p2-cyce
  p27p1-cdk2p1p2-cycep1 p27p1-cdk2p2-cyce p27p1-cdk2p2-cycep1 p27p1-cdk46-cycd
  p27p1-cdk46-cycdp1 p27p1-cdk46p1-cycdp1 p27p1-cdk46p2-cycd
  p27p1-cdk46p2-cycdp1 p53-dp12p1 p53p1-dp12p1 p57-cdk2p2-cyca
  p57-cdk2p2-cycep1 p57-cdk46-cycd p57-cdk46p2-cycdp1 p57p1-cdk46-cycd
  p57p1-cdk46p2-cycdp1 p68p2 pcna-p21 pcna-p21-cdk2-cycep1 pcna-p21-cdk2p2-cyce
  pcna-p21-cdk46-cycd pcna-p21-cdk46-cycdp1 pcna-p21-cdk46p2-cycd
  pcna-p21-cdk46p2-cycdp1 prbp1-ap2-ge-c raf1-cdc25a skp2-cdk2-cyca
  skp2-cdk2p2-cyca skp2p1-skp1 skp2-skp1-cdk2p2-cyca skp2-skp1p1
  skp2-skp1p1-cdk2-cyca skp2-skp1p1-cdk2p1-cyca skp2-skp1p1-cdk2p1p2-cyca
  skp2-skp1p1-cdk2p2-cyca sp1-e2f13p1-gp - complex)
 (:action ugly1ugly3ugly39dummy-action-27 :parameters () :precondition
  (or (available p21-cdk2p1-cyce) (available p16-cdk46)) :effect
  (and (goal27)))
 (:action ugly2ugly38ugly26dummy-action-5 :parameters () :precondition
  (or (available p57-cdk46-cycd) (available p)) :effect (and (goal5)))
 (:action ugly3ugly39ugly32dummy-action-22 :parameters () :precondition
  (or (available cdk2-cyca-e2f13p1) (available p68p2)) :effect (and (goal22)))
 (:action ugly4ugly13ugly7dummy-action-28 :parameters () :precondition
  (or (available p53-dp12p1) (available p27p1-cdk46p2-cycdp1)) :effect
  (and (goal28)))
 (:action ugly5ugly30ugly14dummy-action-17 :parameters () :precondition
  (or (available p27-cdk46p2-cycd) (available p53p1-dp12p1)) :effect
  (and (goal17)))
 (:action ugly6ugly15ugly21dummy-action-30 :parameters () :precondition
  (or (available pcna-p21-cdk46-cycd) (available p21-cdk2p2-cycep1)) :effect
  (and (goal30)))
 (:action ugly7ugly33ugly25dummy-action-12 :parameters () :precondition
  (or (available hdac1-p107-e2f4-dp12-ge2) (available p27p1-cdk46p2-cycd))
  :effect (and (goal12)))
 (:action ugly8ugly6ugly15dummy-action-16 :parameters () :precondition
  (or (available p57-cdk46p2-cycdp1) (available e2f13p1)) :effect
  (and (goal16)))
 (:action ugly9ugly28ugly8dummy-action-1 :parameters () :precondition
  (or (available p27-cdk46-cycd) (available skp2-skp1p1-cdk2p2-cyca)) :effect
  (and (goal1)))
 (:action ugly10ugly24ugly23dummy-action-29 :parameters () :precondition
  (or (available p57p1-cdk46-cycd) (available p27p1-cdk2p1-cycep1)) :effect
  (and (goal29)))
 (:action ugly11ugly12ugly20dummy-action-24 :parameters () :precondition
  (or (available cyca) (available hdac1-p130-e2f4-dp12-ge2)) :effect
  (and (goal24)))
 (:action ugly12ugly20ugly29dummy-action-11 :parameters () :precondition
  (or (available p27p1-cdk2p1-cyce) (available p27p1-cdk2-cyca)) :effect
  (and (goal11)))
 (:action ugly13ugly7ugly33dummy-action-20 :parameters () :precondition
  (or (available p27p1-cdk46-cycdp1) (available pcna-p21-cdk46p2-cycdp1))
  :effect (and (goal20)))
 (:action ugly14ugly22ugly18synthesize :parameters (?x1 ?x2 - molecule)
  :precondition (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly15ugly21ugly35choose :parameters (?x - simple ?l1 ?l2 - level)
  :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly16ugly19ugly37initialize :parameters (?x - simple) :precondition
  (and (chosen ?x)) :effect (and (available ?x)))
 (:action ugly17ugly9ugly28dummy-action-3 :parameters () :precondition
  (or (available skp2-skp1p1-cdk2-cyca) (available sp1-e2f13p1-gp)) :effect
  (and (goal3)))
 (:action ugly18ugly5ugly30dummy-action-9 :parameters () :precondition
  (or (available p21-cdk2p2-cyca) (available cdk2p1-cyca-e2f13p1)) :effect
  (and (goal9)))
 (:action ugly19ugly37ugly2dummy-action-33 :parameters () :precondition
  (or (available p21-gadd45) (available cdk2p2-cyca-e2f13p1)) :effect
  (and (goal33)))
 (:action ugly20ugly29ugly16dummy-action-14 :parameters () :precondition
  (or (available skp2-skp1-cdk2p2-cyca) (available skp2-cdk2p2-cyca)) :effect
  (and (goal14)))
 (:action ugly21ugly35ugly1associate :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect (and (not (available ?x1)) (not (available ?x2)) (available ?x3)))
 (:action ugly22ugly18ugly5dummy-action-25 :parameters () :precondition
  (or (available cdk2p1p2-cyce) (available p21-cdk46-cycdp1)) :effect
  (and (goal25)))
 (:action ugly23ugly34ugly11dummy-action-7 :parameters () :precondition
  (or (available p27p1-cdk2p1p2-cyca) (available p27p1-cdk46-cycd)) :effect
  (and (goal7)))
 (:action ugly24ugly23ugly34dummy-action-6 :parameters () :precondition
  (or (available cdk46p2-cycdp1) (available p57-cdk2p2-cyca)) :effect
  (and (goal6)))
 (:action ugly25ugly17ugly9dummy-action-23 :parameters () :precondition
  (or (available p21-cdk46p2-cycd) (available pcna-p21-cdk46p2-cycd)) :effect
  (and (goal23)))
 (:action ugly26ugly10ugly24dummy-action-18 :parameters () :precondition
  (or (available p130-e2f4-dp12-ge2) (available p27p1-cdk46p1-cycdp1)) :effect
  (and (goal18)))
 (:action ugly27ugly4ugly13dummy-action-2 :parameters () :precondition
  (or (available skp2-skp1p1-cdk2p1p2-cyca)
      (available skp2-skp1p1-cdk2p1-cyca))
  :effect (and (goal2)))
 (:action ugly28ugly8ugly6dummy-action-10 :parameters () :precondition
  (or (available p57-cdk2p2-cycep1) (available p107-e2f4-dp12p1)) :effect
  (and (goal10)))
 (:action ugly29ugly16ugly19dummy-action-32 :parameters () :precondition
  (or (available cdc25a) (available p27p1-cdk2-cyce)) :effect (and (goal32)))
 (:action ugly30ugly14ugly22dummy-action-13 :parameters () :precondition
  (or (available pcna-p21-cdk46-cycdp1) (available cdc25ap1)) :effect
  (and (goal13)))
 (:action ugly31ugly40ugly31dummy-action-35 :parameters () :precondition
  (or (available prbp1-ap2-ge-c) (available skp2p1-skp1)) :effect
  (and (goal35)))
 (:action ugly32ugly27ugly4dummy-action-8 :parameters () :precondition
  (or (available skp2-cdk2-cyca) (available pcna-p21-cdk2-cycep1)) :effect
  (and (goal8)))
 (:action ugly33ugly25ugly17dummy-action-4 :parameters () :precondition
  (or (available raf1-cdc25a) (available p27p1-cdk2p1-cyca)) :effect
  (and (goal4)))
 (:action ugly34ugly11ugly12dummy-action-15 :parameters () :precondition
  (or (available p27-cdk2p2-cyce) (available p27p1-cdk2p1p2-cyce)) :effect
  (and (goal15)))
 (:action ugly35ugly1ugly3dummy-action-34 :parameters () :precondition
  (or (available skp2-skp1p1) (available p27-cdk2p2-cycep1)) :effect
  (and (goal34)))
 (:action ugly36ugly36ugly36dummy-action-31 :parameters () :precondition
  (or (available p27p1-cdk2p1p2-cycep1) (available p27p1-cdk2p2-cyce)) :effect
  (and (goal31)))
 (:action ugly37ugly2ugly38dummy-action-21 :parameters () :precondition
  (or (available p57p1-cdk46p2-cycdp1) (available cebp-prbp1p2)) :effect
  (and (goal21)))
 (:action ugly38ugly26ugly10dummy-action-19 :parameters () :precondition
  (or (available pcna-p21) (available p21-cdk46p2-cycdp1)) :effect
  (and (goal19)))
 (:action ugly39ugly32ugly27associate-with-catalyze :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect (and (not (available ?x1)) (available ?x3)))
 (:action ugly40ugly31ugly40dummy-action-26 :parameters () :precondition
  (or (available p27p1-cdk2p2-cycep1) (available pcna-p21-cdk2p2-cyce)) :effect
  (and (goal26)))) 