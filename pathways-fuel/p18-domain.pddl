
(define (domain pathways-propositional)
 (:requirements :typing :adl :action-costs)
 (:predicates (goal5) (goal4)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal9)
  (num-subs ?l - level) (goal3) (next ?l1 ?l2 - level) (goal19)
  (chosen ?s - simple) (available ?x - molecule) (goal22) (goal8) (goal15)
  (goal10) (goal1) (goal21) (goal13) (goal11) (goal12) (goal6) (goal23)
  (goal17) (goal20) (goal24) (synthesis-reaction ?x1 ?x2 - molecule)
  (possible ?x - molecule) (goal18) (goal7)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal14)
  (goal2) (goal16))
 (:types level molecule - object simple complex - molecule)
 (:constants cdk1p1p2p3 cdk1p1p2p3-cycb cdk1p1p2p3-gadd45 cdk2-cyca-e2f13p1
  cdk2p1-cyca-e2f13p1 cdk2p1p2-cyca-e2f13p1 cdk2p2-cks1 cdk2p2-cyca-e2f13p1
  hdac1-p107-e2f4-dp12-ge2 hdac1-p130-e2f4-dp12-ge2 hdac1-p130-e2f5-dp12
  hdac1-prb-e2f13-dp12-ge2 hdac1-prb-e2f13-dp12p1 p21-cdk2-cycep1
  p21-cdk2p1p2-cyce p21-cdk2p2-cycep1 p21-cdk46p1-cycdp1 p27-cdk2-cycep1
  p27-cdk2p1p2-cyce p27-cdk2p2-cyca p27p1 p27p1-cdk2-cyca p27p1-cdk2-cyce
  p27p1-cdk2-cycep1 p27p1-cdk2p1-cyca p27p1-cdk2p1-cyce p27p1-cdk2p1-cycep1
  p27p1-cdk2p1p2-cyca p27p1-cdk2p1p2-cyce p27p1-cdk2p1p2-cycep1
  p27p1-cdk2p2-cyca p27p1-cdk2p2-cyce p27p1-cdk2p2-cycep1 p27p1-cdk46p1-cycd
  p27p1-cdk46p1-cycdp1 p27p1-cdk46p1p2-cycd p27p1-cdk46p1p2-cycdp1 p53-dp12p1
  p53p1-dp12p1 p57-cdk2p1p2-cyca p57-cdk2p1p2-cyce p57p1-cdk46p1-cycdp1
  p57p1-cdk46p1p2-cycd p68p1 p68p1p2 prbp1-ap2 skp1p1 sp1-e2f13p1 - complex)
 (:functions (total-cost) - number)
 (:action ugly11387ugly11390ugly11391ugly24ugly22ugly25ugly6dummy-action-19
  :parameters () :precondition
  (or (available p27p1-cdk2p2-cyca) (available p27p1-cdk46p1p2-cycdp1)) :effect
  (and (goal19)))
 (:action ugly11388ugly11415ugly11387ugly4ugly18ugly9ugly1dummy-action-2
  :parameters () :precondition
  (or (available p27p1-cdk46p1-cycdp1) (available p27p1-cdk46p1-cycd)) :effect
  (and (goal2)))
 (:action ugly11389ugly11404ugly11407ugly12ugly28ugly14ugly3dummy-action-11
  :parameters () :precondition
  (or (available cdk2p1p2-cyca-e2f13p1) (available hdac1-prb-e2f13-dp12-ge2))
  :effect (and (goal11)))
 (:action ugly11390ugly11391ugly11410ugly14ugly3ugly16ugly20dummy-action-16
  :parameters () :precondition (or (available p53-dp12p1) (available skp1p1))
  :effect (and (goal16)))
 (:action ugly11391ugly11410ugly11400ugly16ugly20ugly21ugly15dummy-action-3
  :parameters () :precondition
  (or (available p27p1-cdk2p1-cyca) (available p57-cdk2p1p2-cyca)) :effect
  (and (goal3)))
 (:action ugly11392ugly11395ugly11413ugly20ugly21ugly15ugly8synthesize
  :parameters (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly11393ugly11399ugly11392ugly9ugly1ugly7ugly27initialize
  :parameters (?x - simple) :precondition (and (chosen ?x)) :effect
  (and (available ?x)))
 (:action ugly11394ugly11401ugly11405ugly2ugly4ugly18ugly9choose :parameters
  (?x - simple ?l1 ?l2 - level) :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly11395ugly11413ugly11406ugly26ugly10ugly17ugly26dummy-action-5
  :parameters () :precondition
  (or (available p27p1-cdk2-cyca) (available p27-cdk2p1p2-cyce)) :effect
  (and (goal5)))
 (:action ugly11396ugly11393ugly11399ugly6ugly24ugly22ugly25dummy-action-1
  :parameters () :precondition
  (or (available p27p1-cdk2p2-cycep1) (available hdac1-p130-e2f4-dp12-ge2))
  :effect (and (goal1)))
 (:action ugly11397ugly11396ugly11393ugly13ugly29ugly23ugly11dummy-action-8
  :parameters () :precondition
  (or (available p21-cdk2-cycep1) (available cdk2p2-cyca-e2f13p1)) :effect
  (and (goal8)))
 (:action ugly11398ugly11408ugly11414ugly3ugly16ugly20ugly21dummy-action-10
  :parameters () :precondition
  (or (available p27p1-cdk2p1-cycep1) (available cdk2-cyca-e2f13p1)) :effect
  (and (goal10)))
 (:action ugly11399ugly11392ugly11395ugly27ugly2ugly4ugly18dummy-action-4
  :parameters () :precondition
  (or (available p27-cdk2p2-cyca) (available p57p1-cdk46p1p2-cycd)) :effect
  (and (goal4)))
 (:action ugly11400ugly11402ugly11397ugly10ugly17ugly26ugly10dummy-action-12
  :parameters () :precondition
  (or (available p27-cdk2-cycep1) (available p27p1-cdk2p2-cyce)) :effect
  (and (goal12)))
 (:action ugly11401ugly11405ugly11388ugly29ugly23ugly11ugly13dummy-action-24
  :parameters () :precondition
  (or (available p27p1-cdk2p1p2-cyce) (available p27p1-cdk2-cycep1)) :effect
  (and (goal24)))
 (:action ugly11402ugly11397ugly11396ugly7ugly27ugly2ugly4dummy-action-13
  :parameters () :precondition
  (or (available p21-cdk2p1p2-cyce) (available cdk2p2-cks1)) :effect
  (and (goal13)))
 (:action ugly11403ugly11394ugly11401ugly19ugly12ugly28ugly14associate
  :parameters (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (not (available ?x2))
       (available ?x3)))
 (:action ugly11404ugly11407ugly11398ugly22ugly25ugly6ugly24dummy-action-17
  :parameters () :precondition
  (or (available cdk1p1p2p3) (available p27p1-cdk2p1p2-cycep1)) :effect
  (and (goal17)))
 (:action
  ugly11405ugly11388ugly11415ugly1ugly7ugly27ugly2associate-with-catalyze
  :parameters (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (available ?x3)))
 (:action ugly11406ugly11412ugly11411ugly23ugly11ugly13ugly29dummy-action-18
  :parameters () :precondition
  (or (available p53p1-dp12p1) (available hdac1-p130-e2f5-dp12)) :effect
  (and (goal18)))
 (:action ugly11407ugly11398ugly11408ugly28ugly14ugly3ugly16dummy-action-15
  :parameters () :precondition
  (or (available p68p1p2) (available p27p1-cdk2p1-cyce)) :effect
  (and (goal15)))
 (:action ugly11408ugly11414ugly11389ugly18ugly9ugly1ugly7dummy-action-22
  :parameters () :precondition
  (or (available prbp1-ap2) (available cdk1p1p2p3-cycb)) :effect
  (and (goal22)))
 (:action ugly11409ugly11403ugly11394ugly15ugly8ugly5ugly19dummy-action-7
  :parameters () :precondition
  (or (available p27p1) (available cdk1p1p2p3-gadd45)) :effect (and (goal7)))
 (:action ugly11410ugly11400ugly11402ugly11ugly13ugly29ugly23dummy-action-6
  :parameters () :precondition
  (or (available cdk2p1-cyca-e2f13p1) (available p21-cdk2p2-cycep1)) :effect
  (and (goal6)))
 (:action ugly11411ugly11409ugly11403ugly8ugly5ugly19ugly12dummy-action-23
  :parameters () :precondition
  (or (available sp1-e2f13p1) (available p27p1-cdk2p1p2-cyca)) :effect
  (and (goal23)))
 (:action ugly11412ugly11411ugly11409ugly17ugly26ugly10ugly17dummy-action-21
  :parameters () :precondition
  (or (available p68p1) (available p57p1-cdk46p1-cycdp1)) :effect
  (and (goal21)))
 (:action ugly11413ugly11406ugly11412ugly25ugly6ugly24ugly22dummy-action-20
  :parameters () :precondition
  (or (available p27p1-cdk2-cyce) (available hdac1-p107-e2f4-dp12-ge2)) :effect
  (and (goal20)))
 (:action ugly11414ugly11389ugly11404ugly21ugly15ugly8ugly5dummy-action-14
  :parameters () :precondition
  (or (available p57-cdk2p1p2-cyce) (available hdac1-prb-e2f13-dp12p1)) :effect
  (and (goal14)))
 (:action ugly11415ugly11387ugly11390ugly5ugly19ugly12ugly28dummy-action-9
  :parameters () :precondition
  (or (available p21-cdk46p1-cycdp1) (available p27p1-cdk46p1p2-cycd)) :effect
  (and (goal9)))) 