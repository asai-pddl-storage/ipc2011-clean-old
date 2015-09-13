
(define (domain pathways-propositional)
 (:requirements :typing :adl :action-costs)
 (:predicates (goal28) (next ?l1 ?l2 - level) (goal23) (goal4) (goal9) (goal10)
  (possible ?x - molecule) (synthesis-reaction ?x1 ?x2 - molecule) (goal21)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal7)
  (goal19) (goal36) (goal5) (goal2) (goal6) (goal20) (num-subs ?l - level)
  (goal12) (available ?x - molecule) (goal11) (goal37) (goal25)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal39) (goal33)
  (goal3) (goal29) (goal26) (goal30) (goal38) (chosen ?s - simple) (goal40)
  (goal27) (goal18) (goal16) (goal22) (goal14) (goal35) (goal13) (goal31)
  (goal8) (goal32) (goal34) (goal15) (goal24) (goal1) (goal17))
 (:types level molecule - object simple complex - molecule)
 (:constants cdc25a cdc25ap1 cdk2-cyca cdk2-cyca-e2f13p1 cdk2p1-cyca-e2f13p1
  cdk2p1p2-cyca-e2f13p1 cdk2p2-cyca cdk2p2-cyca-e2f13 cdk2p2-cyca-e2f13p1
  cdk2p2-cyce cdk2p2-cycep1 cdk46-cycd cdk46p2-cycd cebp-prbp1-gp cebp-prbp1p2
  dmp1p1-cycd dmp1p1-gp19arf e2f13p1 ercc1 hdac1-p107-e2f4-dp12-ge2
  p130-e2f4-dp12-ge2 p130-e2f5-dp12-ge2 p21-cdk2-cyca p21-cdk2p2-cyce
  p21-cdk2p2-cycep1 p21-cdk46-cycd p21-cdk46-cycdp1 p21-cdk46p1-cycd
  p21-cdk46p2-cycd p21-cdk46p2-cycdp1 p27-cdk2-cyca p27-cdk2-cyce
  p27-cdk2p2-cycep1 p27-cdk46-cycdp1 p27-cdk46p2-cycd p27-cdk46p2-cycdp1
  p27p1-cdk2-cyca p27p1-cdk2-cyce p27p1-cdk2-cycep1 p27p1-cdk2p1-cyca
  p27p1-cdk2p1-cyce p27p1-cdk2p1-cycep1 p27p1-cdk2p1p2-cyce
  p27p1-cdk2p1p2-cycep1 p27p1-cdk2p2-cyca p27p1-cdk2p2-cyce p27p1-cdk2p2-cycep1
  p27p1-cdk46-cycd p27p1-cdk46p1-cycd p27p1-cdk46p1-cycdp1 p27p1-cdk46p1p2-cycd
  p27p1-cdk46p1p2-cycdp1 p27p1-cdk46p2-cycd p27p1-cdk46p2-cycdp1 p53-dp12p1
  p53p1-dp12p1 p57-cdk2p1-cyca p57-cdk2p1p2-cyca p57-cdk2p2-cyca
  p57-cdk2p2-cyce p57-cdk46-cycdp1 p57-cdk46p2-cycd p57-cdk46p2-cycdp1
  p57p1-cdk46-cycd p57p1-cdk46-cycdp1 p57p1-cdk46p2-cycd p57p1-cdk46p2-cycdp1
  pcna-p21-cdk2-cyce pcna-p21-cdk2-cycep1 pcna-p21-cdk2p2-cyca
  pcna-p21-cdk46-cycd pcna-p21-cdk46-cycdp1 pcna-p21-cdk46p2-cycd
  pcna-p21-cdk46p2-cycdp1 raf1-cdc25a raf1-prbp1-e2f13-dp12p1-ge2
  raf1-prbp1-e2f4-dp12-ge2 skp1p1 sp1-e2f13p1 sp1-e2f13p1-gp - complex)
 (:functions (total-cost) - number)
 (:action ugly11820ugly11849ugly11837ugly38ugly2ugly38ugly2dummy-action-33
  :parameters () :precondition
  (or (available p21-cdk46p1-cycd) (available cdk46-cycd)) :effect
  (and (goal33)))
 (:action ugly11821ugly11848ugly11851ugly21ugly7ugly40ugly26dummy-action-4
  :parameters () :precondition
  (or (available p27-cdk2-cyce) (available p27p1-cdk46p2-cycd)) :effect
  (and (goal4)))
 (:action ugly11822ugly11853ugly11861ugly3ugly12ugly8ugly15dummy-action-19
  :parameters () :precondition
  (or (available dmp1p1-cycd) (available p27-cdk2-cyca)) :effect
  (and (goal19)))
 (:action ugly11823ugly11852ugly11838ugly14ugly6ugly32ugly35dummy-action-6
  :parameters () :precondition
  (or (available pcna-p21-cdk46p2-cycd) (available p27p1-cdk2p2-cycep1))
  :effect (and (goal6)))
 (:action ugly11824ugly11845ugly11827ugly12ugly8ugly15ugly24synthesize
  :parameters (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly11825ugly11826ugly11860ugly35ugly11ugly31ugly4dummy-action-24
  :parameters () :precondition
  (or (available p21-cdk2p2-cyce) (available cdc25a)) :effect (and (goal24)))
 (:action ugly11826ugly11860ugly11854ugly45ugly3ugly12ugly8dummy-action-10
  :parameters () :precondition
  (or (available p21-cdk2-cyca) (available p27-cdk2p2-cycep1)) :effect
  (and (goal10)))
 (:action ugly11827ugly11831ugly11839ugly44ugly27ugly1ugly37dummy-action-12
  :parameters () :precondition
  (or (available cdk2p1p2-cyca-e2f13p1) (available cdk2-cyca)) :effect
  (and (goal12)))
 (:action ugly11828ugly11843ugly11855ugly23ugly20ugly19ugly16dummy-action-25
  :parameters () :precondition
  (or (available p27p1-cdk2p1-cyca) (available pcna-p21-cdk2p2-cyca)) :effect
  (and (goal25)))
 (:action ugly11829ugly11844ugly11830ugly39ugly39ugly39ugly39dummy-action-34
  :parameters () :precondition
  (or (available p27p1-cdk2p2-cyce) (available cebp-prbp1p2)) :effect
  (and (goal34)))
 (:action ugly11830ugly11858ugly11862ugly4ugly29ugly36ugly22dummy-action-39
  :parameters () :precondition
  (or (available pcna-p21-cdk46-cycd) (available p27p1-cdk46p2-cycdp1)) :effect
  (and (goal39)))
 (:action ugly11831ugly11839ugly11863ugly2ugly38ugly2ugly38initialize
  :parameters (?x - simple) :precondition (and (chosen ?x)) :effect
  (and (available ?x)))
 (:action ugly11832ugly11832ugly11832ugly13ugly25ugly41ugly34dummy-action-23
  :parameters () :precondition
  (or (available p53p1-dp12p1) (available pcna-p21-cdk46p2-cycdp1)) :effect
  (and (goal23)))
 (:action ugly11833ugly11820ugly11849ugly18ugly43ugly45ugly3dummy-action-7
  :parameters () :precondition
  (or (available p57p1-cdk46-cycdp1) (available p57-cdk46p2-cycd)) :effect
  (and (goal7)))
 (:action ugly11834ugly11859ugly11828ugly24ugly5ugly14ugly6dummy-action-27
  :parameters () :precondition
  (or (available cdk2p2-cyce) (available raf1-prbp1-e2f4-dp12-ge2)) :effect
  (and (goal27)))
 (:action ugly11835ugly11850ugly11824ugly26ugly9ugly10ugly18dummy-action-38
  :parameters () :precondition
  (or (available p27p1-cdk46p1-cycd) (available cdk2p2-cyca)) :effect
  (and (goal38)))
 (:action ugly11836ugly11846ugly11856ugly6ugly32ugly35ugly11dummy-action-26
  :parameters () :precondition
  (or (available p27-cdk46-cycdp1) (available pcna-p21-cdk2-cyce)) :effect
  (and (goal26)))
 (:action ugly11837ugly11857ugly11841ugly17ugly13ugly25ugly41dummy-action-29
  :parameters () :precondition
  (or (available pcna-p21-cdk2-cycep1) (available p130-e2f5-dp12-ge2)) :effect
  (and (goal29)))
 (:action ugly11838ugly11833ugly11820ugly30ugly23ugly20ugly19dummy-action-11
  :parameters () :precondition
  (or (available cdk2p2-cyca-e2f13) (available p21-cdk46p2-cycd)) :effect
  (and (goal11)))
 (:action ugly11839ugly11863ugly11821ugly29ugly36ugly22ugly44dummy-action-22
  :parameters () :precondition
  (or (available pcna-p21-cdk46-cycdp1) (available p57-cdk46-cycdp1)) :effect
  (and (goal22)))
 (:action ugly11840ugly11829ugly11844ugly11ugly31ugly4ugly29dummy-action-31
  :parameters () :precondition
  (or (available p57-cdk46p2-cycdp1) (available p57-cdk2p1-cyca)) :effect
  (and (goal31)))
 (:action ugly11841ugly11836ugly11846ugly37ugly17ugly13ugly25dummy-action-36
  :parameters () :precondition
  (or (available p27p1-cdk2p1p2-cycep1) (available p27p1-cdk46p1p2-cycdp1))
  :effect (and (goal36)))
 (:action ugly11842ugly11847ugly11834ugly40ugly26ugly9ugly10dummy-action-13
  :parameters () :precondition
  (or (available cdk2p2-cycep1) (available p57p1-cdk46p2-cycdp1)) :effect
  (and (goal13)))
 (:action ugly11843ugly11855ugly11842ugly28ugly21ugly7ugly40dummy-action-21
  :parameters () :precondition
  (or (available p130-e2f4-dp12-ge2) (available p27p1-cdk2-cycep1)) :effect
  (and (goal21)))
 (:action ugly11844ugly11830ugly11858ugly43ugly45ugly3ugly12dummy-action-3
  :parameters () :precondition
  (or (available cdc25ap1) (available cdk2p1-cyca-e2f13p1)) :effect
  (and (goal3)))
 (:action ugly11845ugly11827ugly11831ugly20ugly19ugly16ugly30dummy-action-18
  :parameters () :precondition
  (or (available cdk2p2-cyca-e2f13p1) (available p27p1-cdk2p1p2-cyce)) :effect
  (and (goal18)))
 (:action ugly11846ugly11856ugly11825ugly7ugly40ugly26ugly9dummy-action-5
  :parameters () :precondition
  (or (available p57-cdk2p2-cyca) (available p21-cdk2p2-cycep1)) :effect
  (and (goal5)))
 (:action ugly11847ugly11834ugly11859ugly9ugly10ugly18ugly43dummy-action-40
  :parameters () :precondition
  (or (available p27p1-cdk46-cycd) (available p21-cdk46-cycdp1)) :effect
  (and (goal40)))
 (:action ugly11848ugly11851ugly11840ugly10ugly18ugly43ugly45associate
  :parameters (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (not (available ?x2))
       (available ?x3)))
 (:action ugly11849ugly11837ugly11857ugly22ugly44ugly27ugly1dummy-action-32
  :parameters () :precondition
  (or (available p27p1-cdk2-cyce) (available skp1p1)) :effect (and (goal32)))
 (:action ugly11850ugly11824ugly11845ugly8ugly15ugly24ugly5dummy-action-9
  :parameters () :precondition
  (or (available p57-cdk2p2-cyce) (available e2f13p1)) :effect (and (goal9)))
 (:action ugly11851ugly11840ugly11829ugly25ugly41ugly34ugly28dummy-action-16
  :parameters () :precondition
  (or (available cebp-prbp1-gp) (available p21-cdk46-cycd)) :effect
  (and (goal16)))
 (:action ugly11852ugly11838ugly11833ugly1ugly37ugly17ugly13dummy-action-20
  :parameters () :precondition
  (or (available cdk2-cyca-e2f13p1) (available p53-dp12p1)) :effect
  (and (goal20)))
 (:action ugly11853ugly11861ugly11822ugly34ugly28ugly21ugly7dummy-action-35
  :parameters () :precondition
  (or (available sp1-e2f13p1) (available p27-cdk46p2-cycd)) :effect
  (and (goal35)))
 (:action ugly11854ugly11864ugly11835ugly31ugly4ugly29ugly36dummy-action-17
  :parameters () :precondition
  (or (available hdac1-p107-e2f4-dp12-ge2) (available p27p1-cdk2p1-cycep1))
  :effect (and (goal17)))
 (:action ugly11855ugly11842ugly11847ugly15ugly24ugly5ugly14dummy-action-1
  :parameters () :precondition
  (or (available p57-cdk2p1p2-cyca) (available sp1-e2f13p1-gp)) :effect
  (and (goal1)))
 (:action ugly11856ugly11825ugly11826ugly41ugly34ugly28ugly21dummy-action-2
  :parameters () :precondition
  (or (available p27p1-cdk2-cyca) (available p57p1-cdk46p2-cycd)) :effect
  (and (goal2)))
 (:action ugly11857ugly11841ugly11836ugly27ugly1ugly37ugly17dummy-action-8
  :parameters () :precondition
  (or (available raf1-prbp1-e2f13-dp12p1-ge2) (available p27-cdk46p2-cycdp1))
  :effect (and (goal8)))
 (:action ugly11858ugly11862ugly11823ugly33ugly33ugly33ugly33dummy-action-28
  :parameters () :precondition
  (or (available p21-cdk46p2-cycdp1) (available p27p1-cdk2p1-cyce)) :effect
  (and (goal28)))
 (:action ugly11859ugly11828ugly11843ugly36ugly22ugly44ugly27choose :parameters
  (?x - simple ?l1 ?l2 - level) :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly11860ugly11854ugly11864ugly16ugly30ugly23ugly20dummy-action-14
  :parameters () :precondition (or (available raf1-cdc25a) (available ercc1))
  :effect (and (goal14)))
 (:action ugly11861ugly11822ugly11853ugly42ugly42ugly42ugly42dummy-action-37
  :parameters () :precondition
  (or (available p27p1-cdk2p2-cyca) (available p57p1-cdk46-cycd)) :effect
  (and (goal37)))
 (:action ugly11862ugly11823ugly11852ugly19ugly16ugly30ugly23dummy-action-15
  :parameters () :precondition
  (or (available dmp1p1-gp19arf) (available p27p1-cdk46p1-cycdp1)) :effect
  (and (goal15)))
 (:action
  ugly11863ugly11821ugly11848ugly32ugly35ugly11ugly31associate-with-catalyze
  :parameters (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (available ?x3)))
 (:action ugly11864ugly11835ugly11850ugly5ugly14ugly6ugly32dummy-action-30
  :parameters () :precondition
  (or (available p27p1-cdk46p1p2-cycd) (available cdk46p2-cycd)) :effect
  (and (goal30)))) 