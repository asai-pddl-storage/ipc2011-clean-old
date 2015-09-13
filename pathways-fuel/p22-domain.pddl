
(define (domain pathways-propositional)
 (:requirements :typing :adl :action-costs)
 (:predicates (goal24) (goal28) (goal17) (next ?l1 ?l2 - level)
  (available ?x - molecule) (goal12) (chosen ?s - simple)
  (synthesis-reaction ?x1 ?x2 - molecule) (goal3) (goal10) (goal1) (goal25)
  (goal16) (num-subs ?l - level)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal14) (goal26)
  (goal20) (goal21) (goal4) (goal18) (goal2) (goal29) (goal13) (goal27) (goal6)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal23)
  (goal22) (goal8) (possible ?x - molecule) (goal19) (goal15) (goal5) (goal7)
  (goal11) (goal9))
 (:types level molecule - object simple complex - molecule)
 (:constants cdc25a cdc25ap1 cdk1-cks1 cdk1-gadd45 cdk1p1-cks1 cdk1p1-gadd45
  cdk2-cyca cdk2-cyca-e2f13 cdk2-cyce cdk2-cycep1 cdk2p1-cyca-e2f13
  cdk2p1-cycep1 c-myc-ap2 c-myc-max c-myc-max-gcdc25a cycep1 dmp1-cycd
  ecadherin mdm2-prbp1p2 p107-e2f4-dp12 p107-e2f4-dp12p1 p107-e2f4-dp12p1-ge2
  p21-cdk2-cyca p21-cdk2-cyce p21-cdk2-cycep1 p21-cdk2p1-cyca p21-cdk2p1-cyce
  p21-cdk2p1-cycep1 p57-cdk2-cyca p57-cdk2-cyce p57-cdk2-cycep1 p57-cdk2p1-cyca
  p57-cdk2p1-cycep1 pcna-gadd45 pcna-p21-cdk2-cyca pcna-p21-cdk2-cyce
  pcna-p21-cdk2-cycep1 pcna-p21-cdk2p1-cyce prb-e2f13p1-dp12-ge2
  prb-e2f4-dp12-ge2 prbp1-e2f13-dp12 prbp1-e2f13-dp12-ge2 prbp1-e2f13-dp12p1
  prbp1-e2f13-dp12p1-ge2 prbp1-e2f13p1-dp12p1-ge2 raf1-cdc25a raf1-cdc25ap1
  raf1-p130-e2f4-dp12-ge2 raf1-prb-e2f13p1-dp12-ge2 raf1-prb-e2f4-dp12-ge2
  raf1-prbp1-e2f13-dp12-ge2 raf1-prbp1-e2f13-dp12p1-ge2
  raf1-prbp1-e2f13p1-dp12-ge2 raf1-prbp1-e2f13p1-dp12p1-ge2
  raf1-prbp1-e2f4-dp12-ge2 skp2-cdk2-cyca skp2-skp1-cdk2-cyca
  skp2-skp1-cdk2p1-cyca - complex)
 (:functions (total-cost) - number)
 (:action
  ugly11512ugly11520ugly11527ugly11519ugly11525ugly11543ugly23ugly34ugly1ugly12dummy-action-16
  :parameters () :precondition
  (or (available p21-cdk2p1-cyca) (available cdk1-cks1)) :effect
  (and (goal16)))
 (:action
  ugly11513ugly11522ugly11540ugly11529ugly11536ugly11526ugly10ugly14ugly9ugly4dummy-action-6
  :parameters () :precondition
  (or (available p57-cdk2-cyca) (available cdk2-cyce)) :effect (and (goal6)))
 (:action
  ugly11514ugly11531ugly11528ugly11524ugly11541ugly11514ugly20ugly28ugly31ugly6dummy-action-3
  :parameters () :precondition
  (or (available raf1-cdc25ap1) (available pcna-p21-cdk2-cyca)) :effect
  (and (goal3)))
 (:action
  ugly11515ugly11533ugly11530ugly11535ugly11532ugly11544ugly1ugly12ugly21ugly27initialize
  :parameters (?x - simple) :precondition (and (chosen ?x)) :effect
  (and (available ?x)))
 (:action
  ugly11516ugly11516ugly11516ugly11516ugly11516ugly11516ugly5ugly30ugly32ugly16synthesize
  :parameters (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action
  ugly11517ugly11545ugly11513ugly11522ugly11540ugly11529ugly25ugly19ugly7ugly23dummy-action-29
  :parameters () :precondition
  (or (available c-myc-ap2) (available raf1-prbp1-e2f13-dp12-ge2)) :effect
  (and (goal29)))
 (:action
  ugly11518ugly11538ugly11542ugly11515ugly11533ugly11530ugly24ugly17ugly18ugly26dummy-action-5
  :parameters () :precondition
  (or (available p107-e2f4-dp12p1) (available prb-e2f13p1-dp12-ge2)) :effect
  (and (goal5)))
 (:action
  ugly11519ugly11525ugly11543ugly11534ugly11537ugly11517ugly34ugly1ugly12ugly21dummy-action-22
  :parameters () :precondition
  (or (available mdm2-prbp1p2) (available dmp1-cycd)) :effect (and (goal22)))
 (:action
  ugly11520ugly11527ugly11519ugly11525ugly11543ugly11534ugly26ugly10ugly14ugly9associate-with-catalyze
  :parameters (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (available ?x3)))
 (:action
  ugly11521ugly11518ugly11538ugly11542ugly11515ugly11533ugly19ugly7ugly23ugly34choose
  :parameters (?x - simple ?l1 ?l2 - level) :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action
  ugly11522ugly11540ugly11529ugly11536ugly11526ugly11521ugly7ugly23ugly34ugly1dummy-action-7
  :parameters () :precondition
  (or (available p21-cdk2-cyca) (available p57-cdk2-cycep1)) :effect
  (and (goal7)))
 (:action
  ugly11523ugly11539ugly11523ugly11539ugly11523ugly11539ugly12ugly21ugly27ugly2dummy-action-15
  :parameters () :precondition
  (or (available skp2-skp1-cdk2p1-cyca)
      (available raf1-prbp1-e2f13p1-dp12-ge2))
  :effect (and (goal15)))
 (:action
  ugly11524ugly11541ugly11514ugly11531ugly11528ugly11524ugly30ugly32ugly16ugly5dummy-action-25
  :parameters () :precondition
  (or (available prbp1-e2f13-dp12p1-ge2) (available raf1-prb-e2f4-dp12-ge2))
  :effect (and (goal25)))
 (:action
  ugly11525ugly11543ugly11534ugly11537ugly11517ugly11545ugly2ugly20ugly28ugly31dummy-action-1
  :parameters () :precondition
  (or (available cdk2-cycep1) (available skp2-cdk2-cyca)) :effect
  (and (goal1)))
 (:action
  ugly11526ugly11521ugly11518ugly11538ugly11542ugly11515ugly22ugly25ugly19ugly7dummy-action-18
  :parameters () :precondition
  (or (available raf1-prb-e2f13p1-dp12-ge2) (available c-myc-max)) :effect
  (and (goal18)))
 (:action
  ugly11527ugly11519ugly11525ugly11543ugly11534ugly11537ugly6ugly8ugly24ugly17dummy-action-13
  :parameters () :precondition
  (or (available raf1-p130-e2f4-dp12-ge2)
      (available raf1-prbp1-e2f13p1-dp12p1-ge2))
  :effect (and (goal13)))
 (:action
  ugly11528ugly11524ugly11541ugly11514ugly11531ugly11528ugly13ugly22ugly25ugly19dummy-action-2
  :parameters () :precondition
  (or (available p21-cdk2-cycep1) (available skp2-skp1-cdk2-cyca)) :effect
  (and (goal2)))
 (:action
  ugly11529ugly11536ugly11526ugly11521ugly11518ugly11538ugly31ugly6ugly8ugly24dummy-action-12
  :parameters () :precondition
  (or (available c-myc-max-gcdc25a) (available ecadherin)) :effect
  (and (goal12)))
 (:action
  ugly11530ugly11535ugly11532ugly11544ugly11512ugly11520ugly16ugly5ugly30ugly32dummy-action-11
  :parameters () :precondition
  (or (available cdc25ap1) (available cdk1-gadd45)) :effect (and (goal11)))
 (:action
  ugly11531ugly11528ugly11524ugly11541ugly11514ugly11531ugly17ugly18ugly26ugly10dummy-action-9
  :parameters () :precondition
  (or (available cdk2-cyca) (available pcna-p21-cdk2-cyce)) :effect
  (and (goal9)))
 (:action
  ugly11532ugly11544ugly11512ugly11520ugly11527ugly11519ugly14ugly9ugly4ugly11dummy-action-10
  :parameters () :precondition (or (available raf1-cdc25a) (available cdc25a))
  :effect (and (goal10)))
 (:action
  ugly11533ugly11530ugly11535ugly11532ugly11544ugly11512ugly9ugly4ugly11ugly15dummy-action-8
  :parameters () :precondition
  (or (available p21-cdk2-cyce) (available pcna-p21-cdk2-cycep1)) :effect
  (and (goal8)))
 (:action
  ugly11534ugly11537ugly11517ugly11545ugly11513ugly11522ugly29ugly3ugly33ugly29associate
  :parameters (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (not (available ?x2))
       (available ?x3)))
 (:action
  ugly11535ugly11532ugly11544ugly11512ugly11520ugly11527ugly8ugly24ugly17ugly18dummy-action-21
  :parameters () :precondition
  (or (available p57-cdk2p1-cycep1) (available prb-e2f4-dp12-ge2)) :effect
  (and (goal21)))
 (:action
  ugly11536ugly11526ugly11521ugly11518ugly11538ugly11542ugly4ugly11ugly15ugly13dummy-action-17
  :parameters () :precondition
  (or (available p57-cdk2p1-cyca) (available prbp1-e2f13p1-dp12p1-ge2)) :effect
  (and (goal17)))
 (:action
  ugly11537ugly11517ugly11545ugly11513ugly11522ugly11540ugly18ugly26ugly10ugly14dummy-action-4
  :parameters () :precondition
  (or (available cdk2-cyca-e2f13) (available p57-cdk2-cyce)) :effect
  (and (goal4)))
 (:action
  ugly11538ugly11542ugly11515ugly11533ugly11530ugly11535ugly21ugly27ugly2ugly20dummy-action-23
  :parameters () :precondition
  (or (available cdk2p1-cycep1) (available prbp1-e2f13-dp12-ge2)) :effect
  (and (goal23)))
 (:action
  ugly11539ugly11523ugly11539ugly11523ugly11539ugly11523ugly28ugly31ugly6ugly8dummy-action-19
  :parameters () :precondition
  (or (available cdk1p1-cks1) (available pcna-p21-cdk2p1-cyce)) :effect
  (and (goal19)))
 (:action
  ugly11540ugly11529ugly11536ugly11526ugly11521ugly11518ugly27ugly2ugly20ugly28dummy-action-26
  :parameters () :precondition
  (or (available p107-e2f4-dp12p1-ge2) (available raf1-prbp1-e2f4-dp12-ge2))
  :effect (and (goal26)))
 (:action
  ugly11541ugly11514ugly11531ugly11528ugly11524ugly11541ugly3ugly33ugly29ugly3dummy-action-28
  :parameters () :precondition
  (or (available prbp1-e2f13-dp12p1) (available cdk1p1-gadd45)) :effect
  (and (goal28)))
 (:action
  ugly11542ugly11515ugly11533ugly11530ugly11535ugly11532ugly33ugly29ugly3ugly33dummy-action-24
  :parameters () :precondition
  (or (available raf1-prbp1-e2f13-dp12p1-ge2) (available cdk2p1-cyca-e2f13))
  :effect (and (goal24)))
 (:action
  ugly11543ugly11534ugly11537ugly11517ugly11545ugly11513ugly11ugly15ugly13ugly22dummy-action-20
  :parameters () :precondition
  (or (available cycep1) (available p21-cdk2p1-cycep1)) :effect (and (goal20)))
 (:action
  ugly11544ugly11512ugly11520ugly11527ugly11519ugly11525ugly32ugly16ugly5ugly30dummy-action-27
  :parameters () :precondition
  (or (available p21-cdk2p1-cyce) (available p107-e2f4-dp12)) :effect
  (and (goal27)))
 (:action
  ugly11545ugly11513ugly11522ugly11540ugly11529ugly11536ugly15ugly13ugly22ugly25dummy-action-14
  :parameters () :precondition
  (or (available pcna-gadd45) (available prbp1-e2f13-dp12)) :effect
  (and (goal14)))) 