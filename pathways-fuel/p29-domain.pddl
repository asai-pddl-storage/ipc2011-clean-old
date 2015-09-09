
(define (domain pathways-propositional)
 (:requirements :typing :adl :action-costs)
 (:predicates (next ?l1 ?l2 - level) (goal3) (goal20) (goal27)
  (synthesis-reaction ?x1 ?x2 - molecule) (goal17) (goal24) (goal29) (goal16)
  (goal33) (possible ?x - molecule) (goal31) (goal38) (goal14) (goal11)
  (goal18) (goal2)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal5)
  (goal25) (goal30) (goal9) (goal15) (goal7) (available ?x - molecule) (goal4)
  (goal1) (goal32) (goal36) (goal22) (goal28) (goal21) (goal10) (goal8)
  (goal12) (goal34) (goal35) (goal26) (goal37) (num-subs ?l - level) (goal13)
  (chosen ?s - simple) (goal6)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal23) (goal19)
  (goal39))
 (:types level molecule - object simple complex - molecule)
 (:constants cdk1p1p2p3-cyca cdk1p1p2p3-cycb cdk2-cyca-e2f13p1 cdk2-cyce
  cdk2p1-cyca-e2f13p1 cdk2p1p2-cyca cdk2p1p2-cyca-e2f13p1 cdk2p2-cyca-e2f13p1
  cdk2p2-cyce dmp1p1-cycdp1 e2f13p1 hdac1-p107-e2f4-dp12-ge2
  hdac1-p130-e2f4-dp12-ge2 hdac1-prb-e2f13-dp12p1 hdac1-prb-e2f13p1-dp12p1
  p107-e2f4-dp12-ge2 p107-e2f4-dp12p1-ge2 p107p1 p130-e2f4-dp12-ge2
  p21-cdk2p1-cyca p21-cdk2p1-cycep1 p21-cdk2p1p2-cycep1 p21-cdk2p2-cyca
  p21-cdk46p1-cycd p21-cdk46p1-cycdp1 p27-cdk2p1-cyce p27-cdk2p1-cycep1
  p27-cdk2p1p2-cyce p27-cdk2p2-cycep1 p27-cdk46p1-cycdp1 p27p1-cdk2-cyca
  p27p1-cdk2-cyce p27p1-cdk2-cycep1 p27p1-cdk2p1-cyca p27p1-cdk2p1-cyce
  p27p1-cdk2p1-cycep1 p27p1-cdk2p1p2-cyca p27p1-cdk2p1p2-cyce
  p27p1-cdk2p1p2-cycep1 p27p1-cdk2p2-cyca p27p1-cdk2p2-cyce p27p1-cdk2p2-cycep1
  p27p1-cdk46p1-cycd p27p1-cdk46p1-cycdp1 p27p1-cdk46p1p2-cycd
  p27p1-cdk46p1p2-cycdp1 p53-dp12p1 p53p1-dp12p1 p57-cdk2-cyca p57-cdk2p1-cyce
  p57-cdk2p1p2-cycep1 p57-cdk2p2-cyca p57-cdk2p2-cycep1 p57-cdk46p1p2-cycd
  p57-cdk46p1p2-cycdp1 p68p1 p68p1p2 pcna-p21-cdk2-cyca pcna-p21-cdk2p1-cyca
  pcna-p21-cdk2p1p2-cyca pcna-p21-cdk2p1p2-cycep1 pcna-p21-cdk2p2-cyca
  pcna-p21-cdk2p2-cycep1 pcna-p21-cdk46p1-cycd pcna-p21-cdk46p1-cycdp1
  pcna-p21-cdk46p1p2-cycdp1 prbp1-e2f13p1-dp12-ge2 prbp1-e2f13p1-dp12p1
  prbp1-e2f13p1-dp12p1-ge2 prbp1-e2f4-dp12p1 raf1-prb-e2f13-dp12-ge2
  raf1-prb-e2f13p1-dp12p1 raf1-prb-e2f13p1-dp12p1-ge2 raf1-prbp1-e2f13-dp12
  raf1-prbp1-e2f13-dp12-ge2 raf1-prbp1-e2f13p1-dp12p1 raf1-prbp1-e2f4-dp12-ge2
  rpa-cyca - complex)
 (:functions (total-cost) - number)
 (:action ugly1ugly37dummy-action-11 :parameters () :precondition
  (or (available cdk2-cyca-e2f13p1) (available p21-cdk46p1-cycd)) :effect
  (and (goal11)))
 (:action ugly2ugly38initialize :parameters (?x - simple) :precondition
  (and (chosen ?x)) :effect (and (available ?x)))
 (:action ugly3ugly12dummy-action-3 :parameters () :precondition
  (or (available p27p1-cdk46p1-cycdp1) (available p27p1-cdk2-cyce)) :effect
  (and (goal3)))
 (:action ugly4ugly29dummy-action-31 :parameters () :precondition
  (or (available raf1-prb-e2f13-dp12-ge2)
      (available raf1-prbp1-e2f13-dp12-ge2))
  :effect (and (goal31)))
 (:action ugly5ugly14dummy-action-21 :parameters () :precondition
  (or (available p27p1-cdk2p2-cyce) (available p21-cdk2p1-cyca)) :effect
  (and (goal21)))
 (:action ugly6ugly32dummy-action-30 :parameters () :precondition
  (or (available raf1-prb-e2f13p1-dp12p1) (available p130-e2f4-dp12-ge2))
  :effect (and (goal30)))
 (:action ugly7ugly40dummy-action-4 :parameters () :precondition
  (or (available cdk2p2-cyca-e2f13p1) (available pcna-p21-cdk46p1-cycd))
  :effect (and (goal4)))
 (:action ugly8ugly15dummy-action-28 :parameters () :precondition
  (or (available pcna-p21-cdk2p1p2-cyca) (available p27-cdk2p1-cyce)) :effect
  (and (goal28)))
 (:action ugly9ugly10dummy-action-13 :parameters () :precondition
  (or (available p27p1-cdk2p1p2-cyce) (available p27p1-cdk2p1p2-cyca)) :effect
  (and (goal13)))
 (:action ugly10ugly18synthesize :parameters (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly11ugly31associate-with-catalyze :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (available ?x3)))
 (:action ugly12ugly8dummy-action-10 :parameters () :precondition
  (or (available raf1-prbp1-e2f4-dp12-ge2) (available cdk1p1p2p3-cycb)) :effect
  (and (goal10)))
 (:action ugly13ugly24dummy-action-1 :parameters () :precondition
  (or (available p27p1-cdk2p2-cyca) (available cdk2p1-cyca-e2f13p1)) :effect
  (and (goal1)))
 (:action ugly14ugly26dummy-action-38 :parameters () :precondition
  (or (available dmp1p1-cycdp1) (available p107-e2f4-dp12p1-ge2)) :effect
  (and (goal38)))
 (:action ugly15ugly33associate :parameters (?x1 ?x2 - molecule ?x3 - complex)
  :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (not (available ?x2))
       (available ?x3)))
 (:action ugly16ugly25dummy-action-17 :parameters () :precondition
  (or (available p27p1-cdk2p1p2-cycep1) (available p21-cdk2p2-cyca)) :effect
  (and (goal17)))
 (:action ugly17ugly11dummy-action-26 :parameters () :precondition
  (or (available prbp1-e2f4-dp12p1) (available p57-cdk46p1p2-cycd)) :effect
  (and (goal26)))
 (:action ugly18ugly5dummy-action-9 :parameters () :precondition
  (or (available hdac1-p107-e2f4-dp12-ge2) (available p27p1-cdk2p1-cycep1))
  :effect (and (goal9)))
 (:action ugly19ugly44dummy-action-8 :parameters () :precondition
  (or (available p27-cdk2p2-cycep1) (available cdk1p1p2p3-cyca)) :effect
  (and (goal8)))
 (:action ugly20ugly17dummy-action-6 :parameters () :precondition
  (or (available p27p1-cdk2-cycep1) (available p27p1-cdk2p1-cyce)) :effect
  (and (goal6)))
 (:action ugly21ugly20dummy-action-12 :parameters () :precondition
  (or (available hdac1-prb-e2f13-dp12p1) (available p53p1-dp12p1)) :effect
  (and (goal12)))
 (:action ugly22ugly41dummy-action-29 :parameters () :precondition
  (or (available p107p1) (available p68p1)) :effect (and (goal29)))
 (:action ugly23ugly30dummy-action-18 :parameters () :precondition
  (or (available pcna-p21-cdk2-cyca) (available pcna-p21-cdk2p1-cyca)) :effect
  (and (goal18)))
 (:action ugly24ugly6dummy-action-27 :parameters () :precondition
  (or (available pcna-p21-cdk2p1p2-cycep1) (available p57-cdk2-cyca)) :effect
  (and (goal27)))
 (:action ugly25ugly22dummy-action-36 :parameters () :precondition
  (or (available p57-cdk2p1p2-cycep1) (available prbp1-e2f13p1-dp12p1)) :effect
  (and (goal36)))
 (:action ugly26ugly43dummy-action-22 :parameters () :precondition
  (or (available pcna-p21-cdk46p1-cycdp1)
      (available raf1-prbp1-e2f13p1-dp12p1))
  :effect (and (goal22)))
 (:action ugly27ugly1dummy-action-32 :parameters () :precondition
  (or (available p57-cdk2p1-cyce) (available prbp1-e2f13p1-dp12p1-ge2)) :effect
  (and (goal32)))
 (:action ugly28ugly7dummy-action-35 :parameters () :precondition
  (or (available raf1-prbp1-e2f13-dp12) (available p27-cdk46p1-cycdp1)) :effect
  (and (goal35)))
 (:action ugly29ugly36dummy-action-14 :parameters () :precondition
  (or (available p21-cdk2p1-cycep1) (available p27p1-cdk46p1p2-cycd)) :effect
  (and (goal14)))
 (:action ugly30ugly23dummy-action-25 :parameters () :precondition
  (or (available p57-cdk2p2-cyca) (available p21-cdk46p1-cycdp1)) :effect
  (and (goal25)))
 (:action ugly31ugly4dummy-action-24 :parameters () :precondition
  (or (available p107-e2f4-dp12-ge2) (available rpa-cyca)) :effect
  (and (goal24)))
 (:action ugly32ugly35dummy-action-16 :parameters () :precondition
  (or (available p27p1-cdk46p1-cycd) (available p27p1-cdk2p1-cyca)) :effect
  (and (goal16)))
 (:action ugly33ugly3dummy-action-7 :parameters () :precondition
  (or (available p27-cdk2p1p2-cyce) (available pcna-p21-cdk46p1p2-cycdp1))
  :effect (and (goal7)))
 (:action ugly34ugly28dummy-action-2 :parameters () :precondition
  (or (available p53-dp12p1) (available p27p1-cdk2p2-cycep1)) :effect
  (and (goal2)))
 (:action ugly35ugly21dummy-action-15 :parameters () :precondition
  (or (available p68p1p2) (available cdk2p1p2-cyca-e2f13p1)) :effect
  (and (goal15)))
 (:action ugly36ugly19dummy-action-39 :parameters () :precondition
  (or (available prbp1-e2f13p1-dp12-ge2) (available hdac1-prb-e2f13p1-dp12p1))
  :effect (and (goal39)))
 (:action ugly37ugly16dummy-action-20 :parameters () :precondition
  (or (available p57-cdk2p2-cycep1) (available p27p1-cdk2-cyca)) :effect
  (and (goal20)))
 (:action ugly38ugly2dummy-action-33 :parameters () :precondition
  (or (available hdac1-p130-e2f4-dp12-ge2) (available pcna-p21-cdk2p2-cyca))
  :effect (and (goal33)))
 (:action ugly39ugly39dummy-action-34 :parameters () :precondition
  (or (available cdk2-cyce) (available p21-cdk2p1p2-cycep1)) :effect
  (and (goal34)))
 (:action ugly40ugly9dummy-action-5 :parameters () :precondition
  (or (available p27p1-cdk46p1p2-cycdp1) (available pcna-p21-cdk2p2-cycep1))
  :effect (and (goal5)))
 (:action ugly41ugly34dummy-action-23 :parameters () :precondition
  (or (available p27-cdk2p1-cycep1) (available cdk2p2-cyce)) :effect
  (and (goal23)))
 (:action ugly42ugly42dummy-action-37 :parameters () :precondition
  (or (available raf1-prb-e2f13p1-dp12p1-ge2) (available cdk2p1p2-cyca))
  :effect (and (goal37)))
 (:action ugly43ugly27choose :parameters (?x - simple ?l1 ?l2 - level)
  :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly44ugly13dummy-action-19 :parameters () :precondition
  (or (available e2f13p1) (available p57-cdk46p1p2-cycdp1)) :effect
  (and (goal19)))) 