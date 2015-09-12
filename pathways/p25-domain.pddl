
(define (domain pathways-propositional) (:requirements :typing :adl)
 (:predicates (num-subs ?l - level) (goal22)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal17)
  (goal26) (next ?l1 ?l2 - level) (goal18) (goal25) (goal11) (goal5) (goal1)
  (goal9) (goal29) (goal14) (goal3) (goal21)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal30) (goal16)
  (goal4) (goal28) (goal27) (possible ?x - molecule) (goal33) (goal2) (goal23)
  (goal12) (goal19) (synthesis-reaction ?x1 ?x2 - molecule) (goal15) (goal13)
  (goal24) (goal7) (goal32) (goal20) (goal10) (goal31)
  (available ?x - molecule) (goal6) (chosen ?s - simple) (goal8))
 (:types level molecule - object simple complex - molecule)
 (:constants cdc25a cdc25ap1 cdk1p1p2-gadd45 cdk1p2 cdk1p3-cks1 cdk1p3-cyca
  cdk1p3-cycb cdk1p3-gadd45 cdk2-cyca-e2f13p1 cdk2p1-cyca-e2f13p1
  cdk2p1p2-cyca-e2f13p1 cdk2p2-cyca-e2f13p1 cdk46 cdk46-cycd cdk46-cycdp1
  cdk46p2 cdk46p2-cycd cdk46p2-cycdp1 cebp-prbp1p2 c-myc-ap2 cycd e2f4-dp12-ge2
  ecadherin hdac1-p107-e2f4-dp12-ge2 hdac1-p130-e2f4-dp12 mdm2-e2f13p1-dp12
  mdm2-e2f13p1-dp12p1 p16-cdk46 p16-cdk46p2 p21-cdk46-cycd p21-cdk46-cycdp1
  p21-cdk46p2-cycd p21-cdk46p2-cycdp1 p53-dp12p1 p53p1-dp12p1 p57-cdk46-cycd
  p57-cdk46-cycdp1 p57-cdk46p2-cycd p57-cdk46p2-cycdp1 p57p1-cdk46-cycd
  p57p1-cdk46-cycdp1 p57p1-cdk46p2-cycd p57p1-cdk46p2-cycdp1 p68p1p2
  pcna-p21-cdk2p1p2-cyce pcna-p21-cdk46-cycd pcna-p21-cdk46-cycdp1
  pcna-p21-cdk46p2-cycd pcna-p21-cdk46p2-cycdp1 prbp1p2-ap2 raf1-cdc25a
  raf1-cdc25ap1 raf1-p130-e2f4-dp12-ge2 skp2p1 skp2p1-skp1 skp2p1-skp1p1
  skp2-skp1p1 skp2-skp1p1-cdk2-cyca skp2-skp1p1-cdk2p1-cyca
  skp2-skp1p1-cdk2p1p2-cyca skp2-skp1p1-cdk2p2-cyca sl1p1 sp1-e2f13p1
  sp1-e2f13p1-gp sp1-p107 wee1p1 - complex)
 (:action ugly1434893ugly20ugly38ugly18ugly10dummy-action-24 :parameters ()
  :precondition (or (available hdac1-p130-e2f4-dp12) (available cdc25ap1))
  :effect (and (goal24)))
 (:action ugly1434894ugly24ugly32ugly24ugly32dummy-action-19 :parameters ()
  :precondition (or (available cebp-prbp1p2) (available cdk1p3-cycb)) :effect
  (and (goal19)))
 (:action ugly1434895ugly16ugly22ugly36ugly28dummy-action-14 :parameters ()
  :precondition
  (or (available p57-cdk46-cycdp1) (available p21-cdk46p2-cycdp1)) :effect
  (and (goal14)))
 (:action ugly1434896ugly31ugly6ugly15ugly23dummy-action-12 :parameters ()
  :precondition
  (or (available p57-cdk46p2-cycd) (available pcna-p21-cdk46-cycdp1)) :effect
  (and (goal12)))
 (:action ugly1434897ugly37ugly11ugly25ugly14dummy-action-29 :parameters ()
  :precondition (or (available sp1-e2f13p1) (available skp2p1-skp1p1)) :effect
  (and (goal29)))
 (:action ugly1434898ugly30ugly8ugly9ugly16dummy-action-17 :parameters ()
  :precondition (or (available wee1p1) (available raf1-cdc25a)) :effect
  (and (goal17)))
 (:action ugly1434899ugly4ugly13ugly21ugly3synthesize :parameters
  (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly1434900ugly19ugly31ugly6ugly15dummy-action-18 :parameters ()
  :precondition
  (or (available skp2-skp1p1-cdk2p1p2-cyca) (available skp2-skp1p1-cdk2-cyca))
  :effect (and (goal18)))
 (:action ugly1434901ugly18ugly10ugly29ugly27choose :parameters
  (?x - simple ?l1 ?l2 - level) :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly1434902ugly36ugly28ugly19ugly31dummy-action-1 :parameters ()
  :precondition (or (available p16-cdk46) (available raf1-cdc25ap1)) :effect
  (and (goal1)))
 (:action ugly1434903ugly25ugly14ugly34ugly35dummy-action-7 :parameters ()
  :precondition (or (available cdk46-cycdp1) (available p57p1-cdk46-cycd))
  :effect (and (goal7)))
 (:action ugly1434904ugly23ugly17ugly20ugly38dummy-action-13 :parameters ()
  :precondition
  (or (available mdm2-e2f13p1-dp12p1) (available pcna-p21-cdk46p2-cycd))
  :effect (and (goal13)))
 (:action ugly1434905ugly34ugly35ugly12ugly2associate-with-catalyze :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect (and (not (available ?x1)) (available ?x3)))
 (:action ugly1434906ugly11ugly25ugly14ugly34dummy-action-30 :parameters ()
  :precondition (or (available skp2-skp1p1) (available mdm2-e2f13p1-dp12))
  :effect (and (goal30)))
 (:action ugly1434907ugly2ugly4ugly13ugly21associate :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect (and (not (available ?x1)) (not (available ?x2)) (available ?x3)))
 (:action ugly1434908ugly22ugly36ugly28ugly19dummy-action-26 :parameters ()
  :precondition (or (available cdk2p2-cyca-e2f13p1) (available p68p1p2))
  :effect (and (goal26)))
 (:action ugly1434909ugly15ugly23ugly17ugly20dummy-action-33 :parameters ()
  :precondition (or (available ecadherin) (available skp2p1)) :effect
  (and (goal33)))
 (:action ugly1434910ugly13ugly21ugly3ugly5dummy-action-25 :parameters ()
  :precondition (or (available sl1p1) (available cycd)) :effect (and (goal25)))
 (:action ugly1434911ugly7ugly33ugly7ugly33dummy-action-2 :parameters ()
  :precondition
  (or (available p21-cdk46-cycdp1) (available pcna-p21-cdk46-cycd)) :effect
  (and (goal2)))
 (:action ugly1434912ugly38ugly18ugly10ugly29dummy-action-22 :parameters ()
  :precondition
  (or (available skp2-skp1p1-cdk2p2-cyca) (available cdk1p3-cyca)) :effect
  (and (goal22)))
 (:action ugly1434913ugly35ugly12ugly2ugly4dummy-action-8 :parameters ()
  :precondition (or (available cdk46p2-cycdp1) (available e2f4-dp12-ge2))
  :effect (and (goal8)))
 (:action ugly1434914ugly28ugly19ugly31ugly6dummy-action-10 :parameters ()
  :precondition
  (or (available p57-cdk46p2-cycdp1) (available p21-cdk46p2-cycd)) :effect
  (and (goal10)))
 (:action ugly1434915ugly27ugly1ugly26ugly37dummy-action-6 :parameters ()
  :precondition (or (available prbp1p2-ap2) (available p57p1-cdk46p2-cycd))
  :effect (and (goal6)))
 (:action ugly1434916ugly29ugly27ugly1ugly26dummy-action-32 :parameters ()
  :precondition
  (or (available hdac1-p107-e2f4-dp12-ge2) (available cdk1p1p2-gadd45)) :effect
  (and (goal32)))
 (:action ugly1434917ugly10ugly29ugly27ugly1dummy-action-21 :parameters ()
  :precondition
  (or (available cdk2p1p2-cyca-e2f13p1) (available skp2-skp1p1-cdk2p1-cyca))
  :effect (and (goal21)))
 (:action ugly1434918ugly12ugly2ugly4ugly13dummy-action-16 :parameters ()
  :precondition (or (available cdk46) (available sp1-e2f13p1-gp)) :effect
  (and (goal16)))
 (:action ugly1434919ugly14ugly34ugly35ugly12initialize :parameters
  (?x - simple) :precondition (and (chosen ?x)) :effect (and (available ?x)))
 (:action ugly1434920ugly9ugly16ugly22ugly36dummy-action-23 :parameters ()
  :precondition
  (or (available p53p1-dp12p1) (available pcna-p21-cdk2p1p2-cyce)) :effect
  (and (goal23)))
 (:action ugly1434921ugly21ugly3ugly5ugly30dummy-action-3 :parameters ()
  :precondition (or (available p16-cdk46p2) (available c-myc-ap2)) :effect
  (and (goal3)))
 (:action ugly1434922ugly6ugly15ugly23ugly17dummy-action-15 :parameters ()
  :precondition (or (available p57p1-cdk46p2-cycdp1) (available cdk1p2))
  :effect (and (goal15)))
 (:action ugly1434923ugly8ugly9ugly16ugly22dummy-action-31 :parameters ()
  :precondition (or (available cdk2p1-cyca-e2f13p1) (available skp2p1-skp1))
  :effect (and (goal31)))
 (:action ugly1434924ugly1ugly26ugly37ugly11dummy-action-20 :parameters ()
  :precondition (or (available cdk1p3-cks1) (available p53-dp12p1)) :effect
  (and (goal20)))
 (:action ugly1434925ugly26ugly37ugly11ugly25dummy-action-9 :parameters ()
  :precondition
  (or (available cdk46p2-cycd) (available pcna-p21-cdk46p2-cycdp1)) :effect
  (and (goal9)))
 (:action ugly1434926ugly3ugly5ugly30ugly8dummy-action-4 :parameters ()
  :precondition (or (available p57-cdk46-cycd) (available cdk46-cycd)) :effect
  (and (goal4)))
 (:action ugly1434927ugly17ugly20ugly38ugly18dummy-action-5 :parameters ()
  :precondition (or (available p21-cdk46-cycd) (available p57p1-cdk46-cycdp1))
  :effect (and (goal5)))
 (:action ugly1434928ugly33ugly7ugly33ugly7dummy-action-28 :parameters ()
  :precondition (or (available cdc25a) (available sp1-p107)) :effect
  (and (goal28)))
 (:action ugly1434929ugly32ugly24ugly32ugly24dummy-action-27 :parameters ()
  :precondition
  (or (available cdk2-cyca-e2f13p1) (available raf1-p130-e2f4-dp12-ge2))
  :effect (and (goal27)))
 (:action ugly1434930ugly5ugly30ugly8ugly9dummy-action-11 :parameters ()
  :precondition (or (available cdk1p3-gadd45) (available cdk46p2)) :effect
  (and (goal11)))) 