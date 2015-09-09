
(define (domain pathways-propositional)
 (:requirements :typing :adl :action-costs)
 (:predicates (goal21) (goal25) (num-subs ?l - level) (goal29) (goal32)
  (goal35) (goal3) (goal26) (available ?x - molecule) (goal18) (goal28)
  (goal37) (goal22)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal30)
  (goal2) (goal27) (goal34) (goal36) (goal6) (goal7) (next ?l1 ?l2 - level)
  (goal5) (goal12) (goal13) (possible ?x - molecule) (goal9) (goal1) (goal11)
  (goal15) (goal14) (association-reaction ?x1 ?x2 - molecule ?x3 - complex)
  (goal31) (goal4) (goal33) (goal17) (goal16) (goal10) (goal23) (goal8)
  (goal20) (goal24) (chosen ?s - simple) (goal19)
  (synthesis-reaction ?x1 ?x2 - molecule))
 (:types level molecule - object simple complex - molecule)
 (:constants cdc25a cdc25ap1 cdk2-cyca-e2f13p1 cdk2-cyce cdk2p1-cyca-e2f13p1
  cdk2p1-cyce cdk2p1p2-cyca cdk2p1p2-cyca-e2f13p1 cdk2p2-cyca-e2f13p1 cdk46
  cdk46-cycd cdk46-cycdp1 cdk46p2 cdk46p2-cycd cdk46p2-cycdp1 c-myc-max cyca
  dp12p1 hdac1-p130-e2f5-dp12p1 m1433-cdc25cp1p2 mdm2-e2f13-dp12 p16-cdk46
  p16-cdk46p1p2 p16-cdk46p2 p16-cdk7p1 p19arf p21-cdk2-cycep1 p21-cdk2p1-cyca
  p21-cdk2p1p2-cyce p21-cdk46-cycd p21-cdk46-cycdp1 p21-cdk46p1-cycd
  p21-cdk46p2-cycd p21-cdk46p2-cycdp1 p53p1-dp12p1 p57-cdk2p1-cyca
  p57-cdk2p1-cyce p57-cdk2p1p2-cycep1 p57-cdk2p2-cyca p57-cdk2p2-cyce
  p57-cdk46-cycd p57-cdk46-cycdp1 p57-cdk46p2-cycd p57-cdk46p2-cycdp1
  p57p1-cdk46-cycd p57p1-cdk46-cycdp1 p57p1-cdk46p1p2-cycd p57p1-cdk46p2-cycd
  p57p1-cdk46p2-cycdp1 pcna-p21-cdk2-cyca pcna-p21-cdk2p1-cyce
  pcna-p21-cdk2p1p2-cyce pcna-p21-cdk2p2-cyce pcna-p21-cdk46-cycd
  pcna-p21-cdk46-cycdp1 pcna-p21-cdk46p2-cycd pcna-p21-cdk46p2-cycdp1
  prbp1-e2f13-dp12-ge2 prbp1-jun-c-fos-gercc1 prbp1p2-ap2 prbp1p2-ap2-ge-c
  prbp1p2-jun prbp2-ap2-ge-c raf1-cdc25a raf1-cdc25ap1 raf1-p130-e2f5-dp12-ge2
  raf1-prbp1-e2f13p1-dp12p1-ge2 skp2-cdk2p1p2-cyca skp2-cdk2p2-cyca skp2p1
  sp1-e2f13p1 sp1-e2f13p1-gp sp1-p107 sp1-p107p1-gp - complex)
 (:functions (total-cost) - number)
 (:action ugly1associate :parameters (?x1 ?x2 - molecule ?x3 - complex)
  :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (not (available ?x2))
       (available ?x3)))
 (:action ugly2dummy-action-33 :parameters () :precondition
  (or (available p57-cdk2p1-cyca) (available skp2-cdk2p2-cyca)) :effect
  (and (goal33)))
 (:action ugly3dummy-action-34 :parameters () :precondition
  (or (available prbp1-e2f13-dp12-ge2) (available p16-cdk46p1p2)) :effect
  (and (goal34)))
 (:action ugly4dummy-action-8 :parameters () :precondition
  (or (available cdk46p2) (available sp1-e2f13p1-gp)) :effect (and (goal8)))
 (:action ugly5dummy-action-25 :parameters () :precondition
  (or (available skp2-cdk2p1p2-cyca) (available p57p1-cdk46p1p2-cycd)) :effect
  (and (goal25)))
 (:action ugly6dummy-action-10 :parameters () :precondition
  (or (available p16-cdk46) (available cdc25ap1)) :effect (and (goal10)))
 (:action ugly7dummy-action-28 :parameters () :precondition
  (or (available cdk2p1p2-cyca) (available p21-cdk2-cycep1)) :effect
  (and (goal28)))
 (:action ugly8dummy-action-36 :parameters () :precondition
  (or (available pcna-p21-cdk2p1-cyce) (available prbp1p2-ap2-ge-c)) :effect
  (and (goal36)))
 (:action ugly9dummy-action-11 :parameters () :precondition
  (or (available raf1-cdc25ap1) (available prbp2-ap2-ge-c)) :effect
  (and (goal11)))
 (:action ugly10dummy-action-6 :parameters () :precondition
  (or (available cdk46p2-cycdp1) (available p21-cdk46-cycdp1)) :effect
  (and (goal6)))
 (:action ugly11dummy-action-14 :parameters () :precondition
  (or (available p57-cdk46-cycdp1) (available p57p1-cdk46p2-cycd)) :effect
  (and (goal14)))
 (:action ugly12dummy-action-27 :parameters () :precondition
  (or (available cdk2p1-cyce) (available cdk2-cyce)) :effect (and (goal27)))
 (:action ugly13dummy-action-16 :parameters () :precondition
  (or (available p21-cdk46p2-cycd) (available p53p1-dp12p1)) :effect
  (and (goal16)))
 (:action ugly14dummy-action-15 :parameters () :precondition
  (or (available p57-cdk46-cycd) (available cdk2p1p2-cyca-e2f13p1)) :effect
  (and (goal15)))
 (:action ugly15dummy-action-13 :parameters () :precondition
  (or (available cdk46) (available cyca)) :effect (and (goal13)))
 (:action ugly16dummy-action-22 :parameters () :precondition
  (or (available pcna-p21-cdk2p2-cyce) (available prbp1-jun-c-fos-gercc1))
  :effect (and (goal22)))
 (:action ugly17dummy-action-24 :parameters () :precondition
  (or (available mdm2-e2f13-dp12) (available p57-cdk2p2-cyce)) :effect
  (and (goal24)))
 (:action ugly18dummy-action-31 :parameters () :precondition
  (or (available pcna-p21-cdk2p1p2-cyce) (available sp1-p107p1-gp)) :effect
  (and (goal31)))
 (:action ugly19dummy-action-23 :parameters () :precondition
  (or (available p21-cdk2p1-cyca) (available p16-cdk7p1)) :effect
  (and (goal23)))
 (:action ugly20dummy-action-29 :parameters () :precondition
  (or (available prbp1p2-jun) (available dp12p1)) :effect (and (goal29)))
 (:action ugly21dummy-action-12 :parameters () :precondition
  (or (available pcna-p21-cdk46-cycdp1) (available p57-cdk46p2-cycdp1)) :effect
  (and (goal12)))
 (:action ugly22dummy-action-2 :parameters () :precondition
  (or (available cdk46p2-cycd) (available cdk46-cycdp1)) :effect (and (goal2)))
 (:action ugly23dummy-action-17 :parameters () :precondition
  (or (available prbp1p2-ap2) (available pcna-p21-cdk46p2-cycd)) :effect
  (and (goal17)))
 (:action ugly24dummy-action-26 :parameters () :precondition
  (or (available raf1-p130-e2f5-dp12-ge2) (available p57-cdk2p1p2-cycep1))
  :effect (and (goal26)))
 (:action ugly25dummy-action-18 :parameters () :precondition
  (or (available cdk2p1-cyca-e2f13p1) (available cdk2p2-cyca-e2f13p1)) :effect
  (and (goal18)))
 (:action ugly26dummy-action-37 :parameters () :precondition
  (or (available skp2p1) (available raf1-prbp1-e2f13p1-dp12p1-ge2)) :effect
  (and (goal37)))
 (:action ugly27dummy-action-1 :parameters () :precondition
  (or (available p57p1-cdk46-cycd) (available p57p1-cdk46p2-cycdp1)) :effect
  (and (goal1)))
 (:action ugly28associate-with-catalyze :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (available ?x3)))
 (:action ugly29choose :parameters (?x - simple ?l1 ?l2 - level) :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly30dummy-action-20 :parameters () :precondition
  (or (available c-myc-max) (available cdk2-cyca-e2f13p1)) :effect
  (and (goal20)))
 (:action ugly31dummy-action-32 :parameters () :precondition
  (or (available pcna-p21-cdk2-cyca) (available p19arf)) :effect
  (and (goal32)))
 (:action ugly32dummy-action-5 :parameters () :precondition
  (or (available hdac1-p130-e2f5-dp12p1) (available p57-cdk46p2-cycd)) :effect
  (and (goal5)))
 (:action ugly33synthesize :parameters (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly34dummy-action-7 :parameters () :precondition
  (or (available cdk46-cycd) (available p21-cdk46-cycd)) :effect (and (goal7)))
 (:action ugly35initialize :parameters (?x - simple) :precondition
  (and (chosen ?x)) :effect (and (available ?x)))
 (:action ugly36dummy-action-4 :parameters () :precondition
  (or (available p16-cdk46p2) (available p21-cdk46p2-cycdp1)) :effect
  (and (goal4)))
 (:action ugly37dummy-action-30 :parameters () :precondition
  (or (available sp1-p107) (available p57-cdk2p1-cyce)) :effect (and (goal30)))
 (:action ugly38dummy-action-19 :parameters () :precondition
  (or (available cdc25a) (available p21-cdk2p1p2-cyce)) :effect (and (goal19)))
 (:action ugly39dummy-action-9 :parameters () :precondition
  (or (available pcna-p21-cdk46p2-cycdp1) (available raf1-cdc25a)) :effect
  (and (goal9)))
 (:action ugly40dummy-action-35 :parameters () :precondition
  (or (available m1433-cdc25cp1p2) (available p57-cdk2p2-cyca)) :effect
  (and (goal35)))
 (:action ugly41dummy-action-3 :parameters () :precondition
  (or (available pcna-p21-cdk46-cycd) (available p57p1-cdk46-cycdp1)) :effect
  (and (goal3)))
 (:action ugly42dummy-action-21 :parameters () :precondition
  (or (available sp1-e2f13p1) (available p21-cdk46p1-cycd)) :effect
  (and (goal21)))) 