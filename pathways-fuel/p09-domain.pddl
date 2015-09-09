
(define (domain pathways-propositional)
 (:requirements :typing :adl :action-costs)
 (:predicates (goal10) (goal7) (goal4) (goal5)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal12)
  (available ?x - molecule) (possible ?x - molecule) (goal9) (goal2)
  (num-subs ?l - level) (goal8)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal3)
  (synthesis-reaction ?x1 ?x2 - molecule) (goal6) (goal11)
  (next ?l1 ?l2 - level) (chosen ?s - simple) (goal1) (goal13))
 (:types level molecule - object simple complex - molecule)
 (:constants cdk1 cdk1-cks1 cdk1-gadd45 cdk1p1-cks1 cdk1p1p2p3-cycb
  cdk1p1p2p3-gadd45 cdk1p1p3-cks1 cdk1p1p3-cycb cdk1p1p3-gadd45 cdk1p2-cks1
  cdk1p2p3 cdk1p2p3-cks1 cdk1p2p3-cycb cdk1p2p3-gadd45 cdk1p3 cdk1p3-cks1
  cdk1p3-cycb cdk1p3-gadd45 cdk2p2-cks1 cebp-prbp1 p16-cdk7p1 prbp1p2-jun-c-fos
  raf1-p130-e2f5-dp12 raf1-prbp1-e2f13-dp12 sl1p1 wee1p1 - complex)
 (:functions (total-cost) - number)
 (:action ugly1ugly14ugly4dummy-action-8 :parameters () :precondition
  (or (available cdk1p3) (available cdk2p2-cks1)) :effect (and (goal8)))
 (:action ugly2ugly16ugly11associate :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (not (available ?x2))
       (available ?x3)))
 (:action ugly3ugly10ugly7dummy-action-10 :parameters () :precondition
  (or (available cdk1p2p3-cks1) (available cdk1p2p3-gadd45)) :effect
  (and (goal10)))
 (:action ugly4ugly13ugly2dummy-action-11 :parameters () :precondition
  (or (available cdk1-gadd45) (available prbp1p2-jun-c-fos)) :effect
  (and (goal11)))
 (:action ugly5ugly18ugly8synthesize :parameters (?x1 ?x2 - molecule)
  :precondition (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly6ugly17ugly12dummy-action-1 :parameters () :precondition
  (or (available cdk1p3-cycb) (available sl1p1)) :effect (and (goal1)))
 (:action ugly7ugly15ugly1dummy-action-9 :parameters () :precondition
  (or (available cdk1p1p2p3-gadd45) (available raf1-prbp1-e2f13-dp12)) :effect
  (and (goal9)))
 (:action ugly8ugly5ugly18dummy-action-3 :parameters () :precondition
  (or (available cdk1p3-cks1) (available cdk1p1p3-gadd45)) :effect
  (and (goal3)))
 (:action ugly9ugly9ugly9dummy-action-4 :parameters () :precondition
  (or (available cdk1p1-cks1) (available cdk1p1p3-cks1)) :effect (and (goal4)))
 (:action ugly10ugly7ugly15choose :parameters (?x - simple ?l1 ?l2 - level)
  :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly11ugly3ugly10dummy-action-2 :parameters () :precondition
  (or (available wee1p1) (available cdk1p3-gadd45)) :effect (and (goal2)))
 (:action ugly12ugly6ugly17dummy-action-7 :parameters () :precondition
  (or (available cdk1p2p3-cycb) (available cdk1p2p3)) :effect (and (goal7)))
 (:action ugly13ugly2ugly16dummy-action-6 :parameters () :precondition
  (or (available cdk1p1p2p3-cycb) (available raf1-p130-e2f5-dp12)) :effect
  (and (goal6)))
 (:action ugly14ugly4ugly13initialize :parameters (?x - simple) :precondition
  (and (chosen ?x)) :effect (and (available ?x)))
 (:action ugly15ugly1ugly14associate-with-catalyze :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (available ?x3)))
 (:action ugly16ugly11ugly3dummy-action-5 :parameters () :precondition
  (or (available cdk1-cks1) (available cdk1p1p3-cycb)) :effect (and (goal5)))
 (:action ugly17ugly12ugly6dummy-action-12 :parameters () :precondition
  (or (available cdk1p2-cks1) (available cdk1)) :effect (and (goal12)))
 (:action ugly18ugly8ugly5dummy-action-13 :parameters () :precondition
  (or (available cebp-prbp1) (available p16-cdk7p1)) :effect (and (goal13)))) 