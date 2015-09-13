
(define (domain pathways-propositional)
 (:requirements :typing :adl :action-costs)
 (:predicates (goal26) (goal4) (goal27) (goal37) (goal24)
  (next ?l1 ?l2 - level) (goal9) (goal19) (goal11) (chosen ?s - simple)
  (goal12) (goal13) (goal16) (goal33)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal35) (goal7)
  (goal1) (goal3) (available ?x - molecule) (goal14) (goal25) (goal29) (goal36)
  (goal5) (goal10) (goal2) (goal20) (goal17) (goal34) (num-subs ?l - level)
  (synthesis-reaction ?x1 ?x2 - molecule) (goal18)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal31)
  (goal22) (goal28) (goal30) (goal8) (goal15) (goal23) (goal6) (goal21)
  (possible ?x - molecule) (goal32))
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
 (:action
  ugly11734ugly11740ugly11758ugly11738ugly11749ugly21ugly17ugly29ugly1associate
  :parameters (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (not (available ?x2))
       (available ?x3)))
 (:action
  ugly11735ugly11756ugly11746ugly11750ugly11741ugly22ugly7ugly33ugly5dummy-action-25
  :parameters () :precondition
  (or (available skp2-cdk2p1p2-cyca) (available p57p1-cdk46p1p2-cycd)) :effect
  (and (goal25)))
 (:action
  ugly11736ugly11734ugly11740ugly11758ugly11738ugly16ugly27ugly6ugly15dummy-action-13
  :parameters () :precondition (or (available cdk46) (available cyca)) :effect
  (and (goal13)))
 (:action
  ugly11737ugly11760ugly11744ugly11775ugly11752ugly31ugly37ugly35ugly2dummy-action-33
  :parameters () :precondition
  (or (available p57-cdk2p1-cyca) (available skp2-cdk2p2-cyca)) :effect
  (and (goal33)))
 (:action
  ugly11738ugly11749ugly11754ugly11743ugly11742ugly34ugly12ugly32ugly10dummy-action-6
  :parameters () :precondition
  (or (available cdk46p2-cycdp1) (available p21-cdk46-cycdp1)) :effect
  (and (goal6)))
 (:action
  ugly11739ugly11766ugly11768ugly11736ugly11734ugly7ugly33ugly5ugly30dummy-action-20
  :parameters () :precondition
  (or (available c-myc-max) (available cdk2-cyca-e2f13p1)) :effect
  (and (goal20)))
 (:action
  ugly11740ugly11758ugly11738ugly11749ugly11754ugly10ugly11ugly19ugly28associate-with-catalyze
  :parameters (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect
  (and (increase (total-cost) 1) (not (available ?x1)) (available ?x3)))
 (:action
  ugly11741ugly11755ugly11739ugly11766ugly11768ugly3ugly39ugly14ugly20dummy-action-29
  :parameters () :precondition (or (available prbp1p2-jun) (available dp12p1))
  :effect (and (goal29)))
 (:action
  ugly11742ugly11767ugly11773ugly11753ugly11765ugly26ugly42ugly26ugly42dummy-action-21
  :parameters () :precondition
  (or (available sp1-e2f13p1) (available p21-cdk46p1-cycd)) :effect
  (and (goal21)))
 (:action
  ugly11743ugly11742ugly11767ugly11773ugly11753ugly32ugly10ugly11ugly19dummy-action-23
  :parameters () :precondition
  (or (available p21-cdk2p1-cyca) (available p16-cdk7p1)) :effect
  (and (goal23)))
 (:action
  ugly11744ugly11775ugly11752ugly11764ugly11745ugly29ugly1ugly3ugly39dummy-action-9
  :parameters () :precondition
  (or (available pcna-p21-cdk46p2-cycdp1) (available raf1-cdc25a)) :effect
  (and (goal9)))
 (:action
  ugly11745ugly11762ugly11763ugly11761ugly11737ugly27ugly6ugly15ugly18dummy-action-31
  :parameters () :precondition
  (or (available pcna-p21-cdk2p1p2-cyce) (available sp1-p107p1-gp)) :effect
  (and (goal31)))
 (:action
  ugly11746ugly11750ugly11741ugly11755ugly11739ugly33ugly5ugly30ugly25dummy-action-18
  :parameters () :precondition
  (or (available cdk2p1-cyca-e2f13p1) (available cdk2p2-cyca-e2f13p1)) :effect
  (and (goal18)))
 (:action
  ugly11747ugly11747ugly11747ugly11747ugly11747ugly14ugly20ugly34ugly12dummy-action-27
  :parameters () :precondition
  (or (available cdk2p1-cyce) (available cdk2-cyce)) :effect (and (goal27)))
 (:action
  ugly11748ugly11735ugly11756ugly11746ugly11750ugly8ugly41ugly8ugly41dummy-action-3
  :parameters () :precondition
  (or (available pcna-p21-cdk46-cycd) (available p57p1-cdk46-cycdp1)) :effect
  (and (goal3)))
 (:action
  ugly11749ugly11754ugly11743ugly11742ugly11767ugly40ugly40ugly40ugly40dummy-action-35
  :parameters () :precondition
  (or (available m1433-cdc25cp1p2) (available p57-cdk2p2-cyca)) :effect
  (and (goal35)))
 (:action
  ugly11750ugly11741ugly11755ugly11739ugly11766ugly35ugly2ugly38ugly24dummy-action-26
  :parameters () :precondition
  (or (available raf1-p130-e2f5-dp12-ge2) (available p57-cdk2p1p2-cycep1))
  :effect (and (goal26)))
 (:action
  ugly11751ugly11748ugly11735ugly11756ugly11746ugly17ugly29ugly1ugly3dummy-action-34
  :parameters () :precondition
  (or (available prbp1-e2f13-dp12-ge2) (available p16-cdk46p1p2)) :effect
  (and (goal34)))
 (:action
  ugly11752ugly11764ugly11745ugly11762ugly11763ugly28ugly4ugly13ugly21dummy-action-12
  :parameters () :precondition
  (or (available pcna-p21-cdk46-cycdp1) (available p57-cdk46p2-cycdp1)) :effect
  (and (goal12)))
 (:action
  ugly11753ugly11765ugly11759ugly11751ugly11748ugly2ugly38ugly24ugly31dummy-action-32
  :parameters () :precondition
  (or (available pcna-p21-cdk2-cyca) (available p19arf)) :effect
  (and (goal32)))
 (:action
  ugly11754ugly11743ugly11742ugly11767ugly11773ugly20ugly34ugly12ugly32dummy-action-5
  :parameters () :precondition
  (or (available hdac1-p130-e2f5-dp12p1) (available p57-cdk46p2-cycd)) :effect
  (and (goal5)))
 (:action
  ugly11755ugly11739ugly11766ugly11768ugly11736ugly1ugly3ugly39ugly14dummy-action-15
  :parameters () :precondition
  (or (available p57-cdk46-cycd) (available cdk2p1p2-cyca-e2f13p1)) :effect
  (and (goal15)))
 (:action
  ugly11756ugly11746ugly11750ugly11741ugly11755ugly6ugly15ugly18ugly36dummy-action-4
  :parameters () :precondition
  (or (available p16-cdk46p2) (available p21-cdk46p2-cycdp1)) :effect
  (and (goal4)))
 (:action
  ugly11757ugly11770ugly11771ugly11769ugly11774ugly24ugly31ugly37ugly35initialize
  :parameters (?x - simple) :precondition (and (chosen ?x)) :effect
  (and (available ?x)))
 (:action
  ugly11758ugly11738ugly11749ugly11754ugly11743ugly9ugly16ugly27ugly6dummy-action-10
  :parameters () :precondition (or (available p16-cdk46) (available cdc25ap1))
  :effect (and (goal10)))
 (:action
  ugly11759ugly11751ugly11748ugly11735ugly11756ugly13ugly21ugly17ugly29choose
  :parameters (?x - simple ?l1 ?l2 - level) :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action
  ugly11760ugly11744ugly11775ugly11752ugly11764ugly12ugly32ugly10ugly11dummy-action-14
  :parameters () :precondition
  (or (available p57-cdk46-cycdp1) (available p57p1-cdk46p2-cycd)) :effect
  (and (goal14)))
 (:action
  ugly11761ugly11737ugly11760ugly11744ugly11775ugly19ugly28ugly4ugly13dummy-action-16
  :parameters () :precondition
  (or (available p21-cdk46p2-cycd) (available p53p1-dp12p1)) :effect
  (and (goal16)))
 (:action
  ugly11762ugly11763ugly11761ugly11737ugly11760ugly11ugly19ugly28ugly4dummy-action-8
  :parameters () :precondition
  (or (available cdk46p2) (available sp1-e2f13p1-gp)) :effect (and (goal8)))
 (:action
  ugly11763ugly11761ugly11737ugly11760ugly11744ugly42ugly26ugly42ugly26dummy-action-37
  :parameters () :precondition
  (or (available skp2p1) (available raf1-prbp1-e2f13p1-dp12p1-ge2)) :effect
  (and (goal37)))
 (:action
  ugly11764ugly11745ugly11762ugly11763ugly11761ugly4ugly13ugly21ugly17dummy-action-24
  :parameters () :precondition
  (or (available mdm2-e2f13-dp12) (available p57-cdk2p2-cyce)) :effect
  (and (goal24)))
 (:action
  ugly11765ugly11759ugly11751ugly11748ugly11735ugly23ugly22ugly7ugly33synthesize
  :parameters (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action
  ugly11766ugly11768ugly11736ugly11734ugly11740ugly25ugly23ugly22ugly7dummy-action-28
  :parameters () :precondition
  (or (available cdk2p1p2-cyca) (available p21-cdk2-cycep1)) :effect
  (and (goal28)))
 (:action
  ugly11767ugly11773ugly11753ugly11765ugly11759ugly18ugly36ugly9ugly16dummy-action-22
  :parameters () :precondition
  (or (available pcna-p21-cdk2p2-cyce) (available prbp1-jun-c-fos-gercc1))
  :effect (and (goal22)))
 (:action
  ugly11768ugly11736ugly11734ugly11740ugly11758ugly5ugly30ugly25ugly23dummy-action-17
  :parameters () :precondition
  (or (available prbp1p2-ap2) (available pcna-p21-cdk46p2-cycd)) :effect
  (and (goal17)))
 (:action
  ugly11769ugly11774ugly11757ugly11770ugly11771ugly36ugly9ugly16ugly27dummy-action-1
  :parameters () :precondition
  (or (available p57p1-cdk46-cycd) (available p57p1-cdk46p2-cycdp1)) :effect
  (and (goal1)))
 (:action
  ugly11770ugly11771ugly11769ugly11774ugly11757ugly37ugly35ugly2ugly38dummy-action-19
  :parameters () :precondition
  (or (available cdc25a) (available p21-cdk2p1p2-cyce)) :effect (and (goal19)))
 (:action
  ugly11771ugly11769ugly11774ugly11757ugly11770ugly38ugly24ugly31ugly37dummy-action-30
  :parameters () :precondition
  (or (available sp1-p107) (available p57-cdk2p1-cyce)) :effect (and (goal30)))
 (:action
  ugly11772ugly11772ugly11772ugly11772ugly11772ugly39ugly14ugly20ugly34dummy-action-7
  :parameters () :precondition
  (or (available cdk46-cycd) (available p21-cdk46-cycd)) :effect (and (goal7)))
 (:action
  ugly11773ugly11753ugly11765ugly11759ugly11751ugly15ugly18ugly36ugly9dummy-action-11
  :parameters () :precondition
  (or (available raf1-cdc25ap1) (available prbp2-ap2-ge-c)) :effect
  (and (goal11)))
 (:action
  ugly11774ugly11757ugly11770ugly11771ugly11769ugly41ugly8ugly41ugly8dummy-action-36
  :parameters () :precondition
  (or (available pcna-p21-cdk2p1-cyce) (available prbp1p2-ap2-ge-c)) :effect
  (and (goal36)))
 (:action
  ugly11775ugly11752ugly11764ugly11745ugly11762ugly30ugly25ugly23ugly22dummy-action-2
  :parameters () :precondition
  (or (available cdk46p2-cycd) (available cdk46-cycdp1)) :effect (and (goal2)))) 