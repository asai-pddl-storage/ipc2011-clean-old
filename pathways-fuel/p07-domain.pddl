
(define (domain pathways-propositional)
 (:requirements :typing :adl :action-costs)
 (:predicates (synthesis-reaction ?x1 ?x2 - molecule) (goal8)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal7)
  (goal1) (possible ?x - molecule) (goal2) (goal6) (goal5)
  (next ?l1 ?l2 - level) (goal10) (goal9) (goal4) (chosen ?s - simple)
  (num-subs ?l - level) (goal11) (available ?x - molecule) (goal3)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex))
 (:types level molecule - object simple complex - molecule)
 (:constants cdc25a cdk2-cyce c-myc-max cyca mdm2-e2f13-dp12 p21-cdk2-cyca
  p21-cdk2-cyce p21-cdk2p1-cyca p21-cdk2p1-cyce p21-cdk46p1-cycd
  p27-cdk2p1-cyca p27-cdk2p1-cycep1 p27-cdk46p1-cycdp1 p57-cdk2-cyce
  p57-cdk2p1-cyca p57-cdk2p1-cyce pcna-gadd45 pcna-p21-cdk2-cyca
  pcna-p21-cdk2-cycep1 pcna-p21-cdk2p1-cyce pcna-p21-cdk2p1-cycep1
  prbp1-jun-c-fos - complex)
 (:functions (total-cost) - number)
 (:action ugly1ugly9ugly13dummy-action-2 :parameters () :precondition
  (or (available cdc25a) (available p21-cdk2p1-cyce)) :effect (and (goal2)))
 (:action ugly2ugly11ugly2dummy-action-6 :parameters () :precondition
  (or (available cdk2-cyce) (available p21-cdk46p1-cycd)) :effect
  (and (goal6)))
 (:action ugly3ugly15ugly1dummy-action-4 :parameters () :precondition
  (or (available pcna-p21-cdk2-cyca) (available p57-cdk2p1-cyce)) :effect
  (and (goal4)))
 (:action ugly4ugly3ugly15choose :parameters (?x - simple ?l1 ?l2 - level)
  :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly5ugly6ugly16associate-with-catalyze :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (available ?x3)))
 (:action ugly6ugly16ugly4associate :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (not (available ?x2))
       (available ?x3)))
 (:action ugly7ugly14ugly10dummy-action-7 :parameters () :precondition
  (or (available pcna-p21-cdk2p1-cycep1) (available c-myc-max)) :effect
  (and (goal7)))
 (:action ugly8ugly5ugly6dummy-action-11 :parameters () :precondition
  (or (available p21-cdk2-cyca) (available p21-cdk2-cyce)) :effect
  (and (goal11)))
 (:action ugly9ugly13ugly7dummy-action-9 :parameters () :precondition
  (or (available mdm2-e2f13-dp12) (available p57-cdk2-cyce)) :effect
  (and (goal9)))
 (:action ugly10ugly12ugly8synthesize :parameters (?x1 ?x2 - molecule)
  :precondition (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly11ugly2ugly11initialize :parameters (?x - simple) :precondition
  (and (chosen ?x)) :effect (and (available ?x)))
 (:action ugly12ugly8ugly5dummy-action-1 :parameters () :precondition
  (or (available pcna-gadd45) (available cyca)) :effect (and (goal1)))
 (:action ugly13ugly7ugly14dummy-action-5 :parameters () :precondition
  (or (available p27-cdk2p1-cyca) (available pcna-p21-cdk2p1-cyce)) :effect
  (and (goal5)))
 (:action ugly14ugly10ugly12dummy-action-3 :parameters () :precondition
  (or (available p57-cdk2p1-cyca) (available p27-cdk46p1-cycdp1)) :effect
  (and (goal3)))
 (:action ugly15ugly1ugly9dummy-action-8 :parameters () :precondition
  (or (available p27-cdk2p1-cycep1) (available prbp1-jun-c-fos)) :effect
  (and (goal8)))
 (:action ugly16ugly4ugly3dummy-action-10 :parameters () :precondition
  (or (available p21-cdk2p1-cyca) (available pcna-p21-cdk2-cycep1)) :effect
  (and (goal10)))) 