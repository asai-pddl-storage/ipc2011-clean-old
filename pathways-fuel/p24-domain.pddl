
(define (domain pathways-propositional)
 (:requirements :typing :adl :action-costs)
 (:predicates (goal21) (goal4) (goal3) (available ?x - molecule) (goal31)
  (goal5) (goal13) (possible ?x - molecule) (goal17) (goal12) (goal19) (goal27)
  (synthesis-reaction ?x1 ?x2 - molecule) (goal22) (goal20) (goal9) (goal30)
  (goal6) (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex)
  (goal25) (next ?l1 ?l2 - level) (goal26) (goal24) (goal28) (goal11) (goal1)
  (goal23) (goal18) (goal14) (goal7)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal10) (goal8)
  (goal2) (goal15) (goal16) (num-subs ?l - level) (chosen ?s - simple)
  (goal29))
 (:types level molecule - object simple complex - molecule)
 (:constants cdc25ap1 cdk2-cyca-e2f13p1 cdk2p1p2 cdk2p1p2-cyca-e2f13
  cdk2p2-cyca-e2f13p1 cdk46 cdk46-cycd cdk46-cycdp1 cdk46p2 cdk46p2-cycd
  cdk46p2-cycdp1 ecadherin hdac1-p107-e2f4-dp12 hdac1-p107-e2f4-dp12p1
  p21-cdk2-cyce p21-cdk46-cycd p21-cdk46-cycdp1 p21-cdk46p2-cycd
  p21-cdk46p2-cycdp1 p27-cdk2p1p2-cyca p27-cdk46-cycd p27-cdk46-cycdp1
  p27-cdk46p1-cycd p27-cdk46p2-cycd p27-cdk46p2-cycdp1 p27p1-cdk2-cyce
  p27p1-cdk2-cycep1 p27p1-cdk2p1-cyce p27p1-cdk2p1-cycep1 p27p1-cdk2p1p2-cyca
  p27p1-cdk2p1p2-cyce p27p1-cdk46-cycd p27p1-cdk46-cycdp1 p27p1-cdk46p1-cycdp1
  p27p1-cdk46p1p2-cycdp1 p27p1-cdk46p2-cycd p27p1-cdk46p2-cycdp1 p57-cdk46-cycd
  p57-cdk46-cycdp1 p57-cdk46p2-cycd p57-cdk46p2-cycdp1 p57p1-cdk46-cycd
  p57p1-cdk46-cycdp1 p57p1-cdk46p2-cycd p57p1-cdk46p2-cycdp1
  pcna-p21-cdk2-cycep1 pcna-p21-cdk2p1p2-cyca pcna-p21-cdk46-cycd
  pcna-p21-cdk46-cycdp1 pcna-p21-cdk46p2-cycd pcna-p21-cdk46p2-cycdp1
  prbp1-e2f13-dp12 prbp1p2-jun-c-fos raf1-cdc25a raf1-cdc25ap1
  skp2-skp1-cdk2p2-cyca skp2-skp1p1-cdk2-cyca skp2-skp1p1-cdk2p1-cyca
  skp2-skp1p1-cdk2p1p2-cyca skp2-skp1p1-cdk2p2-cyca sp1-e2f13p1-gp sp1-p107-gp
  - complex)
 (:functions (total-cost) - number)
 (:action
  ugly11581ugly11589ugly11610ugly11612ugly11596ugly11595ugly12ugly5ugly21ugly24initialize
  :parameters (?x - simple) :precondition (and (chosen ?x)) :effect
  (and (available ?x)))
 (:action
  ugly11582ugly11615ugly11587ugly11599ugly11608ugly11585ugly33ugly7ugly9ugly13dummy-action-9
  :parameters () :precondition
  (or (available sp1-e2f13p1-gp) (available p57-cdk46-cycd)) :effect
  (and (goal9)))
 (:action
  ugly11583ugly11583ugly11583ugly11583ugly11583ugly11583ugly3ugly28ugly31ugly3dummy-action-23
  :parameters () :precondition
  (or (available skp2-skp1p1-cdk2p1p2-cyca) (available p57-cdk46-cycdp1))
  :effect (and (goal23)))
 (:action
  ugly11584ugly11594ugly11601ugly11581ugly11589ugly11610ugly32ugly32ugly32ugly32dummy-action-27
  :parameters () :precondition
  (or (available p27p1-cdk2-cyce) (available pcna-p21-cdk2-cycep1)) :effect
  (and (goal27)))
 (:action
  ugly11585ugly11613ugly11604ugly11605ugly11607ugly11584ugly14ugly8ugly1ugly12synthesize
  :parameters (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action
  ugly11586ugly11582ugly11615ugly11587ugly11599ugly11608ugly5ugly21ugly24ugly2dummy-action-15
  :parameters () :precondition
  (or (available p27-cdk2p1p2-cyca) (available cdk46)) :effect (and (goal15)))
 (:action
  ugly11587ugly11599ugly11608ugly11585ugly11613ugly11604ugly25ugly15ugly34ugly23dummy-action-30
  :parameters () :precondition
  (or (available skp2-skp1-cdk2p2-cyca) (available p27p1-cdk2p1p2-cyca))
  :effect (and (goal30)))
 (:action
  ugly11588ugly11586ugly11582ugly11615ugly11587ugly11599ugly28ugly31ugly3ugly28dummy-action-26
  :parameters () :precondition
  (or (available cdk2-cyca-e2f13p1) (available p27p1-cdk2p1-cycep1)) :effect
  (and (goal26)))
 (:action
  ugly11589ugly11610ugly11612ugly11596ugly11595ugly11592ugly23ugly35ugly4ugly6dummy-action-17
  :parameters () :precondition
  (or (available sp1-p107-gp) (available pcna-p21-cdk46p2-cycd)) :effect
  (and (goal17)))
 (:action
  ugly11590ugly11593ugly11609ugly11602ugly11597ugly11616ugly18ugly26ugly25ugly15dummy-action-29
  :parameters () :precondition
  (or (available p27p1-cdk2-cycep1) (available p27p1-cdk46p1-cycdp1)) :effect
  (and (goal29)))
 (:action
  ugly11591ugly11611ugly11591ugly11611ugly11591ugly11611ugly11ugly36ugly29ugly10dummy-action-14
  :parameters () :precondition
  (or (available pcna-p21-cdk46-cycdp1) (available p27-cdk46p2-cycdp1)) :effect
  (and (goal14)))
 (:action
  ugly11592ugly11603ugly11590ugly11593ugly11609ugly11602ugly17ugly18ugly26ugly25dummy-action-10
  :parameters () :precondition
  (or (available skp2-skp1p1-cdk2-cyca) (available ecadherin)) :effect
  (and (goal10)))
 (:action
  ugly11593ugly11609ugly11602ugly11597ugly11616ugly11598ugly34ugly23ugly35ugly4dummy-action-1
  :parameters () :precondition
  (or (available p27p1-cdk46-cycdp1) (available cdk46p2-cycd)) :effect
  (and (goal1)))
 (:action
  ugly11594ugly11601ugly11581ugly11589ugly11610ugly11612ugly16ugly30ugly16ugly30dummy-action-11
  :parameters () :precondition
  (or (available prbp1p2-jun-c-fos) (available p27-cdk46p2-cycd)) :effect
  (and (goal11)))
 (:action
  ugly11595ugly11592ugly11603ugly11590ugly11593ugly11609ugly22ugly33ugly7ugly9dummy-action-8
  :parameters () :precondition
  (or (available hdac1-p107-e2f4-dp12p1) (available p57p1-cdk46-cycd)) :effect
  (and (goal8)))
 (:action
  ugly11596ugly11595ugly11592ugly11603ugly11590ugly11593ugly29ugly10ugly19ugly27dummy-action-6
  :parameters () :precondition
  (or (available p57-cdk46p2-cycd) (available p57p1-cdk46p2-cycdp1)) :effect
  (and (goal6)))
 (:action
  ugly11597ugly11616ugly11598ugly11614ugly11606ugly11588ugly6ugly22ugly33ugly7dummy-action-4
  :parameters () :precondition
  (or (available p21-cdk46-cycd) (available p21-cdk46-cycdp1)) :effect
  (and (goal4)))
 (:action
  ugly11598ugly11614ugly11606ugly11588ugly11586ugly11582ugly35ugly4ugly6ugly22dummy-action-28
  :parameters () :precondition
  (or (available cdk2p1p2-cyca-e2f13) (available prbp1-e2f13-dp12)) :effect
  (and (goal28)))
 (:action
  ugly11599ugly11608ugly11585ugly11613ugly11604ugly11605ugly27ugly11ugly36ugly29dummy-action-5
  :parameters () :precondition
  (or (available pcna-p21-cdk46p2-cycdp1) (available p57p1-cdk46-cycdp1))
  :effect (and (goal5)))
 (:action
  ugly11600ugly11600ugly11600ugly11600ugly11600ugly11600ugly20ugly17ugly18ugly26dummy-action-20
  :parameters () :precondition
  (or (available p27p1-cdk46p2-cycd) (available p57p1-cdk46p2-cycd)) :effect
  (and (goal20)))
 (:action
  ugly11601ugly11581ugly11589ugly11610ugly11612ugly11596ugly15ugly34ugly23ugly35associate-with-catalyze
  :parameters (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (available ?x3)))
 (:action
  ugly11602ugly11597ugly11616ugly11598ugly11614ugly11606ugly8ugly1ugly12ugly5dummy-action-16
  :parameters () :precondition
  (or (available hdac1-p107-e2f4-dp12) (available p27-cdk46p1-cycd)) :effect
  (and (goal16)))
 (:action
  ugly11603ugly11590ugly11593ugly11609ugly11602ugly11597ugly36ugly29ugly10ugly19dummy-action-22
  :parameters () :precondition
  (or (available p27-cdk46-cycdp1) (available p21-cdk46p2-cycdp1)) :effect
  (and (goal22)))
 (:action
  ugly11604ugly11605ugly11607ugly11584ugly11594ugly11601ugly1ugly12ugly5ugly21dummy-action-19
  :parameters () :precondition
  (or (available raf1-cdc25a) (available p27p1-cdk2p1-cyce)) :effect
  (and (goal19)))
 (:action
  ugly11605ugly11607ugly11584ugly11594ugly11601ugly11581ugly9ugly13ugly14ugly8choose
  :parameters (?x - simple ?l1 ?l2 - level) :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action
  ugly11606ugly11588ugly11586ugly11582ugly11615ugly11587ugly19ugly27ugly11ugly36dummy-action-24
  :parameters () :precondition
  (or (available p27p1-cdk2p1p2-cyce) (available p27p1-cdk46-cycd)) :effect
  (and (goal24)))
 (:action
  ugly11607ugly11584ugly11594ugly11601ugly11581ugly11589ugly30ugly16ugly30ugly16dummy-action-25
  :parameters () :precondition
  (or (available skp2-skp1p1-cdk2p1-cyca) (available cdc25ap1)) :effect
  (and (goal25)))
 (:action
  ugly11608ugly11585ugly11613ugly11604ugly11605ugly11607ugly4ugly6ugly22ugly33dummy-action-2
  :parameters () :precondition
  (or (available p27p1-cdk46p2-cycdp1) (available p21-cdk46p2-cycd)) :effect
  (and (goal2)))
 (:action
  ugly11609ugly11602ugly11597ugly11616ugly11598ugly11614ugly26ugly25ugly15ugly34dummy-action-18
  :parameters () :precondition
  (or (available raf1-cdc25ap1) (available p21-cdk2-cyce)) :effect
  (and (goal18)))
 (:action
  ugly11610ugly11612ugly11596ugly11595ugly11592ugly11603ugly10ugly19ugly27ugly11dummy-action-31
  :parameters () :precondition
  (or (available cdk2p2-cyca-e2f13p1) (available cdk2p1p2)) :effect
  (and (goal31)))
 (:action
  ugly11611ugly11591ugly11611ugly11591ugly11611ugly11591ugly31ugly3ugly28ugly31associate
  :parameters (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (not (available ?x2))
       (available ?x3)))
 (:action
  ugly11612ugly11596ugly11595ugly11592ugly11603ugly11590ugly13ugly14ugly8ugly1dummy-action-7
  :parameters () :precondition
  (or (available cdk46-cycdp1) (available cdk46p2-cycdp1)) :effect
  (and (goal7)))
 (:action
  ugly11613ugly11604ugly11605ugly11607ugly11584ugly11594ugly21ugly24ugly2ugly20dummy-action-12
  :parameters () :precondition
  (or (available pcna-p21-cdk2p1p2-cyca) (available cdk46p2)) :effect
  (and (goal12)))
 (:action
  ugly11614ugly11606ugly11588ugly11586ugly11582ugly11615ugly7ugly9ugly13ugly14dummy-action-3
  :parameters () :precondition
  (or (available p57-cdk46p2-cycdp1) (available pcna-p21-cdk46-cycd)) :effect
  (and (goal3)))
 (:action
  ugly11615ugly11587ugly11599ugly11608ugly11585ugly11613ugly24ugly2ugly20ugly17dummy-action-13
  :parameters () :precondition
  (or (available cdk46-cycd) (available p27-cdk46-cycd)) :effect
  (and (goal13)))
 (:action
  ugly11616ugly11598ugly11614ugly11606ugly11588ugly11586ugly2ugly20ugly17ugly18dummy-action-21
  :parameters () :precondition
  (or (available p27p1-cdk46p1p2-cycdp1) (available skp2-skp1p1-cdk2p2-cyca))
  :effect (and (goal21)))) 