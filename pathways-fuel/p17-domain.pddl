
(define (domain pathways-propositional)
 (:requirements :typing :adl :action-costs)
 (:predicates (goal5) (goal1) (goal6) (goal21) (goal9) (goal2) (goal11)
  (goal14) (goal20)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal7)
  (possible ?x - molecule) (goal19) (next ?l1 ?l2 - level) (goal16) (goal8)
  (goal10) (num-subs ?l - level) (available ?x - molecule) (goal17)
  (chosen ?s - simple) (synthesis-reaction ?x1 ?x2 - molecule) (goal3) (goal4)
  (goal15) (goal18) (goal13)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal12))
 (:types level molecule - object simple complex - molecule)
 (:constants cdk1p3-cyca cdk2-cyca-e2f13 cdk2p2-cyca-e2f13 cdk2p2-cyca-e2f13p1
  cdk2p2-cyce cdk46-cycdp1 cdk46p1p2 cycd mdm2-prbp2 p16-cdk46p2 p21-cdk2-cyca
  p21-cdk2-cyce p21-cdk46-cycd p21-cdk46-cycdp1 p21-cdk46p2-cycd
  p27-cdk2p2-cyca p27-cdk2p2-cyce p27-cdk46p2-cycdp1 p27p1-cdk2-cycep1
  p27p1-cdk2p1-cyca p27p1-cdk2p1-cyce p27p1-cdk2p1p2-cyce p27p1-cdk2p2-cyca
  p27p1-cdk2p2-cycep1 p27p1-cdk46p1-cycd p27p1-cdk46p1-cycdp1
  p27p1-cdk46p1p2-cycd p27p1-cdk46p1p2-cycdp1 p68p1p2 p68p2 prbp1-e2f13p1-dp12
  prbp1-jun-c-fos raf1-prb-e2f13p1-dp12 raf1-prbp1-e2f4-dp12-ge2 skp1p1 skp2p1
  skp2-skp1-cdk2p2-cyca skp2-skp1p1-cdk2-cyca skp2-skp1p1-cdk2p1-cyca
  skp2-skp1p1-cdk2p1p2-cyca skp2-skp1p1-cdk2p2-cyca wee1p1 - complex)
 (:functions (total-cost) - number)
 (:action ugly1ugly15dummy-action-16 :parameters () :precondition
  (or (available p21-cdk46-cycd) (available p21-cdk46-cycdp1)) :effect
  (and (goal16)))
 (:action ugly2ugly9initialize :parameters (?x - simple) :precondition
  (and (chosen ?x)) :effect (and (available ?x)))
 (:action ugly3ugly12dummy-action-20 :parameters () :precondition
  (or (available p68p1p2) (available cdk2p2-cyca-e2f13)) :effect
  (and (goal20)))
 (:action ugly4ugly17dummy-action-8 :parameters () :precondition
  (or (available cdk2p2-cyca-e2f13p1) (available p21-cdk46p2-cycd)) :effect
  (and (goal8)))
 (:action ugly5ugly16dummy-action-13 :parameters () :precondition
  (or (available cdk46-cycdp1) (available p27p1-cdk46p1p2-cycd)) :effect
  (and (goal13)))
 (:action ugly6ugly14associate :parameters (?x1 ?x2 - molecule ?x3 - complex)
  :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (not (available ?x2))
       (available ?x3)))
 (:action ugly7ugly19synthesize :parameters (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly8ugly23dummy-action-6 :parameters () :precondition
  (or (available p27-cdk2p2-cyca) (available p27-cdk2p2-cyce)) :effect
  (and (goal6)))
 (:action ugly9ugly2dummy-action-4 :parameters () :precondition
  (or (available skp2-skp1p1-cdk2p1p2-cyca) (available p27p1-cdk46p1-cycd))
  :effect (and (goal4)))
 (:action ugly10ugly1dummy-action-10 :parameters () :precondition
  (or (available p21-cdk2-cyca) (available wee1p1)) :effect (and (goal10)))
 (:action ugly11ugly8dummy-action-18 :parameters () :precondition
  (or (available p27p1-cdk2p1-cyce) (available p27p1-cdk2p1-cyca)) :effect
  (and (goal18)))
 (:action ugly12ugly25dummy-action-1 :parameters () :precondition
  (or (available skp2-skp1p1-cdk2-cyca) (available mdm2-prbp2)) :effect
  (and (goal1)))
 (:action ugly13ugly7dummy-action-14 :parameters () :precondition
  (or (available p27-cdk46p2-cycdp1) (available prbp1-e2f13p1-dp12)) :effect
  (and (goal14)))
 (:action ugly14ugly3dummy-action-7 :parameters () :precondition
  (or (available cdk2p2-cyce) (available p27p1-cdk2p2-cyca)) :effect
  (and (goal7)))
 (:action ugly15ugly21dummy-action-15 :parameters () :precondition
  (or (available skp1p1) (available p27p1-cdk46p1-cycdp1)) :effect
  (and (goal15)))
 (:action ugly16ugly18dummy-action-17 :parameters () :precondition
  (or (available p16-cdk46p2) (available raf1-prb-e2f13p1-dp12)) :effect
  (and (goal17)))
 (:action ugly17ugly13dummy-action-2 :parameters () :precondition
  (or (available raf1-prbp1-e2f4-dp12-ge2) (available p27p1-cdk2p2-cycep1))
  :effect (and (goal2)))
 (:action ugly18ugly22dummy-action-19 :parameters () :precondition
  (or (available p27p1-cdk2-cycep1) (available prbp1-jun-c-fos)) :effect
  (and (goal19)))
 (:action ugly19ugly5dummy-action-11 :parameters () :precondition
  (or (available cdk46p1p2) (available p68p2)) :effect (and (goal11)))
 (:action ugly20ugly4dummy-action-12 :parameters () :precondition
  (or (available p21-cdk2-cyce) (available cdk2-cyca-e2f13)) :effect
  (and (goal12)))
 (:action ugly21ugly20associate-with-catalyze :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (available ?x3)))
 (:action ugly22ugly24dummy-action-5 :parameters () :precondition
  (or (available cdk1p3-cyca) (available cycd)) :effect (and (goal5)))
 (:action ugly23ugly11dummy-action-3 :parameters () :precondition
  (or (available skp2-skp1p1-cdk2p2-cyca) (available skp2-skp1p1-cdk2p1-cyca))
  :effect (and (goal3)))
 (:action ugly24ugly10choose :parameters (?x - simple ?l1 ?l2 - level)
  :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly25ugly6dummy-action-9 :parameters () :precondition
  (or (available p27p1-cdk46p1p2-cycdp1) (available p27p1-cdk2p1p2-cyce))
  :effect (and (goal9)))
 (:action ugly26ugly26dummy-action-21 :parameters () :precondition
  (or (available skp2-skp1-cdk2p2-cyca) (available skp2p1)) :effect
  (and (goal21)))) 