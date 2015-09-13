
(define (domain pathways-propositional)
 (:requirements :typing :adl :action-costs)
 (:predicates (goal15)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal7)
  (goal8) (goal10) (goal17) (goal13)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal19) (goal1)
  (goal20) (goal14) (goal3) (possible ?x - molecule) (goal2)
  (next ?l1 ?l2 - level) (goal9) (goal5)
  (synthesis-reaction ?x1 ?x2 - molecule) (chosen ?s - simple) (goal11) (goal4)
  (num-subs ?l - level) (goal16) (goal18) (available ?x - molecule) (goal6)
  (goal12))
 (:types level molecule - object simple complex - molecule)
 (:constants c-abl-prbp1p2 cdc25ap1 cdk2-cyca-e2f13p1 cdk2p1p2-cyca-e2f13p1
  cdk2p2-cyca cdk46 cdk46-cycd cdk46-cycdp1 cdk46p2 cdk46p2-cycd cdk46p2-cycdp1
  e2f4-dp12-ge2 p16-cdk46 p16-cdk46p2 p21-cdk46-cycdp1 p21-cdk46p2-cycdp1
  p27-cdk2p1-cyca p27-cdk46-cycd p27-cdk46p2-cycd p27-cdk46p2-cycdp1
  p27p1-cdk2p1p2-cyca p27p1-cdk2p2-cyce p27p1-cdk46-cycd p27p1-cdk46-cycdp1
  p27p1-cdk46p2-cycdp1 p57-cdk46p2-cycdp1 p57p1-cdk46-cycd p57p1-cdk46p2-cycd
  pcna-cycdp1 pcna-p21-cdk46-cycd pcna-p21-cdk46-cycdp1 prbp1-e2f4-dp12
  raf1-cdc25a raf1-cdc25ap1 raf1-prb-e2f13p1-dp12 skp2-cdk2p1-cyca
  skp2-skp1p1-cdk2-cyca skp2-skp1p1-cdk2p1-cyca skp2-skp1p1-cdk2p1p2-cyca
  skp2-skp1p1-cdk2p2-cyca - complex)
 (:functions (total-cost) - number)
 (:action
  ugly11336ugly11357ugly11352ugly11349ugly11345ugly15ugly21ugly20ugly4dummy-action-12
  :parameters () :precondition
  (or (available p27-cdk2p1-cyca) (available skp2-skp1p1-cdk2p2-cyca)) :effect
  (and (goal12)))
 (:action
  ugly11337ugly11348ugly11355ugly11344ugly11336ugly22ugly24ugly10ugly1dummy-action-10
  :parameters () :precondition
  (or (available raf1-cdc25ap1) (available cdc25ap1)) :effect (and (goal10)))
 (:action
  ugly11338ugly11346ugly11356ugly11343ugly11340ugly2ugly9ugly2ugly9initialize
  :parameters (?x - simple) :precondition (and (chosen ?x)) :effect
  (and (available ?x)))
 (:action
  ugly11339ugly11339ugly11339ugly11339ugly11339ugly4ugly17ugly13ugly7dummy-action-14
  :parameters () :precondition
  (or (available p27p1-cdk2p2-cyce) (available p27p1-cdk46-cycd)) :effect
  (and (goal14)))
 (:action
  ugly11340ugly11337ugly11348ugly11355ugly11344ugly1ugly15ugly21ugly20associate-with-catalyze
  :parameters (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (available ?x3)))
 (:action
  ugly11341ugly11351ugly11354ugly11347ugly11353ugly23ugly11ugly8ugly23dummy-action-6
  :parameters () :precondition
  (or (available p27-cdk46-cycd) (available cdk46-cycd)) :effect (and (goal6)))
 (:action
  ugly11342ugly11359ugly11342ugly11359ugly11342ugly24ugly10ugly1ugly15dummy-action-16
  :parameters () :precondition
  (or (available p27p1-cdk46-cycdp1) (available skp2-skp1p1-cdk2p1-cyca))
  :effect (and (goal16)))
 (:action
  ugly11343ugly11340ugly11337ugly11348ugly11355ugly9ugly2ugly9ugly2dummy-action-4
  :parameters () :precondition
  (or (available pcna-p21-cdk46-cycdp1) (available p21-cdk46p2-cycdp1)) :effect
  (and (goal4)))
 (:action
  ugly11344ugly11336ugly11357ugly11352ugly11349ugly10ugly1ugly15ugly21dummy-action-15
  :parameters () :precondition
  (or (available p27-cdk46p2-cycd) (available skp2-cdk2p1-cyca)) :effect
  (and (goal15)))
 (:action
  ugly11345ugly11350ugly11341ugly11351ugly11354ugly12ugly25ugly6ugly14associate
  :parameters (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (not (available ?x2))
       (available ?x3)))
 (:action
  ugly11346ugly11356ugly11343ugly11340ugly11337ugly13ugly7ugly19ugly5dummy-action-11
  :parameters () :precondition
  (or (available cdk46p2) (available e2f4-dp12-ge2)) :effect (and (goal11)))
 (:action
  ugly11347ugly11353ugly11358ugly11338ugly11346ugly21ugly20ugly4ugly17dummy-action-8
  :parameters () :precondition
  (or (available cdk46-cycdp1) (available pcna-cycdp1)) :effect (and (goal8)))
 (:action
  ugly11348ugly11355ugly11344ugly11336ugly11357ugly17ugly13ugly7ugly19synthesize
  :parameters (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action
  ugly11349ugly11345ugly11350ugly11341ugly11351ugly19ugly5ugly16ugly18dummy-action-17
  :parameters () :precondition
  (or (available p57p1-cdk46p2-cycd) (available p27p1-cdk46p2-cycdp1)) :effect
  (and (goal17)))
 (:action
  ugly11350ugly11341ugly11351ugly11354ugly11347ugly18ugly22ugly24ugly10choose
  :parameters (?x - simple ?l1 ?l2 - level) :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action
  ugly11351ugly11354ugly11347ugly11353ugly11358ugly3ugly12ugly25ugly6dummy-action-9
  :parameters () :precondition
  (or (available cdk46p2-cycdp1) (available cdk46)) :effect (and (goal9)))
 (:action
  ugly11352ugly11349ugly11345ugly11350ugly11341ugly16ugly18ugly22ugly24dummy-action-5
  :parameters () :precondition
  (or (available p16-cdk46) (available p27-cdk46p2-cycdp1)) :effect
  (and (goal5)))
 (:action
  ugly11353ugly11358ugly11338ugly11346ugly11356ugly8ugly23ugly11ugly8dummy-action-18
  :parameters () :precondition
  (or (available cdk2p2-cyca) (available pcna-p21-cdk46-cycd)) :effect
  (and (goal18)))
 (:action
  ugly11354ugly11347ugly11353ugly11358ugly11338ugly11ugly8ugly23ugly11dummy-action-3
  :parameters () :precondition
  (or (available skp2-skp1p1-cdk2p1p2-cyca) (available p57-cdk46p2-cycdp1))
  :effect (and (goal3)))
 (:action
  ugly11355ugly11344ugly11336ugly11357ugly11352ugly14ugly3ugly12ugly25dummy-action-1
  :parameters () :precondition
  (or (available cdk46p2-cycd) (available raf1-prb-e2f13p1-dp12)) :effect
  (and (goal1)))
 (:action
  ugly11356ugly11343ugly11340ugly11337ugly11348ugly20ugly4ugly17ugly13dummy-action-2
  :parameters () :precondition
  (or (available p16-cdk46p2) (available cdk2p1p2-cyca-e2f13p1)) :effect
  (and (goal2)))
 (:action
  ugly11357ugly11352ugly11349ugly11345ugly11350ugly6ugly14ugly3ugly12dummy-action-20
  :parameters () :precondition
  (or (available p27p1-cdk2p1p2-cyca) (available p21-cdk46-cycdp1)) :effect
  (and (goal20)))
 (:action
  ugly11358ugly11338ugly11346ugly11356ugly11343ugly5ugly16ugly18ugly22dummy-action-19
  :parameters () :precondition
  (or (available prbp1-e2f4-dp12) (available cdk2-cyca-e2f13p1)) :effect
  (and (goal19)))
 (:action
  ugly11359ugly11342ugly11359ugly11342ugly11359ugly7ugly19ugly5ugly16dummy-action-13
  :parameters () :precondition
  (or (available raf1-cdc25a) (available c-abl-prbp1p2)) :effect
  (and (goal13)))
 (:action
  ugly11360ugly11360ugly11360ugly11360ugly11360ugly25ugly6ugly14ugly3dummy-action-7
  :parameters () :precondition
  (or (available p57p1-cdk46-cycd) (available skp2-skp1p1-cdk2-cyca)) :effect
  (and (goal7)))) 