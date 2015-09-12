
(define (domain pathways-propositional)
 (:requirements :typing :adl :action-costs)
 (:predicates (chosen ?s - simple) (goal3) (possible ?x - molecule)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex)
  (synthesis-reaction ?x1 ?x2 - molecule) (num-subs ?l - level)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal2)
  (available ?x - molecule) (next ?l1 ?l2 - level) (goal1))
 (:types level molecule - object simple complex - molecule)
 (:constants cdk46p1-cycd cyca hdac1-p107-e2f4-dp12p1 prbp1-e2f4-dp12p1
  sp1-p107-gp sp1-p107p1-gp - complex)
 (:functions (total-cost) - number)
 (:action ugly11115ugly3ugly7ugly1ugly8dummy-action-1 :parameters ()
  :precondition (or (available prbp1-e2f4-dp12p1) (available sp1-p107-gp))
  :effect (and (goal1)))
 (:action ugly11116ugly6ugly4ugly5ugly3dummy-action-2 :parameters ()
  :precondition (or (available cyca) (available sp1-p107p1-gp)) :effect
  (and (goal2)))
 (:action ugly11117ugly7ugly1ugly8ugly6associate-with-catalyze :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (available ?x3)))
 (:action ugly11118ugly4ugly5ugly3ugly7choose :parameters
  (?x - simple ?l1 ?l2 - level) :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly11119ugly8ugly6ugly4ugly5associate :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (not (available ?x2))
       (available ?x3)))
 (:action ugly11120ugly1ugly8ugly6ugly4synthesize :parameters
  (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly11121ugly5ugly3ugly7ugly1dummy-action-3 :parameters ()
  :precondition
  (or (available cdk46p1-cycd) (available hdac1-p107-e2f4-dp12p1)) :effect
  (and (goal3)))
 (:action ugly11122ugly2ugly2ugly2ugly2initialize :parameters (?x - simple)
  :precondition (and (chosen ?x)) :effect (and (available ?x)))) 