
(define (domain pathways-propositional)
 (:requirements :typing :adl :action-costs)
 (:predicates (goal36) (goal4) (goal26) (synthesis-reaction ?x1 ?x2 - molecule)
  (goal23) (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex)
  (goal19) (goal35) (goal28) (num-subs ?l - level) (goal11) (goal10) (goal9)
  (goal18) (goal15) (goal30) (goal20) (goal29) (goal8) (goal1)
  (chosen ?s - simple) (goal32) (goal25) (goal38) (goal12) (goal16) (goal31)
  (goal13) (goal3) (goal21) (goal34) (goal7) (goal6) (goal37) (goal14)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal24)
  (next ?l1 ?l2 - level) (possible ?x - molecule) (goal33) (goal39) (goal27)
  (goal5) (goal22) (goal17) (goal2) (available ?x - molecule))
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
 (:action ugly11776ugly11795ugly11803ugly19ugly44ugly13ugly24dummy-action-1
  :parameters () :precondition
  (or (available p27p1-cdk2p2-cyca) (available cdk2p1-cyca-e2f13p1)) :effect
  (and (goal1)))
 (:action ugly11777ugly11806ugly11797ugly40ugly9ugly10ugly18synthesize
  :parameters (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly11778ugly11792ugly11791ugly23ugly30ugly23ugly30dummy-action-18
  :parameters () :precondition
  (or (available pcna-p21-cdk2-cyca) (available pcna-p21-cdk2p1-cyca)) :effect
  (and (goal18)))
 (:action ugly11779ugly11786ugly11808ugly18ugly5ugly14ugly26dummy-action-38
  :parameters () :precondition
  (or (available dmp1p1-cycdp1) (available p107-e2f4-dp12p1-ge2)) :effect
  (and (goal38)))
 (:action ugly11780ugly11814ugly11799ugly36ugly19ugly44ugly13dummy-action-19
  :parameters () :precondition
  (or (available e2f13p1) (available p57-cdk46p1p2-cycdp1)) :effect
  (and (goal19)))
 (:action ugly11781ugly11780ugly11814ugly24ugly6ugly32ugly35dummy-action-16
  :parameters () :precondition
  (or (available p27p1-cdk46p1-cycd) (available p27p1-cdk2p1-cyca)) :effect
  (and (goal16)))
 (:action ugly11782ugly11789ugly11779ugly11ugly31ugly4ugly29dummy-action-31
  :parameters () :precondition
  (or (available raf1-prb-e2f13-dp12-ge2)
      (available raf1-prbp1-e2f13-dp12-ge2))
  :effect (and (goal31)))
 (:action ugly11783ugly11812ugly11804ugly34ugly28ugly7ugly40dummy-action-4
  :parameters () :precondition
  (or (available cdk2p2-cyca-e2f13p1) (available pcna-p21-cdk46p1-cycd))
  :effect (and (goal4)))
 (:action ugly11784ugly11784ugly11784ugly9ugly10ugly18ugly5dummy-action-9
  :parameters () :precondition
  (or (available hdac1-p107-e2f4-dp12-ge2) (available p27p1-cdk2p1-cycep1))
  :effect (and (goal9)))
 (:action ugly11785ugly11783ugly11812ugly29ugly36ugly19ugly44dummy-action-8
  :parameters () :precondition
  (or (available p27-cdk2p2-cycep1) (available cdk1p1p2p3-cyca)) :effect
  (and (goal8)))
 (:action ugly11786ugly11808ugly11793ugly25ugly22ugly41ugly34dummy-action-23
  :parameters () :precondition
  (or (available p27-cdk2p1-cycep1) (available cdk2p2-cyce)) :effect
  (and (goal23)))
 (:action ugly11787ugly11817ugly11807ugly27ugly1ugly37ugly16dummy-action-20
  :parameters () :precondition
  (or (available p57-cdk2p2-cycep1) (available p27p1-cdk2-cyca)) :effect
  (and (goal20)))
 (:action ugly11788ugly11810ugly11785ugly8ugly15ugly33ugly3dummy-action-7
  :parameters () :precondition
  (or (available p27-cdk2p1p2-cyce) (available pcna-p21-cdk46p1p2-cycdp1))
  :effect (and (goal7)))
 (:action ugly11789ugly11779ugly11786ugly33ugly3ugly12ugly8dummy-action-10
  :parameters () :precondition
  (or (available raf1-prbp1-e2f4-dp12-ge2) (available cdk1p1p2p3-cycb)) :effect
  (and (goal10)))
 (:action ugly11790ugly11778ugly11792ugly16ugly25ugly22ugly41dummy-action-29
  :parameters () :precondition (or (available p107p1) (available p68p1))
  :effect (and (goal29)))
 (:action ugly11791ugly11798ugly11781ugly5ugly14ugly26ugly43dummy-action-22
  :parameters () :precondition
  (or (available pcna-p21-cdk46p1-cycdp1)
      (available raf1-prbp1-e2f13p1-dp12p1))
  :effect (and (goal22)))
 (:action ugly11792ugly11791ugly11798ugly6ugly32ugly35ugly21dummy-action-15
  :parameters () :precondition
  (or (available p68p1p2) (available cdk2p1p2-cyca-e2f13p1)) :effect
  (and (goal15)))
 (:action ugly11793ugly11800ugly11782ugly14ugly26ugly43ugly27choose :parameters
  (?x - simple ?l1 ?l2 - level) :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly11794ugly11788ugly11810ugly10ugly18ugly5ugly14dummy-action-21
  :parameters () :precondition
  (or (available p27p1-cdk2p2-cyce) (available p21-cdk2p1-cyca)) :effect
  (and (goal21)))
 (:action ugly11795ugly11803ugly11794ugly13ugly24ugly6ugly32dummy-action-30
  :parameters () :precondition
  (or (available raf1-prb-e2f13p1-dp12p1) (available p130-e2f4-dp12-ge2))
  :effect (and (goal30)))
 (:action ugly11796ugly11805ugly11819ugly15ugly33ugly3ugly12dummy-action-3
  :parameters () :precondition
  (or (available p27p1-cdk46p1-cycdp1) (available p27p1-cdk2-cyce)) :effect
  (and (goal3)))
 (:action
  ugly11797ugly11815ugly11776ugly20ugly17ugly11ugly31associate-with-catalyze
  :parameters (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (available ?x3)))
 (:action ugly11798ugly11781ugly11780ugly39ugly39ugly39ugly39dummy-action-34
  :parameters () :precondition
  (or (available cdk2-cyce) (available p21-cdk2p1p2-cycep1)) :effect
  (and (goal34)))
 (:action ugly11799ugly11811ugly11796ugly30ugly23ugly30ugly23dummy-action-25
  :parameters () :precondition
  (or (available p57-cdk2p2-cyca) (available p21-cdk46p1-cycdp1)) :effect
  (and (goal25)))
 (:action ugly11800ugly11782ugly11789ugly4ugly29ugly36ugly19dummy-action-39
  :parameters () :precondition
  (or (available prbp1-e2f13p1-dp12-ge2) (available hdac1-prb-e2f13p1-dp12p1))
  :effect (and (goal39)))
 (:action ugly11801ugly11818ugly11787ugly42ugly42ugly42ugly42dummy-action-37
  :parameters () :precondition
  (or (available raf1-prb-e2f13p1-dp12p1-ge2) (available cdk2p1p2-cyca))
  :effect (and (goal37)))
 (:action ugly11802ugly11813ugly11801ugly43ugly27ugly1ugly37dummy-action-11
  :parameters () :precondition
  (or (available cdk2-cyca-e2f13p1) (available p21-cdk46p1-cycd)) :effect
  (and (goal11)))
 (:action ugly11803ugly11794ugly11788ugly35ugly21ugly20ugly17dummy-action-6
  :parameters () :precondition
  (or (available p27p1-cdk2-cycep1) (available p27p1-cdk2p1-cyce)) :effect
  (and (goal6)))
 (:action ugly11804ugly11809ugly11777ugly31ugly4ugly29ugly36dummy-action-14
  :parameters () :precondition
  (or (available p21-cdk2p1-cycep1) (available p27p1-cdk46p1p2-cycd)) :effect
  (and (goal14)))
 (:action ugly11805ugly11819ugly11790ugly3ugly12ugly8ugly15dummy-action-28
  :parameters () :precondition
  (or (available pcna-p21-cdk2p1p2-cyca) (available p27-cdk2p1-cyce)) :effect
  (and (goal28)))
 (:action ugly11806ugly11797ugly11815ugly1ugly37ugly16ugly25dummy-action-17
  :parameters () :precondition
  (or (available p27p1-cdk2p1p2-cycep1) (available p21-cdk2p2-cyca)) :effect
  (and (goal17)))
 (:action ugly11807ugly11802ugly11813ugly26ugly43ugly27ugly1dummy-action-32
  :parameters () :precondition
  (or (available p57-cdk2p1-cyce) (available prbp1-e2f13p1-dp12p1-ge2)) :effect
  (and (goal32)))
 (:action ugly11808ugly11793ugly11800ugly7ugly40ugly9ugly10dummy-action-13
  :parameters () :precondition
  (or (available p27p1-cdk2p1p2-cyce) (available p27p1-cdk2p1p2-cyca)) :effect
  (and (goal13)))
 (:action ugly11809ugly11777ugly11806ugly22ugly41ugly34ugly28dummy-action-2
  :parameters () :precondition
  (or (available p53-dp12p1) (available p27p1-cdk2p2-cycep1)) :effect
  (and (goal2)))
 (:action ugly11810ugly11785ugly11783ugly37ugly16ugly25ugly22dummy-action-36
  :parameters () :precondition
  (or (available p57-cdk2p1p2-cycep1) (available prbp1-e2f13p1-dp12p1)) :effect
  (and (goal36)))
 (:action ugly11811ugly11796ugly11805ugly44ugly13ugly24ugly6dummy-action-27
  :parameters () :precondition
  (or (available pcna-p21-cdk2p1p2-cycep1) (available p57-cdk2-cyca)) :effect
  (and (goal27)))
 (:action ugly11812ugly11804ugly11809ugly2ugly38ugly2ugly38initialize
  :parameters (?x - simple) :precondition (and (chosen ?x)) :effect
  (and (available ?x)))
 (:action ugly11813ugly11801ugly11818ugly12ugly8ugly15ugly33associate
  :parameters (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (not (available ?x2))
       (available ?x3)))
 (:action ugly11814ugly11799ugly11811ugly21ugly20ugly17ugly11dummy-action-26
  :parameters () :precondition
  (or (available prbp1-e2f4-dp12p1) (available p57-cdk46p1p2-cycd)) :effect
  (and (goal26)))
 (:action ugly11815ugly11776ugly11795ugly28ugly7ugly40ugly9dummy-action-5
  :parameters () :precondition
  (or (available p27p1-cdk46p1p2-cycdp1) (available pcna-p21-cdk2p2-cycep1))
  :effect (and (goal5)))
 (:action ugly11816ugly11816ugly11816ugly41ugly34ugly28ugly7dummy-action-35
  :parameters () :precondition
  (or (available raf1-prbp1-e2f13-dp12) (available p27-cdk46p1-cycdp1)) :effect
  (and (goal35)))
 (:action ugly11817ugly11807ugly11802ugly38ugly2ugly38ugly2dummy-action-33
  :parameters () :precondition
  (or (available hdac1-p130-e2f4-dp12-ge2) (available pcna-p21-cdk2p2-cyca))
  :effect (and (goal33)))
 (:action ugly11818ugly11787ugly11817ugly32ugly35ugly21ugly20dummy-action-12
  :parameters () :precondition
  (or (available hdac1-prb-e2f13-dp12p1) (available p53p1-dp12p1)) :effect
  (and (goal12)))
 (:action ugly11819ugly11790ugly11778ugly17ugly11ugly31ugly4dummy-action-24
  :parameters () :precondition
  (or (available p107-e2f4-dp12-ge2) (available rpa-cyca)) :effect
  (and (goal24)))) 