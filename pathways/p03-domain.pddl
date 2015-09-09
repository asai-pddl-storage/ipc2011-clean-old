
(define (domain pathways-propositional) (:requirements :typing :adl)
 (:predicates (next ?l1 ?l2 - level) (goal3) (num-subs ?l - level)
  (available ?x - molecule)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal1) (goal2)
  (chosen ?s - simple) (synthesis-reaction ?x1 ?x2 - molecule)
  (possible ?x - molecule)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex))
 (:types level molecule - object simple complex - molecule)
 (:constants cdk46p1-cycd cyca hdac1-p107-e2f4-dp12p1 prbp1-e2f4-dp12p1
  sp1-p107-gp sp1-p107p1-gp - complex)
 (:action ugly1dummy-action-3 :parameters () :precondition
  (or (available cdk46p1-cycd) (available hdac1-p107-e2f4-dp12p1)) :effect
  (and (goal3)))
 (:action ugly2initialize :parameters (?x - simple) :precondition
  (and (chosen ?x)) :effect (and (available ?x)))
 (:action ugly3dummy-action-2 :parameters () :precondition
  (or (available cyca) (available sp1-p107p1-gp)) :effect (and (goal2)))
 (:action ugly4synthesize :parameters (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly5associate :parameters (?x1 ?x2 - molecule ?x3 - complex)
  :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect (and (not (available ?x1)) (not (available ?x2)) (available ?x3)))
 (:action ugly6associate-with-catalyze :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect (and (not (available ?x1)) (available ?x3)))
 (:action ugly7choose :parameters (?x - simple ?l1 ?l2 - level) :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly8dummy-action-1 :parameters () :precondition
  (or (available prbp1-e2f4-dp12p1) (available sp1-p107-gp)) :effect
  (and (goal1)))) 