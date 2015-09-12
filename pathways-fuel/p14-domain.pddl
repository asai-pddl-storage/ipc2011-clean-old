
(define (domain pathways-propositional)
 (:requirements :typing :adl :action-costs)
 (:predicates (goal11) (goal17) (goal13) (available ?x - molecule) (goal18)
  (goal12) (next ?l1 ?l2 - level) (goal2)
  (synthesis-reaction ?x1 ?x2 - molecule) (goal8) (goal5) (goal7) (goal15)
  (goal14) (goal16) (num-subs ?l - level) (chosen ?s - simple)
  (possible ?x - molecule) (goal9) (goal1)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal4) (goal6)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal3)
  (goal10))
 (:types level molecule - object simple complex - molecule)
 (:constants cdk1-cks1 cdk1p1-cks1 cdk1p1p2p3-cycb cdk1p1p2p3-gadd45
  cdk1p1p3-cycb cdk1p2-cks1 cdk1p2p3-cks1 cdk1p2p3-cyca cdk1p2p3-cycb cdk1p3
  cdk1p3-cks1 cdk1p3-cyca cdk1p3-cycb cdk1p3-gadd45 cdk2p1-cyca cdk2p1-cyce
  cdk2p1p2-cycep1 dmp1p1-cycdp1 hdac1-prb-e2f13p1-dp12-ge2 mdm2-e2f13-dp12
  p21-cdk2p1-cyce p21-cdk2p1p2-cyca p21-cdk2p1p2-cyce p27-cdk2p1-cyca
  p27-cdk2p1-cyce p27-cdk2p1-cycep1 p27-cdk2p1p2-cyca p27-cdk2p1p2-cyce
  p57-cdk2p1-cyce p57-cdk2p1-cycep1 p57-cdk2p1p2-cyca p57-cdk2p1p2-cyce
  prbp1-ap2-ge-c prbp1-jun-c-fos-gercc1 skp2-cdk2p1-cyca wee1p1 - complex)
 (:functions (total-cost) - number)
 (:action ugly11289ugly23ugly23ugly23ugly23dummy-action-18 :parameters ()
  :precondition (or (available dmp1p1-cycdp1) (available cdk1p1-cks1)) :effect
  (and (goal18)))
 (:action ugly11290ugly17ugly14ugly11ugly2dummy-action-11 :parameters ()
  :precondition (or (available cdk1p3) (available p57-cdk2p1p2-cyce)) :effect
  (and (goal11)))
 (:action ugly11291ugly14ugly11ugly2ugly16dummy-action-3 :parameters ()
  :precondition (or (available cdk1p3-cycb) (available p57-cdk2p1-cycep1))
  :effect (and (goal3)))
 (:action ugly11292ugly15ugly6ugly17ugly14dummy-action-6 :parameters ()
  :precondition (or (available p27-cdk2p1-cyca) (available cdk1p2p3-cyca))
  :effect (and (goal6)))
 (:action ugly11293ugly6ugly17ugly14ugly11initialize :parameters (?x - simple)
  :precondition (and (chosen ?x)) :effect (and (available ?x)))
 (:action ugly11294ugly19ugly12ugly5ugly1dummy-action-13 :parameters ()
  :precondition (or (available p21-cdk2p1-cyce) (available p27-cdk2p1p2-cyca))
  :effect (and (goal13)))
 (:action ugly11295ugly22ugly4ugly13ugly9dummy-action-14 :parameters ()
  :precondition (or (available skp2-cdk2p1-cyca) (available prbp1-ap2-ge-c))
  :effect (and (goal14)))
 (:action ugly11296ugly11ugly2ugly16ugly8dummy-action-15 :parameters ()
  :precondition
  (or (available p27-cdk2p1-cycep1) (available p27-cdk2p1p2-cyce)) :effect
  (and (goal15)))
 (:action ugly11297ugly13ugly9ugly19ugly12synthesize :parameters
  (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly11298ugly9ugly19ugly12ugly5choose :parameters
  (?x - simple ?l1 ?l2 - level) :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly11299ugly8ugly20ugly22ugly4dummy-action-8 :parameters ()
  :precondition
  (or (available cdk1p1p2p3-gadd45) (available prbp1-jun-c-fos-gercc1)) :effect
  (and (goal8)))
 (:action ugly11300ugly4ugly13ugly9ugly19dummy-action-7 :parameters ()
  :precondition (or (available cdk2p1-cyce) (available cdk1p1p3-cycb)) :effect
  (and (goal7)))
 (:action ugly11301ugly18ugly7ugly15ugly6dummy-action-12 :parameters ()
  :precondition (or (available cdk1p2p3-cycb) (available cdk2p1-cyca)) :effect
  (and (goal12)))
 (:action ugly11302ugly5ugly1ugly18ugly7dummy-action-10 :parameters ()
  :precondition (or (available p21-cdk2p1p2-cyce) (available cdk1p1p2p3-cycb))
  :effect (and (goal10)))
 (:action ugly11303ugly21ugly21ugly21ugly21dummy-action-16 :parameters ()
  :precondition (or (available p21-cdk2p1p2-cyca) (available p27-cdk2p1-cyce))
  :effect (and (goal16)))
 (:action ugly11304ugly16ugly8ugly20ugly22associate-with-catalyze :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (available ?x3)))
 (:action ugly11305ugly20ugly22ugly4ugly13dummy-action-4 :parameters ()
  :precondition (or (available p57-cdk2p1-cyce) (available cdk1p2p3-cks1))
  :effect (and (goal4)))
 (:action ugly11306ugly10ugly3ugly10ugly3dummy-action-5 :parameters ()
  :precondition (or (available cdk1p2-cks1) (available mdm2-e2f13-dp12))
  :effect (and (goal5)))
 (:action ugly11307ugly3ugly10ugly3ugly10associate :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (not (available ?x2))
       (available ?x3)))
 (:action ugly11308ugly7ugly15ugly6ugly17dummy-action-9 :parameters ()
  :precondition (or (available cdk2p1p2-cycep1) (available cdk1-cks1)) :effect
  (and (goal9)))
 (:action ugly11309ugly2ugly16ugly8ugly20dummy-action-17 :parameters ()
  :precondition
  (or (available p57-cdk2p1p2-cyca) (available hdac1-prb-e2f13p1-dp12-ge2))
  :effect (and (goal17)))
 (:action ugly11310ugly1ugly18ugly7ugly15dummy-action-1 :parameters ()
  :precondition (or (available cdk1p3-gadd45) (available wee1p1)) :effect
  (and (goal1)))
 (:action ugly11311ugly12ugly5ugly1ugly18dummy-action-2 :parameters ()
  :precondition (or (available cdk1p3-cyca) (available cdk1p3-cks1)) :effect
  (and (goal2)))) 