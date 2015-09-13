
(define (domain pathways-propositional)
 (:requirements :typing :adl :action-costs)
 (:predicates (goal26) (association-reaction ?x1 ?x2 - molecule ?x3 - complex)
  (goal15) (goal27) (goal4)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal29)
  (goal24) (goal3) (goal21) (chosen ?s - simple) (goal18) (goal8) (goal6)
  (goal7) (goal28) (available ?x - molecule) (goal30) (goal2) (goal11) (goal9)
  (next ?l1 ?l2 - level) (goal16) (goal19) (goal10) (goal22)
  (num-subs ?l - level) (possible ?x - molecule) (goal13) (goal25) (goal23)
  (goal5) (goal17) (goal1) (goal20) (goal14) (goal12)
  (synthesis-reaction ?x1 ?x2 - molecule))
 (:types level molecule - object simple complex - molecule)
 (:constants cdk1 cdk1-gadd45 cdk2-cyca cdk2-cyce cdk2p1-cyca cebp-prbp1-gp
  cebp-prbp2-gp dmp1-cycd hdac1-p107-e2f4-dp12 hdac1-p107-e2f4-dp12-ge2
  hdac1-p107-e2f4-dp12p1 hdac1-p130-e2f4-dp12-ge2 hdac1-p130-e2f5-dp12
  hdac1-p130-e2f5-dp12-ge2 hdac1-prb-e2f13p1-dp12-ge2 p107-e2f4-dp12p1-ge2
  p130-e2f4-dp12 p130-e2f4-dp12-ge2 p21-cdk2-cyca p21-cdk2-cyce p21-cdk2p1-cyce
  p21-cdk46p1-cycd p21-cdk46p1-cycdp1 p27-cdk2-cyca p27-cdk2-cyce
  p27-cdk2-cycep1 p27-cdk2p1-cyce p27-cdk2p1-cycep1 p27-cdk46p1-cycdp1
  p57-cdk2-cyce p57-cdk2-cycep1 p57-cdk2p1-cyca p57-cdk2p1-cyce
  p57-cdk2p1-cycep1 p57-cdk46p1-cycd p57p1-cdk46p1-cycd pcna-cycd pcna-gadd45
  pcna-p21-cdk2-cyca pcna-p21-cdk2-cycep1 pcna-p21-cdk2p1-cyca
  pcna-p21-cdk2p1-cycep1 pcna-p21-cdk46p1-cycdp1 prbp1-e2f13-dp12
  prbp1-e2f13-dp12-ge2 prbp1-e2f4-dp12-ge2 raf1-p130-e2f4-dp12
  raf1-p130-e2f4-dp12-ge2 raf1-p130-e2f5-dp12-ge2 raf1-prb-e2f13-dp12
  raf1-prb-e2f13-dp12-ge2 raf1-prbp1-e2f13-dp12-ge2 raf1-prbp1-e2f13p1-dp12-ge2
  raf1-prbp1-e2f4-dp12 raf1-prbp1-e2f4-dp12-ge2 skp2-cdk2-cyca skp2-cdk2p1-cyca
  skp2-skp1-cdk2-cyca sp1-p107 sp1-p107-gp - complex)
 (:functions (total-cost) - number)
 (:action ugly11546ugly11546ugly11546ugly1ugly12ugly7ugly9dummy-action-8
  :parameters () :precondition
  (or (available p57-cdk2p1-cycep1) (available p27-cdk2p1-cyce)) :effect
  (and (goal8)))
 (:action ugly11547ugly11547ugly11547ugly2ugly20ugly23ugly10dummy-action-14
  :parameters () :precondition
  (or (available hdac1-p130-e2f4-dp12-ge2) (available p130-e2f4-dp12-ge2))
  :effect (and (goal14)))
 (:action ugly11548ugly11572ugly11556ugly30ugly27ugly30ugly27dummy-action-25
  :parameters () :precondition
  (or (available hdac1-p130-e2f5-dp12-ge2) (available prbp1-e2f13-dp12-ge2))
  :effect (and (goal25)))
 (:action ugly11549ugly11565ugly11554ugly33ugly4ugly6ugly22dummy-action-29
  :parameters () :precondition
  (or (available pcna-p21-cdk2p1-cyca) (available p27-cdk46p1-cycdp1)) :effect
  (and (goal29)))
 (:action ugly11550ugly11569ugly11564ugly16ugly17ugly25ugly24dummy-action-9
  :parameters () :precondition
  (or (available p21-cdk46p1-cycdp1) (available hdac1-p107-e2f4-dp12)) :effect
  (and (goal9)))
 (:action ugly11551ugly11551ugly11551ugly6ugly22ugly34ugly5dummy-action-16
  :parameters () :precondition
  (or (available hdac1-p130-e2f5-dp12) (available raf1-p130-e2f4-dp12)) :effect
  (and (goal16)))
 (:action ugly11552ugly11548ugly11572ugly11ugly2ugly20ugly23dummy-action-5
  :parameters () :precondition
  (or (available cdk2p1-cyca) (available hdac1-prb-e2f13p1-dp12-ge2)) :effect
  (and (goal5)))
 (:action ugly11553ugly11567ugly11571ugly17ugly25ugly24ugly14dummy-action-28
  :parameters () :precondition
  (or (available p27-cdk2-cyca) (available p21-cdk46p1-cycd)) :effect
  (and (goal28)))
 (:action ugly11554ugly11578ugly11559ugly35ugly3ugly28ugly18dummy-action-21
  :parameters () :precondition
  (or (available p21-cdk2-cyca) (available raf1-prbp1-e2f13p1-dp12-ge2))
  :effect (and (goal21)))
 (:action
  ugly11555ugly11576ugly11573ugly25ugly24ugly14ugly33associate-with-catalyze
  :parameters (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (available ?x3)))
 (:action ugly11556ugly11575ugly11563ugly32ugly8ugly1ugly12dummy-action-2
  :parameters () :precondition
  (or (available p107-e2f4-dp12p1-ge2) (available raf1-p130-e2f5-dp12-ge2))
  :effect (and (goal2)))
 (:action ugly11557ugly11549ugly11565ugly9ugly13ugly11ugly2dummy-action-15
  :parameters () :precondition
  (or (available raf1-prbp1-e2f4-dp12-ge2)
      (available raf1-prbp1-e2f13-dp12-ge2))
  :effect (and (goal15)))
 (:action ugly11558ugly11566ugly11557ugly4ugly6ugly22ugly34synthesize
  :parameters (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly11559ugly11580ugly11574ugly5ugly21ugly32ugly8choose :parameters
  (?x - simple ?l1 ?l2 - level) :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly11560ugly11553ugly11567ugly26ugly35ugly3ugly28dummy-action-13
  :parameters () :precondition
  (or (available skp2-cdk2-cyca) (available pcna-gadd45)) :effect
  (and (goal13)))
 (:action ugly11561ugly11579ugly11568ugly13ugly11ugly2ugly20dummy-action-18
  :parameters () :precondition
  (or (available pcna-p21-cdk46p1-cycdp1) (available cebp-prbp2-gp)) :effect
  (and (goal18)))
 (:action ugly11562ugly11555ugly11576ugly28ugly18ugly26ugly35associate
  :parameters (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (not (available ?x2))
       (available ?x3)))
 (:action ugly11563ugly11577ugly11552ugly3ugly28ugly18ugly26dummy-action-30
  :parameters () :precondition
  (or (available p57-cdk2-cyce) (available skp2-cdk2p1-cyca)) :effect
  (and (goal30)))
 (:action ugly11564ugly11561ugly11579ugly23ugly10ugly19ugly16dummy-action-12
  :parameters () :precondition
  (or (available skp2-skp1-cdk2-cyca) (available sp1-p107)) :effect
  (and (goal12)))
 (:action ugly11565ugly11554ugly11578ugly14ugly33ugly4ugly6dummy-action-17
  :parameters () :precondition
  (or (available cdk2-cyca) (available p27-cdk2-cyce)) :effect (and (goal17)))
 (:action ugly11566ugly11557ugly11549ugly20ugly23ugly10ugly19dummy-action-11
  :parameters () :precondition
  (or (available pcna-p21-cdk2p1-cycep1) (available cdk1-gadd45)) :effect
  (and (goal11)))
 (:action ugly11567ugly11571ugly11562ugly10ugly19ugly16ugly17dummy-action-20
  :parameters () :precondition
  (or (available raf1-p130-e2f4-dp12-ge2) (available raf1-prbp1-e2f4-dp12))
  :effect (and (goal20)))
 (:action ugly11568ugly11558ugly11566ugly12ugly7ugly9ugly13dummy-action-6
  :parameters () :precondition
  (or (available sp1-p107-gp) (available p130-e2f4-dp12)) :effect
  (and (goal6)))
 (:action ugly11569ugly11564ugly11561ugly34ugly5ugly21ugly32dummy-action-3
  :parameters () :precondition
  (or (available p21-cdk2-cyce) (available prbp1-e2f13-dp12)) :effect
  (and (goal3)))
 (:action ugly11570ugly11560ugly11553ugly22ugly34ugly5ugly21dummy-action-27
  :parameters () :precondition
  (or (available cebp-prbp1-gp) (available raf1-prb-e2f13-dp12)) :effect
  (and (goal27)))
 (:action ugly11571ugly11562ugly11555ugly31ugly31ugly31ugly31dummy-action-26
  :parameters () :precondition
  (or (available p57p1-cdk46p1-cycd) (available raf1-prb-e2f13-dp12-ge2))
  :effect (and (goal26)))
 (:action ugly11572ugly11556ugly11575ugly18ugly26ugly35ugly3dummy-action-23
  :parameters () :precondition
  (or (available pcna-p21-cdk2-cycep1) (available p57-cdk2-cycep1)) :effect
  (and (goal23)))
 (:action ugly11573ugly11570ugly11560ugly8ugly1ugly12ugly7dummy-action-4
  :parameters () :precondition
  (or (available p57-cdk2p1-cyce) (available cdk1)) :effect (and (goal4)))
 (:action ugly11574ugly11550ugly11569ugly19ugly16ugly17ugly25dummy-action-19
  :parameters () :precondition
  (or (available p27-cdk2-cycep1) (available pcna-p21-cdk2-cyca)) :effect
  (and (goal19)))
 (:action ugly11575ugly11563ugly11577ugly7ugly9ugly13ugly11initialize
  :parameters (?x - simple) :precondition (and (chosen ?x)) :effect
  (and (available ?x)))
 (:action ugly11576ugly11573ugly11570ugly15ugly29ugly15ugly29dummy-action-10
  :parameters () :precondition
  (or (available p27-cdk2p1-cycep1) (available dmp1-cycd)) :effect
  (and (goal10)))
 (:action ugly11577ugly11552ugly11548ugly27ugly30ugly27ugly30dummy-action-22
  :parameters () :precondition
  (or (available p57-cdk2p1-cyca) (available cdk2-cyce)) :effect
  (and (goal22)))
 (:action ugly11578ugly11559ugly11580ugly29ugly15ugly29ugly15dummy-action-24
  :parameters () :precondition
  (or (available p21-cdk2p1-cyce) (available hdac1-p107-e2f4-dp12p1)) :effect
  (and (goal24)))
 (:action ugly11579ugly11568ugly11558ugly21ugly32ugly8ugly1dummy-action-7
  :parameters () :precondition
  (or (available pcna-cycd) (available p57-cdk46p1-cycd)) :effect
  (and (goal7)))
 (:action ugly11580ugly11574ugly11550ugly24ugly14ugly33ugly4dummy-action-1
  :parameters () :precondition
  (or (available hdac1-p107-e2f4-dp12-ge2) (available prbp1-e2f4-dp12-ge2))
  :effect (and (goal1)))) 