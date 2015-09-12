
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (do-wait_cb1-condeffs) (closed-sd4) (closed-sd5) (not-closed-sd2)
  (done-1) (not-closed-cb1) (closed-cb1) (closed-cb2) (done-0) (not-closed-sd5)
  (do-close_sd7-condeffs) (do-wait_cb3-condeffs) (not-closed-sd4)
  (not-closed-sd7) (done-3) (closed-sd3) (not-updated-cb3) (not-updated-cb2)
  (not-closed-sd1) (do-close_sd4-condeffs) (done-2) (closed-sd1)
  (not-closed-cb3) (closed-sd2) (updated-cb3) (do-close_sd5-condeffs)
  (closed-sd6) (not-updated-cb1) (do-close_sd3-condeffs) (closed-sd7)
  (do-close_sd1-condeffs) (goal-reached) (not-closed-sd3) (not-closed-cb2)
  (updated-cb1) (not-closed-sd6) (closed-cb3) (updated-cb2) (do-normal)
  (do-close_sd6-condeffs) (do-close_sd2-condeffs))
 (:action ugly1436599ugly85ugly75ugly33ugly115close_sd6 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly1436600ugly146ugly77ugly35ugly134wait_cb1-condeff2-no-3
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd2))
  :effect (and (done-2)))
 (:action ugly1436601ugly24ugly113ugly32ugly136close_sd6-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd1) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1436602ugly149ugly163ugly31ugly111reach-goal-23 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-sd2) (closed-sd4) (closed-cb1) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436603ugly117ugly43ugly58ugly2close_sd2-condeff3-no-4
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-cb3))
  :effect (and (done-3)))
 (:action ugly1436604ugly34ugly158ugly130ugly36reach-goal-4 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd2) (closed-cb3) (closed-sd1) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436605ugly136ugly47ugly107ugly40wait_cb1-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd6))
  :effect (and (done-0)))
 (:action ugly1436606ugly73ugly83ugly118ugly146wait_cb1 :parameters ()
  :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly1436607ugly152ugly148ugly97ugly4close_sd5-condeff0-no-1
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action ugly1436608ugly144ugly143ugly117ugly43close_sd4-condeff0-no-3
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1436609ugly91ugly102ugly8ugly123close_sd2-condeff3-no-1
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd5))
  :effect (and (done-3)))
 (:action ugly1436610ugly47ugly107ugly40ugly79reach-goal-16 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd2) (closed-sd4) (closed-sd1) (closed-cb3) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436611ugly29ugly45ugly87ugly140wait_cb1-condeff2-yes :parameters
  () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd7) (closed-sd5) (closed-sd4)
       (closed-sd2))
  :effect (and (done-2) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1436612ugly71ugly39ugly48ugly94close_sd5-condeff1-no-0
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action ugly1436613ugly16ugly25ugly42ugly128reach-goal-12 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd2) (closed-cb3) (closed-sd1) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436614ugly72ugly151ugly103ugly37close_sd3-condeff1-no-1
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd1))
  :effect (and (done-1)))
 (:action ugly1436615ugly129ugly89ugly147ugly112reach-goal-10 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb3) (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436616ugly94ugly108ugly110ugly41close_sd5-condeff0-no-3
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1436617ugly43ugly58ugly2ugly132reach-goal-20 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd2) (closed-cb3) (closed-sd1) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436618ugly140ugly84ugly80ugly7wait_cb1-condeff0-yes :parameters
  () :precondition (and (do-wait_cb1-condeffs) (closed-sd6) (closed-sd1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1436619ugly27ugly23ugly135ugly139close_sd2-condeff2-no-1
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd1))
  :effect (and (done-2)))
 (:action ugly1436620ugly2ugly132ugly21ugly92reach-goal-28 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd2) (closed-cb3) (closed-sd1) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436621ugly159ugly131ugly59ugly62close_sd5 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action ugly1436622ugly101ugly70ugly109ugly142reach-goal-18 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb3) (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436623ugly138ugly1ugly90ugly155reach-goal-21 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-cb1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436624ugly36ugly5ugly105ugly9close_sd1-condeff1-yes :parameters
  () :precondition
  (and (do-close_sd1-condeffs) (closed-sd3) (closed-sd2) (closed-cb3)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1436625ugly14ugly26ugly141ugly152close_sd1-endof-condeffs
  :parameters () :precondition
  (and (do-close_sd1-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly1436626ugly53ugly162ugly50ugly124close_sd2-endof-condeffs
  :parameters () :precondition
  (and (do-close_sd2-condeffs) (done-0) (done-1) (done-2) (done-3)) :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2)) (not (done-3))))
 (:action ugly1436627ugly104ugly27ugly23ugly135close_sd1-condeff1-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd3))
  :effect (and (done-1)))
 (:action ugly1436628ugly21ugly92ugly29ugly45wait_cb1-condeff2-no-2 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd4)) :effect
  (and (done-2)))
 (:action ugly1436629ugly75ugly33ugly115ugly46open-cb3 :parameters ()
  :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1436630ugly121ugly91ugly102ugly8close_sd2-condeff2-yes
  :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd3) (closed-sd1) (closed-cb3)) :effect
  (and (done-2) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1436631ugly109ugly142ugly19ugly30wait_cb1-condeff1-yes
  :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd3) (closed-sd2)) :effect
  (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1436632ugly155ugly22ugly126ugly34wait_cb3-condeff1-no-3
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd2))
  :effect (and (done-1)))
 (:action ugly1436633ugly118ugly146ugly77ugly35close_sd1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly1436634ugly23ugly135ugly139ugly125close_sd3-endof-condeffs
  :parameters () :precondition (and (do-close_sd3-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1436635ugly42ugly128ugly13ugly16reach-goal-24 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd2) (closed-sd4) (closed-cb3) (closed-sd1) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436636ugly141ugly152ugly148ugly97reach-goal-3 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-sd2) (closed-cb1) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436637ugly95ugly63ugly120ugly85close_cb3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly1436638ugly4ugly104ugly27ugly23close_sd1-condeff0-yes :parameters
  () :precondition (and (do-close_sd1-condeffs) (closed-sd6) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1436639ugly9ugly138ugly1ugly90wait_cb3-condeff1-no-0 :parameters
  () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd7)) :effect
  (and (done-1)))
 (:action ugly1436640ugly148ugly97ugly4ugly104reach-goal-26 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb3) (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436641ugly93ugly12ugly52ugly56close_sd3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly1436642ugly56ugly66ugly49ugly76close_sd2-condeff3-yes :parameters
  () :precondition
  (and (do-close_sd2-condeffs) (closed-sd7) (closed-sd5) (closed-sd4)
       (closed-sd1) (closed-cb3))
  :effect (and (done-3) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1436643ugly33ugly115ugly46ugly98reach-goal-5 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-cb1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436644ugly90ugly155ugly22ugly126close_sd7-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd5) (closed-sd4) (closed-sd2)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1436645ugly124ugly133ugly20ugly71close_sd7-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd5) (closed-sd4) (closed-sd2)
       (closed-sd1) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1436646ugly102ugly8ugly123ugly129wait_cb1-endof-condeffs
  :parameters () :precondition
  (and (do-wait_cb1-condeffs) (done-0) (done-1) (done-2)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly1436647ugly77ugly35ugly134ugly88wait_cb3-condeff1-yes :parameters
  () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd7) (closed-sd5) (closed-sd4)
       (closed-sd2) (closed-sd1))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1436648ugly83ugly118ugly146ugly77close_sd7-condeff0-no-0
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd5))
  :effect (and (done-0)))
 (:action ugly1436649ugly107ugly40ugly79ugly17wait_cb3-condeff1-no-4
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd1))
  :effect (and (done-1)))
 (:action ugly1436650ugly26ugly141ugly152ugly148open-sd1 :parameters ()
  :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly1436651ugly123ugly129ugly89ugly147close_sd5-condeff1-no-4
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-cb3))
  :effect (and (done-1)))
 (:action ugly1436652ugly20ugly71ugly39ugly48open-sd4 :parameters ()
  :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly1436653ugly105ugly9ugly138ugly1close_cb1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly1436654ugly41ugly106ugly114ugly60wait_cb3-condeff0-yes
  :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd3) (closed-sd2) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1436655ugly89ugly147ugly112ugly11open-sd3 :parameters ()
  :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly1436656ugly30ugly81ugly149ugly163reach-goal-30 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb3) (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436657ugly80ugly7ugly78ugly144close_sd1-condeff2-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd7))
  :effect (and (done-2)))
 (:action ugly1436658ugly103ugly37ugly72ugly151close_sd5-condeff0-no-0
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action ugly1436659ugly59ugly62ugly101ugly70close_sd5-condeff1-no-1
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd4))
  :effect (and (done-1)))
 (:action ugly1436660ugly115ugly46ugly98ugly6wait_cb3-condeff2-yes :parameters
  () :precondition (and (do-wait_cb3-condeffs) (closed-sd6)) :effect
  (and (done-2) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1436661ugly135ugly139ugly125ugly74reach-goal-27 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-sd2) (closed-cb1) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436662ugly87ugly140ugly84ugly80reach-goal-6 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb3) (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436663ugly114ugly60ugly150ugly86close_sd2-condeff0-no-0
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1436664ugly66ugly49ugly76ugly127close_sd4-condeff1-no-4
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-cb3))
  :effect (and (done-1)))
 (:action ugly1436665ugly98ugly6ugly160ugly137wait_cb3-condeff0-no-2
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1436666ugly110ugly41ugly106ugly114close_sd4-condeff1-no-0
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action ugly1436667ugly154ugly61ugly10ugly82close_sd3-condeff0-no-0
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1436668ugly25ugly42ugly128ugly13reach-goal-15 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-sd2) (closed-sd4) (closed-cb1) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436669ugly127ugly64ugly54ugly156close_sd4-endof-condeffs
  :parameters () :precondition (and (do-close_sd4-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1436670ugly64ugly54ugly156ugly65reach-goal-2 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb3) (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436671ugly100ugly145ugly57ugly93reach-goal-11 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-sd2) (closed-cb1) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436672ugly120ugly85ugly75ugly33close_sd2-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd3) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1436673ugly163ugly31ugly111ugly24close_sd5-endof-condeffs
  :parameters () :precondition (and (do-close_sd5-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1436674ugly55ugly15ugly161ugly44reach-goal-17 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-cb1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436675ugly12ugly52ugly56ugly66close_sd6-condeff0-no-1
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1436676ugly133ugly20ugly71ugly39close_sd6-condeff0-no-0
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1436677ugly145ugly57ugly93ugly12close_sd6-endof-condeffs
  :parameters () :precondition (and (do-close_sd6-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1436678ugly81ugly149ugly163ugly31close_sd5-condeff1-no-3
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd1))
  :effect (and (done-1)))
 (:action ugly1436679ugly151ugly103ugly37ugly72wait_cb3-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1436680ugly5ugly105ugly9ugly138reach-goal-0 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd2) (closed-sd4) (closed-sd1) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436681ugly125ugly74ugly28ugly67open-sd2 :parameters ()
  :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly1436682ugly40ugly79ugly17ugly159close_sd2-condeff3-no-3
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd1))
  :effect (and (done-3)))
 (:action ugly1436683ugly156ugly65ugly3ugly51close_sd4 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly1436684ugly11ugly95ugly63ugly120wait_cb1-condeff2-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd7))
  :effect (and (done-2)))
 (:action ugly1436685ugly51ugly53ugly162ugly50close_sd2-condeff2-no-0
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd3))
  :effect (and (done-2)))
 (:action ugly1436686ugly106ugly114ugly60ugly150wait_cb1-condeff2-no-1
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd5))
  :effect (and (done-2)))
 (:action ugly1436687ugly128ugly13ugly16ugly25close_sd7-condeff1-no-2
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd2))
  :effect (and (done-1)))
 (:action ugly1436688ugly17ugly159ugly131ugly59close_sd4-condeff1-no-2
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd2))
  :effect (and (done-1)))
 (:action ugly1436689ugly119ugly99ugly121ugly91close_sd5-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-sd7) (closed-sd4) (closed-sd2)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1436690ugly49ugly76ugly127ugly64close_sd4-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd7) (closed-sd5) (closed-sd2)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1436691ugly97ugly4ugly104ugly27reach-goal-22 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb3) (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436692ugly13ugly16ugly25ugly42close_sd2-condeff3-no-0
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd7))
  :effect (and (done-3)))
 (:action ugly1436693ugly52ugly56ugly66ugly49close_cb2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly1436694ugly112ugly11ugly95ugly63close_sd2-condeff1-no-1
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd5))
  :effect (and (done-1)))
 (:action ugly1436695ugly8ugly123ugly129ugly89close_sd1-condeff2-no-4
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb3))
  :effect (and (done-2)))
 (:action ugly1436696ugly161ugly44ugly18ugly14reach-goal-25 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-cb1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436697ugly39ugly48ugly94ugly108close_sd5-condeff1-no-2
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd2))
  :effect (and (done-1)))
 (:action ugly1436698ugly60ugly150ugly86ugly116close_sd3-condeff0-no-1
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1436699ugly22ugly126ugly34ugly158close_sd2-condeff3-no-2
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd4))
  :effect (and (done-3)))
 (:action ugly1436700ugly113ugly32ugly136ugly47close_sd5-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-sd7) (closed-sd4) (closed-sd2)
       (closed-sd1) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1436701ugly82ugly68ugly38ugly73wait_cb1-condeff1-no-1 :parameters
  () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect
  (and (done-1)))
 (:action ugly1436702ugly108ugly110ugly41ugly106close_sd2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly1436703ugly86ugly116ugly69ugly100close_sd1-condeff2-no-2
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd4))
  :effect (and (done-2)))
 (:action ugly1436704ugly19ugly30ugly81ugly149wait_cb2 :parameters ()
  :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not-closed-cb2) (updated-cb2) (not (closed-cb2))
       (not (not-updated-cb2))))
 (:action ugly1436705ugly57ugly93ugly12ugly52close_sd4-condeff0-no-1
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd5))
  :effect (and (done-0)))
 (:action ugly1436706ugly7ugly78ugly144ugly143close_sd2-condeff0-no-1
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1436707ugly142ugly19ugly30ugly81wait_cb3 :parameters ()
  :precondition (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action ugly1436708ugly38ugly73ugly83ugly118close_sd1-condeff2-no-3
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd2))
  :effect (and (done-2)))
 (:action ugly1436709ugly116ugly69ugly100ugly145close_sd4-condeff0-no-2
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1436710ugly122ugly55ugly15ugly161close_sd7-condeff1-no-4
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-cb3))
  :effect (and (done-1)))
 (:action ugly1436711ugly46ugly98ugly6ugly160close_sd1-condeff0-no-1
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1436712ugly48ugly94ugly108ugly110close_sd7-condeff1-no-1
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd4))
  :effect (and (done-1)))
 (:action ugly1436713ugly45ugly87ugly140ugly84wait_cb1-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1436714ugly99ugly121ugly91ugly102reach-goal-7 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-sd2) (closed-sd4) (closed-cb1) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436715ugly10ugly82ugly68ugly38close_sd3-condeff1-no-2
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-cb3))
  :effect (and (done-1)))
 (:action ugly1436716ugly78ugly144ugly143ugly117close_sd7-condeff1-no-3
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd1))
  :effect (and (done-1)))
 (:action ugly1436717ugly63ugly120ugly85ugly75close_sd7 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly1436718ugly76ugly127ugly64ugly54wait_cb3-condeff1-no-1
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd5))
  :effect (and (done-1)))
 (:action ugly1436719ugly50ugly124ugly133ugly20close_sd3-condeff1-no-0
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd2))
  :effect (and (done-1)))
 (:action ugly1436720ugly67ugly96ugly119ugly99close_sd2-condeff1-no-2
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd4))
  :effect (and (done-1)))
 (:action ugly1436721ugly32ugly136ugly47ugly107close_sd7-condeff1-no-0
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd5))
  :effect (and (done-1)))
 (:action ugly1436722ugly162ugly50ugly124ugly133reach-goal-19 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-sd2) (closed-cb1) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436723ugly157ugly122ugly55ugly15wait_cb3-condeff2-no-0
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd6))
  :effect (and (done-2)))
 (:action ugly1436724ugly28ugly67ugly96ugly119open-cb2 :parameters ()
  :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1436725ugly62ugly101ugly70ugly109close_sd1-condeff2-yes
  :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd7) (closed-sd5) (closed-sd4)
       (closed-sd2) (closed-cb3))
  :effect (and (done-2) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1436726ugly88ugly154ugly61ugly10wait_cb1-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd3))
  :effect (and (done-1)))
 (:action ugly1436727ugly1ugly90ugly155ugly22close_sd2-condeff2-no-2
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-cb3))
  :effect (and (done-2)))
 (:action ugly1436728ugly84ugly80ugly7ugly78close_sd1-condeff2-no-1 :parameters
  () :precondition (and (do-close_sd1-condeffs) (not-closed-sd5)) :effect
  (and (done-2)))
 (:action ugly1436729ugly111ugly24ugly113ugly32close_sd1-condeff0-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd6))
  :effect (and (done-0)))
 (:action ugly1436730ugly150ugly86ugly116ugly69open-cb1 :parameters ()
  :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1436731ugly126ugly34ugly158ugly130close_sd7-condeff0-no-1
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action ugly1436732ugly130ugly36ugly5ugly105reach-goal-8 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-sd2) (closed-sd4) (closed-cb3) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436733ugly58ugly2ugly132ugly21open-sd6 :parameters ()
  :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly1436734ugly79ugly17ugly159ugly131close_sd4-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd7) (closed-sd5) (closed-sd2)
       (closed-sd1) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1436735ugly69ugly100ugly145ugly57open-sd5 :parameters ()
  :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly1436736ugly6ugly160ugly137ugly153wait_cb3-condeff1-no-2
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd4))
  :effect (and (done-1)))
 (:action ugly1436737ugly74ugly28ugly67ugly96close_sd2-condeff1-no-0
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action ugly1436738ugly37ugly72ugly151ugly103close_sd7-condeff0-no-2
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1436739ugly143ugly117ugly43ugly58reach-goal-1 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-cb1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436740ugly15ugly161ugly44ugly18reach-goal-13 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-cb1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436741ugly31ugly111ugly24ugly113reach-goal-31 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436742ugly35ugly134ugly88ugly154close_sd4-condeff1-no-1
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd5))
  :effect (and (done-1)))
 (:action ugly1436743ugly96ugly119ugly99ugly121open-sd7 :parameters ()
  :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly1436744ugly147ugly112ugly11ugly95close_sd4-condeff1-no-3
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd1))
  :effect (and (done-1)))
 (:action ugly1436745ugly65ugly3ugly51ugly53wait_cb3-endof-condeffs :parameters
  () :precondition (and (do-wait_cb3-condeffs) (done-0) (done-1) (done-2))
  :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2))))
 (:action ugly1436746ugly134ugly88ugly154ugly61reach-goal-9 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-cb1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436747ugly18ugly14ugly26ugly141wait_cb3-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1436748ugly61ugly10ugly82ugly68close_sd7-condeff0-no-3
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1436749ugly54ugly156ugly65ugly3close_sd6-condeff1-no-0
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-cb3))
  :effect (and (done-1)))
 (:action ugly1436750ugly158ugly130ugly36ugly5close_sd5-condeff0-no-2
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1436751ugly44ugly18ugly14ugly26close_sd1-condeff1-no-2
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb3))
  :effect (and (done-1)))
 (:action ugly1436752ugly131ugly59ugly62ugly101close_sd3-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd2) (closed-sd1) (closed-cb3)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1436753ugly132ugly21ugly92ugly29close_sd7-endof-condeffs
  :parameters () :precondition (and (do-close_sd7-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1436754ugly153ugly157ugly122ugly55reach-goal-14 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb1)
       (closed-cb3) (closed-sd1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436755ugly70ugly109ugly142ugly19reach-goal-29 :parameters ()
  :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-cb3)
       (closed-sd1) (closed-cb1) (closed-sd2) (closed-sd4) (closed-sd5))
  :effect (and (goal-reached)))
 (:action ugly1436756ugly3ugly51ugly53ugly162close_sd6-condeff1-yes :parameters
  () :precondition (and (do-close_sd6-condeffs) (closed-cb3)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1436757ugly92ugly29ugly45ugly87close_sd1-condeff1-no-1
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd2))
  :effect (and (done-1)))
 (:action ugly1436758ugly68ugly38ugly73ugly83close_sd2-condeff1-yes :parameters
  () :precondition
  (and (do-close_sd2-condeffs) (closed-sd7) (closed-sd5) (closed-sd4)
       (closed-cb1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1436759ugly160ugly137ugly153ugly157close_sd2-condeff1-no-3
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-cb1))
  :effect (and (done-1)))
 (:action ugly1436760ugly139ugly125ugly74ugly28close_sd3-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd2) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1436761ugly137ugly153ugly157ugly122close_sd4-condeff0-no-0
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd7))
  :effect (and (done-0)))) 