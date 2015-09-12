
(define (domain pathways-propositional) (:requirements :typing :adl)
 (:predicates (goal2) (goal3) (goal4) (available ?x - molecule)
  (synthesis-reaction ?x1 ?x2 - molecule) (num-subs ?l - level) (goal1)
  (chosen ?s - simple)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex)
  (possible ?x - molecule) (next ?l1 ?l2 - level))
 (:types level molecule - object simple complex - molecule)
 (:constants cdk2-cyca-e2f13 cdk2p1-cyca cycep1 dmp1-cycdp1 p107
  p107-e2f4-dp12p1-ge2 pol sp1-p107p1-gp - complex)
 (:action ugly1434399ugly3ugly1ugly5ugly6dummy-action-4 :parameters ()
  :precondition (or (available cycep1) (available p107-e2f4-dp12p1-ge2))
  :effect (and (goal4)))
 (:action ugly1434400ugly2ugly3ugly1ugly5dummy-action-1 :parameters ()
  :precondition (or (available cdk2p1-cyca) (available pol)) :effect
  (and (goal1)))
 (:action ugly1434401ugly8ugly8ugly8ugly8dummy-action-3 :parameters ()
  :precondition (or (available sp1-p107p1-gp) (available cdk2-cyca-e2f13))
  :effect (and (goal3)))
 (:action ugly1434402ugly5ugly6ugly9ugly7associate-with-catalyze :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect (and (not (available ?x1)) (available ?x3)))
 (:action ugly1434403ugly9ugly7ugly4ugly2associate :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect (and (not (available ?x1)) (not (available ?x2)) (available ?x3)))
 (:action ugly1434404ugly7ugly4ugly2ugly3choose :parameters
  (?x - simple ?l1 ?l2 - level) :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly1434405ugly1ugly5ugly6ugly9dummy-action-2 :parameters ()
  :precondition (or (available dmp1-cycdp1) (available p107)) :effect
  (and (goal2)))
 (:action ugly1434406ugly6ugly9ugly7ugly4initialize :parameters (?x - simple)
  :precondition (and (chosen ?x)) :effect (and (available ?x)))
 (:action ugly1434407ugly4ugly2ugly3ugly1synthesize :parameters
  (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))) 