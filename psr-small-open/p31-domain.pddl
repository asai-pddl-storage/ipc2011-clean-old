
(define (domain grounded-strips-psr) (:requirements :strips :action-costs)
 (:predicates (not-closed-sd2) (not-closed-cb3) (done-0) (closed-sd15)
  (not-closed-sd9) (do-close_sd6-condeffs) (do-close_sd11-condeffs)
  (not-closed-sd11) (closed-sd13) (not-updated-cb1) (closed-sd2)
  (do-close_sd7-condeffs) (do-close_sd4-condeffs) (not-closed-sd13)
  (closed-cb2) (closed-sd16) (done-1) (goal-reached) (closed-sd7)
  (not-closed-sd16) (closed-sd8) (not-closed-sd14) (updated-cb4) (closed-sd4)
  (not-closed-cb2) (updated-cb3) (closed-cb1) (closed-sd10) (not-closed-sd15)
  (closed-sd6) (closed-sd14) (do-close_sd16-condeffs) (not-closed-sd1)
  (do-close_sd10-condeffs) (closed-sd1) (not-closed-sd7) (do-wait_cb2-condeffs)
  (not-closed-cb4) (not-closed-sd10) (not-closed-sd4) (closed-sd5)
  (updated-cb1) (not-closed-sd6) (not-closed-sd5) (do-close_sd8-condeffs)
  (not-closed-sd3) (do-normal) (not-updated-cb4) (not-closed-cb1)
  (not-updated-cb2) (closed-sd3) (do-close_sd9-condeffs) (closed-cb3)
  (not-updated-cb3) (closed-cb4) (closed-sd12) (closed-sd11) (not-closed-sd12)
  (updated-cb2) (do-wait_cb3-condeffs) (closed-sd9) (do-wait_cb4-condeffs)
  (not-closed-sd8))
 (:functions (total-cost) - number)
 (:action ugly43ugly536ugly638ugly640ugly167ugly218ugly455ugly307reach-goal-176
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-cb4) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly44ugly628ugly485ugly169ugly578ugly420ugly597ugly301reach-goal-504
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly45ugly541ugly391ugly167ugly140ugly18ugly325ugly322reach-goal-216
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly46ugly205ugly141ugly621ugly436ugly254ugly112ugly446reach-goal-16
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-cb4) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly47ugly272ugly685ugly134ugly583ugly437ugly125ugly127reach-goal-350
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd10) (closed-sd7) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly48ugly312ugly599ugly569ugly592ugly478ugly47ugly272reach-goal-66
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly49ugly357ugly335ugly528ugly395ugly76ugly16ugly32reach-goal-339
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly50ugly564ugly651ugly490ugly392ugly90ugly540ugly9reach-goal-368
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-cb4) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly51ugly631ugly314ugly664ugly32ugly340ugly558ugly14reach-goal-121
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly52ugly432ugly374ugly263ugly171ugly439ugly374ugly649reach-goal-406
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly53ugly183ugly100ugly102ugly284ugly549ugly582ugly197open-sd12
  :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd12) (not (closed-sd12))))
 (:action
  ugly54ugly126ugly568ugly253ugly520ugly593ugly338ugly166close_sd9-condeff0-no-2
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd16))
  :effect (and (done-0)))
 (:action ugly55ugly270ugly540ugly509ugly517ugly113ugly615ugly463reach-goal-414
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd10) (closed-sd7) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly56ugly499ugly196ugly45ugly499ugly101ugly285ugly89wait_cb4-condeff0-no-2
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action ugly57ugly678ugly639ugly355ugly385ugly223ugly495ugly36reach-goal-493
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly58ugly407ugly632ugly347ugly376ugly573ugly425ugly238reach-goal-481
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly59ugly494ugly579ugly70ugly388ugly454ugly91ugly514reach-goal-248
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly60ugly75ugly510ugly507ugly425ugly238ugly482ugly246close_sd10-endof-condeffs
  :parameters () :precondition (and (do-close_sd10-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly61ugly473ugly56ugly499ugly154ugly404ugly661ugly96reach-goal-252
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd10) (closed-sd14) (closed-sd16) (closed-sd13) (closed-sd8)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly62ugly624ugly648ugly426ugly43ugly192ugly432ugly294reach-goal-47
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-cb3) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly63ugly513ugly116ugly106ugly259ugly170ugly512ugly628open-cb3
  :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly64ugly487ugly283ugly247ugly73ugly569ugly586ugly406reach-goal-283
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly65ugly113ugly273ugly90ugly524ugly531ugly337ugly19reach-goal-354
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly66ugly262ugly675ugly470ugly354ugly38ugly144ugly306reach-goal-476
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd10) (closed-sd8) (closed-sd16) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly67ugly315ugly447ugly655ugly117ugly643ugly142ugly110reach-goal-461
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly68ugly612ugly181ugly654ugly512ugly628ugly620ugly600reach-goal-326
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly69ugly226ugly343ugly618ugly268ugly150ugly256ugly601reach-goal-503
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly70ugly430ugly401ugly580ugly269ugly193ugly73ugly569close_sd1
  :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd1) (not (not-closed-sd1))))
 (:action
  ugly71ugly321ugly324ugly145ugly564ugly257ugly623ugly20close_sd16-condeff1-no-2
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-cb4))
  :effect (and (done-1)))
 (:action ugly72ugly135ugly252ugly684ugly640ugly513ugly117ugly643reach-goal-141
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly73ugly627ugly291ugly290ugly352ugly278ugly484ugly584reach-goal-39
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly74ugly258ugly223ugly429ugly504ugly602ugly367ugly650reach-goal-273
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly75ugly510ugly507ugly467ugly519ugly450ugly130ugly126reach-goal-61
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly76ugly249ugly348ugly400ugly4ugly146ugly469ugly141reach-goal-136
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly77ugly185ugly503ugly414ugly257ugly623ugly20ugly524close_sd11-condeff0-no-0
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd10))
  :effect (and (done-0)))
 (:action
  ugly78ugly598ugly139ugly481ugly515ugly259ugly170ugly512close_sd8-condeff0-no-2
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action ugly79ugly576ugly79ugly576ugly37ugly551ugly4ugly146reach-goal-468
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly80ugly516ugly193ugly622ugly208ugly390ugly35ugly318wait_cb3-condeff1-no-3
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd16))
  :effect (and (done-1)))
 (:action ugly81ugly501ugly702ugly593ugly417ugly583ugly437ugly125reach-goal-126
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd7) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly82ugly515ugly118ugly438ugly567ugly357ugly236ugly66reach-goal-204
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd8) (closed-sd16) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly83ugly686ugly218ugly306ugly627ugly186ugly578ugly420wait_cb3-condeff1-no-4
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd8))
  :effect (and (done-1)))
 (:action ugly84ugly436ugly43ugly536ugly596ugly647ugly70ugly169reach-goal-180
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly85ugly370ugly644ugly63ugly471ugly225ugly377ugly328reach-goal-7
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly86ugly420ugly295ugly127ugly124ugly309ugly84ugly527reach-goal-319
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-sd10) (closed-sd14) (closed-cb3) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly87ugly589ugly190ugly359ugly383ugly86ugly521ugly655close_sd6-condeff1-no-2
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-cb4))
  :effect (and (done-1)))
 (:action ugly88ugly421ugly83ugly686ugly176ugly365ugly618ugly403reach-goal-410
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly89ugly137ugly700ugly633ugly516ugly426ugly428ugly414reach-goal-226
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly90ugly566ugly681ugly521ugly13ugly195ugly529ugly461reach-goal-294
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly91ugly617ugly233ugly198ugly455ugly307ugly177ugly598reach-goal-458
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly92ugly147ugly482ugly475ugly190ugly562ugly15ugly54reach-goal-110
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd7) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly93ugly673ugly571ugly553ugly112ugly446ugly17ugly470reach-goal-391
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly94ugly59ugly494ugly579ugly28ugly293ugly394ugly188reach-goal-488
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly95ugly392ugly136ugly529ugly546ugly430ugly486ugly657close_sd6
  :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly96ugly244ugly492ugly626ugly239ugly611ugly10ugly634reach-goal-262
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly97ugly197ugly563ugly453ugly194ugly281ugly398ugly568close_sd8-condeff0-no-1
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd10))
  :effect (and (done-0)))
 (:action ugly98ugly358ugly204ugly240ugly364ugly123ugly12ugly383reach-goal-85
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly99ugly284ugly203ugly390ugly458ugly440ugly571ugly310reach-goal-486
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly100ugly102ugly326ugly246ugly243ugly131ugly326ugly511reach-goal-205
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly101ugly346ugly385ugly322ugly553ugly572ugly467ugly384reach-goal-313
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly102ugly326ugly246ugly285ugly331ugly208ugly390ugly35reach-goal-317
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly103ugly450ugly242ugly69ugly184ugly95ugly639ugly577reach-goal-45
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly104ugly601ugly460ugly122ugly620ugly600ugly327ugly433reach-goal-418
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly105ugly101ugly346ugly385ugly280ugly400ugly375ugly176reach-goal-364
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd8) (closed-sd16) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly106ugly301ugly325ugly336ugly275ugly180ugly63ugly641reach-goal-346
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly107ugly411ugly658ugly479ugly227ugly378ugly7ugly262reach-goal-254
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13) (closed-sd7)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly108ugly384ugly165ugly72ugly93ugly289ugly520ugly593reach-goal-337
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly109ugly578ugly545ugly424ugly223ugly495ugly36ugly494reach-goal-155
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly110ugly663ugly480ugly665ugly478ugly47ugly272ugly67reach-goal-422
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly111ugly371ugly556ugly245ugly38ugly144ugly306ugly477reach-goal-137
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly112ugly68ugly612ugly181ugly612ugly202ugly273ugly229reach-goal-372
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly113ugly273ugly90ugly566ugly639ugly577ugly46ugly522reach-goal-195
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly114ugly318ugly399ugly187ugly120ugly417ugly583ugly437reach-goal-124
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd10) (closed-sd14) (closed-sd16) (closed-sd8) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly115ugly468ugly350ugly368ugly128ugly475ugly30ugly116reach-goal-48
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-cb4) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly116ugly106ugly301ugly325ugly294ugly48ugly58ugly653close_sd3
  :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly117ugly65ugly113ugly273ugly48ugly58ugly653ugly646reach-goal-36
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly118ugly438ugly609ugly97ugly155ugly204ugly330ugly85reach-goal-433
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly119ugly531ugly219ugly697ugly166ugly559ugly305ugly251close_sd11-condeff1-no-1
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd9))
  :effect (and (done-1)))
 (:action ugly120ugly282ugly279ugly423ugly144ugly306ugly477ugly138reach-goal-93
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly121ugly241ugly268ugly493ugly312ugly133ugly409ugly443close_sd11-condeff0-no-2
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd16))
  :effect (and (done-0)))
 (:action
  ugly122ugly662ugly538ugly362ugly255ugly449ugly510ugly219close_sd9-condeff0-no-3
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action
  ugly123ugly668ugly172ugly409ugly391ugly248ugly547ugly145reach-goal-264
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly124ugly667ugly194ugly388ugly185ugly488ugly279ugly640close_sd16
  :parameters () :precondition
  (and (do-normal) (not-closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd16-condeffs) (closed-sd16)
       (not (not-closed-sd16))))
 (:action ugly125ugly448ugly73ugly627ugly249ugly303ugly465ugly27reach-goal-479
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-sd10) (closed-cb3) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly126ugly568ugly253ugly562ugly20ugly524ugly531ugly337reach-goal-18
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly127ugly166ugly313ugly695ugly337ugly19ugly355ugly287reach-goal-332
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd8) (closed-sd16) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly128ugly587ugly539ugly266ugly311ugly194ugly281ugly398close_sd7
  :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action ugly129ugly235ugly462ugly614ugly261ugly147ugly589ugly633close_sd5
  :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action
  ugly130ugly168ugly696ugly523ugly321ugly200ugly382ugly316close_sd10-condeff0-no-4
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action
  ugly131ugly692ugly177ugly526ugly333ugly332ugly132ugly436reach-goal-253
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly132ugly661ugly378ugly228ugly295ugly213ugly228ugly107close_sd10-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-sd11) (closed-sd9) (closed-sd16)
       (closed-sd8) (closed-sd7) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly133ugly278ugly339ugly649ugly292ugly319ugly629ugly65reach-goal-385
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly134ugly625ugly356ugly466ugly15ugly54ugly111ugly396close_sd4
  :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly135ugly252ugly684ugly682ugly188ugly489ugly402ugly346reach-goal-4
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly136ugly529ugly588ugly446ugly618ugly403ugly411ugly167reach-goal-217
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly137ugly700ugly633ugly558ugly539ugly356ugly139ugly492reach-goal-249
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly138ugly150ugly542ugly458ugly344ugly523ugly179ugly149open-sd11
  :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd11) (not (closed-sd11))))
 (:action ugly139ugly481ugly557ugly474ugly600ugly327ugly433ugly419reach-goal-12
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd8) (closed-sd16) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly140ugly52ugly432ugly374ugly221ugly26ugly381ugly75reach-goal-299
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly141ugly621ugly478ugly221ugly366ugly201ugly235ugly105close_sd8-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd16) (closed-sd7) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly142ugly331ugly590ugly410ugly490ugly526ugly448ugly209reach-goal-92
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd10) (closed-sd8) (closed-sd16) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly143ugly50ugly564ugly651ugly448ugly209ugly93ugly289close_sd16-condeff0-no-5
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly144ugly573ugly88ugly421ugly41ugly371ugly164ugly535reach-goal-396
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd8) (closed-sd16) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly145ugly606ugly533ugly308ugly217ugly160ugly466ugly352reach-goal-277
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly146ugly206ugly140ugly52ugly390ugly35ugly318ugly596wait_cb4
  :parameters () :precondition (and (do-normal) (not-updated-cb4)) :effect
  (and (not (do-normal)) (do-wait_cb4-condeffs) (updated-cb4)
       (not (not-updated-cb4))))
 (:action ugly147ugly482ugly475ugly232ugly36ugly494ugly156ugly74reach-goal-20
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly148ugly133ugly278ugly339ugly607ugly317ugly610ugly380reach-goal-127
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-sd10) (closed-sd14) (closed-cb3) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly149ugly452ugly690ugly548ugly587ugly536ugly124ugly309reach-goal-83
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly150ugly542ugly458ugly386ugly635ugly52ugly574ugly389reach-goal-334
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd7) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly151ugly149ugly452ugly690ugly506ugly98ugly348ugly612reach-goal-201
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly152ugly229ugly171ugly105ugly59ugly282ugly216ugly391reach-goal-247
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly153ugly525ugly630ugly222ugly121ugly61ugly269ugly193reach-goal-72
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly154ugly572ugly275ugly224ugly543ugly565ugly516ugly426reach-goal-427
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly155ugly395ugly653ugly330ugly175ugly243ugly131ugly326reach-goal-510
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13) (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly156ugly693ugly376ugly293ugly552ugly109ugly542ugly234reach-goal-22
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly157ugly659ugly201ugly605ugly456ugly506ugly98ugly348open-sd7
  :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd7) (not (closed-sd7))))
 (:action ugly158ugly361ugly567ugly404ugly493ugly247ugly82ugly154reach-goal-403
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly159ugly341ugly156ugly693ugly334ugly344ugly523ugly179reach-goal-148
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly160ugly60ugly75ugly510ugly465ugly27ugly480ugly220reach-goal-170
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly161ugly287ugly382ugly372ugly549ugly582ugly197ugly607reach-goal-316
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd10) (closed-sd14) (closed-sd8) (closed-sd16) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly162ugly344ugly338ugly128ugly545ugly544ugly184ugly95close_sd6-condeff0-no-0
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action
  ugly163ugly671ugly522ugly570ugly386ugly258ugly557ugly214reach-goal-229
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly164ugly457ugly549ugly603ugly75ugly300ugly399ugly88reach-goal-499
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly165ugly72ugly135ugly252ugly642ugly29ugly324ugly343reach-goal-452
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly166ugly313ugly695ugly379ugly345ugly388ugly454ugly91close_sd16-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd16-condeffs) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd8) (closed-sd7) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly167ugly182ugly54ugly126ugly526ugly448ugly209ugly93reach-goal-288
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-sd10) (closed-cb4) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly168ugly696ugly523ugly363ugly169ugly181ugly241ugly288reach-goal-269
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly169ugly620ugly441ugly477ugly132ugly436ugly254ugly112reach-goal-445
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly170ugly119ugly531ugly219ugly655ugly644ugly350ugly502reach-goal-340
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly171ugly105ugly101ugly346ugly343ugly453ugly556ugly387reach-goal-434
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly172ugly409ugly433ugly189ugly201ugly235ugly105ugly625reach-goal-484
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly173ugly514ugly84ugly436ugly1ugly172ugly464ugly291reach-goal-96
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-sd10) (closed-cb4) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly174ugly51ugly631ugly314ugly622ugly245ugly541ugly92reach-goal-139
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly175ugly613ugly340ugly380ugly213ugly228ugly107ugly543close_sd9-condeff1-no-1
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd10))
  :effect (and (done-1)))
 (:action ugly176ugly641ugly405ugly443ugly165ugly242ugly77ugly385reach-goal-222
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd10) (closed-sd7) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly177ugly526ugly375ugly476ugly351ugly638ugly498ugly561reach-goal-353
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly178ugly635ugly274ugly552ugly594ugly292ugly319ugly629reach-goal-64
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-sd10) (closed-sd14) (closed-cb4) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly179ugly323ugly472ugly320ugly414ugly227ugly378ugly7reach-goal-261
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly180ugly449ugly124ugly667ugly152ugly190ugly562ugly15reach-goal-53
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly181ugly654ugly554ugly534ugly509ugly363ugly632ugly24reach-goal-1
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly182ugly54ugly126ugly568ugly211ugly83ugly298ugly119close_sd16-condeff0-no-4
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action ugly183ugly100ugly102ugly326ugly204ugly330ugly85ugly434open-sd6
  :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd6) (not (closed-sd6))))
 (:action ugly184ugly267ugly364ugly524ugly79ugly659ugly155ugly204reach-goal-329
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly185ugly503ugly414ugly299ugly475ugly30ugly116ugly49reach-goal-77
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly186ugly694ugly489ugly611ugly69ugly103ugly276ugly364reach-goal-122
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly187ugly162ugly344ugly338ugly86ugly521ugly655ugly644reach-goal-349
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly188ugly64ugly487ugly283ugly205ugly159ugly68ugly157reach-goal-63
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-sd10) (closed-sd14) (closed-cb3) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly189ugly243ugly602ugly329ugly263ugly299ugly315ugly189reach-goal-265
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly190ugly359ugly425ugly464ugly189ugly266ugly585ugly552reach-goal-108
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd8) (closed-sd16) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly191ugly110ugly663ugly480ugly623ugly20ugly524ugly531reach-goal-336
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-cb4) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly192ugly108ugly384ugly165ugly30ugly116ugly49ugly78wait_cb3-condeff1-yes
  :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd16) (closed-sd8) (closed-sd7))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly193ugly622ugly250ugly689ugly470ugly392ugly90ugly540reach-goal-8
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly194ugly388ugly227ugly657ugly40ugly151ugly370ugly60reach-goal-473
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly195ugly615ugly435ugly153ugly483ugly56ugly376ugly573reach-goal-424
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly196ugly45ugly541ugly391ugly125ugly127ugly351ugly638reach-goal-497
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly197ugly563ugly453ugly236ugly2ugly148ugly187ugly483reach-goal-55
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly198ugly497ugly257ugly491ugly101ugly285ugly89ugly651reach-goal-214
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly199ugly151ugly149ugly452ugly648ugly99ugly162ugly451reach-goal-472
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly200ugly298ugly195ugly615ugly393ugly39ugly203ugly153close_sd10-condeff1-no-2
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-cb4))
  :effect (and (done-1)))
 (:action ugly201ugly605ugly498ugly112ugly26ugly381ugly75ugly300reach-goal-398
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd7) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly202ugly530ugly619ugly381ugly540ugly9ugly369ugly244reach-goal-151
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly203ugly390ugly500ugly131ugly650ugly274ugly224ugly34reach-goal-79
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-cb3) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly204ugly240ugly406ugly367ugly604ugly231ugly165ugly242reach-goal-76
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd8) (closed-sd16) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly205ugly141ugly621ugly478ugly179ugly149ugly608ugly658reach-goal-333
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly206ugly140ugly52ugly432ugly332ugly132ugly436ugly254reach-goal-111
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-cb3) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly207ugly352ugly670ugly701ugly118ugly173ugly648ugly99reach-goal-161
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly208ugly527ugly286ugly643ugly134ugly106ugly603ugly114reach-goal-446
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd7) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly209ugly488ugly586ugly650ugly157ugly64ugly304ugly360reach-goal-50
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly210ugly543ugly130ugly168ugly654ugly182ugly517ugly113open-sd4
  :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd4) (not (closed-sd4))))
 (:action ugly211ugly511ugly419ugly132ugly619ugly81ugly211ugly83reach-goal-297
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly212ugly164ugly457ugly549ugly561ugly354ugly38ugly144reach-goal-305
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly213ugly148ugly133ugly278ugly297ugly271ugly336ugly579reach-goal-404
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly214ugly365ugly191ugly110ugly621ugly594ugly292ugly319close_sd8-condeff0-no-3
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd16))
  :effect (and (done-0)))
 (:action ugly215ugly67ugly315ugly447ugly613ugly33ugly605ugly599reach-goal-263
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly216ugly402ugly292ugly302ugly370ugly60ugly474ugly418close_sd8-condeff0-no-4
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action ugly217ugly583ugly445ugly53ugly141ugly137ugly297ugly271reach-goal-335
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-cb3) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly218ugly306ugly669ugly608ugly138ugly94ugly342ugly366reach-goal-200
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly219ugly697ugly208ugly527ugly244ugly152ugly190ugly562reach-goal-14
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd7) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly220ugly89ugly137ugly700ugly591ugly645ugly79ugly659reach-goal-154
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly221ugly408ugly251ugly455ugly327ugly433ugly419ugly13reach-goal-194
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly222ugly163ugly671ugly522ugly528ugly570ugly199ugly87reach-goal-101
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly223ugly429ugly546ugly86ugly378ugly7ugly262ugly255reach-goal-448
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-sd10) (closed-sd14) (closed-cb4) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly224ugly585ugly360ugly607ugly24ugly2ugly148ugly187reach-goal-482
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly225ugly345ugly138ugly150ugly500ugly69ugly103ugly276reach-goal-363
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly226ugly343ugly618ugly310ugly49ugly78ugly592ugly478reach-goal-46
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd7) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly227ugly657ugly82ugly515ugly76ugly16ugly32ugly340close_sd9-condeff0-no-1
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd10))
  :effect (and (done-0)))
 (:action
  ugly228ugly337ugly81ugly501ugly660ugly591ugly645ugly79wait_cb2-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action ugly229ugly171ugly105ugly101ugly304ugly360ugly51ugly642reach-goal-28
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd10) (closed-sd8) (closed-sd16) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly230ugly645ugly316ugly584ugly355ugly287ugly333ugly332reach-goal-131
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly231ugly496ugly505ugly173ugly472ugly476ugly240ugly129close_sd8-condeff0-no-0
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action ugly232ugly78ugly598ugly139ugly439ugly374ugly649ugly407reach-goal-58
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly233ugly198ugly497ugly257ugly449ugly510ugly219ugly560reach-goal-30
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd10) (closed-sd7) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly234ugly280ugly234ugly280ugly192ugly432ugly294ugly48reach-goal-57
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly235ugly462ugly614ugly303ugly206ugly53ugly587ugly536reach-goal-123
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly236ugly44ugly628ugly485ugly127ugly351ugly638ugly498close_sd9-condeff0-no-4
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action ugly237ugly123ugly668ugly172ugly367ugly650ugly274ugly224reach-goal-33
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly238ugly469ugly158ugly361ugly525ugly104ugly212ugly359reach-goal-507
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly239ugly294ugly537ugly307ugly444ugly491ugly534ugly43reach-goal-191
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-sd10) (closed-sd14) (closed-cb3) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly240ugly406ugly367ugly646ugly371ugly164ugly535ugly397open-sd3
  :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd3) (not (closed-sd3))))
 (:action ugly241ugly268ugly493ugly354ugly54ugly111ugly396ugly581reach-goal-197
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly242ugly69ugly226ugly343ugly576ugly442ugly624ugly296close_sd9-endof-condeffs
  :parameters () :precondition (and (do-close_sd9-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly243ugly602ugly329ugly305ugly247ugly82ugly154ugly404wait_cb1
  :parameters () :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not-closed-cb1) (updated-cb1) (not (closed-cb1))
       (not (not-updated-cb1))))
 (:action
  ugly244ugly492ugly626ugly281ugly258ugly557ugly214ugly230reach-goal-498
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly245ugly80ugly516ugly193ugly580ugly108ugly528ugly570reach-goal-198
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly246ugly285ugly373ugly210ugly501ugly362ugly312ugly133reach-goal-408
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly247ugly115ugly468ugly350ugly326ugly511ugly206ugly53close_cb4
  :parameters () :precondition
  (and (do-normal) (not-closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb4) (not-updated-cb4) (not (not-closed-cb4))
       (not (updated-cb4))))
 (:action
  ugly248ugly264ugly92ugly147ugly440ugly571ugly310ugly487close_sd11-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd10) (closed-sd9) (closed-sd16)
       (closed-sd8) (closed-sd7) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly249ugly348ugly400ugly46ugly163ugly280ugly400ugly375reach-goal-175
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-cb3) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly250ugly689ugly512ugly555ugly397ugly616ugly408ugly617reach-goal-320
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-sd10) (closed-sd14) (closed-cb4) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly251ugly455ugly369ugly703ugly645ugly79ugly659ugly155reach-goal-203
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly252ugly684ugly682ugly230ugly603ugly114ugly447ugly55reach-goal-120
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly253ugly562ugly62ugly624ugly606ugly421ugly135ugly395reach-goal-75
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly254ugly416ugly142ugly331ugly548ugly509ugly363ugly632reach-goal-23
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly255ugly637ugly544ugly254ugly374ugly649ugly407ugly59reach-goal-281
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly256ugly48ugly312ugly599ugly527ugly320ugly275ugly180reach-goal-62
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd7) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly257ugly491ugly143ugly50ugly522ugly196ugly221ugly26reach-goal-380
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd10) (closed-sd14) (closed-sd16) (closed-sd8) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly258ugly223ugly429ugly546ugly44ugly595ugly472ugly476reach-goal-239
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-cb3) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly259ugly550ugly417ugly202ugly488ugly279ugly640ugly513reach-goal-116
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly260ugly623ugly495ugly502ugly641ugly347ugly261ugly147wait_cb3-condeff0-yes
  :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd6) (closed-sd7)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly261ugly157ugly659ugly201ugly563ugly412ugly622ugly245close_sd11-endof-condeffs
  :parameters () :precondition (and (do-close_sd11-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0))
       (not (done-1))))
 (:action
  ugly262ugly675ugly470ugly396ugly558ugly14ugly122ugly222wait_cb2-endof-condeffs
  :parameters () :precondition (and (do-wait_cb2-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0))))
 (:action ugly263ugly213ugly148ugly133ugly236ugly66ugly205ugly159reach-goal-67
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly264ugly92ugly147ugly482ugly433ugly419ugly13ugly195close_sd11
  :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action ugly265ugly442ugly178ugly635ugly232ugly481ugly3ugly268reach-goal-149
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly266ugly353ugly519ugly114ugly276ugly364ugly123ugly12reach-goal-382
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd7) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly267ugly364ugly524ugly121ugly199ugly87ugly102ugly537reach-goal-500
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly268ugly493ugly354ugly96ugly202ugly273ugly229ugly373reach-goal-412
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd10) (closed-sd8) (closed-sd16) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly269ugly179ugly323ugly472ugly278ugly484ugly584ugly40reach-goal-150
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly270ugly540ugly509ugly559ugly183ugly6ugly313ugly538close_sd16-condeff0-no-3
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action
  ugly271ugly77ugly185ugly503ugly372ugly353ugly178ugly621wait_cb3-condeff1-no-1
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd10))
  :effect (and (done-1)))
 (:action ugly272ugly685ugly134ugly625ugly314ugly368ugly456ugly506reach-goal-97
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly273ugly90ugly566ugly681ugly479ugly290ugly50ugly345reach-goal-387
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly274ugly552ugly636ugly215ugly25ugly471ugly225ugly377reach-goal-327
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly275ugly224ugly585ugly360ugly565ugly516ugly426ugly428reach-goal-413
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly276ugly597ugly103ugly450ugly200ugly382ugly316ugly548reach-goal-508
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd10) (closed-sd14) (closed-sd16) (closed-sd13) (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly277ugly699ugly309ugly144ugly531ugly337ugly19ugly355reach-goal-286
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd10) (closed-sd7) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly278ugly339ugly649ugly334ugly380ugly128ugly475ugly30reach-goal-115
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly279ugly423ugly186ugly694ugly447ugly55ugly121ugly61reach-goal-268
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd8) (closed-sd16) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly280ugly234ugly280ugly234ugly238ugly482ugly246ugly554reach-goal-492
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd8) (closed-sd16) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly281ugly300ugly349ugly444ugly16ugly32ugly340ugly558reach-goal-13
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly282ugly279ugly423ugly186ugly652ugly120ugly417ugly583reach-goal-436
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly283ugly247ugly115ugly468ugly308ugly323ugly308ugly323reach-goal-307
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly284ugly203ugly390ugly500ugly89ugly651ugly215ugly576reach-goal-441
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly285ugly373ugly210ugly543ugly88ugly500ugly69ugly103reach-goal-275
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly286ugly643ugly176ugly641ugly363ugly632ugly24ugly2reach-goal-147
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly287ugly382ugly372ugly591ugly656ugly143ugly555ugly134reach-goal-105
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly288ugly95ugly392ugly136ugly487ugly530ugly232ugly481reach-goal-2
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly289ugly76ugly249ugly348ugly358ugly631ugly277ugly1reach-goal-171
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly290ugly394ugly451ugly214ugly323ugly308ugly323ugly308reach-goal-322
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly291ugly290ugly394ugly451ugly172ugly464ugly291ugly97reach-goal-456
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly292ugly302ugly412ugly61ugly431ugly619ugly81ugly211reach-goal-82
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly293ugly594ugly328ugly276ugly555ugly134ugly106ugly603reach-goal-113
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly294ugly537ugly307ugly486ugly214ugly230ugly499ugly101reach-goal-284
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd10) (closed-sd8) (closed-sd16) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly295ugly127ugly166ugly313ugly653ugly646ugly37ugly551reach-goal-3
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly296ugly93ugly673ugly571ugly511ugly206ugly53ugly587close_sd11-condeff0-no-5
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly297ugly518ugly679ugly129ugly193ugly73ugly569ugly586reach-goal-405
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly298ugly195ugly615ugly435ugly111ugly396ugly581ugly198reach-goal-400
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-cb4) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly299ugly517ugly389ugly104ugly559ugly305ugly251ugly539reach-goal-355
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly300ugly349ugly444ugly58ugly365ugly618ugly403ugly411reach-goal-166
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly301ugly325ugly336ugly317ugly398ugly568ugly627ugly186close_sd7-condeff1-no-5
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-cb3))
  :effect (and (done-1)))
 (:action
  ugly302ugly412ugly61ugly473ugly14ugly122ugly222ugly660wait_cb3-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action ugly303ugly248ugly264ugly92ugly105ugly625ugly485ugly445reach-goal-437
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly304ugly296ugly93ugly673ugly529ugly461ugly295ugly213reach-goal-227
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly305ugly289ugly76ugly249ugly306ugly477ugly138ugly94reach-goal-341
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly306ugly669ugly608ugly180ugly407ugly59ugly282ugly216reach-goal-390
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly307ugly486ugly256ugly48ugly270ugly515ugly259ugly170reach-goal-511
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13) (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly308ugly259ugly550ugly417ugly160ugly466ugly352ugly278reach-goal-483
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly309ugly144ugly573ugly88ugly379ugly431ugly619ugly81reach-goal-210
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly310ugly91ugly617ugly233ugly156ugly74ugly21ugly233reach-goal-310
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly311ugly463ugly484ugly107ugly369ugly244ugly152ugly190close_sd9-condeff0-no-5
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly312ugly599ugly569ugly634ugly170ugly512ugly628ugly620close_cb3
  :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly313ugly695ugly379ugly387ugly638ugly498ugly561ugly354reach-goal-37
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly314ugly664ugly74ugly258ugly181ugly241ugly288ugly270close_sd16-condeff0-no-0
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action ugly315ugly447ugly655ugly159ugly299ugly315ugly189ugly266close_sd2
  :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly316ugly584ugly397ugly674ugly646ugly37ugly551ugly4reach-goal-145
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly317ugly440ugly592ugly366ugly419ugly13ugly195ugly529reach-goal-460
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd8) (closed-sd16) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly318ugly399ugly187ugly162ugly302ugly239ugly611ugly10close_sd8-condeff1-no-1
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd16))
  :effect (and (done-1)))
 (:action
  ugly319ugly666ugly332ugly200ugly256ugly601ugly504ugly602reach-goal-366
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd7) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly320ugly456ugly288ugly95ugly350ugly502ugly341ugly331reach-goal-207
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-cb3) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly321ugly324ugly145ugly606ugly491ugly534ugly43ugly192reach-goal-431
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-cb3) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly322ugly595ugly403ugly560ugly356ugly139ugly492ugly250wait_cb3-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd6))
  :effect (and (done-0)))
 (:action ugly323ugly472ugly320ugly456ugly246ugly554ugly493ugly247reach-goal-81
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly324ugly145ugly606ugly533ugly266ugly585ugly552ugly109close_sd10
  :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action
  ugly325ugly336ugly317ugly440ugly550ugly283ugly115ugly163reach-goal-279
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly326ugly246ugly285ugly373ugly168ugly267ugly546ugly430reach-goal-485
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly327ugly47ugly272ugly685ugly92ugly140ugly18ugly325reach-goal-321
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly328ugly276ugly597ugly103ugly408ugly617ugly321ugly200reach-goal-381
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly329ugly305ugly289ugly76ugly207ugly575ugly496ugly588reach-goal-167
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly330ugly217ugly583ugly445ugly11ugly100ugly654ugly182close_sd16-condeff0-no-2
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action
  ugly331ugly590ugly410ugly532ugly119ugly519ugly450ugly130reach-goal-125
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly332ugly200ugly298ugly195ugly573ugly425ugly238ugly482reach-goal-245
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly333ugly672ugly192ugly108ugly342ugly366ugly201ugly235reach-goal-104
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly334ugly422ugly87ugly589ugly148ugly187ugly483ugly56reach-goal-375
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly335ugly528ugly437ugly547ugly466ugly352ugly278ugly484close_sd4-endof-condeffs
  :parameters () :precondition (and (do-close_sd4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))))
 (:action
  ugly336ugly317ugly440ugly592ugly324ugly343ugly453ugly556reach-goal-386
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly337ugly81ugly501ugly702ugly551ugly4ugly146ugly469reach-goal-140
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd8) (closed-sd16) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly338ugly128ugly587ugly539ugly224ugly34ugly80ugly460reach-goal-440
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly339ugly649ugly334ugly422ugly45ugly358ugly631ugly277reach-goal-0
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13) (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly340ugly380ugly255ugly637ugly502ugly341ugly331ugly208reach-goal-389
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly341ugly156ugly693ugly376ugly251ugly539ugly356ugly139reach-goal-491
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly342ugly676ugly471ugly577ugly110ugly462ugly25ugly471reach-goal-224
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-sd10) (closed-cb4) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly343ugly618ugly310ugly91ugly575ugly496ugly588ugly168reach-goal-266
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly344ugly338ugly128ugly587ugly497ugly210ugly503ugly566close_sd11-condeff0-no-1
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action
  ugly345ugly138ugly150ugly542ugly416ugly429ugly252ugly545close_sd10-condeff0-no-0
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action ugly346ugly385ugly322ugly595ugly361ugly372ugly353ugly178open-cb2
  :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly347ugly418ugly261ugly157ugly617ugly321ugly200ugly382reach-goal-315
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly348ugly400ugly46ugly205ugly99ugly162ugly451ugly473reach-goal-285
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly349ugly444ugly58ugly407ugly590ugly161ugly652ugly120reach-goal-416
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-sd10) (closed-cb4) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly350ugly368ugly170ugly119ugly489ugly402ugly346ugly5close_sd16-endof-condeffs
  :parameters () :precondition (and (do-close_sd16-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd16-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly351ugly691ugly277ugly699ugly267ugly546ugly430ugly486wait_cb2
  :parameters () :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly352ugly670ugly701ugly160ugly18ugly325ugly322ugly217reach-goal-159
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-sd10) (closed-cb3) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly353ugly519ugly114ugly318ugly357ugly236ugly66ugly205reach-goal-158
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd10) (closed-sd7) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly354ugly96ugly244ugly492ugly584ugly40ugly151ugly370reach-goal-59
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly355ugly427ugly239ugly294ugly495ugly36ugly494ugly156reach-goal-73
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly356ugly466ugly57ugly678ugly597ugly301ugly505ugly468close_sd8-condeff1-no-2
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-cb4))
  :effect (and (done-1)))
 (:action
  ugly357ugly335ugly528ugly437ugly505ugly468ugly635ugly52close_sd7-condeff1-no-1
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd10))
  :effect (and (done-1)))
 (:action
  ugly358ugly204ugly240ugly406ugly325ugly322ugly217ugly160reach-goal-465
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly359ugly425ugly464ugly231ugly454ugly91ugly514ugly249reach-goal-302
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd7) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly360ugly607ugly66ugly262ugly633ugly580ugly108ugly528close_sd7-condeff0-no-0
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd6))
  :effect (and (done-0)))
 (:action
  ugly361ugly567ugly404ugly535ugly523ugly179ugly149ugly608wait_cb2-condeff0-yes
  :parameters () :precondition (and (do-wait_cb2-condeffs) (closed-sd4))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly362ugly297ugly518ugly679ugly87ugly102ugly537ugly501reach-goal-361
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly363ugly211ugly511ugly419ugly90ugly540ugly9ugly369reach-goal-243
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly364ugly524ugly121ugly241ugly226ugly207ugly575ugly496wait_cb3
  :parameters () :precondition (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action ugly365ugly191ugly110ugly663ugly438ugly44ugly595ugly472reach-goal-475
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly366ugly461ugly184ugly267ugly322ugly217ugly160ugly466reach-goal-351
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-sd10) (closed-cb3) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly367ugly646ugly413ugly351ugly649ugly407ugly59ugly282reach-goal-215
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly368ugly170ugly119ugly531ugly177ugly598ugly459ugly379reach-goal-430
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd7) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly369ugly703ugly687ugly616ugly195ugly529ugly461ugly295reach-goal-212
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly370ugly644ugly63ugly513ugly74ugly21ugly233ugly311reach-goal-193
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly371ugly556ugly245ugly80ugly474ugly418ugly630ugly563reach-goal-411
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly372ugly591ugly698ugly596ugly568ugly627ugly186ugly578reach-goal-419
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly373ugly210ugly543ugly130ugly126ugly62ugly41ugly371reach-goal-163
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly374ugly263ugly213ugly148ugly91ugly514ugly249ugly303reach-goal-464
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-cb4) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly375ugly476ugly393ugly327ugly5ugly525ugly104ugly212reach-goal-358
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly376ugly293ugly594ugly328ugly234ugly23ugly361ugly372reach-goal-352
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-sd10) (closed-cb4) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly377ugly483ugly175ugly613ugly298ugly119ugly519ugly450reach-goal-129
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly378ugly228ugly337ugly81ugly459ugly379ugly431ugly619reach-goal-80
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-cb4) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly379ugly387ugly680ugly94ugly17ugly470ugly392ugly90close_sd11-condeff1-no-2
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-cb4))
  :effect (and (done-1)))
 (:action
  ugly380ugly255ugly637ugly544ugly212ugly359ugly508ugly444reach-goal-490
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly381ugly582ugly120ugly282ugly237ugly226ugly207ugly575reach-goal-495
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-cb3) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly382ugly372ugly591ugly698ugly554ugly493ugly247ugly82reach-goal-153
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly383ugly304ugly296ugly93ugly631ugly277ugly1ugly172reach-goal-463
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-cb3) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly384ugly165ugly72ugly135ugly210ugly503ugly566ugly532reach-goal-56
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly385ugly322ugly595ugly403ugly518ugly185ugly488ugly279close_sd6-condeff0-no-1
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action
  ugly386ugly677ugly604ugly319ugly624ugly296ugly567ugly357reach-goal-235
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly387ugly680ugly94ugly59ugly452ugly237ugly226ugly207close_sd7-condeff1-no-2
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd9))
  :effect (and (done-1)))
 (:action ugly388ugly227ugly657ugly82ugly473ugly286ugly550ugly283reach-goal-114
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly389ugly104ugly601ugly460ugly80ugly460ugly441ugly479reach-goal-289
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly390ugly500ugly131ugly692ugly135ugly395ugly76ugly16reach-goal-31
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-sd10) (closed-cb3) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly391ugly167ugly182ugly54ugly84ugly527ugly320ugly275reach-goal-179
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly392ugly136ugly529ugly588ugly404ugly661ugly96ugly253reach-goal-421
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly393ugly327ugly47ugly272ugly643ugly142ugly110ugly462reach-goal-24
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly394ugly451ugly214ugly365ugly149ugly608ugly658ugly334reach-goal-343
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly395ugly653ugly330ugly217ugly541ugly92ugly140ugly18reach-goal-324
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly396ugly600ugly216ugly402ugly250ugly590ugly161ugly652reach-goal-119
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly397ugly674ugly688ugly574ugly56ugly376ugly573ugly425reach-goal-237
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly398ugly454ugly49ugly357ugly293ugly394ugly188ugly489reach-goal-401
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly399ugly187ugly162ugly344ugly296ugly567ugly357ugly236reach-goal-65
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly400ugly46ugly205ugly141ugly579ugly405ugly606ugly421reach-goal-134
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly401ugly580ugly311ugly463ugly442ugly624ugly296ugly567reach-goal-356
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly402ugly292ugly302ugly412ugly19ugly355ugly287ugly333reach-goal-331
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly403ugly560ugly398ugly454ugly7ugly262ugly255ugly449reach-goal-509
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly404ugly535ugly565ugly383ugly262ugly255ugly449ugly510reach-goal-218
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly405ugly443ugly207ugly352ugly628ugly620ugly600ugly327reach-goal-432
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-cb4) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly406ugly367ugly646ugly413ugly309ugly84ugly527ugly320reach-goal-274
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly407ugly632ugly347ugly418ugly219ugly560ugly31ugly174reach-goal-10
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly408ugly251ugly455ugly369ugly661ugly96ugly253ugly422reach-goal-457
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly409ugly433ugly189ugly243ugly560ugly31ugly174ugly11reach-goal-99
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly410ugly532ugly161ugly287ugly340ugly558ugly14ugly122reach-goal-221
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly411ugly658ugly479ugly269ugly137ugly297ugly271ugly336close_sd7-endof-condeffs
  :parameters () :precondition (and (do-close_sd7-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly412ugly61ugly473ugly56ugly457ugly427ugly42ugly260reach-goal-44
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd8) (closed-sd16) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly413ugly351ugly691ugly277ugly657ugly637ugly614ugly118reach-goal-172
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd8) (closed-sd16) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly414ugly299ugly517ugly389ugly62ugly41ugly371ugly164close_sd11-condeff0-no-4
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action ugly415ugly465ugly652ugly220ugly47ugly272ugly67ugly423reach-goal-301
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly416ugly142ugly331ugly590ugly368ugly456ugly506ugly98reach-goal-347
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly417ugly202ugly530ugly619ugly339ugly72ugly656ugly143close_sd9
  :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action ugly418ugly261ugly157ugly659ugly159ugly68ugly157ugly64reach-goal-303
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-cb3) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly419ugly132ugly661ugly378ugly186ugly578ugly420ugly597reach-goal-300
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd8) (closed-sd16) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly420ugly295ugly127ugly166ugly271ugly336ugly579ugly405open-sd13
  :parameters () :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd13) (not (closed-sd13))))
 (:action ugly421ugly83ugly686ugly218ugly264ugly490ugly526ugly448reach-goal-208
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-cb4) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly422ugly87ugly589ugly190ugly317ugly610ugly380ugly128reach-goal-474
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly423ugly186ugly694ugly489ugly569ugly586ugly406ugly284close_sd10-condeff0-no-5
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action
  ugly424ugly265ugly442ugly178ugly593ugly338ugly166ugly559reach-goal-304
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-cb4) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly425ugly464ugly231ugly496ugly463ugly415ugly452ugly237reach-goal-225
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly426ugly85ugly370ugly644ugly21ugly233ugly311ugly194reach-goal-280
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly427ugly239ugly294ugly537ugly265ugly410ugly28ugly293reach-goal-393
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly428ugly146ugly206ugly140ugly10ugly634ugly263ugly299reach-goal-314
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly429ugly546ugly86ugly420ugly253ugly422ugly458ugly440close_sd7-condeff0-no-1
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly430ugly401ugly580ugly311ugly421ugly135ugly395ugly76reach-goal-15
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-cb3) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly431ugly342ugly676ugly471ugly535ugly397ugly616ugly408open-sd2
  :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd2) (not (closed-sd2))))
 (:action ugly432ugly374ugly263ugly213ugly106ugly603ugly114ugly447reach-goal-54
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly433ugly189ugly243ugly602ugly287ugly333ugly332ugly132reach-goal-435
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly434ugly506ugly109ugly578ugly503ugly566ugly532ugly57open-sd15
  :parameters () :precondition
  (and (do-normal) (closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd15) (not (closed-sd15))))
 (:action ugly435ugly153ugly525ugly630ugly180ugly63ugly641ugly347reach-goal-260
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly436ugly43ugly536ugly638ugly598ugly459ugly379ugly431open-cb4
  :parameters () :precondition
  (and (do-normal) (closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-cb4) (not (closed-cb4))))
 (:action
  ugly437ugly547ugly508ugly125ugly406ugly284ugly549ugly582reach-goal-196
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly438ugly609ugly97ugly197ugly521ugly655ugly644ugly350reach-goal-501
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly439ugly333ugly672ugly192ugly66ugly205ugly159ugly68reach-goal-156
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd10) (closed-sd8) (closed-sd16) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly440ugly592ugly366ugly461ugly142ugly110ugly462ugly25reach-goal-470
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly441ugly477ugly174ugly51ugly589ugly633ugly580ugly108close_sd13
  :parameters () :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd13) (not (not-closed-sd13))))
 (:action ugly442ugly178ugly635ugly274ugly510ugly219ugly560ugly31reach-goal-173
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly443ugly207ugly352ugly670ugly659ugly155ugly204ugly330reach-goal-84
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly444ugly58ugly407ugly632ugly305ugly251ugly539ugly356reach-goal-138
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly445ugly53ugly183ugly100ugly60ugly474ugly418ugly630close_sd9-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd11) (closed-sd10) (closed-cb4))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly446ugly660ugly238ugly469ugly116ugly49ugly78ugly592reach-goal-477
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly447ugly655ugly159ugly341ugly114ugly447ugly55ugly121reach-goal-60
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd10) (closed-sd14) (closed-sd8) (closed-sd16) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly448ugly73ugly627ugly291ugly248ugly547ugly145ugly265reach-goal-409
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly449ugly124ugly667ugly194ugly346ugly5ugly525ugly104reach-goal-211
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly450ugly242ugly69ugly226ugly301ugly505ugly468ugly635reach-goal-51
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly451ugly214ugly365ugly191ugly68ugly157ugly64ugly304reach-goal-359
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly452ugly690ugly548ugly629ugly229ugly373ugly413ugly349reach-goal-338
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly453ugly236ugly44ugly628ugly443ugly533ugly22ugly158reach-goal-174
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd7) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly454ugly49ugly357ugly335ugly486ugly657ugly637ugly614reach-goal-117
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly455ugly369ugly703ugly687ugly574ugly389ugly335ugly136close_sd8-endof-condeffs
  :parameters () :precondition (and (do-close_sd8-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly456ugly288ugly95ugly392ugly94ugly342ugly366ugly201reach-goal-234
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly457ugly549ugly603ugly117ugly23ugly361ugly372ugly353reach-goal-177
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly458ugly386ugly677ugly604ugly277ugly1ugly172ugly464reach-goal-290
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly459ugly415ugly465ugly652ugly178ugly621ugly594ugly292reach-goal-318
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd7) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly460ugly122ugly662ugly538ugly320ugly275ugly180ugly63close_sd6-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd8) (closed-sd16) (closed-cb4)) :effect
  (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action
  ugly461ugly184ugly267ugly364ugly482ugly246ugly554ugly493reach-goal-246
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly462ugly614ugly303ugly248ugly222ugly660ugly591ugly645reach-goal-78
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd7) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly463ugly484ugly107ugly411ugly616ugly408ugly617ugly321reach-goal-199
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly464ugly231ugly496ugly505ugly131ugly326ugly511ugly206reach-goal-52
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly465ugly652ugly220ugly89ugly95ugly639ugly577ugly46close_sd16-condeff1-no-0
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-sd6))
  :effect (and (done-1)))
 (:action ugly466ugly57ugly678ugly639ugly313ugly538ugly518ugly185reach-goal-487
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly467ugly561ugly656ugly71ugly279ugly640ugly513ugly117close_sd6-condeff1-no-1
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd16))
  :effect (and (done-1)))
 (:action ugly468ugly350ugly368ugly170ugly77ugly385ugly223ugly495reach-goal-35
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly469ugly158ugly361ugly567ugly362ugly312ugly133ugly409reach-goal-442
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly470ugly396ugly600ugly216ugly360ugly51ugly642ugly29reach-goal-323
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly471ugly577ugly152ugly229ugly129ugly626ugly191ugly609reach-goal-182
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly472ugly320ugly456ugly288ugly53ugly587ugly536ugly124reach-goal-308
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly473ugly56ugly499ugly196ugly3ugly268ugly150ugly256close_cb2
  :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly474ugly642ugly504ugly575ugly605ugly599ugly264ugly490close_sd15
  :parameters () :precondition
  (and (do-normal) (not-closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd15) (not (not-closed-sd15))))
 (:action ugly475ugly232ugly78ugly598ugly97ugly457ugly427ugly42reach-goal-259
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly476ugly393ugly327ugly47ugly230ugly499ugly101ugly285reach-goal-88
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly477ugly174ugly51ugly631ugly272ugly67ugly423ugly302reach-goal-238
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd7) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly478ugly221ugly408ugly251ugly413ugly349ugly339ugly72wait_cb4-endof-condeffs
  :parameters () :precondition (and (do-wait_cb4-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-wait_cb4-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly479ugly269ugly179ugly323ugly430ugly486ugly657ugly637open-sd5
  :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd5) (not (closed-sd5))))
 (:action ugly480ugly665ugly520ugly431ugly300ugly399ugly88ugly500reach-goal-68
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly481ugly557ugly474ugly642ugly462ugly25ugly471ugly225reach-goal-376
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly482ugly475ugly232ugly78ugly556ugly387ugly435ugly497reach-goal-209
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly483ugly175ugly613ugly340ugly338ugly166ugly559ugly305reach-goal-250
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly484ugly107ugly411ugly658ugly437ugly125ugly127ugly351close_sd6-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd7) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly485ugly169ugly620ugly441ugly435ugly497ugly210ugly503close_sd9-condeff1-no-2
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-cb4))
  :effect (and (done-1)))
 (:action ugly486ugly256ugly48ugly312ugly557ugly214ugly230ugly499reach-goal-100
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly487ugly283ugly247ugly115ugly426ugly428ugly414ugly227reach-goal-377
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly488ugly586ugly650ugly199ugly109ugly542ugly234ugly23reach-goal-360
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly489ugly611ugly111ugly371ugly514ugly249ugly303ugly465reach-goal-26
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly490ugly434ugly506ugly109ugly536ugly124ugly309ugly84close_sd14
  :parameters () :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd14) (not (not-closed-sd14))))
 (:action
  ugly491ugly143ugly50ugly564ugly609ugly183ugly6ugly313close_sd11-condeff1-no-0
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd10))
  :effect (and (done-1)))
 (:action
  ugly492ugly626ugly281ugly300ugly307ugly177ugly598ugly459reach-goal-378
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly493ugly354ugly96ugly244ugly450ugly130ugly126ugly62reach-goal-40
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly494ugly579ugly70ugly430ugly359ugly508ugly444ugly491close_sd11-condeff0-no-3
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action ugly495ugly502ugly683ugly260ugly581ugly198ugly401ugly507reach-goal-70
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly496ugly505ugly173ugly514ugly42ugly260ugly45ugly358close_sd8-condeff0-no-5
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action
  ugly497ugly257ugly491ugly143ugly8ugly416ugly429ugly252close_sd10-condeff0-no-1
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action ugly498ugly112ugly68ugly612ugly139ugly492ugly250ugly590reach-goal-160
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-sd10) (closed-cb4) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly499ugly196ugly45ugly541ugly349ugly339ugly72ugly656reach-goal-142
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd7) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly500ugly131ugly692ugly177ugly484ugly584ugly40ugly151reach-goal-369
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly501ugly702ugly593ugly459ugly373ugly413ugly349ugly339reach-goal-71
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly502ugly683ugly260ugly623ugly453ugly556ugly387ugly435reach-goal-496
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-cb4) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly503ugly414ugly299ugly517ugly347ugly261ugly147ugly589close_sd8-condeff1-no-0
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd6))
  :effect (and (done-1)))
 (:action ugly504ugly575ugly647ugly99ugly242ugly77ugly385ugly223reach-goal-494
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd7) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly505ugly173ugly514ugly84ugly394ugly188ugly489ugly402reach-goal-345
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly506ugly109ugly578ugly545ugly382ugly316ugly548ugly509reach-goal-362
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly507ugly467ugly561ugly656ugly29ugly324ugly343ugly453close_sd9-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd11) (closed-sd10) (closed-sd16)
       (closed-sd8) (closed-sd7) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly508ugly125ugly448ugly73ugly585ugly552ugly109ugly542reach-goal-233
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly509ugly559ugly225ugly345ugly96ugly253ugly422ugly458reach-goal-439
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly510ugly507ugly467ugly561ugly614ugly118ugly173ugly648reach-goal-98
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly511ugly419ugly132ugly661ugly336ugly579ugly405ugly606reach-goal-420
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly512ugly555ugly439ugly333ugly630ugly563ugly412ugly622reach-goal-244
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly513ugly116ugly106ugly301ugly283ugly115ugly163ugly280reach-goal-399
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-cb3) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly514ugly84ugly436ugly43ugly494ugly156ugly74ugly21reach-goal-232
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly515ugly118ugly438ugly609ugly55ugly121ugly61ugly269reach-goal-192
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-sd10) (closed-sd14) (closed-cb4) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly516ugly193ugly622ugly250ugly647ugly70ugly169ugly181reach-goal-240
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-cb4) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly517ugly389ugly104ugly601ugly418ugly630ugly563ugly412open-cb1
  :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly518ugly679ugly129ugly235ugly420ugly597ugly301ugly505reach-goal-467
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly519ugly114ugly318ugly399ugly145ugly265ugly410ugly28reach-goal-292
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly520ugly431ugly342ugly676ugly429ugly252ugly545ugly544reach-goal-183
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly521ugly55ugly270ugly540ugly467ugly384ugly314ugly368reach-goal-455
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly522ugly570ugly428ugly146ugly164ugly535ugly397ugly616reach-goal-407
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly523ugly363ugly211ugly511ugly377ugly328ugly8ugly416reach-goal-428
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd8) (closed-sd16) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly524ugly121ugly241ugly268ugly451ugly473ugly286ugly550reach-goal-282
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly525ugly630ugly222ugly163ugly629ugly65ugly386ugly258close_sd9-condeff0-no-0
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action
  ugly526ugly375ugly476ugly393ugly285ugly89ugly651ugly215close_sd7-condeff1-no-3
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd16))
  :effect (and (done-1)))
 (:action
  ugly527ugly286ugly643ugly176ugly599ugly264ugly490ugly526reach-goal-447
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-sd10) (closed-sd14) (closed-cb3) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly528ugly437ugly547ugly508ugly83ugly298ugly119ugly519reach-goal-449
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly529ugly588ugly446ugly660ugly196ugly221ugly26ugly381reach-goal-74
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly530ugly619ugly381ugly582ugly78ugly592ugly478ugly47reach-goal-271
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-cb3) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly531ugly219ugly697ugly208ugly485ugly445ugly438ugly44wait_cb3-condeff1-no-2
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd9))
  :effect (and (done-1)))
 (:action ugly532ugly161ugly287ugly382ugly330ugly85ugly434ugly613reach-goal-32
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-sd10) (closed-cb4) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly533ugly308ugly259ugly550ugly375ugly176ugly365ugly618reach-goal-402
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly534ugly551ugly377ugly483ugly133ugly409ugly443ugly533reach-goal-21
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly535ugly565ugly383ugly304ugly254ugly112ugly446ugly17reach-goal-469
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly536ugly638ugly640ugly209ugly446ugly17ugly470ugly392reach-goal-89
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly537ugly307ugly486ugly256ugly6ugly313ugly538ugly518reach-goal-184
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly538ugly362ugly297ugly518ugly637ugly614ugly118ugly173wait_cb4-condeff0-yes
  :parameters () :precondition
  (and (do-wait_cb4-condeffs) (closed-sd11) (closed-sd10) (closed-sd9)) :effect
  (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly539ugly266ugly353ugly519ugly72ugly656ugly143ugly555reach-goal-133
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly540ugly509ugly559ugly225ugly303ugly465ugly27ugly480reach-goal-219
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly541ugly391ugly167ugly182ugly12ugly383ugly86ugly521wait_cb4-condeff1-no-2
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd16))
  :effect (and (done-1)))
 (:action ugly542ugly458ugly386ugly677ugly562ugly15ugly54ugly111reach-goal-395
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly543ugly130ugly168ugly696ugly481ugly3ugly268ugly150reach-goal-255
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13) (closed-cb3)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly544ugly254ugly416ugly142ugly289ugly520ugly593ugly338reach-goal-165
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly545ugly424ugly265ugly442ugly136ugly636ugly329ugly424reach-goal-392
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly546ugly86ugly420ugly295ugly85ugly434ugly613ugly33open-sd14
  :parameters () :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd14) (not (closed-sd14))))
 (:action
  ugly547ugly508ugly125ugly448ugly31ugly174ugly11ugly100wait_cb4-condeff1-no-1
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd8))
  :effect (and (done-1)))
 (:action ugly548ugly629ugly271ugly77ugly143ugly555ugly134ugly106open-sd16
  :parameters () :precondition
  (and (do-normal) (closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd16) (not (closed-sd16))))
 (:action ugly549ugly603ugly117ugly65ugly71ugly564ugly257ugly623reach-goal-19
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly550ugly417ugly202ugly530ugly577ugly46ugly522ugly196reach-goal-220
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd10) (closed-sd8) (closed-sd16) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly551ugly377ugly483ugly175ugly571ugly310ugly487ugly530reach-goal-231
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly552ugly636ugly215ugly67ugly273ugly229ugly373ugly413reach-goal-348
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd10) (closed-sd8) (closed-sd16) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly553ugly154ugly572ugly275ugly182ugly517ugly113ugly615reach-goal-462
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd7) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly554ugly534ugly551ugly377ugly441ugly479ugly290ugly50reach-goal-344
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly555ugly439ugly333ugly672ugly150ugly256ugly601ugly504close_cb1
  :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly556ugly245ugly80ugly516ugly151ugly370ugly60ugly474reach-goal-417
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly557ugly474ugly642ugly504ugly533ugly22ugly158ugly175reach-goal-242
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly558ugly581ugly155ugly395ugly611ugly10ugly634ugly263reach-goal-298
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly559ugly225ugly345ugly138ugly108ugly528ugly570ugly199reach-goal-86
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly560ugly398ugly454ugly49ugly315ugly189ugly266ugly585close_sd10-condeff1-no-1
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd9))
  :effect (and (done-1)))
 (:action
  ugly561ugly656ugly71ugly321ugly282ugly216ugly391ugly248close_sd10-condeff0-no-3
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action ugly562ugly62ugly624ugly648ugly384ugly314ugly368ugly456reach-goal-505
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly563ugly453ugly236ugly44ugly586ugly406ugly284ugly549close_sd4-condeff0-yes
  :parameters () :precondition (and (do-close_sd4-condeffs) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly564ugly651ugly490ugly434ugly464ugly291ugly97ugly457reach-goal-426
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly565ugly383ugly304ugly296ugly51ugly642ugly29ugly324reach-goal-342
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly566ugly681ugly521ugly55ugly228ugly107ugly543ugly565close_sd16-condeff0-no-1
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-sd10))
  :effect (and (done-0)))
 (:action ugly567ugly404ugly535ugly565ugly341ugly331ugly208ugly390reach-goal-34
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly568ugly253ugly562ugly62ugly582ugly197ugly607ugly317open-sd9
  :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd9) (not (closed-sd9))))
 (:action
  ugly569ugly634ugly212ugly164ugly415ugly452ugly237ugly226reach-goal-206
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd7) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly570ugly428ugly146ugly206ugly98ugly348ugly612ugly202reach-goal-272
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-cb4) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly571ugly553ugly154ugly572ugly233ugly311ugly194ugly281reach-goal-397
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly572ugly275ugly224ugly585ugly318ugly596ugly647ugly70reach-goal-168
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly573ugly88ugly421ugly83ugly644ugly350ugly502ugly341reach-goal-330
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly574ugly98ugly358ugly204ugly198ugly401ugly507ugly71close_sd9-condeff1-no-0
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd11))
  :effect (and (done-1)))
 (:action
  ugly575ugly647ugly99ugly284ugly161ugly652ugly120ugly417close_sd4-condeff0-no-0
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly576ugly79ugly576ugly79ugly534ugly43ugly192ugly432reach-goal-293
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly577ugly152ugly229ugly171ugly63ugly641ugly347ugly261reach-goal-146
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly578ugly545ugly424ugly265ugly400ugly375ugly176ugly365open-sd1
  :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd1) (not (closed-sd1))))
 (:action ugly579ugly70ugly430ugly401ugly538ugly518ugly185ugly488reach-goal-278
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly580ugly311ugly463ugly484ugly65ugly386ugly258ugly557reach-goal-213
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly581ugly155ugly395ugly653ugly288ugly270ugly515ugly259reach-goal-169
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly582ugly120ugly282ugly279ugly381ugly75ugly300ugly399reach-goal-87
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly583ugly445ugly53ugly183ugly58ugly653ugly646ugly37close_sd10-condeff1-no-0
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd11))
  :effect (and (done-1)))
 (:action ugly584ugly397ugly674ugly688ugly532ugly57ugly604ugly231reach-goal-164
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly585ugly360ugly607ugly66ugly220ugly171ugly439ugly374wait_cb4-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action
  ugly586ugly650ugly199ugly151ugly107ugly543ugly565ugly516reach-goal-425
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly587ugly539ugly266ugly353ugly477ugly138ugly94ugly342reach-goal-365
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly588ugly446ugly660ugly238ugly427ugly42ugly260ugly45reach-goal-357
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly589ugly190ugly359ugly425ugly422ugly458ugly440ugly571reach-goal-309
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly590ugly410ugly532ugly161ugly245ugly541ugly92ugly140reach-goal-17
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly591ugly698ugly596ugly610ugly146ugly469ugly141ugly137reach-goal-296
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly592ugly366ugly461ugly184ugly225ugly377ugly328ugly8reach-goal-415
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-sd10) (closed-cb3) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly593ugly459ugly415ugly465ugly610ugly380ugly128ugly475reach-goal-29
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly594ugly328ugly276ugly597ugly61ugly269ugly193ugly73close_sd7-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd6) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly595ugly403ugly560ugly398ugly412ugly622ugly245ugly541reach-goal-91
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly596ugly610ugly188ugly64ugly445ugly438ugly44ugly595reach-goal-471
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly597ugly103ugly450ugly242ugly27ugly480ugly220ugly171reach-goal-438
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly598ugly139ugly481ugly557ugly432ugly294ugly48ugly58wait_cb4-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd6))
  :effect (and (done-1)))
 (:action
  ugly599ugly569ugly634ugly212ugly122ugly222ugly660ugly591close_sd6-endof-condeffs
  :parameters () :precondition (and (do-close_sd6-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly600ugly216ugly402ugly292ugly260ugly45ugly358ugly631reach-goal-276
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly601ugly460ugly122ugly662ugly496ugly588ugly168ugly267close_sd10-condeff0-no-2
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd16))
  :effect (and (done-0)))
 (:action ugly602ugly329ugly305ugly289ugly34ugly80ugly460ugly441reach-goal-478
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd10) (closed-sd7) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly603ugly117ugly65ugly113ugly231ugly165ugly242ugly77reach-goal-384
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-sd10) (closed-sd14) (closed-cb4) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly604ugly319ugly666ugly332ugly158ugly175ugly243ugly131reach-goal-325
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly605ugly498ugly112ugly68ugly570ugly199ugly87ugly102close_sd11-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd10) (closed-sd9) (closed-cb4))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly606ugly533ugly308ugly259ugly508ugly444ugly491ugly534reach-goal-42
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly607ugly66ugly262ugly675ugly428ugly414ugly227ugly378reach-goal-6
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly608ugly180ugly449ugly124ugly625ugly485ugly445ugly438reach-goal-43
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly609ugly97ugly197ugly563ugly411ugly167ugly218ugly455reach-goal-306
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly610ugly188ugly64ugly487ugly241ugly288ugly270ugly515reach-goal-258
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly611ugly111ugly371ugly556ugly203ugly153ugly553ugly572reach-goal-466
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly612ugly181ugly654ugly554ugly492ugly250ugly590ugly161wait_cb4-condeff1-yes
  :parameters () :precondition
  (and (do-wait_cb4-condeffs) (closed-sd6) (closed-sd8) (closed-sd16)) :effect
  (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action
  ugly613ugly340ugly380ugly255ugly595ugly472ugly476ugly240reach-goal-128
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-sd10) (closed-sd14) (closed-cb4) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly614ugly303ugly248ugly264ugly50ugly345ugly388ugly454reach-goal-90
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly615ugly435ugly153ugly525ugly588ugly168ugly267ugly546reach-goal-429
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly616ugly237ugly123ugly668ugly130ugly126ugly62ugly41reach-goal-370
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly617ugly233ugly198ugly497ugly215ugly576ugly442ugly624reach-goal-295
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly618ugly310ugly91ugly617ugly191ugly609ugly183ugly6reach-goal-312
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly619ugly381ugly582ugly120ugly240ugly129ugly626ugly191open-sd10
  :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd10) (not (closed-sd10))))
 (:action ugly620ugly441ugly477ugly174ugly9ugly369ugly244ugly152reach-goal-189
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly621ugly478ugly221ugly408ugly209ugly93ugly289ugly520wait_cb3-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd11))
  :effect (and (done-1)))
 (:action
  ugly622ugly250ugly689ugly512ugly513ugly117ugly643ugly142reach-goal-109
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly623ugly495ugly502ugly683ugly218ugly455ugly307ugly177wait_cb3-condeff1-no-5
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action ugly624ugly648ugly426ugly85ugly328ugly8ugly416ugly429reach-goal-251
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly625ugly356ugly466ugly57ugly636ugly329ugly424ugly393reach-goal-38
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly626ugly281ugly300ugly349ugly402ugly346ugly5ugly525reach-goal-103
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly627ugly291ugly290ugly394ugly409ugly443ugly533ugly22reach-goal-157
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly628ugly485ugly169ugly620ugly399ugly88ugly500ugly69reach-goal-102
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly629ugly271ugly77ugly185ugly461ugly295ugly213ugly228reach-goal-106
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly630ugly222ugly163ugly671ugly480ugly220ugly171ugly439reach-goal-373
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly631ugly314ugly664ugly74ugly216ugly391ugly248ugly547reach-goal-144
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-cb4) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly632ugly347ugly418ugly261ugly115ugly163ugly280ugly400reach-goal-374
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly633ugly558ugly581ugly155ugly353ugly178ugly621ugly594reach-goal-291
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly634ugly212ugly164ugly457ugly507ugly71ugly564ugly257close_sd12
  :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (closed-sd12) (not (not-closed-sd12))))
 (:action ugly635ugly274ugly552ugly636ugly173ugly648ugly99ugly162reach-goal-450
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly636ugly215ugly67ugly315ugly405ugly606ugly421ugly135reach-goal-394
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly637ugly544ugly254ugly416ugly100ugly654ugly182ugly517reach-goal-112
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-cb4) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly638ugly640ugly209ugly488ugly544ugly184ugly95ugly639close_sd7-condeff1-no-4
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd8))
  :effect (and (done-1)))
 (:action ugly639ugly355ugly427ugly239ugly252ugly545ugly544ugly184reach-goal-94
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd10) (closed-sd7) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly640ugly209ugly488ugly586ugly608ugly658ugly334ugly344close_sd16-condeff1-no-1
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-sd8))
  :effect (and (done-1)))
 (:action
  ugly641ugly405ugly443ugly207ugly310ugly487ugly530ugly232reach-goal-480
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-sd10) (closed-cb4) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly642ugly504ugly575ugly647ugly57ugly604ugly231ugly165reach-goal-241
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly643ugly176ugly641ugly405ugly401ugly507ugly71ugly564reach-goal-256
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13) (closed-cb4)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly644ugly63ugly513ugly116ugly64ugly304ugly360ugly51close_sd6-condeff1-no-0
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd8))
  :effect (and (done-1)))
 (:action ugly645ugly316ugly584ugly397ugly632ugly24ugly2ugly148reach-goal-186
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly646ugly413ugly351ugly691ugly235ugly105ugly625ugly485reach-goal-444
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd10) (closed-sd14) (closed-sd8) (closed-sd13) (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly647ugly99ugly284ugly203ugly348ugly612ugly202ugly273reach-goal-228
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly648ugly426ugly85ugly370ugly602ugly367ugly650ugly274reach-goal-223
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-sd10) (closed-cb3) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly649ugly334ugly422ugly87ugly547ugly145ugly265ugly410reach-goal-27
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly650ugly199ugly151ugly149ugly410ugly28ugly293ugly394reach-goal-187
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly651ugly490ugly434ugly506ugly67ugly423ugly302ugly239open-sd8
  :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect (and (increase (total-cost) 1) (not-closed-sd8) (not (closed-sd8))))
 (:action ugly652ugly220ugly89ugly137ugly658ugly334ugly344ugly523reach-goal-178
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly653ugly330ugly217ugly583ugly403ugly411ugly167ugly218reach-goal-454
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly654ugly554ugly534ugly551ugly335ugly136ugly636ugly329reach-goal-423
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly655ugly159ugly341ugly156ugly651ugly215ugly576ugly442close_sd8
  :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly656ugly71ugly321ugly324ugly103ugly276ugly364ugly123reach-goal-11
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly657ugly82ugly515ugly118ugly396ugly581ugly198ugly401reach-goal-506
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly658ugly479ugly269ugly179ugly281ugly398ugly568ugly627reach-goal-185
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly659ugly201ugly605ugly498ugly70ugly169ugly181ugly241reach-goal-287
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-sd10) (closed-cb3) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly660ugly238ugly469ugly158ugly319ugly629ugly65ugly386reach-goal-257
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly661ugly378ugly228ugly337ugly39ugly203ugly153ugly553close_sd7-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd16) (closed-sd8) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly662ugly538ugly362ugly297ugly476ugly240ugly129ugly626reach-goal-190
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd7) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly663ugly480ugly665ugly520ugly389ugly335ugly136ugly636reach-goal-328
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly664ugly74ugly258ugly223ugly387ugly435ugly497ugly210reach-goal-502
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly665ugly520ugly431ugly342ugly634ugly263ugly299ugly315reach-goal-188
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd10) (closed-sd14) (closed-sd8) (closed-sd13) (closed-sd16)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly666ugly332ugly200ugly298ugly153ugly553ugly572ugly467reach-goal-383
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-sd10) (closed-sd14) (closed-cb3) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly667ugly194ugly388ugly227ugly615ugly463ugly415ugly452reach-goal-236
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd9)
       (closed-sd8) (closed-sd16) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly668ugly172ugly409ugly433ugly147ugly589ugly633ugly580reach-goal-107
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly669ugly608ugly180ugly449ugly82ugly154ugly404ugly661reach-goal-95
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-sd10) (closed-cb3) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly670ugly701ugly160ugly60ugly33ugly605ugly599ugly264reach-goal-489
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly671ugly522ugly570ugly428ugly104ugly212ugly359ugly508reach-goal-443
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly672ugly192ugly108ugly384ugly123ugly12ugly383ugly86close_sd16-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd16-condeffs) (closed-sd6) (closed-sd8) (closed-cb4)) :effect
  (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly673ugly571ugly553ugly154ugly530ugly232ugly481ugly3reach-goal-267
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly674ugly688ugly574ugly98ugly316ugly548ugly509ugly363close_sd8-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd6) (closed-sd16) (closed-cb4)) :effect
  (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly675ugly470ugly396ugly600ugly174ugly11ugly100ugly654reach-goal-181
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly676ugly471ugly577ugly152ugly187ugly483ugly56ugly376close_sd7-condeff1-no-0
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd11))
  :effect (and (done-1)))
 (:action ugly677ugly604ugly319ugly666ugly290ugly50ugly345ugly388reach-goal-453
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly678ugly639ugly355ugly427ugly197ugly607ugly317ugly610reach-goal-379
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly679ugly129ugly235ugly462ugly572ugly467ugly384ugly314reach-goal-367
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-cb3) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly680ugly94ugly59ugly494ugly537ugly501ugly362ugly312reach-goal-132
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly681ugly521ugly55ugly270ugly498ugly561ugly354ugly38reach-goal-143
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-sd9) (closed-cb3) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly682ugly230ugly645ugly316ugly542ugly234ugly23ugly361reach-goal-371
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly683ugly260ugly623ugly495ugly460ugly441ugly479ugly290reach-goal-49
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly684ugly682ugly230ugly645ugly274ugly224ugly34ugly80reach-goal-459
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly685ugly134ugly625ugly356ugly424ugly393ugly39ugly203reach-goal-152
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-sd8) (closed-sd16)
       (closed-cb4) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly686ugly218ugly306ugly669ugly566ugly532ugly57ugly604reach-goal-230
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly687ugly616ugly237ugly123ugly626ugly191ugly609ugly183reach-goal-5
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly688ugly574ugly98ugly358ugly162ugly451ugly473ugly286close_sd10-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-sd11) (closed-sd9) (closed-cb4))
  :effect (and (done-1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly689ugly512ugly555ugly439ugly291ugly97ugly457ugly427reach-goal-41
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly690ugly548ugly629ugly271ugly35ugly318ugly596ugly647reach-goal-69
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly691ugly277ugly699ugly309ugly102ugly537ugly501ugly362reach-goal-311
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly692ugly177ugly526ugly375ugly434ugly613ugly33ugly605wait_cb3-endof-condeffs
  :parameters () :precondition (and (do-wait_cb3-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0)) (not (done-1))))
 (:action
  ugly693ugly376ugly293ugly594ugly286ugly550ugly283ugly115reach-goal-162
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly694ugly489ugly611ugly111ugly329ugly424ugly393ugly39reach-goal-202
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly695ugly379ugly387ugly680ugly52ugly574ugly389ugly335reach-goal-135
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly696ugly523ugly363ugly211ugly469ugly141ugly137ugly297reach-goal-270
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd9) (closed-sd7) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly697ugly208ugly527ugly286ugly601ugly504ugly602ugly367wait_cb4-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd10))
  :effect (and (done-0)))
 (:action ugly698ugly596ugly610ugly188ugly22ugly158ugly175ugly243reach-goal-130
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly699ugly309ugly144ugly573ugly46ugly522ugly196ugly221reach-goal-25
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action
  ugly700ugly633ugly558ugly581ugly113ugly615ugly463ugly415reach-goal-451
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly701ugly160ugly60ugly75ugly468ugly635ugly52ugly574reach-goal-388
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-sd7) (closed-cb4) (closed-sd8)
       (closed-sd16) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly702ugly593ugly459ugly415ugly423ugly302ugly239ugly611reach-goal-9
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb4) (closed-sd16) (closed-sd8) (closed-sd7)
       (closed-cb3) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))
 (:action ugly703ugly687ugly616ugly237ugly81ugly211ugly83ugly298reach-goal-118
  :parameters () :precondition
  (and (do-normal) (updated-cb4) (updated-cb3) (updated-cb2) (updated-cb1)
       (closed-cb2) (closed-cb3) (closed-cb4) (closed-sd16) (closed-sd8)
       (closed-sd7) (closed-sd9) (closed-sd10) (closed-sd14) (closed-sd13)
       (closed-sd15))
  :effect (and (goal-reached)))) 