
(define (domain pathways-propositional) (:requirements :typing :adl)
 (:predicates (synthesis-reaction ?x1 ?x2 - molecule) (available ?x - molecule)
  (chosen ?s - simple) (goal7) (goal1) (next ?l1 ?l2 - level) (goal8) (goal9)
  (goal5) (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex)
  (goal3) (goal11) (goal10)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (num-subs ?l - level)
  (possible ?x - molecule) (goal2) (goal12) (goal4) (goal6))
 (:types level molecule - object simple complex - molecule)
 (:constants cdk2p1p2-cyca cdk2p1p2-cyce ercc1 hdac1-prb-e2f13p1-dp12p1
  jun-c-fos-gercc1 mdm2-prbp1p2 p21-cdk2p1-cyce p21-cdk2p1-cycep1
  p21-cdk2p1p2-cycep1 p21-cdk46p1p2-cycd p53-dp12p1 p53p1-dp12p1 p68p1p2
  prbp1p2-jun-c-fos-gercc1 skp2p1-skp1 skp2p1-skp1p1 skp2-skp1-cdk2-cyca
  skp2-skp1-cdk2p1p2-cyca skp2-skp1p1 skp2-skp1p1-cdk2-cyca
  skp2-skp1p1-cdk2p1-cyca skp2-skp1p1-cdk2p1p2-cyca skp2-skp1p1-cdk2p2-cyca
  sp1-p107p1-gp - complex)
 (:action ugly1ugly14ugly2associate :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect (and (not (available ?x1)) (not (available ?x2)) (available ?x3)))
 (:action ugly2ugly3ugly13dummy-action-7 :parameters () :precondition
  (or (available skp2-skp1-cdk2-cyca) (available cdk2p1p2-cyce)) :effect
  (and (goal7)))
 (:action ugly3ugly13ugly12dummy-action-2 :parameters () :precondition
  (or (available skp2-skp1p1-cdk2p1p2-cyca)
      (available skp2-skp1p1-cdk2p2-cyca))
  :effect (and (goal2)))
 (:action ugly4ugly11ugly16associate-with-catalyze :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect (and (not (available ?x1)) (available ?x3)))
 (:action ugly5ugly1ugly14initialize :parameters (?x - simple) :precondition
  (and (chosen ?x)) :effect (and (available ?x)))
 (:action ugly6ugly17ugly6dummy-action-12 :parameters () :precondition
  (or (available p21-cdk2p1-cycep1) (available sp1-p107p1-gp)) :effect
  (and (goal12)))
 (:action ugly7ugly15ugly10dummy-action-4 :parameters () :precondition
  (or (available p53p1-dp12p1) (available skp2p1-skp1p1)) :effect
  (and (goal4)))
 (:action ugly8ugly8ugly8dummy-action-3 :parameters () :precondition
  (or (available skp2-skp1p1-cdk2p1-cyca) (available skp2-skp1p1)) :effect
  (and (goal3)))
 (:action ugly9ugly5ugly1dummy-action-9 :parameters () :precondition
  (or (available cdk2p1p2-cyca) (available prbp1p2-jun-c-fos-gercc1)) :effect
  (and (goal9)))
 (:action ugly10ugly9ugly5choose :parameters (?x - simple ?l1 ?l2 - level)
  :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly11ugly16ugly4dummy-action-6 :parameters () :precondition
  (or (available p53-dp12p1) (available p21-cdk2p1-cyce)) :effect
  (and (goal6)))
 (:action ugly12ugly7ugly15dummy-action-5 :parameters () :precondition
  (or (available p21-cdk2p1p2-cycep1) (available skp2p1-skp1)) :effect
  (and (goal5)))
 (:action ugly13ugly12ugly7dummy-action-10 :parameters () :precondition
  (or (available ercc1) (available hdac1-prb-e2f13p1-dp12p1)) :effect
  (and (goal10)))
 (:action ugly14ugly2ugly3dummy-action-8 :parameters () :precondition
  (or (available p21-cdk46p1p2-cycd) (available mdm2-prbp1p2)) :effect
  (and (goal8)))
 (:action ugly15ugly10ugly9synthesize :parameters (?x1 ?x2 - molecule)
  :precondition (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly16ugly4ugly11dummy-action-11 :parameters () :precondition
  (or (available skp2-skp1-cdk2p1p2-cyca) (available jun-c-fos-gercc1)) :effect
  (and (goal11)))
 (:action ugly17ugly6ugly17dummy-action-1 :parameters () :precondition
  (or (available p68p1p2) (available skp2-skp1p1-cdk2-cyca)) :effect
  (and (goal1)))) 