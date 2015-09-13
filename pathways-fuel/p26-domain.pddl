
(define (domain pathways-propositional)
 (:requirements :typing :adl :action-costs)
 (:predicates (goal34) (goal3) (goal31)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal20)
  (goal15) (goal28) (goal8) (goal14) (goal12) (goal1) (next ?l1 ?l2 - level)
  (chosen ?s - simple) (goal21) (goal11) (goal29) (available ?x - molecule)
  (goal22) (goal5) (goal10) (goal2) (goal13) (goal30) (num-subs ?l - level)
  (goal32) (goal18) (goal33) (goal6) (goal16) (goal23) (goal7)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal9) (goal19)
  (synthesis-reaction ?x1 ?x2 - molecule) (goal25) (goal17) (goal27) (goal24)
  (goal26) (possible ?x - molecule) (goal4))
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
 (:functions (total-cost) - number)
 (:action
  ugly11655ugly11682ugly11659ugly11669ugly34ugly35ugly12ugly4dummy-action-8
  :parameters () :precondition
  (or (available p27p1-cdk46-cycdp1) (available p27p1-cdk46p2-cycdp1)) :effect
  (and (goal8)))
 (:action
  ugly11656ugly11660ugly11689ugly11665ugly14ugly34ugly35ugly12associate-with-catalyze
  :parameters (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (available ?x3)))
 (:action
  ugly11657ugly11679ugly11661ugly11670ugly23ugly19ugly31ugly26dummy-action-12
  :parameters () :precondition
  (or (available cdk46-cycd) (available cdk46p2-cycdp1)) :effect
  (and (goal12)))
 (:action
  ugly11658ugly11663ugly11690ugly11687ugly21ugly5ugly30ugly11dummy-action-20
  :parameters () :precondition
  (or (available p27-cdk46p2-cycd) (available p27p1-cdk2p1-cyca)) :effect
  (and (goal20)))
 (:action
  ugly11659ugly11669ugly11688ugly11656ugly6ugly15ugly23ugly19dummy-action-26
  :parameters () :precondition
  (or (available p27-cdk46p1p2-cycd) (available cdk2p2-cyca-e2f13)) :effect
  (and (goal26)))
 (:action
  ugly11660ugly11689ugly11665ugly11668ugly18ugly10ugly29ugly27dummy-action-32
  :parameters () :precondition
  (or (available p27p1-cdk2p2-cyce) (available cdk1)) :effect (and (goal32)))
 (:action
  ugly11661ugly11670ugly11677ugly11692ugly26ugly17ugly20ugly2dummy-action-33
  :parameters () :precondition
  (or (available skp2-cdk2p1-cyca) (available p27p1-cdk2p1p2-cyca)) :effect
  (and (goal33)))
 (:action
  ugly11662ugly11681ugly11676ugly11673ugly3ugly39ugly18ugly10dummy-action-24
  :parameters () :precondition
  (or (available p27p1-cdk46p1-cycd) (available skp2p1-skp1p1)) :effect
  (and (goal24)))
 (:action
  ugly11663ugly11690ugly11687ugly11675ugly24ugly7ugly33ugly24dummy-action-2
  :parameters () :precondition
  (or (available p27p1-cdk46p2-cycd) (available p27-cdk46-cycdp1)) :effect
  (and (goal2)))
 (:action ugly11664ugly11674ugly11664ugly11674ugly10ugly29ugly27ugly37choose
  :parameters (?x - simple ?l1 ?l2 - level) :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action
  ugly11665ugly11668ugly11672ugly11686ugly31ugly26ugly17ugly20initialize
  :parameters (?x - simple) :precondition (and (chosen ?x)) :effect
  (and (available ?x)))
 (:action ugly11666ugly11691ugly11666ugly11691ugly12ugly4ugly13ugly21synthesize
  :parameters (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action
  ugly11667ugly11671ugly11683ugly11662ugly27ugly37ugly1ugly3dummy-action-34
  :parameters () :precondition
  (or (available p27p1-cdk46p1p2-cycdp1) (available cdc25a)) :effect
  (and (goal34)))
 (:action
  ugly11668ugly11672ugly11686ugly11685ugly4ugly13ugly21ugly5dummy-action-25
  :parameters () :precondition
  (or (available skp2-cdk2p1p2-cyca) (available cebp-prbp1-gp)) :effect
  (and (goal25)))
 (:action
  ugly11669ugly11688ugly11656ugly11660ugly35ugly12ugly4ugly13dummy-action-16
  :parameters () :precondition
  (or (available cdk2-cycep1) (available skp2-skp1p1-cdk2p1p2-cyca)) :effect
  (and (goal16)))
 (:action
  ugly11670ugly11677ugly11692ugly11680ugly39ugly18ugly10ugly29dummy-action-22
  :parameters () :precondition
  (or (available p27-cdk46p2-cycdp1) (available sp1-e2f13p1)) :effect
  (and (goal22)))
 (:action
  ugly11671ugly11683ugly11662ugly11681ugly22ugly36ugly28ugly6dummy-action-10
  :parameters () :precondition
  (or (available p57p1-cdk46p2-cycd) (available cdk46)) :effect (and (goal10)))
 (:action
  ugly11672ugly11686ugly11685ugly11658ugly9ugly16ugly22ugly36dummy-action-23
  :parameters () :precondition
  (or (available p57-cdk2p1-cyca) (available cdk1p3-cycb)) :effect
  (and (goal23)))
 (:action
  ugly11673ugly11657ugly11679ugly11661ugly16ugly22ugly36ugly28dummy-action-1
  :parameters () :precondition
  (or (available prbp1-e2f4-dp12p1) (available cdk1p1p2p3-cyca)) :effect
  (and (goal1)))
 (:action
  ugly11674ugly11664ugly11674ugly11664ugly20ugly2ugly38ugly14dummy-action-29
  :parameters () :precondition (or (available p107) (available cdk1p3-cyca))
  :effect (and (goal29)))
 (:action
  ugly11675ugly11678ugly11684ugly11667ugly17ugly20ugly2ugly38dummy-action-9
  :parameters () :precondition
  (or (available p27p1-cdk2p1-cycep1) (available cdk46p2)) :effect
  (and (goal9)))
 (:action
  ugly11676ugly11673ugly11657ugly11679ugly7ugly33ugly24ugly7dummy-action-28
  :parameters () :precondition
  (or (available p27p1-cdk2-cyca) (available p27-cdk2p1-cyca)) :effect
  (and (goal28)))
 (:action
  ugly11677ugly11692ugly11680ugly11693ugly1ugly3ugly39ugly18dummy-action-5
  :parameters () :precondition
  (or (available cdk46-cycdp1) (available p16-cdk46p2)) :effect (and (goal5)))
 (:action ugly11678ugly11684ugly11667ugly11671ugly29ugly27ugly37ugly1associate
  :parameters (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (not (available ?x2))
       (available ?x3)))
 (:action
  ugly11679ugly11661ugly11670ugly11677ugly38ugly14ugly34ugly35dummy-action-7
  :parameters () :precondition
  (or (available p16-cdk46) (available p130-e2f4-dp12p1-ge2)) :effect
  (and (goal7)))
 (:action
  ugly11680ugly11693ugly11655ugly11682ugly5ugly30ugly11ugly25dummy-action-3
  :parameters () :precondition
  (or (available cdk46p2-cycd) (available hdac1-prb-e2f13-dp12-ge2)) :effect
  (and (goal3)))
 (:action
  ugly11681ugly11676ugly11673ugly11657ugly25ugly8ugly9ugly16dummy-action-17
  :parameters () :precondition
  (or (available raf1-cdc25a) (available p57-cdk46p2-cycd)) :effect
  (and (goal17)))
 (:action
  ugly11682ugly11659ugly11669ugly11688ugly2ugly38ugly14ugly34dummy-action-30
  :parameters () :precondition
  (or (available dmp1p1-cycd) (available c-abl-prbp1p2)) :effect
  (and (goal30)))
 (:action
  ugly11683ugly11662ugly11681ugly11676ugly19ugly31ugly26ugly17dummy-action-15
  :parameters () :precondition
  (or (available skp2-skp1p1-cdk2-cyca) (available skp2-skp1p1-cdk2p1-cyca))
  :effect (and (goal15)))
 (:action
  ugly11684ugly11667ugly11671ugly11683ugly8ugly9ugly16ugly22dummy-action-31
  :parameters () :precondition
  (or (available cdk2-cyca-e2f13p1) (available cdk2p1-cyca-e2f13p1)) :effect
  (and (goal31)))
 (:action
  ugly11685ugly11658ugly11663ugly11690ugly33ugly24ugly7ugly33dummy-action-19
  :parameters () :precondition
  (or (available p57p1-cdk46-cycd) (available cdc25ap1)) :effect
  (and (goal19)))
 (:action
  ugly11686ugly11685ugly11658ugly11663ugly36ugly28ugly6ugly15dummy-action-18
  :parameters () :precondition
  (or (available skp2-skp1p1-cdk2p2-cyca) (available sl1p1)) :effect
  (and (goal18)))
 (:action
  ugly11687ugly11675ugly11678ugly11684ugly13ugly21ugly5ugly30dummy-action-6
  :parameters () :precondition
  (or (available p57-cdk46-cycdp1) (available raf1-cdc25ap1)) :effect
  (and (goal6)))
 (:action
  ugly11688ugly11656ugly11660ugly11689ugly11ugly25ugly8ugly9dummy-action-11
  :parameters () :precondition
  (or (available p27-cdk46-cycd) (available p57p1-cdk46p1p2-cycd)) :effect
  (and (goal11)))
 (:action
  ugly11689ugly11665ugly11668ugly11672ugly32ugly32ugly32ugly32dummy-action-27
  :parameters () :precondition
  (or (available p27-cdk2p2-cycep1) (available p27p1-cdk46p1-cycdp1)) :effect
  (and (goal27)))
 (:action
  ugly11690ugly11687ugly11675ugly11678ugly30ugly11ugly25ugly8dummy-action-4
  :parameters () :precondition
  (or (available p57p1-cdk46p2-cycdp1) (available p27p1-cdk46-cycd)) :effect
  (and (goal4)))
 (:action
  ugly11691ugly11666ugly11691ugly11666ugly37ugly1ugly3ugly39dummy-action-13
  :parameters () :precondition
  (or (available p57-cdk46p2-cycdp1) (available sp1-e2f13p1-gp)) :effect
  (and (goal13)))
 (:action
  ugly11692ugly11680ugly11693ugly11655ugly28ugly6ugly15ugly23dummy-action-14
  :parameters () :precondition
  (or (available p57-cdk46-cycd) (available p57p1-cdk46-cycdp1)) :effect
  (and (goal14)))
 (:action
  ugly11693ugly11655ugly11682ugly11659ugly15ugly23ugly19ugly31dummy-action-21
  :parameters () :precondition
  (or (available p68p1p2) (available p27p1-cdk2-cycep1)) :effect
  (and (goal21)))) 