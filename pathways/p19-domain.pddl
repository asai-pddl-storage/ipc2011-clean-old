
(define (domain pathways-propositional) (:requirements :typing :adl)
 (:predicates (goal23)
  (catalyzed-association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal7)
  (goal19) (chosen ?s - simple)
  (association-reaction ?x1 ?x2 - molecule ?x3 - complex) (goal3) (goal16)
  (possible ?x - molecule) (next ?l1 ?l2 - level)
  (synthesis-reaction ?x1 ?x2 - molecule) (goal15) (goal21) (goal18) (goal20)
  (goal24) (goal26) (goal2) (goal14) (goal11) (goal5) (goal1)
  (available ?x - molecule) (num-subs ?l - level) (goal9) (goal13) (goal8)
  (goal22) (goal12) (goal4) (goal17) (goal25) (goal6) (goal10))
 (:types level molecule - object simple complex - molecule)
 (:constants cdc25a cdc25ap1 cdk2-cyca cdk2-cyca-e2f13p1 cdk2-cyce
  cdk2p1-cyca-e2f13p1 cdk2p1-cyce cdk2p1p2-cyca cdk46-cycd cdk46p2-cycdp1
  cebp-prbp1p2-gp cyce dmp1-cycd hdac1-p107-e2f4-dp12-ge2
  hdac1-p130-e2f5-dp12p1 hdac1-prb-e2f4-dp12 p107-e2f4-dp12 p16-cdk46
  p16-cdk7p1 p21-cdk2-cyca p21-cdk2-cyce p21-cdk2p2-cyce p27-cdk2-cyca
  p27-cdk2p1-cycep1 p27-cdk2p2-cyca p27-cdk46-cycd p27-cdk46-cycdp1
  p27-cdk46p1-cycd p27-cdk46p2-cycdp1 p27p1-cdk2-cyca p27p1-cdk2-cyce
  p27p1-cdk2-cycep1 p27p1-cdk46p1-cycd p27p1-cdk46p2-cycdp1 p53-dp12p1
  p57-cdk2p2-cyce p57-cdk46p2-cycdp1 p57p1-cdk46-cycd p68p1 pcna-p21-cdk2-cyca
  pcna-p21-cdk2-cyce pcna-p21-cdk2p1-cycep1 prbp1-e2f4-dp12-ge2
  prbp1p2-jun-c-fos-gercc1 prbp2-jun-c-fos raf1-cdc25a raf1-cdc25ap1
  raf1-prb-e2f13p1-dp12p1 raf1-prbp1-e2f13-dp12p1-ge2 skp2p1 sp1-e2f13p1
  sp1-e2f13p1-gp - complex)
 (:action ugly1434692ugly27ugly11ugly4ugly1dummy-action-10 :parameters ()
  :precondition (or (available p107-e2f4-dp12) (available cdk2p1-cyce)) :effect
  (and (goal10)))
 (:action ugly1434693ugly29ugly7ugly9ugly25dummy-action-16 :parameters ()
  :precondition (or (available p27-cdk2-cyca) (available p16-cdk7p1)) :effect
  (and (goal16)))
 (:action ugly1434694ugly7ugly9ugly25ugly21dummy-action-24 :parameters ()
  :precondition (or (available sp1-e2f13p1) (available p57-cdk2p2-cyce))
  :effect (and (goal24)))
 (:action ugly1434695ugly14ugly5ugly3ugly23dummy-action-21 :parameters ()
  :precondition
  (or (available pcna-p21-cdk2-cyca) (available p27p1-cdk46p2-cycdp1)) :effect
  (and (goal21)))
 (:action ugly1434696ugly28ugly30ugly31ugly17initialize :parameters
  (?x - simple) :precondition (and (chosen ?x)) :effect (and (available ?x)))
 (:action ugly1434697ugly22ugly28ugly30ugly31dummy-action-12 :parameters ()
  :precondition (or (available p68p1) (available pcna-p21-cdk2-cyce)) :effect
  (and (goal12)))
 (:action ugly1434698ugly10ugly12ugly16ugly14synthesize :parameters
  (?x1 ?x2 - molecule) :precondition
  (and (synthesis-reaction ?x1 ?x2) (available ?x1)) :effect
  (and (available ?x2)))
 (:action ugly1434699ugly30ugly31ugly17ugly2dummy-action-15 :parameters ()
  :precondition
  (or (available raf1-prbp1-e2f13-dp12p1-ge2) (available cdc25ap1)) :effect
  (and (goal15)))
 (:action ugly1434700ugly8ugly24ugly18ugly19dummy-action-22 :parameters ()
  :precondition (or (available p27-cdk2p1-cycep1) (available p21-cdk2-cyca))
  :effect (and (goal22)))
 (:action ugly1434701ugly4ugly1ugly15ugly10dummy-action-7 :parameters ()
  :precondition (or (available p27p1-cdk46p1-cycd) (available p27-cdk2p2-cyca))
  :effect (and (goal7)))
 (:action ugly1434702ugly2ugly20ugly8ugly24dummy-action-13 :parameters ()
  :precondition (or (available p16-cdk46) (available dmp1-cycd)) :effect
  (and (goal13)))
 (:action ugly1434703ugly25ugly21ugly29ugly7dummy-action-4 :parameters ()
  :precondition (or (available sp1-e2f13p1-gp) (available p27p1-cdk2-cyce))
  :effect (and (goal4)))
 (:action ugly1434704ugly12ugly16ugly14ugly5associate :parameters
  (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (association-reaction ?x1 ?x2 ?x3) (available ?x1) (available ?x2))
  :effect (and (not (available ?x1)) (not (available ?x2)) (available ?x3)))
 (:action ugly1434705ugly3ugly23ugly26ugly6dummy-action-8 :parameters ()
  :precondition (or (available p21-cdk2-cyce) (available p27p1-cdk2-cyca))
  :effect (and (goal8)))
 (:action ugly1434706ugly26ugly6ugly13ugly22dummy-action-23 :parameters ()
  :precondition
  (or (available hdac1-prb-e2f4-dp12) (available p27-cdk46p2-cycdp1)) :effect
  (and (goal23)))
 (:action ugly1434707ugly1ugly15ugly10ugly12dummy-action-11 :parameters ()
  :precondition
  (or (available cdk2p1p2-cyca) (available hdac1-p107-e2f4-dp12-ge2)) :effect
  (and (goal11)))
 (:action ugly1434708ugly13ugly22ugly28ugly30dummy-action-26 :parameters ()
  :precondition (or (available cdk46-cycd) (available skp2p1)) :effect
  (and (goal26)))
 (:action ugly1434709ugly19ugly27ugly11ugly4choose :parameters
  (?x - simple ?l1 ?l2 - level) :precondition
  (and (possible ?x) (not (chosen ?x)) (num-subs ?l2) (next ?l1 ?l2)) :effect
  (and (chosen ?x) (not (num-subs ?l2)) (num-subs ?l1)))
 (:action ugly1434710ugly31ugly17ugly2ugly20dummy-action-3 :parameters ()
  :precondition (or (available cyce) (available raf1-cdc25ap1)) :effect
  (and (goal3)))
 (:action ugly1434711ugly15ugly10ugly12ugly16dummy-action-9 :parameters ()
  :precondition (or (available cdk2p1-cyca-e2f13p1) (available p27-cdk46-cycd))
  :effect (and (goal9)))
 (:action ugly1434712ugly11ugly4ugly1ugly15dummy-action-5 :parameters ()
  :precondition
  (or (available raf1-prb-e2f13p1-dp12p1) (available prbp2-jun-c-fos)) :effect
  (and (goal5)))
 (:action ugly1434713ugly6ugly13ugly22ugly28dummy-action-25 :parameters ()
  :precondition (or (available cdk2-cyca-e2f13p1) (available cdk2-cyce))
  :effect (and (goal25)))
 (:action ugly1434714ugly24ugly18ugly19ugly27dummy-action-6 :parameters ()
  :precondition (or (available cebp-prbp1p2-gp) (available p53-dp12p1)) :effect
  (and (goal6)))
 (:action ugly1434715ugly23ugly26ugly6ugly13dummy-action-17 :parameters ()
  :precondition (or (available cdc25a) (available cdk46p2-cycdp1)) :effect
  (and (goal17)))
 (:action ugly1434716ugly16ugly14ugly5ugly3dummy-action-18 :parameters ()
  :precondition
  (or (available prbp1p2-jun-c-fos-gercc1) (available pcna-p21-cdk2p1-cycep1))
  :effect (and (goal18)))
 (:action ugly1434717ugly21ugly29ugly7ugly9dummy-action-20 :parameters ()
  :precondition
  (or (available p27-cdk46p1-cycd) (available prbp1-e2f4-dp12-ge2)) :effect
  (and (goal20)))
 (:action ugly1434718ugly20ugly8ugly24ugly18dummy-action-14 :parameters ()
  :precondition (or (available p27p1-cdk2-cycep1) (available p21-cdk2p2-cyce))
  :effect (and (goal14)))
 (:action ugly1434719ugly17ugly2ugly20ugly8dummy-action-19 :parameters ()
  :precondition
  (or (available p57-cdk46p2-cycdp1) (available p57p1-cdk46-cycd)) :effect
  (and (goal19)))
 (:action ugly1434720ugly9ugly25ugly21ugly29dummy-action-2 :parameters ()
  :precondition (or (available hdac1-p130-e2f5-dp12p1) (available cdk2-cyca))
  :effect (and (goal2)))
 (:action ugly1434721ugly18ugly19ugly27ugly11associate-with-catalyze
  :parameters (?x1 ?x2 - molecule ?x3 - complex) :precondition
  (and (catalyzed-association-reaction ?x1 ?x2 ?x3) (available ?x1)
       (available ?x2))
  :effect (and (not (available ?x1)) (available ?x3)))
 (:action ugly1434722ugly5ugly3ugly23ugly26dummy-action-1 :parameters ()
  :precondition (or (available p27-cdk46-cycdp1) (available raf1-cdc25a))
  :effect (and (goal1)))) 