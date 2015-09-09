
(define (domain pathways-propositional)
 (:requirements :typing :adl :action-costs)
 (:predicates (goal15) (goal20) (goal5) (goal23) (goal13) (goal27) (goal18)
  (goal6) (num-subs ?l - level) (goal4) (goal1) (next ?l1 ?l2 - level)
  (possible ?x - molecule) (available ?x - molecule)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal2) (goal17)
  (synthesis-reaction ?x1 ?x2 - molecule) (goal25) (goal16) (goal11) (goal9)
  (goal26) (goal3) (chosen ?s - simple) (goal8) (goal24) (goal19) (goal7)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal22)
  (goal10) (goal12) (goal21) (goal14))
 (:types level molecule - object simple complex - molecule)
 (:constants cdk1p2p3-cks1 cdk1p3-cks1 cdk1p3-cyca cdk1p3-cycb cdk1p3-gadd45
  cdk2-cyca-e2f13p1 cdk2p1-cyca-e2f13p1 cdk2p1p2-cyca-e2f13
  cdk2p1p2-cyca-e2f13p1 cdk2p2-cyca-e2f13p1 cdk46p1-cycdp1 cyca cyce mdm2-prbp1
  p16-cdk7p1 p21-cdk2-cycep1 p21-cdk2p1-cyce p21-cdk2p1p2-cyca p21-cdk2p2-cyca
  p27-cdk2p1-cycep1 p27-cdk2p2-cyca p27-cdk46p1-cycdp1 p27p1-cdk2-cyca
  p27p1-cdk2-cyce p27p1-cdk2-cycep1 p27p1-cdk2p1-cyca p27p1-cdk2p1-cyce
  p27p1-cdk2p1-cycep1 p27p1-cdk2p1p2-cyca p27p1-cdk2p1p2-cyce
  p27p1-cdk2p1p2-cycep1 p27p1-cdk2p2-cyca p27p1-cdk2p2-cyce p27p1-cdk2p2-cycep1
  p27p1-cdk46p1-cycd p27p1-cdk46p1-cycdp1 p27p1-cdk46p1p2-cycd
  p27p1-cdk46p1p2-cycdp1 p53p1-dp12p1 p57p1-cdk46p1p2-cycdp1 prbp1-ap2-ge-c
  prbp1-e2f13p1-dp12p1-ge2 skp2-cdk2p1p2-cyca skp2-cdk2p2-cyca skp2p1-skp1
  skp2-skp1-cdk2-cyca skp2-skp1p1 skp2-skp1p1-cdk2-cyca skp2-skp1p1-cdk2p1-cyca
  skp2-skp1p1-cdk2p1p2-cyca skp2-skp1p1-cdk2p2-cyca sp1-e2f13p1 sp1-p107 wee1p1
  - complex)
 (:functions (total-cost) - number)
 (:action ugly1ugly15dummy-action-19 :parameters () :precondition
  (or (available cdk2p1p2-cyca-e2f13) (available p21-cdk2-cycep1)) :effect
  (and (goal19)))
 (:action ugly2ugly20dummy-action-23 :parameters () :precondition
  (or (available p27p1-cdk2p1p2-cycep1) (available p27p1-cdk46p1p2-cycdp1))
  :effect (and (goal23)))
 (:action ugly3ugly23dummy-action-24 :parameters () :precondition
  (or (available p27p1-cdk46p1-cycd) (available p27-cdk2p1-cycep1)) :effect
  (and (goal24)))
 (:action ugly4ugly1dummy-action-10 :parameters () :precondition
  (or (available cdk2-cyca-e2f13p1) (available p27p1-cdk2p1-cyca)) :effect
  (and (goal10)))
 (:action ugly5ugly3dummy-action-18 :parameters () :precondition
  (or (available p27p1-cdk2p1-cyce) (available cdk2p1p2-cyca-e2f13p1)) :effect
  (and (goal18)))
 (:action ugly6ugly13dummy-action-12 :parameters () :precondition
  (or (available cdk2p1-cyca-e2f13p1) (available mdm2-prbp1)) :effect
  (and (goal12)))
 (:action ugly7ugly32dummy-action-13 :parameters () :precondition
  (or (available p27p1-cdk2p1p2-cyca) (available skp2-cdk2p2-cyca)) :effect
  (and (goal13)))
 (:action ugly8ugly10dummy-action-21 :parameters () :precondition
  (or (available cdk1p3-gadd45) (available skp2-skp1-cdk2-cyca)) :effect
  (and (goal21)))
 (:action ugly9ugly25dummy-action-14 :parameters () :precondition
  (or (available p27p1-cdk2p2-cyca) (available cdk1p3-cks1)) :effect
  (and (goal14)))
 (:action ugly10ugly26dummy-action-17 :parameters () :precondition
  (or (available p27p1-cdk2p2-cycep1) (available p27p1-cdk2-cycep1)) :effect
  (and (goal17)))
 (:action ugly11ugly6dummy-action-8 :parameters () :precondition
  (or (available sp1-e2f13p1) (available cyca)) :effect (and (goal8)))
 (:action ugly12ugly16dummy-action-6 :parameters () :precondition
  (or (available p27p1-cdk2-cyce) (available sp1-p107)) :effect (and (goal6)))
 (:action ugly13ugly17associate-with-catalyze :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (available ?x3)))
 (:action ugly14ugly5associate :parameters (?x1 ?x2 - molecule ?x3 - complex)
  :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (not (available ?x2))
       (available ?x3)))
 (:action ugly15ugly24dummy-action-22 :parameters () :precondition
  (or (available p57p1-cdk46p1p2-cycdp1) (available p27p1-cdk46p1p2-cycd))
  :effect (and (goal22)))
 (:action ugly16ugly11dummy-action-1 :parameters () :precondition
  (or (available p27p1-cdk46p1-cycdp1) (available skp2-skp1p1-cdk2-cyca))
  :effect (and (goal1)))
 (:action ugly17ugly4choose :parameters (?x - simple ?l1 ?l2 - level)
  :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly18ugly21dummy-action-4 :parameters () :precondition
  (or (available skp2-skp1p1-cdk2p1p2-cyca)
      (available skp2-skp1p1-cdk2p2-cyca))
  :effect (and (goal4)))
 (:action ugly19ugly2dummy-action-15 :parameters () :precondition
  (or (available cyce) (available skp2-cdk2p1p2-cyca)) :effect (and (goal15)))
 (:action ugly20ugly28dummy-action-7 :parameters () :precondition
  (or (available wee1p1) (available p27p1-cdk2-cyca)) :effect (and (goal7)))
 (:action ugly21ugly9dummy-action-20 :parameters () :precondition
  (or (available prbp1-ap2-ge-c) (available p27p1-cdk2p2-cyce)) :effect
  (and (goal20)))
 (:action ugly22ugly30dummy-action-3 :parameters () :precondition
  (or (available cdk46p1-cycdp1) (available skp2-skp1p1-cdk2p1-cyca)) :effect
  (and (goal3)))
 (:action ugly23ugly29dummy-action-26 :parameters () :precondition
  (or (available cdk1p3-cyca) (available p21-cdk2p1-cyce)) :effect
  (and (goal26)))
 (:action ugly24ugly27dummy-action-9 :parameters () :precondition
  (or (available prbp1-e2f13p1-dp12p1-ge2) (available p53p1-dp12p1)) :effect
  (and (goal9)))
 (:action ugly25ugly19initialize :parameters (?x - simple) :precondition
  (and (chosen ?x)) :effect (and (available ?x)))
 (:action ugly26ugly22dummy-action-25 :parameters () :precondition
  (or (available cdk1p3-cycb) (available p27p1-cdk2p1-cycep1)) :effect
  (and (goal25)))
 (:action ugly27ugly14synthesize :parameters (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly28ugly12dummy-action-11 :parameters () :precondition
  (or (available p27-cdk2p2-cyca) (available p27-cdk46p1-cycdp1)) :effect
  (and (goal11)))
 (:action ugly29ugly31dummy-action-2 :parameters () :precondition
  (or (available skp2p1-skp1) (available p21-cdk2p1p2-cyca)) :effect
  (and (goal2)))
 (:action ugly30ugly8dummy-action-5 :parameters () :precondition
  (or (available cdk2p2-cyca-e2f13p1) (available p27p1-cdk2p1p2-cyce)) :effect
  (and (goal5)))
 (:action ugly31ugly7dummy-action-27 :parameters () :precondition
  (or (available p16-cdk7p1) (available p21-cdk2p2-cyca)) :effect
  (and (goal27)))
 (:action ugly32ugly18dummy-action-16 :parameters () :precondition
  (or (available cdk1p2p3-cks1) (available skp2-skp1p1)) :effect
  (and (goal16)))) 