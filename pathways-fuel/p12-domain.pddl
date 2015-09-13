
(define (domain pathways-propositional)
 (:requirements :typing :adl :action-costs)
 (:predicates (chosen ?s - simple)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex)
  (possible ?x - molecule) (goal11) (goal12) (goal10) (goal2) (goal7)
  (available ?x - molecule) (goal3) (goal6) (num-subs ?l - level)
  (synthesis-reaction ?x1 ?x2 - molecule)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal14) (goal4)
  (next ?l1 ?l2 - level) (goal5) (goal15) (goal16) (goal8) (goal13) (goal9)
  (goal1))
 (:types level molecule - object simple complex - molecule)
 (:constants cdc25a cdk1p1p3-cycb cdk1p2p3-cyca cdk1p3 cdk1p3-cks1 cdk1p3-cyca
  cdk1p3-cycb cdk2p1-cyce cebp-prbp1p2 cebp-prbp1p2-gp c-myc-max cycdp1
  p21-cdk2-cyca p27-cdk2p2-cyca p27p1-cdk2-cyca p27p1-cdk2-cycep1
  p27p1-cdk2p1-cyca p27p1-cdk2p1-cyce p27p1-cdk2p1p2-cyca p27p1-cdk2p1p2-cyce
  p27p1-cdk2p1p2-cycep1 p27p1-cdk2p2-cyce prbp1p2-ap2 prbp1p2-ap2-ge-c skp2p1
  skp2p1-skp1 skp2-skp1p1-cdk2-cyca skp2-skp1p1-cdk2p1-cyca
  skp2-skp1p1-cdk2p1p2-cyca skp2-skp1p1-cdk2p2-cyca sl1p1 wee1p1 - complex)
 (:functions (total-cost) - number)
 (:action ugly11246ugly11265ugly13ugly6ugly2ugly19synthesize :parameters
  (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly11247ugly11252ugly8ugly16ugly7ugly18dummy-action-5 :parameters ()
  :precondition (or (available skp2-skp1p1-cdk2-cyca) (available cdk2p1-cyce))
  :effect (and (goal5)))
 (:action ugly11248ugly11248ugly3ugly17ugly15ugly9dummy-action-16 :parameters
  () :precondition (or (available c-myc-max) (available prbp1p2-ap2)) :effect
  (and (goal16)))
 (:action ugly11249ugly11259ugly5ugly1ugly14ugly12associate :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (not (available ?x2))
       (available ?x3)))
 (:action ugly11250ugly11256ugly21ugly13ugly6ugly2dummy-action-14 :parameters
  () :precondition (or (available cdk1p3) (available cycdp1)) :effect
  (and (goal14)))
 (:action ugly11251ugly11249ugly14ugly12ugly3ugly17dummy-action-10 :parameters
  () :precondition (or (available cdk1p3-cycb) (available p27p1-cdk2p1p2-cyce))
  :effect (and (goal10)))
 (:action ugly11252ugly11253ugly17ugly15ugly9ugly21dummy-action-8 :parameters
  () :precondition (or (available cdc25a) (available p27-cdk2p2-cyca)) :effect
  (and (goal8)))
 (:action ugly11253ugly11262ugly2ugly19ugly5ugly1dummy-action-9 :parameters ()
  :precondition
  (or (available p27p1-cdk2p1p2-cyca) (available p27p1-cdk2-cyca)) :effect
  (and (goal9)))
 (:action ugly11254ugly11264ugly10ugly20ugly8ugly16dummy-action-2 :parameters
  () :precondition (or (available skp2p1) (available cebp-prbp1p2-gp)) :effect
  (and (goal2)))
 (:action ugly11255ugly11261ugly1ugly14ugly12ugly3dummy-action-12 :parameters
  () :precondition (or (available cdk1p2p3-cyca) (available p27p1-cdk2-cycep1))
  :effect (and (goal12)))
 (:action ugly11256ugly11266ugly9ugly21ugly13ugly6initialize :parameters
  (?x - simple) :precondition (and (chosen ?x)) :effect (and (available ?x)))
 (:action ugly11257ugly11260ugly6ugly2ugly19ugly5choose :parameters
  (?x - simple ?l1 ?l2 - level) :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly11258ugly11257ugly15ugly9ugly21ugly13dummy-action-1 :parameters
  () :precondition (or (available skp2-skp1p1-cdk2p1-cyca) (available wee1p1))
  :effect (and (goal1)))
 (:action ugly11259ugly11250ugly11ugly4ugly11ugly4dummy-action-6 :parameters ()
  :precondition (or (available cdk1p3-cyca) (available cdk1p1p3-cycb)) :effect
  (and (goal6)))
 (:action ugly11260ugly11251ugly4ugly11ugly4ugly11associate-with-catalyze
  :parameters (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (available ?x3)))
 (:action ugly11261ugly11246ugly20ugly8ugly16ugly7dummy-action-13 :parameters
  () :precondition
  (or (available p27p1-cdk2p2-cyce) (available p27p1-cdk2p1p2-cycep1)) :effect
  (and (goal13)))
 (:action ugly11262ugly11247ugly7ugly18ugly10ugly20dummy-action-3 :parameters
  () :precondition
  (or (available p27p1-cdk2p1-cyce) (available skp2-skp1p1-cdk2p2-cyca))
  :effect (and (goal3)))
 (:action ugly11263ugly11263ugly18ugly10ugly20ugly8dummy-action-11 :parameters
  () :precondition (or (available p27p1-cdk2p1-cyca) (available cdk1p3-cks1))
  :effect (and (goal11)))
 (:action ugly11264ugly11255ugly16ugly7ugly18ugly10dummy-action-15 :parameters
  () :precondition (or (available cebp-prbp1p2) (available p21-cdk2-cyca))
  :effect (and (goal15)))
 (:action ugly11265ugly11258ugly12ugly3ugly17ugly15dummy-action-4 :parameters
  () :precondition (or (available prbp1p2-ap2-ge-c) (available sl1p1)) :effect
  (and (goal4)))
 (:action ugly11266ugly11254ugly19ugly5ugly1ugly14dummy-action-7 :parameters ()
  :precondition
  (or (available skp2p1-skp1) (available skp2-skp1p1-cdk2p1p2-cyca)) :effect
  (and (goal7)))) 