
(define (domain pathways-propositional) (:requirements :typing :adl)
 (:predicates (next ?l1 ?l2 - level) (goal3) (num-subs ?l - level)
  (available ?x - molecule)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal1) (goal2)
  (goal4) (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex)
  (possible ?x - molecule) (synthesis-reaction ?x1 ?x2 - molecule)
  (chosen ?s - simple))
 (:types level molecule - object simple complex - molecule)
 (:constants cdk2-cyca-e2f13 cdk2p1-cyca cycep1 dmp1-cycdp1 p107
  p107-e2f4-dp12p1-ge2 pol sp1-p107p1-gp - complex)
 (:action ugly1synthesize :parameters (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly2associate :parameters (?x1 ?x2 - molecule ?x3 - complex)
  :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect (and (not (available ?x1)) (not (available ?x2)) (available ?x3)))
 (:action ugly3choose :parameters (?x - simple ?l1 ?l2 - level) :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly4initialize :parameters (?x - simple) :precondition
  (and (chosen ?x)) :effect (and (available ?x)))
 (:action ugly5dummy-action-1 :parameters () :precondition
  (or (available cdk2p1-cyca) (available pol)) :effect (and (goal1)))
 (:action ugly6dummy-action-4 :parameters () :precondition
  (or (available cycep1) (available p107-e2f4-dp12p1-ge2)) :effect
  (and (goal4)))
 (:action ugly7associate-with-catalyze :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect (and (not (available ?x1)) (available ?x3)))
 (:action ugly8dummy-action-3 :parameters () :precondition
  (or (available sp1-p107p1-gp) (available cdk2-cyca-e2f13)) :effect
  (and (goal3)))
 (:action ugly9dummy-action-2 :parameters () :precondition
  (or (available dmp1-cycdp1) (available p107)) :effect (and (goal2)))) 