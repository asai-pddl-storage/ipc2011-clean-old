
(define (domain grounded-strips-psr) (:requirements :strips)
 (:predicates (not-closed-cb1) (do-close_sd7-condeffs) (closed-sd6)
  (do-close_sd9-condeffs) (closed-cb1) (closed-cb2) (closed-sd9)
  (do-close_sd5-condeffs) (do-close_sd6-condeffs) (not-closed-sd3)
  (not-closed-sd10) (not-closed-sd9) (closed-sd7) (do-wait_cb1-condeffs)
  (do-close_sd2-condeffs) (not-closed-sd4) (closed-sd10) (not-closed-sd6)
  (do-close_sd10-condeffs) (updated-cb2) (not-updated-cb2) (closed-sd4)
  (do-wait_cb2-condeffs) (do-close_sd1-condeffs) (closed-sd3)
  (do-close_sd4-condeffs) (not-closed-sd2) (not-closed-sd7) (goal-reached)
  (closed-sd8) (done-0) (do-close_sd3-condeffs) (done-1) (not-closed-sd5)
  (closed-sd5) (do-close_sd8-condeffs) (not-updated-cb1) (closed-sd2)
  (not-closed-sd8) (closed-sd1) (not-closed-sd1) (do-normal) (not-closed-cb2)
  (updated-cb1))
 (:action ugly1ugly357ugly536ugly397reach-goal-58 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly2ugly203ugly584ugly127reach-goal-459 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly3ugly476ugly480ugly264reach-goal-239 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly4ugly461ugly665ugly303reach-goal-403 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly5ugly159ugly699ugly192reach-goal-216 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly6ugly487ugly607ugly156close_sd7-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-sd5)) :effect
  (and (done-1)))
 (:action ugly7ugly590ugly168ugly659reach-goal-362 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly8ugly635ugly426ugly336reach-goal-299 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly9ugly138ugly140ugly364open-sd8 :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd8) (not (closed-sd8))))
 (:action ugly10ugly594ugly324ugly421close_sd5-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-sd10)) :effect
  (and (done-0)))
 (:action ugly11ugly351ugly204ugly572reach-goal-220 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly12ugly308ugly529ugly526wait_cb2-condeff1-no-1 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd10)) :effect
  (and (done-1)))
 (:action ugly13ugly243ugly73ugly6reach-goal-486 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly14ugly185ugly262ugly682close_sd10-condeff1-no-2 :parameters ()
  :precondition (and (do-close_sd10-condeffs) (not-closed-sd8)) :effect
  (and (done-1)))
 (:action ugly15ugly161ugly603ugly435reach-goal-129 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly16ugly281ugly432ugly636reach-goal-78 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly17ugly5ugly159ugly699reach-goal-191 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly18ugly538ugly392ugly463close_sd8-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd8-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly19ugly326ugly228ugly380reach-goal-303 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly20ugly275ugly10ugly594reach-goal-323 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly21ugly429ugly566ugly121close_sd9-endof-condeffs :parameters ()
  :precondition (and (do-close_sd9-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly22ugly382ugly35ugly171reach-goal-182 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly23ugly647ugly86ugly582reach-goal-194 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly24ugly113ugly667ugly438reach-goal-254 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly25ugly396ugly562ugly321close_sd9-condeff1-no-3 :parameters ()
  :precondition (and (do-close_sd9-condeffs) (not-closed-sd7)) :effect
  (and (done-1)))
 (:action ugly26ugly208ugly72ugly295reach-goal-250 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly27ugly135ugly235ugly87reach-goal-33 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly28ugly67ugly124ugly409reach-goal-271 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly29ugly45ugly353ugly571close_sd6-condeff1-no-5 :parameters ()
  :precondition (and (do-close_sd6-condeffs) (not-closed-sd7)) :effect
  (and (done-1)))
 (:action ugly30ugly483ugly244ugly147reach-goal-118 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly31ugly338ugly523ugly677close_sd8-condeff1-yes :parameters ()
  :precondition
  (and (do-close_sd8-condeffs) (closed-sd5) (closed-sd10) (closed-sd9)
       (closed-sd7) (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly32ugly368ugly271ugly307reach-goal-345 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly33ugly537ugly434ugly106reach-goal-301 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly34ugly246ugly293ugly131reach-goal-185 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly35ugly171ugly183ugly575reach-goal-374 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly36ugly374ugly385ugly366wait_cb2-condeff0-no-1 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly37ugly15ugly161ugly603reach-goal-434 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly38ugly484ugly296ugly342reach-goal-436 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly39ugly394ugly489ugly579reach-goal-322 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly40ugly493ugly347ugly1reach-goal-356 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly41ugly306ugly84ugly577reach-goal-478 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly42ugly337ugly334ugly478reach-goal-423 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly43ugly129ugly62ugly91close_sd2-condeff0-yes :parameters ()
  :precondition
  (and (do-close_sd2-condeffs) (closed-sd4) (closed-sd3) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly44ugly187ugly43ugly129reach-goal-61 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly45ugly353ugly571ugly673close_sd2-condeff1-no-2 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-sd6)) :effect
  (and (done-1)))
 (:action ugly46ugly618ugly247ugly215reach-goal-389 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly47ugly93ugly473ugly583reach-goal-494 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly48ugly331ugly641ugly4reach-goal-460 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly49ugly507ugly501ugly599reach-goal-353 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly50ugly564ugly464ugly206reach-goal-168 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly51ugly157ugly319ugly14reach-goal-184 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly52ugly216ugly173ugly465reach-goal-40 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly53ugly164ugly270ugly457reach-goal-377 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly54ugly384ugly548ugly442reach-goal-23 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly55ugly273ugly499ugly274reach-goal-418 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly56ugly205ugly387ugly258reach-goal-426 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly57ugly608ugly253ugly552reach-goal-198 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly58ugly371ugly644ugly604open-sd1 :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd1) (not (closed-sd1))))
 (:action ugly59ugly535ugly362ugly352reach-goal-84 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly60ugly285ugly373ugly64open-sd4 :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd4) (not (closed-sd4))))
 (:action ugly61ugly71ugly666ugly360close_sd3-condeff1-no-6 :parameters ()
  :precondition (and (do-close_sd3-condeffs) (not-closed-cb2)) :effect
  (and (done-1)))
 (:action ugly62ugly91ugly605ugly670close_sd6-condeff1-no-6 :parameters ()
  :precondition (and (do-close_sd6-condeffs) (not-closed-cb2)) :effect
  (and (done-1)))
 (:action ugly63ugly358ugly401ugly350reach-goal-31 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly64ugly655ugly448ugly78reach-goal-398 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly65ugly587ugly233ugly377reach-goal-135 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly66ugly600ugly61ugly71close_sd6-condeff0-no-3 :parameters ()
  :precondition (and (do-close_sd6-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly67ugly124ugly409ugly272close_sd5-endof-condeffs :parameters ()
  :precondition (and (do-close_sd5-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly68ugly134ugly74ugly282reach-goal-21 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly69ugly389ugly632ugly619reach-goal-136 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly70ugly617ugly386ugly314reach-goal-193 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly71ugly666ugly360ugly602close_sd5-condeff1-no-4 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-cb2)) :effect
  (and (done-1)))
 (:action ugly72ugly295ugly251ugly559reach-goal-96 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly73ugly6ugly487ugly607reach-goal-155 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly74ugly282ugly22ugly382reach-goal-34 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly75ugly54ugly384ugly548reach-goal-441 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly76ugly654ugly543ugly557reach-goal-110 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly77ugly317ugly141ugly488reach-goal-327 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly78ugly399ugly509ugly11reach-goal-350 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly79ugly218ugly668ugly248reach-goal-47 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly80ugly436ugly615ugly148reach-goal-407 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly81ugly170ugly563ugly504reach-goal-221 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly82ugly116ugly289ugly252reach-goal-27 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly83ugly182ugly485ugly174reach-goal-75 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly84ugly577ugly479ugly596reach-goal-20 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly85ugly669ugly77ugly317reach-goal-140 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly86ugly582ugly195ugly90reach-goal-397 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly87ugly34ugly246ugly293reach-goal-130 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly88ugly313ugly155ugly123reach-goal-474 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly89ugly29ugly45ugly353close_sd7-condeff1-no-3 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-sd8)) :effect
  (and (done-1)))
 (:action ugly90ugly398ugly110ugly470wait_cb2-condeff0-no-4 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd9)) :effect
  (and (done-0)))
 (:action ugly91ugly605ugly670ugly674reach-goal-410 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly92ugly672ugly126ugly628close_sd9-condeff0-no-5 :parameters ()
  :precondition (and (do-close_sd9-condeffs) (not-closed-sd7)) :effect
  (and (done-0)))
 (:action ugly93ugly473ugly583ugly495close_sd9-condeff0-no-3 :parameters ()
  :precondition (and (do-close_sd9-condeffs) (not-closed-sd6)) :effect
  (and (done-0)))
 (:action ugly94ugly224ugly662ugly230reach-goal-380 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly95ugly167ugly312ugly621reach-goal-445 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly96ugly311ugly180ugly515reach-goal-157 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly97ugly540ugly63ugly358reach-goal-400 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd6) (closed-sd9)
       (closed-sd8) (closed-sd7) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly98ugly447ugly109ugly266close_sd10-condeff1-yes :parameters ()
  :precondition
  (and (do-close_sd10-condeffs) (closed-sd5) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly99ugly534ugly391ugly133reach-goal-429 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly100ugly115ugly550ugly547reach-goal-190 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly101ugly513ugly125ugly459reach-goal-218 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly102ugly664ugly154ugly150reach-goal-309 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly103ugly553ugly68ugly134reach-goal-73 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly104ugly527ugly657ugly299close_sd9-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd9-condeffs) (not-closed-sd2)) :effect
  (and (done-0)))
 (:action ugly105ugly153ugly31ugly338close_sd10-condeff1-no-3 :parameters ()
  :precondition (and (do-close_sd10-condeffs) (not-closed-sd7)) :effect
  (and (done-1)))
 (:action ugly106ugly302ugly329ugly163close_sd1-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly107ugly355ugly197ugly379reach-goal-117 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly108ugly652ugly242ugly580reach-goal-55 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly109ugly266ugly519ugly576reach-goal-510 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly110ugly470ugly637ugly112reach-goal-174 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly111ugly361ugly625ugly444reach-goal-401 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly112ugly175ugly9ugly138reach-goal-139 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly113ugly667ugly438ugly255close_sd3-condeff1-yes :parameters ()
  :precondition
  (and (do-close_sd3-condeffs) (closed-sd4) (closed-sd2) (closed-sd6)
       (closed-sd9) (closed-sd8) (closed-sd7) (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly114ugly298ugly690ugly588reach-goal-286 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly115ugly550ugly547ugly191close_sd10-endof-condeffs :parameters ()
  :precondition (and (do-close_sd10-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly116ugly289ugly252ugly28reach-goal-66 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly117ugly225ugly497ugly450reach-goal-471 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly118ugly638ugly443ugly367reach-goal-489 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly119ugly616ugly502ugly261reach-goal-454 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly120ugly556ugly640ugly456reach-goal-505 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly121ugly541ugly370ugly60reach-goal-284 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly122ugly555ugly661ugly81reach-goal-169 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly123ugly475ugly549ugly49reach-goal-506 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly124ugly409ugly272ugly688reach-goal-26 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly125ugly459ugly219ugly700reach-goal-317 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly126ugly628ugly533ugly88reach-goal-312 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly127ugly460ugly620ugly209reach-goal-355 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly128ugly176ugly597ugly423reach-goal-394 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly129ugly62ugly91ugly605close_sd6-condeff1-no-2 :parameters ()
  :precondition (and (do-close_sd6-condeffs) (not-closed-sd2)) :effect
  (and (done-1)))
 (:action ugly130ugly656ugly512ugly474reach-goal-255 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly131ugly186ugly558ugly52reach-goal-215 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly132ugly532ugly236ugly184reach-goal-82 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly133ugly430ugly223ugly383reach-goal-12 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly134ugly74ugly282ugly22reach-goal-381 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly135ugly235ugly87ugly34reach-goal-245 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly136ugly25ugly396ugly562reach-goal-320 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly137ugly322ugly55ugly273reach-goal-498 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly138ugly140ugly364ugly651close_sd3 :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly139ugly75ugly54ugly384close_sd8-condeff0-no-4 :parameters ()
  :precondition (and (do-close_sd8-condeffs) (not-closed-sd9)) :effect
  (and (done-0)))
 (:action ugly140ugly364ugly651ugly589wait_cb2-condeff1-no-2 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd9)) :effect
  (and (done-1)))
 (:action ugly141ugly488ugly328ugly560reach-goal-340 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly142ugly639ugly683ugly452reach-goal-275 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly143ugly139ugly75ugly54reach-goal-383 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly144ugly339ugly445ugly290reach-goal-406 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly145ugly449ugly196ugly99close_sd9-condeff0-no-6 :parameters ()
  :precondition (and (do-close_sd9-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly146ugly422ugly623ugly305reach-goal-102 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly147ugly119ugly616ugly502reach-goal-260 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly148ugly408ugly234ugly503close_sd6-condeff1-no-3 :parameters ()
  :precondition (and (do-close_sd6-condeffs) (not-closed-sd9)) :effect
  (and (done-1)))
 (:action ugly149ugly649ugly16ugly281reach-goal-431 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly150ugly310ugly292ugly82reach-goal-115 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly151ugly107ugly355ugly197reach-goal-378 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly152ugly505ugly433ugly333reach-goal-38 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly153ugly31ugly338ugly523close_sd5-condeff0-yes :parameters ()
  :precondition
  (and (do-close_sd5-condeffs) (closed-sd10) (closed-sd6) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly154ugly150ugly310ugly292reach-goal-81 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly155ugly123ugly475ugly549reach-goal-48 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd7) (closed-sd6)
       (closed-sd9) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly156ugly568ugly585ugly675reach-goal-493 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly157ugly319ugly14ugly185reach-goal-261 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly158ugly278ugly229ugly578reach-goal-419 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly159ugly699ugly192ugly217reach-goal-453 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly160ugly30ugly483ugly244reach-goal-146 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly161ugly603ugly435ugly130open-sd3 :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd3) (not (closed-sd3))))
 (:action ugly162ugly201ugly327ugly269reach-goal-127 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly163ugly622ugly425ugly694reach-goal-159 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly164ugly270ugly457ugly378reach-goal-244 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly165ugly2ugly203ugly584reach-goal-126 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly166ugly695ugly267ugly238reach-goal-364 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly167ugly312ugly621ugly446wait_cb1-condeff0-no-2 :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (not-closed-sd2)) :effect
  (and (done-0)))
 (:action ugly168ugly659ugly363ugly181reach-goal-95 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly169ugly286ugly47ugly93reach-goal-472 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly170ugly563ugly504ugly222close_sd5-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-sd6)) :effect
  (and (done-0)))
 (:action ugly171ugly183ugly575ugly375reach-goal-145 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly172ugly514ugly330ugly263reach-goal-56 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly173ugly465ugly41ugly306reach-goal-83 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly174ugly76ugly654ugly543close_sd8-endof-condeffs :parameters ()
  :precondition (and (do-close_sd8-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly175ugly9ugly138ugly140reach-goal-363 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly176ugly597ugly423ugly395reach-goal-412 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly177ugly606ugly349ugly592reach-goal-37 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly178ugly142ugly639ugly683reach-goal-451 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly179ugly239ugly686ugly70close_sd2-condeff1-no-6 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-cb2)) :effect
  (and (done-1)))
 (:action ugly180ugly515ugly158ugly278reach-goal-228 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly181ugly96ugly311ugly180close_sd10-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd10-condeffs) (not-closed-sd5)) :effect
  (and (done-0)))
 (:action ugly182ugly485ugly174ugly76open-sd5 :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd5) (not (closed-sd5))))
 (:action ugly183ugly575ugly375ugly146reach-goal-421 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly184ugly83ugly182ugly485reach-goal-173 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly185ugly262ugly682ugly522reach-goal-375 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly186ugly558ugly52ugly216reach-goal-172 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly187ugly43ugly129ugly62reach-goal-90 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly188ugly428ugly44ugly187reach-goal-42 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly189ugly565ugly518ugly624reach-goal-253 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly190ugly277ugly610ugly294open-cb1 :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-cb1) (not (closed-cb1))))
 (:action ugly191ugly525ugly491ugly601reach-goal-177 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly192ugly217ugly454ugly412reach-goal-161 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly193ugly37ugly15ugly161close_sd3-endof-condeffs :parameters ()
  :precondition (and (do-close_sd3-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly194ugly696ugly237ugly315reach-goal-57 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly195ugly90ugly398ugly110reach-goal-469 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly196ugly99ugly534ugly391reach-goal-132 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly197ugly379ugly118ugly638reach-goal-442 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly198ugly232ugly689ugly405reach-goal-219 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly199ugly53ugly164ugly270reach-goal-456 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly200ugly100ugly115ugly550close_sd8-condeff0-no-3 :parameters ()
  :precondition (and (do-close_sd8-condeffs) (not-closed-sd6)) :effect
  (and (done-0)))
 (:action ugly201ugly327ugly269ugly128reach-goal-175 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly202ugly301ugly467ugly482reach-goal-2 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly203ugly584ugly127ugly460close_sd1-condeff0-yes :parameters ()
  :precondition
  (and (do-close_sd1-condeffs) (closed-sd4) (closed-sd3) (closed-sd2)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly204ugly572ugly221ugly440reach-goal-41 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly205ugly387ugly258ugly427reach-goal-32 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly206ugly169ugly286ugly47reach-goal-92 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly207ugly500ugly268ugly92close_sd6-condeff1-no-4 :parameters ()
  :precondition (and (do-close_sd6-condeffs) (not-closed-sd8)) :effect
  (and (done-1)))
 (:action ugly208ugly72ugly295ugly251close_sd7-condeff0-yes :parameters ()
  :precondition
  (and (do-close_sd7-condeffs) (closed-sd4) (closed-sd3) (closed-sd2)
       (closed-sd6) (closed-sd9) (closed-sd8) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly209ugly356ugly466ugly633close_sd10-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd10-condeffs) (not-closed-sd5)) :effect
  (and (done-1)))
 (:action ugly210ugly117ugly225ugly497reach-goal-449 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly211ugly227ugly692ugly372close_sd10-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd10-condeffs) (not-closed-sd9)) :effect
  (and (done-1)))
 (:action ugly212ugly663ugly439ugly570reach-goal-65 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly213ugly574ugly691ugly211reach-goal-226 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly214ugly676ugly348ugly288reach-goal-148 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly215ugly390ugly65ugly587reach-goal-232 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly216ugly173ugly465ugly41reach-goal-305 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly217ugly454ugly412ugly162reach-goal-200 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly218ugly668ugly248ugly48reach-goal-330 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly219ugly700ugly318ugly609reach-goal-470 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly220ugly561ugly528ugly492reach-goal-387 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly221ugly440ugly42ugly337reach-goal-333 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly222ugly679ugly189ugly565close_sd10-condeff0-no-3 :parameters ()
  :precondition (and (do-close_sd10-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly223ugly383ugly13ugly243reach-goal-72 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly224ugly662ugly230ugly381reach-goal-282 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly225ugly497ugly450ugly472reach-goal-414 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly226ugly462ugly481ugly431reach-goal-259 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly227ugly692ugly372ugly521reach-goal-225 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly228ugly380ugly304ugly212close_sd6-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd6-condeffs) (not-closed-sd5)) :effect
  (and (done-0)))
 (:action ugly229ugly578ugly420ugly340reach-goal-187 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly230ugly381ugly283ugly469reach-goal-507 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly231ugly546ugly46ugly618reach-goal-246 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly232ugly689ugly405ugly220close_sd7-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly233ugly377ugly136ugly25reach-goal-395 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly234ugly503ugly671ugly120close_sd8-condeff1-no-4 :parameters ()
  :precondition (and (do-close_sd8-condeffs) (not-closed-cb2)) :effect
  (and (done-1)))
 (:action ugly235ugly87ugly34ugly246reach-goal-292 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly236ugly184ugly83ugly182reach-goal-484 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly237ugly315ugly58ugly371wait_cb2-condeff1-no-3 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd8)) :effect
  (and (done-1)))
 (:action ugly238ugly365ugly210ugly117reach-goal-224 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly239ugly686ugly70ugly617reach-goal-385 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly240ugly630ugly202ugly301reach-goal-466 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly241ugly309ugly325ugly316reach-goal-256 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly242ugly580ugly56ugly205reach-goal-386 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly243ugly73ugly6ugly487close_sd2-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly244ugly147ugly119ugly616reach-goal-501 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly245ugly631ugly680ugly166wait_cb1-condeff1-yes :parameters ()
  :precondition
  (and (do-wait_cb1-condeffs) (closed-sd5) (closed-sd10) (closed-sd6)
       (closed-sd1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly246ugly293ugly131ugly186close_sd7 :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly247ugly215ugly390ugly65close_sd4-condeff1-no-6 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-cb2)) :effect
  (and (done-1)))
 (:action ugly248ugly48ugly331ugly641reach-goal-3 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly249ugly567ugly626ugly627reach-goal-16 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd6) (closed-sd9)
       (closed-sd8) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly250ugly231ugly546ugly46close_sd2-endof-condeffs :parameters ()
  :precondition (and (do-close_sd2-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly251ugly559ugly97ugly540reach-goal-62 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly252ugly28ugly67ugly124reach-goal-408 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly253ugly552ugly199ugly53reach-goal-163 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly254ugly12ugly308ugly529close_sd9 :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action ugly255ugly595ugly516ugly614reach-goal-358 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly256ugly544ugly80ugly436close_sd2-condeff1-no-4 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-sd8)) :effect
  (and (done-1)))
 (:action ugly257ugly200ugly100ugly115close_sd8-condeff0-no-6 :parameters ()
  :precondition (and (do-close_sd8-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly258ugly427ugly33ugly537reach-goal-433 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly259ugly451ugly213ugly574wait_cb1-condeff0-no-0 :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (not-closed-sd4)) :effect
  (and (done-0)))
 (:action ugly260ugly198ugly232ugly689reach-goal-404 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly261ugly455ugly441ugly681close_sd4-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-sd3)) :effect
  (and (done-1)))
 (:action ugly262ugly682ugly522ugly376wait_cb2-condeff1-no-4 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd7)) :effect
  (and (done-1)))
 (:action ugly263ugly57ugly608ugly253close_sd8-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd8-condeffs) (not-closed-sd5)) :effect
  (and (done-1)))
 (:action ugly264ugly240ugly630ugly202reach-goal-300 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly265ugly50ugly564ugly464reach-goal-205 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly266ugly519ugly576ugly511reach-goal-495 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly267ugly238ugly365ugly210reach-goal-116 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly268ugly92ugly672ugly126close_sd1-condeff1-no-2 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-sd6)) :effect
  (and (done-1)))
 (:action ugly269ugly128ugly176ugly597reach-goal-422 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly270ugly457ugly378ugly245wait_cb2 :parameters () :precondition
  (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly271ugly307ugly346ugly280reach-goal-344 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly272ugly688ugly27ugly135reach-goal-234 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly273ugly499ugly274ugly419close_sd8 :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly274ugly419ugly542ugly414reach-goal-164 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly275ugly10ugly594ugly324reach-goal-420 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly276ugly122ugly555ugly661reach-goal-80 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd6) (closed-sd9)
       (closed-sd8) (closed-sd7) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly277ugly610ugly294ugly660reach-goal-192 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly278ugly229ugly578ugly420reach-goal-339 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly279ugly524ugly259ugly451reach-goal-212 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly280ugly345ugly145ugly449reach-goal-195 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly281ugly432ugly636ugly79reach-goal-217 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly282ugly22ugly382ugly35reach-goal-170 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly283ugly469ugly508ugly172close_sd10-condeff0-yes :parameters ()
  :precondition
  (and (do-close_sd10-condeffs) (closed-sd5) (closed-sd6) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly284ugly650ugly611ugly458reach-goal-290 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly285ugly373ugly64ugly655reach-goal-447 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly286ugly47ugly93ugly473close_sd4-condeff1-no-2 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-sd6)) :effect
  (and (done-1)))
 (:action ugly287ugly40ugly493ugly347reach-goal-0 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly288ugly149ugly649ugly16reach-goal-280 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly289ugly252ugly28ugly67reach-goal-123 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly290ugly407ugly249ugly567close_sd1-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-sd5)) :effect
  (and (done-1)))
 (:action ugly291ugly400ugly89ugly29reach-goal-44 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly292ugly82ugly116ugly289reach-goal-251 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly293ugly131ugly186ugly558reach-goal-51 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly294ugly660ugly193ugly37reach-goal-14 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly295ugly251ugly559ugly97close_sd9-condeff1-no-4 :parameters ()
  :precondition (and (do-close_sd9-condeffs) (not-closed-cb2)) :effect
  (and (done-1)))
 (:action ugly296ugly342ugly437ugly343reach-goal-97 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly297ugly279ugly524ugly259reach-goal-450 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly298ugly690ugly588ugly287reach-goal-39 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly299ugly530ugly418ugly297reach-goal-278 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly300ugly151ugly107ugly355reach-goal-196 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly301ugly467ugly482ugly3reach-goal-475 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly302ugly329ugly163ugly622reach-goal-424 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly303ugly404ugly190ugly277close_sd2-condeff1-yes :parameters ()
  :precondition
  (and (do-close_sd2-condeffs) (closed-sd4) (closed-sd3) (closed-sd6)
       (closed-sd9) (closed-sd8) (closed-sd7) (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly304ugly212ugly663ugly439close_sd7-condeff1-no-2 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-sd9)) :effect
  (and (done-1)))
 (:action ugly305ugly103ugly553ugly68reach-goal-133 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly306ugly84ugly577ugly479close_sd3-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd3-condeffs) (not-closed-sd4)) :effect
  (and (done-1)))
 (:action ugly307ugly346ugly280ugly345reach-goal-144 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd6) (closed-sd9)
       (closed-sd8) (closed-sd7) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly308ugly529ugly526ugly642reach-goal-392 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly309ugly325ugly316ugly257reach-goal-199 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly310ugly292ugly82ugly116reach-goal-288 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly311ugly180ugly515ugly158reach-goal-277 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly312ugly621ugly446ugly693wait_cb1-condeff1-no-1 :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (not-closed-sd10)) :effect
  (and (done-1)))
 (:action ugly313ugly155ugly123ugly475close_sd8-condeff0-no-5 :parameters ()
  :precondition (and (do-close_sd8-condeffs) (not-closed-sd7)) :effect
  (and (done-0)))
 (:action ugly314ugly194ugly696ugly237reach-goal-314 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly315ugly58ugly371ugly644close_sd2 :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action ugly316ugly257ugly200ugly100reach-goal-114 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly317ugly141ugly488ugly328close_sd7-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-sd4)) :effect
  (and (done-0)))
 (:action ugly318ugly609ugly471ugly214close_sd5 :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action ugly319ugly14ugly185ugly262close_sd5-condeff1-yes :parameters ()
  :precondition
  (and (do-close_sd5-condeffs) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly320ugly335ugly320ugly335reach-goal-319 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly321ugly539ugly143ugly139reach-goal-74 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly322ugly55ugly273ugly499reach-goal-273 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly323ugly410ugly573ugly569close_sd4-condeff1-no-5 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-sd7)) :effect
  (and (done-1)))
 (:action ugly324ugly421ugly678ugly684reach-goal-497 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly325ugly316ugly257ugly200reach-goal-99 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly326ugly228ugly380ugly304reach-goal-211 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly327ugly269ugly128ugly176close_sd3-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd3-condeffs) (not-closed-sd2)) :effect
  (and (done-1)))
 (:action ugly328ugly560ugly341ugly698reach-goal-331 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly329ugly163ugly622ugly425wait_cb1-condeff0-no-3 :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly330ugly263ugly57ugly608reach-goal-252 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly331ugly641ugly4ugly461close_sd6-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd6-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly332ugly653ugly612ugly105reach-goal-152 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly333ugly39ugly394ugly489close_sd4-condeff0-no-3 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly334ugly478ugly424ugly36reach-goal-373 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly335ugly320ugly335ugly320reach-goal-334 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly336ugly300ugly151ugly107reach-goal-354 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly337ugly334ugly478ugly424reach-goal-35 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly338ugly523ugly677ugly551reach-goal-19 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly339ugly445ugly290ugly407reach-goal-248 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly340ugly188ugly428ugly44reach-goal-186 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly341ugly698ugly332ugly653close_sd2-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-sd3)) :effect
  (and (done-1)))
 (:action ugly342ugly437ugly343ugly98reach-goal-446 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly343ugly98ugly447ugly109reach-goal-265 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly344ugly403ugly284ugly650close_sd2-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-sd4)) :effect
  (and (done-1)))
 (:action ugly345ugly145ugly449ugly196reach-goal-98 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly346ugly280ugly345ugly145reach-goal-448 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly347ugly1ugly357ugly536reach-goal-396 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly348ugly288ugly149ugly649reach-goal-15 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly349ugly592ugly38ugly484reach-goal-295 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly350ugly32ugly368ugly271reach-goal-306 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly351ugly204ugly572ugly221reach-goal-439 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly352ugly85ugly669ugly77reach-goal-316 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly353ugly571ugly673ugly613reach-goal-452 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly354ugly344ugly403ugly284open-sd9 :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd9) (not (closed-sd9))))
 (:action ugly355ugly197ugly379ugly118wait_cb2-condeff0-no-5 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd8)) :effect
  (and (done-0)))
 (:action ugly356ugly466ugly633ugly520reach-goal-249 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly357ugly536ugly397ugly59close_sd9-condeff1-yes :parameters ()
  :precondition
  (and (do-close_sd9-condeffs) (closed-sd5) (closed-sd10) (closed-sd8)
       (closed-sd7) (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly358ugly401ugly350ugly32reach-goal-367 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly359ugly18ugly538ugly392reach-goal-462 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly360ugly602ugly687ugly207reach-goal-499 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly361ugly625ugly444ugly402reach-goal-467 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly362ugly352ugly85ugly669reach-goal-76 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly363ugly181ugly96ugly311reach-goal-179 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly364ugly651ugly589ugly643reach-goal-509 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly365ugly210ugly117ugly225reach-goal-496 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd7) (closed-sd8)
       (closed-sd9) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly366ugly634ugly598ugly265reach-goal-49 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly367ugly490ugly7ugly590reach-goal-167 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly368ugly271ugly307ugly346reach-goal-279 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly369ugly152ugly505ugly433reach-goal-332 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly370ugly60ugly285ugly373reach-goal-63 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly371ugly644ugly604ugly658reach-goal-103 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly372ugly521ugly226ugly462reach-goal-480 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly373ugly64ugly655ugly448reach-goal-77 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly374ugly385ugly366ugly634close_sd3-condeff1-no-2 :parameters ()
  :precondition (and (do-close_sd3-condeffs) (not-closed-sd6)) :effect
  (and (done-1)))
 (:action ugly375ugly146ugly422ugly623reach-goal-304 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd7) (closed-sd6)
       (closed-sd9) (closed-sd8) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly376ugly645ugly108ugly652reach-goal-241 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly377ugly136ugly25ugly396close_sd7-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-sd2)) :effect
  (and (done-0)))
 (:action ugly378ugly245ugly631ugly680reach-goal-165 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly379ugly118ugly638ugly443reach-goal-366 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly380ugly304ugly212ugly663reach-goal-438 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly381ugly283ugly469ugly508reach-goal-171 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly382ugly35ugly171ugly183close_sd4-condeff0-yes :parameters ()
  :precondition
  (and (do-close_sd4-condeffs) (closed-sd3) (closed-sd2) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly383ugly13ugly243ugly73reach-goal-5 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly384ugly548ugly442ugly24reach-goal-112 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd7) (closed-sd8)
       (closed-sd6) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly385ugly366ugly634ugly598reach-goal-264 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly386ugly314ugly194ugly696reach-goal-236 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly387ugly258ugly427ugly33close_sd9-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd9-condeffs) (not-closed-sd10)) :effect
  (and (done-1)))
 (:action ugly388ugly19ugly326ugly228reach-goal-379 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly389ugly632ugly619ugly137reach-goal-321 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly390ugly65ugly587ugly233reach-goal-376 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly391ugly133ugly430ugly223reach-goal-382 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly392ugly463ugly545ugly477reach-goal-405 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly393ugly144ugly339ugly445reach-goal-289 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly394ugly489ugly579ugly323reach-goal-409 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly395ugly413ugly69ugly389wait_cb2-condeff0-yes :parameters ()
  :precondition
  (and (do-wait_cb2-condeffs) (closed-sd4) (closed-sd3) (closed-sd2)
       (closed-sd6) (closed-sd9) (closed-sd8) (closed-sd7))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly396ugly562ugly321ugly539reach-goal-142 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly397ugly59ugly535ugly362reach-goal-351 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly398ugly110ugly470ugly637reach-goal-111 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly399ugly509ugly11ugly351reach-goal-203 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly400ugly89ugly29ugly45reach-goal-352 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly401ugly350ugly32ugly368reach-goal-270 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly402ugly468ugly486ugly51reach-goal-156 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly403ugly284ugly650ugly611reach-goal-457 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly404ugly190ugly277ugly610reach-goal-293 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly405ugly220ugly561ugly528reach-goal-491 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly406ugly554ugly648ugly241reach-goal-308 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly407ugly249ugly567ugly626close_sd1-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-sd10)) :effect
  (and (done-1)))
 (:action ugly408ugly234ugly503ugly671reach-goal-119 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly409ugly272ugly688ugly27reach-goal-134 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly410ugly573ugly569ugly586reach-goal-25 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly411ugly685ugly593ugly416close_sd10-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd10-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly412ugly162ugly201ugly327reach-goal-268 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly413ugly69ugly389ugly632close_sd1 :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly414ugly165ugly2ugly203close_sd4-condeff1-no-3 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-sd9)) :effect
  (and (done-1)))
 (:action ugly415ugly114ugly298ugly690close_sd4-endof-condeffs :parameters ()
  :precondition (and (do-close_sd4-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly416ugly517ugly23ugly647reach-goal-85 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly417ugly8ugly635ugly426reach-goal-335 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly418ugly297ugly279ugly524reach-goal-258 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly419ugly542ugly414ugly165reach-goal-1 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly420ugly340ugly188ugly428reach-goal-43 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly421ugly678ugly684ugly498reach-goal-178 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly422ugly623ugly305ugly103close_sd8-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd8-condeffs) (not-closed-sd10)) :effect
  (and (done-1)))
 (:action ugly423ugly395ugly413ugly69reach-goal-388 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly424ugly36ugly374ugly385reach-goal-365 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly425ugly694ugly160ugly30reach-goal-482 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly426ugly336ugly300ugly151reach-goal-106 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly427ugly33ugly537ugly434reach-goal-105 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly428ugly44ugly187ugly43reach-goal-128 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly429ugly566ugly121ugly541reach-goal-369 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly430ugly223ugly383ugly13reach-goal-242 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly431ugly260ugly198ugly232wait_cb1 :parameters () :precondition
  (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly432ugly636ugly79ugly218close_sd6-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd6-condeffs) (not-closed-sd4)) :effect
  (and (done-1)))
 (:action ugly433ugly333ugly39ugly394reach-goal-488 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly434ugly106ugly302ugly329reach-goal-162 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly435ugly130ugly656ugly512reach-goal-473 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly436ugly615ugly148ugly408reach-goal-233 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly437ugly343ugly98ugly447reach-goal-108 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly438ugly255ugly595ugly516close_sd2-condeff1-no-3 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-sd9)) :effect
  (and (done-1)))
 (:action ugly439ugly570ugly66ugly600reach-goal-60 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly440ugly42ugly337ugly334reach-goal-477 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly441ugly681ugly581ugly177close_sd2-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-sd4)) :effect
  (and (done-0)))
 (:action ugly442ugly24ugly113ugly667reach-goal-437 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly443ugly367ugly490ugly7close_sd3-condeff0-yes :parameters ()
  :precondition
  (and (do-close_sd3-condeffs) (closed-sd4) (closed-sd2) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly444ugly402ugly468ugly486reach-goal-50 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly445ugly290ugly407ugly249close_sd7-condeff1-yes :parameters ()
  :precondition
  (and (do-close_sd7-condeffs) (closed-sd5) (closed-sd10) (closed-sd9)
       (closed-sd8) (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly446ugly693ugly697ugly102close_sd6-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd6-condeffs) (not-closed-sd10)) :effect
  (and (done-0)))
 (:action ugly447ugly109ugly266ugly519close_sd4-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly448ugly78ugly399ugly509reach-goal-10 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly449ugly196ugly99ugly534reach-goal-390 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly450ugly472ugly415ugly114reach-goal-297 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly451ugly213ugly574ugly691reach-goal-210 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly452ugly276ugly122ugly555close_sd6 :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly453ugly101ugly513ugly125reach-goal-458 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly454ugly412ugly162ugly201reach-goal-326 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly455ugly441ugly681ugly581reach-goal-176 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd7) (closed-sd6)
       (closed-sd9) (closed-sd8) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly456ugly506ugly369ugly152reach-goal-504 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly457ugly378ugly245ugly631close_sd5-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly458ugly291ugly400ugly89reach-goal-28 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly459ugly219ugly700ugly318close_sd2-condeff0-no-3 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly460ugly620ugly209ugly356reach-goal-465 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly461ugly665ugly303ugly404reach-goal-189 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly462ugly481ugly431ugly260reach-goal-197 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly463ugly545ugly477ugly406close_sd8-condeff1-no-2 :parameters ()
  :precondition (and (do-close_sd8-condeffs) (not-closed-sd9)) :effect
  (and (done-1)))
 (:action ugly464ugly206ugly169ugly286reach-goal-46 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly465ugly41ugly306ugly84close_sd4-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-sd2)) :effect
  (and (done-0)))
 (:action ugly466ugly633ugly520ugly250reach-goal-230 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly467ugly482ugly3ugly476reach-goal-479 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly468ugly486ugly51ugly157reach-goal-318 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly469ugly508ugly172ugly514reach-goal-329 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly470ugly637ugly112ugly175reach-goal-8 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly471ugly214ugly676ugly348reach-goal-287 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly472ugly415ugly114ugly298wait_cb1-condeff0-yes :parameters ()
  :precondition
  (and (do-wait_cb1-condeffs) (closed-sd4) (closed-sd3) (closed-sd2)
       (closed-sd1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly473ugly583ugly495ugly531close_sd1-condeff1-no-3 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect
  (and (done-1)))
 (:action ugly474ugly256ugly544ugly80reach-goal-435 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly475ugly549ugly49ugly507reach-goal-500 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly476ugly480ugly264ugly240close_sd1-endof-condeffs :parameters ()
  :precondition (and (do-close_sd1-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly477ugly406ugly554ugly648reach-goal-240 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd7) (closed-sd8)
       (closed-sd9) (closed-sd6) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly478ugly424ugly36ugly374reach-goal-384 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly479ugly596ugly21ugly429close_sd7-condeff0-no-6 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-cb2)) :effect
  (and (done-0)))
 (:action ugly480ugly264ugly240ugly630reach-goal-201 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly481ugly431ugly260ugly198reach-goal-231 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly482ugly3ugly476ugly480reach-goal-263 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly483ugly244ugly147ugly119close_sd2-condeff1-no-5 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-sd7)) :effect
  (and (done-1)))
 (:action ugly484ugly296ugly342ugly437reach-goal-342 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly485ugly174ugly76ugly654close_sd8-condeff0-yes :parameters ()
  :precondition
  (and (do-close_sd8-condeffs) (closed-sd4) (closed-sd3) (closed-sd2)
       (closed-sd6) (closed-sd9) (closed-sd7) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly486ugly51ugly157ugly319reach-goal-13 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly487ugly607ugly156ugly568close_sd4-condeff1-no-4 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-sd8)) :effect
  (and (done-1)))
 (:action ugly488ugly328ugly560ugly341wait_cb1-condeff1-no-2 :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (not-closed-sd6)) :effect
  (and (done-1)))
 (:action ugly489ugly579ugly323ugly410close_sd7-endof-condeffs :parameters ()
  :precondition (and (do-close_sd7-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly490ugly7ugly590ugly168open-cb2 :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-cb2) (not (closed-cb2))))
 (:action ugly491ugly601ugly178ugly142wait_cb2-condeff0-no-6 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd7)) :effect
  (and (done-0)))
 (:action ugly492ugly388ugly19ugly326reach-goal-227 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly493ugly347ugly1ugly357close_sd9-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd9-condeffs) (not-closed-sd5)) :effect
  (and (done-1)))
 (:action ugly494ugly646ugly591ugly417reach-goal-7 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly495ugly531ugly629ugly95reach-goal-166 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly496ugly132ugly532ugly236reach-goal-183 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly497ugly450ugly472ugly415reach-goal-113 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly498ugly179ugly239ugly686reach-goal-69 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly499ugly274ugly419ugly542reach-goal-413 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly500ugly268ugly92ugly672reach-goal-125 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly501ugly599ugly354ugly344reach-goal-402 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly502ugly261ugly455ugly441close_sd5-condeff0-no-3 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly503ugly671ugly120ugly556wait_cb2-condeff1-yes :parameters ()
  :precondition
  (and (do-wait_cb2-condeffs) (closed-sd5) (closed-sd10) (closed-sd9)
       (closed-sd8) (closed-sd7))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly504ugly222ugly679ugly189close_sd7-condeff0-no-5 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-sd8)) :effect
  (and (done-0)))
 (:action ugly505ugly433ugly333ugly39reach-goal-393 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly506ugly369ugly152ugly505reach-goal-432 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd7) (closed-sd6)
       (closed-sd9) (closed-sd8) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly507ugly501ugly599ugly354reach-goal-343 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly508ugly172ugly514ugly330reach-goal-262 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly509ugly11ugly351ugly204close_sd7-condeff1-no-4 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-cb2)) :effect
  (and (done-1)))
 (:action ugly510ugly94ugly224ugly662reach-goal-229 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly511ugly496ugly132ugly532reach-goal-235 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly512ugly474ugly256ugly544reach-goal-79 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly513ugly125ugly459ugly219wait_cb1-endof-condeffs :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly514ugly330ugly263ugly57close_sd2-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd2-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly515ugly158ugly278ugly229close_sd4-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly516ugly614ugly359ugly18close_sd9-condeff1-no-2 :parameters ()
  :precondition (and (do-close_sd9-condeffs) (not-closed-sd8)) :effect
  (and (done-1)))
 (:action ugly517ugly23ugly647ugly86close_sd4-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd4-condeffs) (not-closed-sd2)) :effect
  (and (done-1)))
 (:action ugly518ugly624ugly254ugly12reach-goal-307 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly519ugly576ugly511ugly496reach-goal-131 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly520ugly250ugly231ugly546reach-goal-45 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly521ugly226ugly462ugly481reach-goal-430 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly522ugly376ugly645ugly108open-sd7 :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd7) (not (closed-sd7))))
 (:action ugly523ugly677ugly551ugly20reach-goal-274 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly524ugly259ugly451ugly213close_sd4 :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly525ugly491ugly601ugly178reach-goal-141 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly526ugly642ugly393ugly144reach-goal-338 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly527ugly657ugly299ugly530reach-goal-417 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly528ugly492ugly388ugly19reach-goal-325 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly529ugly526ugly642ugly393reach-goal-143 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly530ugly418ugly297ugly279close_sd10-condeff1-no-4 :parameters ()
  :precondition (and (do-close_sd10-condeffs) (not-closed-cb2)) :effect
  (and (done-1)))
 (:action ugly531ugly629ugly95ugly167reach-goal-311 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly532ugly236ugly184ugly83reach-goal-181 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly533ugly88ugly313ugly155reach-goal-122 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly534ugly391ugly133ugly430reach-goal-222 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly535ugly362ugly352ugly85close_sd6-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd6-condeffs) (not-closed-sd3)) :effect
  (and (done-1)))
 (:action ugly536ugly397ugly59ugly535reach-goal-361 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly537ugly434ugly106ugly302reach-goal-328 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly538ugly392ugly463ugly545reach-goal-476 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly539ugly143ugly139ugly75reach-goal-53 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly540ugly63ugly358ugly401reach-goal-349 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly541ugly370ugly60ugly285reach-goal-372 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly542ugly414ugly165ugly2reach-goal-202 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly543ugly557ugly111ugly361close_sd1-condeff1-yes :parameters ()
  :precondition
  (and (do-close_sd1-condeffs) (closed-sd5) (closed-sd10) (closed-sd6)
       (closed-cb1))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly544ugly80ugly436ugly615reach-goal-147 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly545ugly477ugly406ugly554close_cb1 :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2)) :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly546ugly46ugly618ugly247reach-goal-214 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly547ugly191ugly525ugly491close_sd3-condeff1-no-5 :parameters ()
  :precondition (and (do-close_sd3-condeffs) (not-closed-sd7)) :effect
  (and (done-1)))
 (:action ugly548ugly442ugly24ugly113close_sd6-condeff1-yes :parameters ()
  :precondition
  (and (do-close_sd6-condeffs) (closed-sd4) (closed-sd3) (closed-sd2)
       (closed-sd9) (closed-sd8) (closed-sd7) (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly549ugly49ugly507ugly501close_sd3-condeff1-no-3 :parameters ()
  :precondition (and (do-close_sd3-condeffs) (not-closed-sd9)) :effect
  (and (done-1)))
 (:action ugly550ugly547ugly191ugly525reach-goal-490 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly551ugly20ugly275ugly10close_sd3-condeff0-no-3 :parameters ()
  :precondition (and (do-close_sd3-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly552ugly199ugly53ugly164reach-goal-269 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly553ugly68ugly134ugly74reach-goal-281 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly554ugly648ugly241ugly309reach-goal-324 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly555ugly661ugly81ugly170close_sd7-condeff0-no-3 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-sd6)) :effect
  (and (done-0)))
 (:action ugly556ugly640ugly456ugly506reach-goal-368 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd7) (closed-sd8)
       (closed-sd6) (closed-sd9) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly557ugly111ugly361ugly625reach-goal-443 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly558ugly52ugly216ugly173reach-goal-464 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd6) (closed-sd9)
       (closed-sd8) (closed-sd7) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly559ugly97ugly540ugly63reach-goal-357 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly560ugly341ugly698ugly332open-sd6 :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd6) (not (closed-sd6))))
 (:action ugly561ugly528ugly492ugly388reach-goal-18 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly562ugly321ugly539ugly143reach-goal-138 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly563ugly504ugly222ugly679reach-goal-188 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly564ugly464ugly206ugly169reach-goal-285 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly565ugly518ugly624ugly254reach-goal-11 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly566ugly121ugly541ugly370reach-goal-59 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly567ugly626ugly627ugly17reach-goal-4 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly568ugly585ugly675ugly494wait_cb2-endof-condeffs :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly569ugly586ugly26ugly208reach-goal-71 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly570ugly66ugly600ugly61reach-goal-70 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly571ugly673ugly613ugly453reach-goal-100 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly572ugly221ugly440ugly42reach-goal-336 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd6) (closed-sd9)
       (closed-sd8) (closed-sd7) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly573ugly569ugly586ugly26reach-goal-207 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly574ugly691ugly211ugly227wait_cb1-condeff0-no-1 :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly575ugly375ugly146ugly422close_sd1-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-sd2)) :effect
  (and (done-0)))
 (:action ugly576ugly511ugly496ugly132close_sd9-condeff0-no-4 :parameters ()
  :precondition (and (do-close_sd9-condeffs) (not-closed-sd8)) :effect
  (and (done-0)))
 (:action ugly577ugly479ugly596ugly21reach-goal-428 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly578ugly420ugly340ugly188reach-goal-427 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly579ugly323ugly410ugly573close_sd7-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-sd10)) :effect
  (and (done-1)))
 (:action ugly580ugly56ugly205ugly387reach-goal-257 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly581ugly177ugly606ugly349close_sd3-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd3-condeffs) (not-closed-sd2)) :effect
  (and (done-0)))
 (:action ugly582ugly195ugly90ugly398reach-goal-109 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly583ugly495ugly531ugly629reach-goal-94 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly584ugly127ugly460ugly620reach-goal-208 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd6) (closed-sd9)
       (closed-sd8) (closed-sd7) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly585ugly675ugly494ugly646close_sd3-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd3-condeffs) (not-closed-sd4)) :effect
  (and (done-0)))
 (:action ugly586ugly26ugly208ugly72reach-goal-294 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly587ugly233ugly377ugly136reach-goal-24 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly588ugly287ugly40ugly493reach-goal-346 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly589ugly643ugly510ugly94reach-goal-223 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly590ugly168ugly659ugly363reach-goal-180 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly591ugly417ugly8ugly635reach-goal-425 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly592ugly38ugly484ugly296reach-goal-341 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly593ugly416ugly517ugly23close_cb2 :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2)) :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly594ugly324ugly421ugly678close_sd5-condeff1-no-1 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-sd9)) :effect
  (and (done-1)))
 (:action ugly595ugly516ugly614ugly359reach-goal-17 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly596ugly21ugly429ugly566reach-goal-120 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly597ugly423ugly395ugly413reach-goal-68 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly598ugly265ugly50ugly564reach-goal-463 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly599ugly354ugly344ugly403reach-goal-283 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly600ugly61ugly71ugly666reach-goal-359 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly601ugly178ugly142ugly639close_sd5-condeff1-no-0 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-sd10)) :effect
  (and (done-1)))
 (:action ugly602ugly687ugly207ugly500reach-goal-267 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly603ugly435ugly130ugly656reach-goal-511 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly604ugly658ugly104ugly527open-sd2 :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd2) (not (closed-sd2))))
 (:action ugly605ugly670ugly674ugly411close_sd5-condeff1-no-2 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-sd8)) :effect
  (and (done-1)))
 (:action ugly606ugly349ugly592ugly38reach-goal-483 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly607ugly156ugly568ugly585close_sd6-endof-condeffs :parameters ()
  :precondition (and (do-close_sd6-condeffs) (done-0) (done-1)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly608ugly253ugly552ugly199reach-goal-52 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly609ugly471ugly214ugly676reach-goal-347 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly610ugly294ugly660ugly193reach-goal-36 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly611ugly458ugly291ugly400reach-goal-88 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly612ugly105ugly153ugly31reach-goal-337 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly613ugly453ugly101ugly513reach-goal-124 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly614ugly359ugly18ugly538reach-goal-391 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly615ugly148ugly408ugly234reach-goal-502 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly616ugly502ugly261ugly455reach-goal-440 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly617ugly386ugly314ugly194wait_cb1-condeff1-no-0 :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (not-closed-sd5)) :effect
  (and (done-1)))
 (:action ugly618ugly247ugly215ugly390reach-goal-64 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly619ugly137ugly322ugly55reach-goal-272 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-cb2) (closed-sd6) (closed-sd9)
       (closed-sd8) (closed-sd7) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly620ugly209ugly356ugly466wait_cb2-condeff0-no-0 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd4)) :effect
  (and (done-0)))
 (:action ugly621ugly446ugly693ugly697reach-goal-101 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly622ugly425ugly694ugly160reach-goal-29 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly623ugly305ugly103ugly553reach-goal-67 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly624ugly254ugly12ugly308close_sd9-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd9-condeffs) (not-closed-sd3)) :effect
  (and (done-0)))
 (:action ugly625ugly444ugly402ugly468reach-goal-485 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly626ugly627ugly17ugly5reach-goal-158 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly627ugly17ugly5ugly159wait_cb1-condeff1-no-3 :parameters ()
  :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1)) :effect
  (and (done-1)))
 (:action ugly628ugly533ugly88ugly313reach-goal-154 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly629ugly95ugly167ugly312close_sd1-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-sd4)) :effect
  (and (done-0)))
 (:action ugly630ugly202ugly301ugly467reach-goal-481 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly631ugly680ugly166ugly695reach-goal-266 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly632ugly619ugly137ugly322reach-goal-54 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly633ugly520ugly250ugly231close_sd8-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd8-condeffs) (not-closed-sd2)) :effect
  (and (done-0)))
 (:action ugly634ugly598ugly265ugly50close_sd7-condeff0-no-4 :parameters ()
  :precondition (and (do-close_sd7-condeffs) (not-closed-sd9)) :effect
  (and (done-0)))
 (:action ugly635ugly426ugly336ugly300reach-goal-150 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly636ugly79ugly218ugly668reach-goal-247 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly637ugly112ugly175ugly9reach-goal-137 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly638ugly443ugly367ugly490reach-goal-6 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly639ugly683ugly452ugly276reach-goal-121 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly640ugly456ugly506ugly369reach-goal-151 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly641ugly4ugly461ugly665reach-goal-302 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly642ugly393ugly144ugly339reach-goal-444 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly643ugly510ugly94ugly224close_sd6-condeff0-yes :parameters ()
  :precondition
  (and (do-close_sd6-condeffs) (closed-sd5) (closed-sd10) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly644ugly604ugly658ugly104close_sd9-condeff0-yes :parameters ()
  :precondition
  (and (do-close_sd9-condeffs) (closed-sd4) (closed-sd3) (closed-sd2)
       (closed-sd6) (closed-sd8) (closed-sd7) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly645ugly108ugly652ugly242close_sd4-condeff1-yes :parameters ()
  :precondition
  (and (do-close_sd4-condeffs) (closed-sd3) (closed-sd2) (closed-sd6)
       (closed-sd9) (closed-sd8) (closed-sd7) (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly646ugly591ugly417ugly8wait_cb2-condeff0-no-2 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd2)) :effect
  (and (done-0)))
 (:action ugly647ugly86ugly582ugly195reach-goal-89 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly648ugly241ugly309ugly325reach-goal-315 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly649ugly16ugly281ugly432wait_cb2-condeff0-no-3 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd6)) :effect
  (and (done-0)))
 (:action ugly650ugly611ugly458ugly291reach-goal-399 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly651ugly589ugly643ugly510reach-goal-93 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly652ugly242ugly580ugly56reach-goal-204 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly653ugly612ugly105ugly153reach-goal-30 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly654ugly543ugly557ugly111reach-goal-360 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly655ugly448ugly78ugly399reach-goal-508 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly656ugly512ugly474ugly256close_sd8-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd8-condeffs) (not-closed-sd4)) :effect
  (and (done-0)))
 (:action ugly657ugly299ugly530ugly418reach-goal-296 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly658ugly104ugly527ugly657reach-goal-298 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly659ugly363ugly181ugly96reach-goal-310 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly660ugly193ugly37ugly15reach-goal-160 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly661ugly81ugly170ugly563reach-goal-503 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly662ugly230ugly381ugly283reach-goal-468 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly663ugly439ugly570ugly66close_sd3-condeff1-no-4 :parameters ()
  :precondition (and (do-close_sd3-condeffs) (not-closed-sd8)) :effect
  (and (done-1)))
 (:action ugly664ugly154ugly150ugly310reach-goal-291 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly665ugly303ugly404ugly190reach-goal-276 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly666ugly360ugly602ugly687reach-goal-206 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly667ugly438ugly255ugly595close_sd10-condeff0-no-1 :parameters ()
  :precondition (and (do-close_sd10-condeffs) (not-closed-sd6)) :effect
  (and (done-0)))
 (:action ugly668ugly248ugly48ugly331wait_cb2-condeff1-no-0 :parameters ()
  :precondition (and (do-wait_cb2-condeffs) (not-closed-sd5)) :effect
  (and (done-1)))
 (:action ugly669ugly77ugly317ugly141reach-goal-487 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly670ugly674ugly411ugly685close_sd3-condeff0-no-2 :parameters ()
  :precondition (and (do-close_sd3-condeffs) (not-closed-sd1)) :effect
  (and (done-0)))
 (:action ugly671ugly120ugly556ugly640reach-goal-455 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly672ugly126ugly628ugly533reach-goal-87 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-cb1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly673ugly613ugly453ugly101close_sd10 :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2)) :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action ugly674ugly411ugly685ugly593reach-goal-415 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-sd2)
       (closed-sd3) (closed-cb1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly675ugly494ugly646ugly591reach-goal-416 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd6) (closed-sd9) (closed-sd8)
       (closed-sd7) (closed-cb2) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly676ugly348ugly288ugly149open-sd10 :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2)) :effect
  (and (not-closed-sd10) (not (closed-sd10))))
 (:action ugly677ugly551ugly20ugly275reach-goal-9 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly678ugly684ugly498ugly179reach-goal-238 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd3) (closed-sd1) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly679ugly189ugly565ugly518close_sd1-condeff0-no-3 :parameters ()
  :precondition (and (do-close_sd1-condeffs) (not-closed-cb1)) :effect
  (and (done-0)))
 (:action ugly680ugly166ugly695ugly267reach-goal-237 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly681ugly581ugly177ugly606reach-goal-348 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly682ugly522ugly376ugly645reach-goal-107 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly683ugly452ugly276ugly122close_sd8-condeff1-no-3 :parameters ()
  :precondition (and (do-close_sd8-condeffs) (not-closed-sd7)) :effect
  (and (done-1)))
 (:action ugly684ugly498ugly179ugly239close_sd5-condeff1-no-3 :parameters ()
  :precondition (and (do-close_sd5-condeffs) (not-closed-sd7)) :effect
  (and (done-1)))
 (:action ugly685ugly593ugly416ugly517reach-goal-22 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly686ugly70ugly617ugly386reach-goal-313 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly687ugly207ugly500ugly268reach-goal-91 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly688ugly27ugly135ugly235reach-goal-86 :parameters () :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd2)
       (closed-sd1) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly689ugly405ugly220ugly561close_sd9-condeff0-no-0 :parameters ()
  :precondition (and (do-close_sd9-condeffs) (not-closed-sd4)) :effect
  (and (done-0)))
 (:action ugly690ugly588ugly287ugly40reach-goal-492 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly691ugly211ugly227ugly692reach-goal-371 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly692ugly372ugly521ugly226reach-goal-461 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly693ugly697ugly102ugly664reach-goal-153 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly694ugly160ugly30ugly483reach-goal-243 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly695ugly267ugly238ugly365reach-goal-209 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly696ugly237ugly315ugly58reach-goal-370 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-cb2)
       (closed-sd7) (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly697ugly102ugly664ugly154reach-goal-149 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly698ugly332ugly653ugly612reach-goal-104 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1)
       (closed-sd2) (closed-cb2) (closed-sd7) (closed-sd8) (closed-sd9)
       (closed-sd6) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly699ugly192ugly217ugly454reach-goal-411 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))
 (:action ugly700ugly318ugly609ugly471reach-goal-213 :parameters ()
  :precondition
  (and (do-normal) (updated-cb2) (updated-cb1) (closed-cb2) (closed-sd7)
       (closed-sd8) (closed-sd9) (closed-sd6) (closed-sd1) (closed-cb1)
       (closed-sd2) (closed-sd3) (closed-sd10))
  :effect (and (goal-reached)))) 