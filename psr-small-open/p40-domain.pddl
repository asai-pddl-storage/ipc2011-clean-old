
(define (domain grounded-strips-psr) (:requirements :strips :action-costs)
 (:predicates (closed-cb1) (closed-sd11) (not-updated-cb3) (closed-sd5)
  (not-closed-sd9) (not-closed-sd15) (do-close_sd15-condeffs) (closed-sd12)
  (do-normal) (do-close_sd10-condeffs) (not-closed-sd5)
  (do-close_sd11-condeffs) (not-closed-sd16) (do-close_sd12-condeffs)
  (not-closed-sd4) (do-close_sd6-condeffs) (do-wait_cb2-condeffs) (done-1)
  (closed-sd14) (updated-cb2) (not-closed-cb2) (not-closed-cb1) (closed-sd15)
  (updated-cb1) (not-closed-sd10) (closed-sd10) (closed-sd13)
  (do-close_sd3-condeffs) (closed-sd8) (not-closed-sd14) (not-closed-sd11)
  (not-closed-sd2) (not-closed-sd12) (closed-sd4) (do-close_sd14-condeffs)
  (not-closed-sd7) (closed-cb2) (do-close_sd13-condeffs)
  (do-close_sd5-condeffs) (closed-sd2) (not-closed-sd1) (do-close_sd9-condeffs)
  (closed-sd6) (closed-cb3) (do-wait_cb1-condeffs) (do-wait_cb3-condeffs)
  (goal-reached) (closed-sd1) (done-0) (not-closed-cb3) (not-updated-cb1)
  (closed-sd9) (not-closed-sd6) (do-close_sd8-condeffs) (updated-cb3)
  (do-close_sd7-condeffs) (closed-sd16) (do-close_sd4-condeffs)
  (not-closed-sd13) (do-close_sd16-condeffs) (closed-sd3) (not-updated-cb2)
  (closed-sd7) (not-closed-sd3) (do-close_sd1-condeffs) (not-closed-sd8))
 (:functions (total-cost) - number)
 (:action ugly1663ugly1723ugly1938ugly313ugly227ugly70ugly310reach-goal-453
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1664ugly1869ugly1978ugly131ugly186ugly69ugly647reach-goal-345
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1665ugly1805ugly2370ugly425ugly298ugly104ugly352reach-goal-169
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1666ugly1700ugly1909ugly391ugly638ugly395ugly78close_sd5-endof-condeffs
  :parameters () :precondition (and (do-close_sd5-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))))
 (:action ugly1667ugly1876ugly1755ugly111ugly30ugly295ugly200reach-goal-26
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1668ugly1701ugly1962ugly314ugly167ugly206ugly499reach-goal-439
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1669ugly2205ugly2121ugly336ugly37ugly320ugly379reach-goal-133
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1670ugly2064ugly2102ugly180ugly522ugly87ugly601reach-goal-85
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1671ugly2083ugly2381ugly629ugly537ugly642ugly505reach-goal-440
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1672ugly2349ugly1741ugly335ugly327ugly291ugly29close_sd11-condeff0-no-1
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd14))
  :effect (and (done-0)))
 (:action
  ugly1673ugly2127ugly2007ugly48ugly20ugly524ugly201wait_cb3-condeff0-no-4
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd15))
  :effect (and (done-0)))
 (:action
  ugly1674ugly2190ugly1890ugly216ugly673ugly6ugly414wait_cb3-endof-condeffs
  :parameters () :precondition (and (do-wait_cb3-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0)) (not (done-1))))
 (:action
  ugly1675ugly2111ugly2062ugly672ugly24ugly362ugly621close_sd15-condeff1-no-5
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-sd13))
  :effect (and (done-1)))
 (:action
  ugly1676ugly2314ugly2094ugly177ugly22ugly158ugly570close_sd6-condeff0-yes
  :parameters () :precondition (and (do-close_sd6-condeffs) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1677ugly2071ugly2343ugly14ugly53ugly348ugly207reach-goal-293
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1678ugly1724ugly2085ugly444ugly669ugly277ugly77reach-goal-32
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-cb3) (closed-sd11) (closed-sd15) (closed-sd14)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1679ugly2065ugly2394ugly376ugly212ugly573ugly306wait_cb1-condeff0-yes
  :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd5) (closed-sd4) (closed-sd3)
       (closed-sd1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1680ugly2027ugly2008ugly83ugly242ugly177ugly22reach-goal-157
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1681ugly2191ugly2052ugly20ugly524ugly201ugly747reach-goal-329
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1682ugly1875ugly2338ugly148ugly617ugly36ugly82close_sd12-condeff0-no-1
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action ugly1683ugly1971ugly2204ugly239ugly492ugly644ugly44reach-goal-261
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1684ugly2002ugly2075ugly531ugly40ugly146ugly450close_sd7-condeff1-no-2
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd11))
  :effect (and (done-1)))
 (:action
  ugly1685ugly1761ugly2224ugly118ugly554ugly389ugly437close_sd9-condeff0-no-6
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly1686ugly1713ugly1739ugly229ugly57ugly737ugly612reach-goal-172
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1687ugly1955ugly1672ugly687ugly442ugly66ugly480reach-goal-215
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1688ugly2228ugly1803ugly6ugly414ugly753ugly325reach-goal-218
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1689ugly2095ugly2323ugly86ugly394ugly542ugly561reach-goal-300
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1690ugly2376ugly1925ugly252ugly178ugly741ugly241reach-goal-53
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1691ugly1919ugly2397ugly66ugly480ugly216ugly673reach-goal-5
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1692ugly2124ugly2043ugly437ugly616ugly290ugly688reach-goal-301
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1693ugly2098ugly1960ugly164ugly760ugly725ugly221reach-goal-138
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1694ugly2114ugly2172ugly634ugly676ugly187ugly247reach-goal-96
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-cb3) (closed-sd13) (closed-sd11) (closed-sd15)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1695ugly2129ugly1880ugly684ugly114ugly752ugly558reach-goal-155
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1696ugly2243ugly1866ugly387ugly276ugly497ugly620close_sd12-condeff1-no-5
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-sd13))
  :effect (and (done-1)))
 (:action ugly1697ugly2342ugly1674ugly528ugly508ugly47ugly360reach-goal-335
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1698ugly1940ugly1929ugly67ugly275ugly314ugly167reach-goal-205
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1699ugly2074ugly2170ugly502ugly432ugly59ugly116close_sd8-condeff1-no-3
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-cb2))
  :effect (and (done-1)))
 (:action ugly1700ugly1909ugly2053ugly321ugly425ugly298ugly104reach-goal-351
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1701ugly1962ugly1976ugly19ugly745ugly81ugly742close_sd7-condeff1-no-1
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd10))
  :effect (and (done-1)))
 (:action ugly1702ugly1840ugly1896ugly477ugly433ugly710ugly157reach-goal-476
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1703ugly1727ugly1795ugly688ugly302ugly595ugly383reach-goal-160
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-cb3) (closed-sd11) (closed-sd15) (closed-sd14)
       (closed-sd13) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1704ugly2020ugly2157ugly139ugly141ugly365ugly453reach-goal-260
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1705ugly1764ugly2177ugly398ugly19ugly745ugly81wait_cb3-condeff0-yes
  :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd7) (closed-sd12) (closed-sd10)
       (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1706ugly1722ugly1937ugly331ugly380ugly475ugly585reach-goal-165
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1707ugly2021ugly2183ugly154ugly507ugly28ugly481reach-goal-417
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1708ugly2309ugly1738ugly250ugly699ugly228ugly546reach-goal-131
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1709ugly2367ugly2421ugly555ugly455ugly696ugly466reach-goal-237
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1710ugly2055ugly1689ugly433ugly710ugly157ugly477reach-goal-432
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1711ugly1813ugly2182ugly205ugly713ugly606ugly165reach-goal-487
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1712ugly2186ugly1933ugly565ugly249ugly85ugly349reach-goal-135
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1713ugly1739ugly1891ugly545ugly634ugly676ugly187reach-goal-246
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1714ugly2014ugly1954ugly356ugly7ugly367ugly14reach-goal-52
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1715ugly2096ugly1789ugly350ugly266ugly209ugly224reach-goal-57
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1716ugly2059ugly2047ugly235ugly427ugly155ugly145reach-goal-339
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1717ugly2166ugly1756ugly32ugly118ugly554ugly389reach-goal-436
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1718ugly1718ugly1718ugly56ugly590ugly428ugly21reach-goal-232
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1719ugly1699ugly2074ugly508ugly47ugly360ugly336reach-goal-36
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1720ugly1860ugly1966ugly744ugly650ugly602ugly317reach-goal-258
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1721ugly1915ugly1932ugly162ugly707ugly562ugly398reach-goal-18
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1722ugly1937ugly1993ugly419ugly401ugly754ugly332reach-goal-355
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1723ugly1938ugly1975ugly631ugly690ugly43ugly373reach-goal-161
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1724ugly2085ugly2106ugly367ugly14ugly53ugly348reach-goal-206
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1725ugly2286ugly2391ugly64ugly659ugly580ugly759reach-goal-433
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1726ugly2130ugly1855ugly334ugly513ugly248ugly313reach-goal-226
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1727ugly1795ugly2350ugly598ugly90ugly220ugly677reach-goal-233
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1728ugly2250ugly2197ugly753ugly325ugly219ugly568reach-goal-253
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1729ugly2344ugly2366ugly718ugly106ugly263ugly84reach-goal-308
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1730ugly2104ugly1948ugly274ugly545ugly634ugly676reach-goal-186
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1731ugly1771ugly2086ugly407ugly55ugly577ugly213reach-goal-387
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1732ugly1861ugly2320ugly563ugly609ugly463ugly681reach-goal-14
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1733ugly2031ugly1786ugly505ugly441ugly79ugly572reach-goal-508
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1734ugly1883ugly2146ugly401ugly754ugly332ugly356reach-goal-6
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1735ugly2152ugly1683ugly309ugly370ugly680ugly448reach-goal-136
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1736ugly2019ugly2084ugly81ugly742ugly727ugly671reach-goal-257
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1737ugly2089ugly1712ugly524ugly201ugly747ugly330close_sd14-condeff0-no-2
  :parameters () :precondition (and (do-close_sd14-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action ugly1738ugly1912ugly2305ugly486ugly335ugly327ugly291reach-goal-28
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1739ugly1891ugly2207ugly446ugly244ugly470ugly687reach-goal-441
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1740ugly1830ugly2201ugly541ugly733ugly460ugly731reach-goal-419
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1741ugly1997ugly2088ugly404ugly678ugly588ugly267reach-goal-497
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1742ugly2109ugly1754ugly601ugly86ugly394ugly542close_sd14-endof-condeffs
  :parameters () :precondition (and (do-close_sd14-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd14-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1743ugly1862ugly1757ugly47ugly360ugly336ugly37reach-goal-319
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1744ugly2093ugly2056ugly667ugly446ugly244ugly470open-sd11
  :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd11) (not (closed-sd11))))
 (:action ugly1745ugly2030ugly1787ugly479ugly515ugly271ugly255reach-goal-182
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1746ugly2299ugly2082ugly696ugly466ugly238ugly179reach-goal-190
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1747ugly2017ugly1768ugly630ugly292ugly92ugly307close_sd7-condeff1-no-3
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd15))
  :effect (and (done-1)))
 (:action
  ugly1748ugly2143ugly2422ugly747ugly330ugly548ugly35close_sd10-endof-condeffs
  :parameters () :precondition (and (do-close_sd10-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1749ugly1848ugly2372ugly370ugly680ugly448ugly137reach-goal-396
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1750ugly2023ugly2220ugly544ugly603ugly675ugly717reach-goal-399
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1751ugly1828ugly1806ugly348ugly207ugly294ugly471reach-goal-0
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1752ugly2303ugly1781ugly130ugly656ugly10ugly692close_sd15-condeff1-no-2
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-sd10))
  :effect (and (done-1)))
 (:action ugly1753ugly2281ugly2076ugly455ugly696ugly466ugly238reach-goal-178
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1754ugly2263ugly1705ugly102ugly150ugly410ugly359close_sd8-condeff0-no-3
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action ugly1755ugly1773ugly1669ugly543ugly23ugly730ugly26reach-goal-471
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1756ugly1694ugly2114ugly510ugly483ugly339ugly303close_sd12-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd12-condeffs) (closed-sd7) (closed-sd10) (closed-sd11)
       (closed-sd15) (closed-sd14) (closed-sd13) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1757ugly1709ugly2367ugly759ugly434ugly490ugly181reach-goal-472
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1758ugly2234ugly1670ugly402ugly565ugly249ugly85reach-goal-348
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1759ugly1921ugly2181ugly59ugly116ugly636ugly38reach-goal-495
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1760ugly2373ugly1886ugly740ugly665ugly506ugly160reach-goal-279
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1761ugly2224ugly1780ugly655ugly322ugly159ugly321reach-goal-424
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1762ugly2319ugly1926ugly489ugly403ugly229ugly57close_sd5-condeff0-no-1
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1763ugly1663ugly1723ugly276ugly497ugly620ugly587reach-goal-201
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1764ugly2177ugly2060ugly82ugly578ugly252ugly178wait_cb3
  :parameters () :precondition (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action ugly1765ugly2275ugly1898ugly463ugly681ugly15ugly31reach-goal-325
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1766ugly2288ugly2110ugly384ugly100ugly550ugly371reach-goal-410
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1767ugly1759ugly1921ugly519ugly83ugly242ugly177reach-goal-21
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1768ugly2292ugly1742ugly447ugly103ugly299ugly569reach-goal-268
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1769ugly1746ugly2299ugly420ugly720ugly250ugly699reach-goal-227
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1770ugly1814ugly2153ugly324ugly625ugly95ugly444wait_cb2-condeff0-no-2
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd15))
  :effect (and (done-0)))
 (:action ugly1771ugly2086ugly2069ugly512ugly584ugly465ugly89reach-goal-15
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1772ugly1835ugly1872ugly372ugly13ugly121ugly724close_sd15-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd15-condeffs) (closed-sd16) (closed-sd14) (closed-sd11)
       (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly1773ugly1669ugly2205ugly459ugly417ugly353ugly305close_sd8-condeff0-no-1
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd14))
  :effect (and (done-0)))
 (:action
  ugly1774ugly2378ugly2315ugly163ugly706ugly534ugly415wait_cb2-condeff0-no-5
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action ugly1775ugly2340ugly2279ugly483ugly339ugly303ugly581reach-goal-383
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1776ugly1943ugly2414ugly573ugly306ugly755ugly154reach-goal-506
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1777ugly1740ugly1830ugly539ugly109ugly172ugly73wait_cb1-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd6))
  :effect (and (done-1)))
 (:action ugly1778ugly2218ugly2045ugly594ugly709ugly624ugly426reach-goal-92
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1779ugly1917ugly2223ugly306ugly755ugly154ugly507reach-goal-27
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1780ugly2317ugly2424ugly245ugly564ugly96ugly531reach-goal-39
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1781ugly1792ugly2147ugly179ugly191ugly583ugly88wait_cb2-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd14))
  :effect (and (done-0)))
 (:action ugly1782ugly2284ugly1762ugly657ugly660ugly512ugly584reach-goal-464
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1783ugly2050ugly1725ugly624ugly426ugly93ugly536reach-goal-390
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1784ugly1667ugly1876ugly93ugly536ugly391ugly638reach-goal-394
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1785ugly1716ugly2059ugly385ugly188ugly3ugly523reach-goal-48
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1786ugly2167ugly1802ugly636ugly38ugly496ugly76reach-goal-109
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1787ugly2141ugly1864ugly201ugly747ugly330ugly548reach-goal-34
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1788ugly1687ugly1955ugly10ugly692ugly538ugly350reach-goal-265
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1789ugly2012ugly1808ugly756ugly193ugly270ugly297reach-goal-179
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1790ugly1677ugly2071ugly681ugly15ugly31ugly326reach-goal-343
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1791ugly1991ugly2196ugly89ugly16ugly469ugly75reach-goal-163
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1792ugly2147ugly1841ugly715ugly438ugly129ugly756reach-goal-192
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13)
       (closed-cb3) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1793ugly2248ugly1865ugly592ugly337ugly198ugly700reach-goal-363
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1794ugly2173ugly2345ugly75ugly164ugly760ugly725reach-goal-220
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1795ugly2350ugly2260ugly170ugly208ugly355ugly637reach-goal-411
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1796ugly1922ugly2312ugly363ugly203ugly329ugly646reach-goal-272
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1797ugly1942ugly2061ugly438ugly129ugly756ugly193reach-goal-269
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1798ugly1769ugly1746ugly637ugly412ugly535ugly757reach-goal-188
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1799ugly2040ugly2261ugly675ugly717ugly400ugly679reach-goal-70
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1800ugly1885ugly2326ugly272ugly631ugly690ugly43reach-goal-372
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1801ugly1815ugly2265ugly702ugly50ugly60ugly126reach-goal-458
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1802ugly2298ugly2037ugly723ugly685ugly204ugly386reach-goal-286
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1803ugly1668ugly1701ugly300ugly532ugly551ugly133close_sd15-condeff0-no-5
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action ugly1804ugly1969ugly1753ugly619ugly495ugly735ugly684reach-goal-113
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1805ugly2370ugly2087ugly706ugly534ugly415ugly672reach-goal-23
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1806ugly2010ugly1703ugly65ugly288ugly579ugly210close_sd5-condeff0-no-2
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1807ugly1873ugly1972ugly496ugly76ugly110ugly51reach-goal-79
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1808ugly2418ugly1791ugly329ugly646ugly273ugly521reach-goal-244
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1809ugly2162ugly2398ugly302ugly595ugly383ugly161close_sd11
  :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action
  ugly1810ugly1931ugly2310ugly453ugly261ugly168ugly125close_sd8-condeff0-no-2
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd15))
  :effect (and (done-0)))
 (:action
  ugly1811ugly2306ugly2169ugly58ugly52ugly697ugly347close_sd9-condeff0-no-5
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action ugly1812ugly1858ugly2362ugly69ugly647ugly346ugly478reach-goal-342
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1813ugly2182ugly1867ugly377ugly416ugly148ugly617reach-goal-35
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1814ugly2153ugly1986ugly456ugly698ugly762ugly308wait_cb1-condeff0-no-2
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1815ugly2265ugly2364ugly194ugly566ugly94ugly715reach-goal-437
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1816ugly1899ugly2416ugly686ugly184ugly605ugly447reach-goal-102
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1817ugly2419ugly1693ugly436ugly265ugly237ugly657close_sd1-condeff0-no-1
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action
  ugly1818ugly2155ugly2057ugly628ugly368ugly300ugly532close_sd14-condeff0-no-5
  :parameters () :precondition (and (do-close_sd14-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action ugly1819ugly2283ugly1892ugly654ugly197ugly734ugly596reach-goal-288
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-cb3) (closed-sd11) (closed-sd15) (closed-sd14)
       (closed-sd13) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1820ugly1767ugly1759ugly259ugly674ugly643ugly629close_sd15-condeff1-no-1
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-sd12))
  :effect (and (done-1)))
 (:action ugly1821ugly1957ugly2289ugly551ugly133ugly533ugly439reach-goal-377
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1822ugly2274ugly2119ugly68ugly377ugly416ugly148close_sd9-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd7) (closed-sd12) (closed-sd8)
       (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1823ugly1963ugly1967ugly85ugly349ugly136ugly236reach-goal-73
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1824ugly1817ugly2419ugly31ugly326ugly344ugly726reach-goal-317
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1825ugly2042ugly2208ugly145ugly340ugly128ugly604reach-goal-395
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1826ugly1877ugly1900ugly36ugly82ugly578ugly252reach-goal-177
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1827ugly1974ugly2078ugly665ugly506ugly160ugly280reach-goal-483
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1828ugly1806ugly2010ugly41ugly205ugly713ugly606reach-goal-164
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1829ugly1696ugly2243ugly204ugly386ugly287ugly124reach-goal-457
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1830ugly2201ugly2203ugly49ugly274ugly545ugly634wait_cb2-condeff1-no-1
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd12))
  :effect (and (done-1)))
 (:action ugly1831ugly1783ugly2050ugly63ugly610ugly111ugly30reach-goal-294
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1832ugly2187ugly1714ugly352ugly170ugly208ugly355close_sd8-endof-condeffs
  :parameters () :precondition (and (do-close_sd8-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1833ugly2113ugly2276ugly640ugly419ugly401ugly754reach-goal-331
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1834ugly1799ugly2040ugly599ugly600ugly195ugly613reach-goal-60
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1835ugly1872ugly2034ugly549ugly45ugly12ugly194close_sd13-condeff0-no-2
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-sd10))
  :effect (and (done-0)))
 (:action ugly1836ugly1770ugly1814ugly491ugly230ugly387ugly276reach-goal-496
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1837ugly2266ugly1766ugly626ugly99ugly661ugly407reach-goal-54
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1838ugly2238ugly2273ugly222ugly491ugly230ugly387reach-goal-275
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1839ugly1945ugly1928ugly246ugly525ugly619ugly495close_sd5-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-sd4) (closed-sd3) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1840ugly1896ugly2139ugly547ugly750ugly107ugly467reach-goal-277
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1841ugly2377ugly1733ugly369ugly618ugly101ugly48reach-goal-19
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1842ugly1715ugly2096ugly127ugly175ugly666ugly641reach-goal-484
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1843ugly1904ugly2246ugly668ugly285ugly341ugly648reach-goal-295
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1844ugly2308ugly2120ugly659ugly580ugly759ugly434reach-goal-489
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1845ugly2022ugly1859ugly733ugly460ugly731ugly420close_sd7-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd12) (closed-sd9) (closed-sd8)
       (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly1846ugly2070ugly2339ugly585ugly166ugly608ugly231close_sd15-condeff0-no-2
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action ugly1847ugly2101ugly1970ugly506ugly160ugly280ugly484reach-goal-389
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1848ugly2372ugly2032ugly537ugly642ugly505ugly441reach-goal-78
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1849ugly1911ugly1788ugly25ugly149ugly702ugly50reach-goal-59
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1850ugly1930ugly2004ugly24ugly362ugly621ugly541close_sd7-endof-condeffs
  :parameters () :precondition (and (do-close_sd7-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1851ugly2133ugly1999ugly418ugly708ugly251ugly457reach-goal-170
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1852ugly2048ugly2277ugly282ugly591ugly42ugly153reach-goal-356
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1853ugly2103ugly2156ugly371ugly411ugly240ugly338close_sd16-condeff0-no-2
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action
  ugly1854ugly2285ugly2307ugly415ugly672ugly24ugly362close_sd9-condeff1-no-3
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-cb2))
  :effect (and (done-1)))
 (:action ugly1855ugly1996ugly1804ugly307ugly729ugly599ugly600reach-goal-194
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1856ugly1750ugly2023ugly558ugly156ugly152ugly312reach-goal-330
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1857ugly2328ugly2322ugly379ugly134ugly431ugly689close_sd14-condeff1-no-6
  :parameters () :precondition (and (do-close_sd14-condeffs) (not-closed-cb3))
  :effect (and (done-1)))
 (:action ugly1858ugly2362ugly1731ugly109ugly172ugly73ugly761reach-goal-360
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1859ugly2395ugly2389ugly445ugly239ugly492ugly644reach-goal-43
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1860ugly1966ugly2406ugly669ugly277ugly77ugly33reach-goal-175
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1861ugly2320ugly2225ugly315ugly421ugly272ugly631open-sd8
  :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd8) (not (closed-sd8))))
 (:action ugly1862ugly1757ugly1709ugly705ugly214ugly451ugly32reach-goal-117
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1863ugly2123ugly2091ugly73ugly761ugly361ugly304reach-goal-252
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1864ugly1863ugly2123ugly429ugly721ugly593ugly376reach-goal-211
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1865ugly2254ugly2016ugly248ugly313ugly227ugly70reach-goal-309
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1866ugly2049ugly2363ugly244ugly470ugly687ugly442reach-goal-65
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1867ugly2039ugly1849ugly249ugly85ugly349ugly136reach-goal-235
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1868ugly2400ugly2311ugly638ugly395ugly78ugly740wait_cb2
  :parameters () :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly1869ugly1978ugly1793ugly586ugly486ugly335ugly327reach-goal-290
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1870ugly2194ugly2351ugly265ugly237ugly657ugly660reach-goal-511
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1871ugly1956ugly2000ugly478ugly343ugly630ugly292reach-goal-91
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1872ugly2034ugly2211ugly607ugly736ugly119ugly539reach-goal-108
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1873ugly1972ugly2158ugly344ugly726ugly318ugly413reach-goal-314
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1874ugly1734ugly1883ugly484ugly390ugly456ugly698wait_cb1-endof-condeffs
  :parameters () :precondition (and (do-wait_cb1-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly1875ugly2338ugly1810ugly269ugly435ugly623ugly405reach-goal-55
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1876ugly1755ugly1773ugly7ugly367ugly14ugly53reach-goal-347
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1877ugly1900ugly1698ugly278ugly68ugly377ugly416reach-goal-147
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1878ugly2355ugly1870ugly532ugly551ugly133ugly533reach-goal-438
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1879ugly1666ugly1700ugly247ugly97ugly112ugly547wait_cb3-condeff1-yes
  :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd16) (closed-sd13)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1880ugly2346ugly1836ugly108ugly358ugly716ugly519reach-goal-82
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1881ugly2210ugly2126ugly428ugly21ugly233ugly199reach-goal-401
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1882ugly2079ugly1845ugly360ugly336ugly37ugly320reach-goal-378
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1883ugly2146ugly2063ugly499ugly440ugly46ugly597reach-goal-71
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1884ugly2175ugly1690ugly714ugly514ugly633ugly135reach-goal-282
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1885ugly2326ugly1934ugly602ugly317ugly259ugly674close_sd4-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd5) (closed-sd3) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1886ugly2402ugly1857ugly666ugly641ugly485ugly424open-sd5
  :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd5) (not (closed-sd5))))
 (:action ugly1887ugly1765ugly2275ugly236ugly74ugly430ugly351reach-goal-486
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1888ugly1692ugly2124ugly381ugly399ugly34ugly342reach-goal-493
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1889ugly2258ugly2134ugly616ugly290ugly688ugly302close_sd10-condeff0-no-3
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action
  ugly1890ugly1878ugly2355ugly208ugly355ugly637ugly412close_sd15-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd15-condeffs) (closed-sd7) (closed-sd12) (closed-sd10)
       (closed-sd11) (closed-sd14) (closed-sd13) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1891ugly2207ugly2108ugly749ugly739ugly196ugly436reach-goal-264
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1892ugly2316ugly1777ugly78ugly740ugly665ugly506reach-goal-159
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1893ugly2252ugly1953ugly620ugly587ugly202ugly552close_sd3-condeff0-no-3
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1894ugly2192ugly1675ugly449ugly409ugly9ugly98reach-goal-509
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1895ugly2251ugly2116ugly559ugly694ugly102ugly150reach-goal-409
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1896ugly2139ugly2209ugly35ugly607ugly736ugly119close_sd15-condeff1-no-3
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-sd11))
  :effect (and (done-1)))
 (:action ugly1897ugly2297ugly2392ugly149ugly702ugly50ugly60reach-goal-125
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1898ugly2125ugly2216ugly169ugly67ugly275ugly314reach-goal-166
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1899ugly2416ugly2348ugly725ugly221ugly139ugly141reach-goal-364
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1900ugly1698ugly1940ugly267ugly498ugly268ugly138reach-goal-322
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1901ugly2272ugly2239ugly112ugly547ugly750ugly107reach-goal-466
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1902ugly2393ugly1796ugly260ugly246ugly525ugly619reach-goal-494
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1903ugly2144ugly2202ugly57ugly737ugly612ugly173reach-goal-24
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1904ugly2246ugly2330ugly135ugly283ugly445ugly239reach-goal-491
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1905ugly2009ugly2382ugly326ugly344ugly726ugly318reach-goal-412
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1906ugly2013ugly2112ugly290ugly688ugly302ugly595reach-goal-382
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1907ugly2333ugly1809ugly500ugly516ugly749ugly739reach-goal-195
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1908ugly2379ugly1920ugly96ugly531ugly40ugly146reach-goal-449
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1909ugly2053ugly1983ugly120ugly39ugly553ugly429close_sd7-condeff0-no-0
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd12))
  :effect (and (done-0)))
 (:action
  ugly1910ugly2105ugly2137ugly128ugly604ugly396ugly215close_sd14-condeff1-no-2
  :parameters () :precondition (and (do-close_sd14-condeffs) (not-closed-sd10))
  :effect (and (done-1)))
 (:action ugly1911ugly1788ugly1687ugly293ugly511ugly232ugly113reach-goal-285
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1912ugly2305ugly2148ugly560ugly543ugly23ugly730reach-goal-25
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1913ugly1994ugly2244ugly123ugly408ugly218ugly683close_sd12-condeff1-no-0
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action
  ugly1914ugly2384ugly1820ugly105ugly649ugly575ugly594close_sd11-condeff0-no-6
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action
  ugly1915ugly1932ugly1824ugly155ugly145ugly340ugly128close_sd10-condeff1-no-4
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd14))
  :effect (and (done-1)))
 (:action ugly1916ugly1800ugly1885ugly664ugly192ugly190ugly493reach-goal-1
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1917ugly2223ugly1968ugly323ugly333ugly443ugly123reach-goal-407
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1918ugly2249ugly2165ugly159ugly321ugly425ugly298reach-goal-103
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1919ugly2397ugly1728ugly588ugly267ugly498ugly268reach-goal-137
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1920ugly1758ugly2234ugly8ugly632ugly719ugly667reach-goal-445
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1921ugly2181ugly1721ugly253ugly185ugly117ugly614reach-goal-281
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1922ugly2312ugly2025ugly287ugly124ugly458ugly723open-sd13
  :parameters () :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd13) (not (closed-sd13))))
 (:action ugly1923ugly2097ugly2176ugly212ugly573ugly306ugly755reach-goal-153
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1924ugly2267ugly1941ugly101ugly48ugly20ugly524reach-goal-200
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1925ugly1914ugly2384ugly158ugly570ugly639ugly264reach-goal-221
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1926ugly2151ugly1772ugly173ugly25ugly149ugly702reach-goal-49
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1927ugly2399ugly2189ugly695ugly691ugly682ugly284reach-goal-126
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1928ugly1908ugly2379ugly258ugly375ugly226ugly369close_sd9-condeff1-no-0
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action ugly1929ugly1729ugly2344ugly704ugly63ugly610ugly111reach-goal-29
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1930ugly2004ugly1686ugly51ugly80ugly664ugly192reach-goal-189
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1931ugly2310ugly2115ugly673ugly6ugly414ugly753reach-goal-324
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1932ugly1824ugly1817ugly757ugly189ugly174ugly319reach-goal-146
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1933ugly2227ugly2219ugly536ugly391ugly638ugly395reach-goal-77
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1934ugly2264ugly2005ugly160ugly280ugly484ugly390reach-goal-455
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1935ugly1982ugly2255ugly227ugly70ugly310ugly454close_sd13-condeff0-no-3
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action
  ugly1936ugly2371ugly1852ugly386ugly287ugly124ugly458close_sd7-condeff0-no-2
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action ugly1937ugly1993ugly2081ugly29ugly704ugly63ugly610reach-goal-110
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1938ugly1975ugly2293ugly261ugly168ugly125ugly627close_sd12-endof-condeffs
  :parameters () :precondition (and (do-close_sd12-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd12-condeffs)) (not (done-0))
       (not (done-1))))
 (:action
  ugly1939ugly1684ugly2002ugly413ugly315ugly421ugly272close_sd8-condeff0-no-6
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action
  ugly1940ugly1929ugly1729ugly682ugly284ugly127ugly175wait_cb2-condeff0-yes
  :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd16) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1941ugly1763ugly1663ugly61ugly381ugly399ugly34reach-goal-341
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1942ugly2061ugly2100ugly411ugly240ugly338ugly517reach-goal-503
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1943ugly2414ugly2235ugly23ugly730ugly26ugly472close_sd14
  :parameters () :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd14-condeffs) (closed-sd14)
       (not (not-closed-sd14))))
 (:action
  ugly1944ugly1995ugly1707ugly359ugly628ugly368ugly300close_sd15-condeff0-no-4
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action ugly1945ugly1928ugly1908ugly717ugly400ugly679ugly71reach-goal-391
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1946ugly1702ugly1840ugly234ugly91ugly163ugly706close_sd15-condeff0-no-6
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly1947ugly2150ugly2353ugly217ugly655ugly322ugly159reach-goal-320
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13)
       (closed-cb3) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1948ugly1936ugly2371ugly190ugly493ugly2ugly705reach-goal-213
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1949ugly1989ugly1987ugly373ugly162ugly707ugly562reach-goal-397
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1950ugly1888ugly1692ugly462ugly501ugly122ugly474reach-goal-463
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1951ugly2242ugly2179ugly474ugly464ugly574ugly658wait_cb3-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd16))
  :effect (and (done-1)))
 (:action
  ugly1952ugly1665ugly1805ugly708ugly251ugly457ugly171close_sd7-condeff1-no-6
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-cb3))
  :effect (and (done-1)))
 (:action ugly1953ugly2282ugly2138ugly600ugly195ugly613ugly61reach-goal-380
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1954ugly2018ugly2423ugly430ugly351ugly487ugly217close_sd3-endof-condeffs
  :parameters () :precondition (and (do-close_sd3-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))))
 (:action ugly1955ugly1672ugly2349ugly79ugly572ugly509ugly144reach-goal-139
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1956ugly2000ugly2140ugly18ugly354ugly503ugly452reach-goal-501
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1957ugly2289ugly2213ugly713ugly606ugly165ugly488close_sd1-endof-condeffs
  :parameters () :precondition (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly1958ugly1984ugly2028ugly694ugly102ugly150ugly410reach-goal-358
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1959ugly2259ugly2271ugly254ugly374ugly105ugly649close_sd12
  :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd12-condeffs) (closed-sd12)
       (not (not-closed-sd12))))
 (:action ugly1960ugly1826ugly1877ugly238ugly179ugly191ugly583reach-goal-87
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1961ugly2407ugly2212ugly241ugly54ugly645ugly540reach-goal-129
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1962ugly1976ugly1681ugly529ugly169ugly67ugly275reach-goal-313
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1963ugly1967ugly1747ugly355ugly637ugly412ugly535wait_cb1-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action ugly1964ugly1847ugly2101ugly308ugly758ugly653ugly65reach-goal-287
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1965ugly1708ugly2309ugly76ugly110ugly51ugly80close_cb3
  :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly1966ugly2406ugly2331ugly156ugly152ugly312ugly331reach-goal-379
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1967ugly1747ugly2017ugly106ugly263ugly84ugly309reach-goal-369
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1968ugly1985ugly1946ugly40ugly146ugly450ugly728reach-goal-17
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1969ugly1753ugly2281ugly414ugly753ugly325ugly219close_sd13-condeff0-no-4
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-sd15))
  :effect (and (done-0)))
 (:action
  ugly1970ugly2168ugly2412ugly703ugly363ugly203ugly329close_sd4-condeff0-no-2
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1971ugly2204ugly1901ugly610ugly111ugly30ugly295reach-goal-199
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1972ugly2158ugly2006ugly297ugly180ugly522ugly87close_sd10-condeff1-no-1
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd12))
  :effect (and (done-1)))
 (:action ugly1973ugly1924ugly2267ugly279ugly718ugly106ugly263reach-goal-83
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1974ugly2078ugly2327ugly523ugly49ugly274ugly545close_sd8-condeff1-no-1
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd12))
  :effect (and (done-1)))
 (:action ugly1975ugly2293ugly1923ugly435ugly623ugly405ugly56close_sd10
  :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action ugly1976ugly1681ugly2191ugly390ugly456ugly698ugly762reach-goal-307
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1977ugly2195ugly2324ugly569ugly269ugly435ugly623reach-goal-404
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1978ugly1793ugly2248ugly203ugly329ugly646ugly273close_sd16-condeff0-no-6
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly1979ugly2188ugly2200ugly487ugly217ugly655ugly322reach-goal-158
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1980ugly2135ugly1664ugly207ugly294ugly471ugly1reach-goal-142
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1981ugly2230ugly2122ugly625ugly95ugly444ugly669reach-goal-276
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1982ugly2255ugly1889ugly596ugly289ugly652ugly462reach-goal-500
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1983ugly1782ugly2284ugly100ugly550ugly371ugly411reach-goal-239
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1984ugly2028ugly2356ugly466ugly238ugly179ugly191close_sd12-condeff1-no-1
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-sd10))
  :effect (and (done-1)))
 (:action
  ugly1985ugly1946ugly1702ugly178ugly741ugly241ugly54close_sd4-condeff0-no-1
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action
  ugly1986ugly2118ugly2295ugly330ugly548ugly35ugly607close_sd5-condeff0-no-0
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action ugly1987ugly2035ugly2001ugly11ugly382ugly722ugly622reach-goal-405
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1988ugly2058ugly1881ugly548ugly35ugly607ugly736reach-goal-118
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1989ugly1987ugly2035ugly339ugly303ugly581ugly384reach-goal-99
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1990ugly1823ugly1963ugly305ugly626ugly99ugly661reach-goal-406
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1991ugly2196ugly1751ugly166ugly608ugly231ugly530reach-goal-255
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1992ugly2026ugly2240ugly480ugly216ugly673ugly6reach-goal-413
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1993ugly2081ugly1691ugly257ugly366ugly559ugly694reach-goal-101
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly1994ugly2244ugly1785ugly54ugly645ugly540ugly130close_sd2
  :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action
  ugly1995ugly1707ugly2021ugly521ugly245ugly564ugly96close_sd15-condeff0-no-3
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-sd10))
  :effect (and (done-0)))
 (:action ugly1996ugly1804ugly1969ugly91ugly163ugly706ugly534reach-goal-414
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly1997ugly2088ugly2066ugly697ugly347ugly615ugly571wait_cb3-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action
  ugly1998ugly1695ugly2129ugly218ugly683ugly582ugly518wait_cb3-condeff0-no-5
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd14))
  :effect (and (done-0)))
 (:action ugly1999ugly2080ugly2408ugly232ugly113ugly286ugly520reach-goal-481
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2000ugly2140ugly1680ugly365ugly453ugly261ugly168reach-goal-124
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2001ugly1673ugly2127ugly345ugly695ugly691ugly682reach-goal-283
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2002ugly2075ugly2193ugly583ugly88ugly668ugly285reach-goal-340
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2003ugly2054ugly1854ugly623ugly405ugly56ugly590reach-goal-427
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2004ugly1686ugly1713ugly77ugly33ugly176ugly293reach-goal-510
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2005ugly1822ugly2274ugly457ugly171ugly732ugly711close_sd14-condeff1-no-1
  :parameters () :precondition (and (do-close_sd14-condeffs) (not-closed-sd12))
  :effect (and (done-1)))
 (:action ugly2006ugly1959ugly2259ugly609ugly463ugly681ugly15reach-goal-30
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2007ugly1710ugly2055ugly27ugly11ugly382ugly722close_sd9-endof-condeffs
  :parameters () :precondition (and (do-close_sd9-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0))
       (not (done-1))))
 (:action
  ugly2008ugly1745ugly2030ugly125ugly627ugly589ugly151close_sd3-condeff0-no-0
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd5))
  :effect (and (done-0)))
 (:action ugly2009ugly2382ugly1988ugly396ugly215ugly556ugly235reach-goal-426
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2010ugly1703ugly1727ugly133ugly533ugly439ugly378reach-goal-448
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13)
       (closed-cb3) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2011ugly2067ugly2015ugly698ugly762ugly308ugly758close_sd3-condeff0-no-2
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly2012ugly1808ugly2418ugly129ugly756ugly193ugly270reach-goal-296
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2013ugly2112ugly1952ugly3ugly523ugly49ugly274close_sd14-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd14-condeffs) (closed-sd16) (closed-sd15) (closed-sd11)
       (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly2014ugly1954ugly2018ugly761ugly361ugly304ugly253reach-goal-184
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2015ugly2360ugly2405ugly288ugly579ugly210ugly738close_sd10-condeff0-no-0
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd16))
  :effect (and (done-0)))
 (:action ugly2016ugly1910ugly2105ugly475ugly585ugly166ugly608reach-goal-230
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2017ugly1768ugly2292ugly80ugly664ugly192ugly190reach-goal-492
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2018ugly2423ugly2092ugly516ugly749ugly739ugly196reach-goal-435
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2019ugly2084ugly1743ugly200ugly27ugly11ugly382close_sd7-condeff0-no-1
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action
  ugly2020ugly2157ugly1801ugly153ugly357ugly316ugly404wait_cb2-condeff1-no-3
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd8))
  :effect (and (done-1)))
 (:action
  ugly2021ugly2183ugly1816ugly237ugly657ugly660ugly512close_sd12-condeff1-no-2
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-sd11))
  :effect (and (done-1)))
 (:action ugly2022ugly1859ugly2395ugly727ugly671ugly258ugly375reach-goal-225
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2023ugly2220ugly2206ugly642ugly505ugly441ugly79close_sd13-condeff1-no-0
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-sd16))
  :effect (and (done-1)))
 (:action
  ugly2024ugly1850ugly1930ugly342ugly494ugly557ugly576close_sd8-condeff1-no-2
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd9))
  :effect (and (done-1)))
 (:action ugly2025ugly1949ugly1989ugly325ugly219ugly568ugly254reach-goal-373
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2026ugly2240ugly2142ugly191ugly583ugly88ugly668reach-goal-284
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2027ugly2008ugly1745ugly368ugly300ugly532ugly551reach-goal-132
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2028ugly2356ugly2128ugly748ugly243ugly279ugly718reach-goal-105
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2029ugly1947ugly2150ugly691ugly682ugly284ugly127reach-goal-174
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2030ugly1787ugly2141ugly202ugly552ugly654ugly197close_sd5
  :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action
  ugly2031ugly1786ugly2167ugly140ugly385ugly188ugly3close_sd16-condeff1-no-0
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-sd13))
  :effect (and (done-1)))
 (:action ugly2032ugly2199ugly1851ugly471ugly1ugly143ugly640reach-goal-418
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2033ugly2383ugly2132ugly26ugly472ugly544ugly603wait_cb2-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action ugly2034ugly2211ugly2269ugly651ugly586ugly486ugly335reach-goal-326
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2035ugly2001ugly1673ugly465ugly89ugly16ugly469reach-goal-74
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2036ugly1749ugly1848ugly710ugly157ugly477ugly433close_sd11-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd7) (closed-sd12) (closed-sd10)
       (closed-sd15) (closed-sd14) (closed-sd13) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly2037ugly2385ugly1980ugly473ugly563ugly609ugly463close_cb1
  :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly2038ugly2280ugly2253ugly182ugly662ugly142ugly489reach-goal-402
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2039ugly1849ugly1911ugly126ugly459ugly417ugly353reach-goal-304
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2040ugly2261ugly2337ugly289ugly652ugly462ugly501reach-goal-121
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2041ugly2131ugly1837ugly604ugly396ugly215ugly556reach-goal-234
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2042ugly2208ugly1807ugly211ugly182ugly662ugly142reach-goal-488
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2043ugly2099ugly2401ugly498ugly268ugly138ugly323reach-goal-332
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2044ugly1843ugly1904ugly584ugly465ugly89ugly16reach-goal-468
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2045ugly2256ugly2214ugly575ugly594ugly709ugly624reach-goal-425
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2046ugly1834ugly1799ugly378ugly449ugly409ugly9reach-goal-97
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2047ugly1897ugly2297ugly730ugly26ugly472ugly544close_sd10-condeff1-no-3
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd15))
  :effect (and (done-1)))
 (:action ugly2048ugly2277ugly1944ugly333ugly443ugly123ugly408reach-goal-217
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2049ugly2363ugly1906ugly351ugly487ugly217ugly655reach-goal-321
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2050ugly1725ugly2286ugly729ugly599ugly600ugly195close_sd9-condeff0-no-3
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action
  ugly2051ugly1732ugly1861ugly658ugly751ugly500ugly516wait_cb3-condeff0-no-6
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd13))
  :effect (and (done-0)))
 (:action ugly2052ugly1682ugly1875ugly676ugly187ugly247ugly97reach-goal-111
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2053ugly1983ugly1782ugly622ugly406ugly17ugly324close_sd8-condeff0-no-0
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd16))
  :effect (and (done-0)))
 (:action ugly2054ugly1854ugly2285ugly645ugly540ugly130ugly656reach-goal-9
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2055ugly1689ugly2095ugly661ugly407ugly55ugly577reach-goal-212
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2056ugly2329ugly2024ugly188ugly3ugly523ugly49reach-goal-273
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2057ugly2290ugly2163ugly374ugly105ugly649ugly575close_sd10-condeff0-no-2
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd15))
  :effect (and (done-0)))
 (:action ugly2058ugly1881ugly2210ugly464ugly574ugly658ugly751reach-goal-499
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2059ugly2047ugly1897ugly635ugly64ugly659ugly580wait_cb1-condeff0-no-3
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action
  ugly2060ugly1744ugly2093ugly394ugly542ugly561ugly301close_sd11-condeff1-no-3
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd15))
  :effect (and (done-1)))
 (:action
  ugly2061ugly2100ugly2073ugly707ugly562ugly398ugly19wait_cb3-condeff0-no-2
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd10))
  :effect (and (done-0)))
 (:action ugly2062ugly2334ugly2257ugly509ugly144ugly140ugly385reach-goal-187
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2063ugly2161ugly2003ugly392ugly598ugly90ugly220wait_cb2-condeff1-no-2
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd9))
  :effect (and (done-1)))
 (:action ugly2064ugly2102ugly1842ugly53ugly348ugly207ugly294reach-goal-470
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2065ugly2394ugly2038ugly618ugly101ugly48ugly20close_sd16-condeff1-no-1
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-cb3))
  :effect (and (done-1)))
 (:action ugly2066ugly2359ugly2352ugly277ugly77ugly33ugly176reach-goal-292
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2067ugly2015ugly2360ugly743ugly744ugly650ugly602reach-goal-316
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2068ugly2332ugly1882ugly417ugly353ugly305ugly626reach-goal-98
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2069ugly2174ugly1990ugly161ugly701ugly115ugly223wait_cb3-condeff0-no-3
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action ugly2070ugly2339ugly2247ugly311ugly4ugly311ugly4reach-goal-310
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2071ugly2343ugly1676ugly652ugly462ugly501ugly122reach-goal-473
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2072ugly2396ugly2294ugly726ugly318ugly413ugly315reach-goal-420
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2073ugly2369ugly1794ugly511ugly232ugly113ugly286close_sd16-condeff0-no-5
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action ugly2074ugly2170ugly2164ugly273ugly521ugly245ugly564reach-goal-95
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2075ugly2193ugly2245ugly406ugly17ugly324ugly625reach-goal-94
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2076ugly2117ugly1717ugly504ugly334ugly513ugly248reach-goal-312
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2077ugly2236ugly2386ugly303ugly581ugly384ugly100close_sd14-condeff0-no-4
  :parameters () :precondition (and (do-close_sd14-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action ugly2078ugly2327ugly2185ugly171ugly732ugly711ugly555reach-goal-454
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2079ugly1845ugly2022ugly197ugly734ugly596ugly289close_sd3-condeff0-no-1
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action
  ugly2080ugly2408ugly1894ugly530ugly256ugly686ugly184close_sd10-condeff1-no-5
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd13))
  :effect (and (done-1)))
 (:action
  ugly2081ugly1691ugly1919ugly735ugly684ugly114ugly752close_sd14-condeff1-no-4
  :parameters () :precondition (and (do-close_sd14-condeffs) (not-closed-sd15))
  :effect (and (done-1)))
 (:action
  ugly2082ugly2358ugly1776ugly281ugly41ugly205ugly713close_sd10-condeff1-no-6
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-cb3))
  :effect (and (done-1)))
 (:action ugly2083ugly2381ugly2291ugly410ugly359ugly628ugly368reach-goal-299
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2084ugly1743ugly1862ugly95ugly444ugly669ugly277reach-goal-76
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2085ugly2106ugly2029ugly285ugly341ugly648ugly296reach-goal-392
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2086ugly2069ugly2174ugly328ugly549ugly45ugly12reach-goal-193
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2087ugly2368ugly2390ugly606ugly165ugly488ugly663close_sd15-condeff0-no-1
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-sd14))
  :effect (and (done-0)))
 (:action
  ugly2088ugly2066ugly2359ugly690ugly43ugly373ugly162close_sd11-condeff0-no-4
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action ugly2089ugly1712ugly2186ugly271ugly255ugly183ugly372reach-goal-12
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2090ugly2341ugly2232ugly157ugly477ugly433ugly710reach-goal-156
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2091ugly1735ugly2152ugly21ugly233ugly199ugly402close_sd13-condeff0-no-1
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-sd12))
  :effect (and (done-0)))
 (:action ugly2092ugly2178ugly2180ugly674ugly643ugly629ugly537close_sd4
  :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly2093ugly2056ugly2329ugly362ugly621ugly541ugly733reach-goal-459
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2094ugly1839ugly1945ugly266ugly209ugly224ugly58reach-goal-51
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2095ugly2323ugly1748ugly481ugly418ugly708ugly251reach-goal-456
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2096ugly1789ugly2012ugly146ugly450ugly728ugly18reach-goal-353
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2097ugly2176ugly1874ugly72ugly211ugly182ugly662reach-goal-141
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2098ugly1960ugly1826ugly215ugly556ugly235ugly427reach-goal-154
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2099ugly2401ugly2160ugly225ugly611ugly461ugly479close_sd16-condeff0-no-0
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-sd14))
  :effect (and (done-0)))
 (:action ugly2100ugly2073ugly2369ugly132ugly712ugly5ugly260reach-goal-245
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2101ugly1970ugly2168ugly750ugly107ugly467ugly278reach-goal-67
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2102ugly1842ugly1715ugly434ugly490ugly181ugly473close_sd13-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd13-condeffs) (closed-sd7) (closed-sd12) (closed-sd10)
       (closed-sd11) (closed-sd15) (closed-sd14) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly2103ugly2156ugly2033ugly721ugly593ugly376ugly212close_sd13-condeff1-no-1
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-cb3))
  :effect (and (done-1)))
 (:action
  ugly2104ugly1948ugly1936ugly709ugly624ugly426ugly93close_sd15-condeff1-no-0
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action
  ugly2105ugly2137ugly1790ugly15ugly31ugly326ugly344close_sd7-condeff1-no-0
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd12))
  :effect (and (done-1)))
 (:action ugly2106ugly2029ugly1947ugly488ugly663ugly529ugly169reach-goal-66
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2107ugly1902ugly2393ugly134ugly431ugly689ugly560close_sd15-endof-condeffs
  :parameters () :precondition (and (do-close_sd15-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd15-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly2108ugly2411ugly2403ugly233ugly199ugly402ugly565reach-goal-248
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2109ugly1754ugly2263ugly43ugly373ugly162ugly707close_sd13
  :parameters () :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd13-condeffs) (closed-sd13)
       (not (not-closed-sd13))))
 (:action ugly2110ugly2046ugly1834ugly137ugly397ugly345ugly695open-sd7
  :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd7) (not (closed-sd7))))
 (:action ugly2111ugly2062ugly2334ugly595ugly383ugly161ugly701reach-goal-114
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2112ugly1952ugly1665ugly143ugly640ugly419ugly401wait_cb1
  :parameters () :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly2113ugly2276ugly2302ugly349ugly136ugly236ugly74reach-goal-429
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2114ugly2172ugly2296ugly165ugly488ugly663ugly529reach-goal-168
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2115ugly2335ugly1812ugly196ugly436ugly265ugly237close_sd1
  :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly2116ugly2221ugly1775ugly678ugly588ugly267ugly498reach-goal-267
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2117ugly1717ugly2166ugly94ugly715ugly438ugly129wait_cb1-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd5))
  :effect (and (done-0)))
 (:action ugly2118ugly2295ugly1992ugly364ugly62ugly703ugly363reach-goal-202
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2119ugly1730ugly2104ugly286ugly520ugly482ugly670close_sd15-condeff0-no-0
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-sd16))
  :effect (and (done-0)))
 (:action ugly2120ugly2321ugly1760ugly711ugly555ugly455ugly696reach-goal-465
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2121ugly1998ugly1695ugly467ugly278ugly68ugly377reach-goal-415
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2122ugly2287ugly2226ugly317ugly259ugly674ugly643close_sd8-condeff0-no-4
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd10))
  :effect (and (done-0)))
 (:action
  ugly2123ugly2091ugly1735ugly490ugly181ugly473ugly563close_sd9-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd16) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd8) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly2124ugly2043ugly2099ugly739ugly196ugly436ugly265reach-goal-236
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2125ugly2216ugly1831ugly121ugly724ugly527ugly225close_sd9-condeff0-no-1
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd14))
  :effect (and (done-0)))
 (:action ugly2126ugly2090ugly2341ugly570ugly639ugly264ugly222reach-goal-490
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2127ugly2007ugly1710ugly393ugly328ugly549ugly45reach-goal-11
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2128ugly2410ugly2301ugly699ugly228ugly546ugly132close_sd11-condeff1-no-1
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd12))
  :effect (and (done-1)))
 (:action ugly2129ugly1880ugly2346ugly174ugly319ugly147ugly423reach-goal-107
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2130ugly1855ugly1996ugly142ugly489ugly403ugly229reach-goal-56
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2131ugly1837ugly2266ugly104ugly352ugly170ugly208reach-goal-354
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2132ugly1688ugly2228ugly141ugly365ugly453ugly261reach-goal-167
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2133ugly1999ugly2080ugly746ugly468ugly422ugly281reach-goal-40
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2134ugly2278ugly1868ugly738ugly592ugly337ugly198open-cb1
  :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly2135ugly1664ugly1869ugly316ugly404ugly678ugly588reach-goal-266
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2136ugly1961ugly2407ugly550ugly371ugly411ugly240reach-goal-337
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2137ugly1790ugly1677ugly409ugly9ugly98ugly510reach-goal-482
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2138ugly2262ugly1679ugly403ugly229ugly57ugly737close_sd9-condeff0-no-2
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd15))
  :effect (and (done-0)))
 (:action ugly2139ugly2209ugly1697ugly680ugly448ugly137ugly397reach-goal-344
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2140ugly1680ugly2027ugly346ugly478ugly343ugly630reach-goal-291
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2141ugly1864ugly1863ugly461ugly479ugly515ugly271reach-goal-254
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2142ugly1853ugly2103ugly494ugly557ugly576ugly635reach-goal-63
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2143ugly2422ugly2409ugly243ugly279ugly718ugly106reach-goal-262
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2144ugly2202ugly1719ugly37ugly320ugly379ugly134reach-goal-430
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2145ugly1913ugly1994ugly582ugly518ugly748ugly243reach-goal-278
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2146ugly2063ugly2161ugly341ugly648ugly296ugly393reach-goal-327
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2147ugly1841ugly2377ugly71ugly392ugly598ugly90reach-goal-219
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2148ugly2222ugly1736ugly357ugly316ugly404ugly678close_sd12-condeff1-no-6
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-cb3))
  :effect (and (done-1)))
 (:action
  ugly2149ugly2354ugly2404ugly122ugly474ugly464ugly574close_sd1-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd5) (closed-sd4) (closed-sd3)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly2150ugly2353ugly1879ugly4ugly311ugly4ugly311reach-goal-3
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2151ugly1772ugly1835ugly210ugly738ugly592ugly337reach-goal-197
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2152ugly1683ugly1971ugly542ugly561ugly301ugly714close_sd16-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd16-condeffs) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly2153ugly1986ugly2118ugly633ugly135ugly283ugly445reach-goal-238
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2154ugly1846ugly2070ugly677ugly234ugly91ugly163close_sd11-condeff0-no-3
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd10))
  :effect (and (done-0)))
 (:action
  ugly2155ugly2057ugly2290ugly501ugly122ugly474ugly464close_sd13-endof-condeffs
  :parameters () :precondition (and (do-close_sd13-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd13-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly2156ugly2033ugly2383ugly470ugly687ugly442ugly66reach-goal-479
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2157ugly1801ugly1815ugly603ugly675ugly717ugly400wait_cb2-endof-condeffs
  :parameters () :precondition (and (do-wait_cb2-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))))
 (:action
  ugly2158ugly2006ugly1959ugly597ugly72ugly211ugly182close_sd1-condeff0-no-3
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly2159ugly2241ugly2159ugly579ugly210ugly738ugly592reach-goal-336
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2160ugly1887ugly1765ugly613ugly61ugly381ugly399reach-goal-33
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2161ugly2003ugly2054ugly192ugly190ugly493ugly2close_sd11-condeff0-no-2
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd15))
  :effect (and (done-0)))
 (:action
  ugly2162ugly2398ugly1964ugly185ugly117ugly614ugly282close_sd10-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-sd16) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd9) (closed-sd8) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly2163ugly2036ugly1749ugly186ugly69ugly647ugly346reach-goal-477
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2164ugly1935ugly1982ugly593ugly376ugly212ugly573reach-goal-305
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2165ugly1821ugly1957ugly627ugly589ugly151ugly651close_sd12-condeff1-no-4
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-sd14))
  :effect (and (done-1)))
 (:action ugly2166ugly1756ugly1694ugly452ugly502ugly432ugly59reach-goal-115
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2167ugly1802ugly2298ugly375ugly226ugly369ugly618reach-goal-100
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2168ugly2412ugly2365ugly90ugly220ugly677ugly234reach-goal-90
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2169ugly1720ugly1860ugly304ugly253ugly185ugly117close_sd9-condeff0-no-4
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd10))
  :effect (and (done-0)))
 (:action ugly2170ugly2164ugly1935ugly320ugly379ugly134ugly431open-sd9
  :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd9) (not (closed-sd9))))
 (:action ugly2171ugly1671ugly2083ugly719ugly667ugly446ugly244reach-goal-469
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2172ugly2296ugly1827ugly312ugly331ugly380ugly475close_sd12-condeff1-no-3
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-sd15))
  :effect (and (done-1)))
 (:action ugly2173ugly2345ugly1737ugly427ugly155ugly145ugly340reach-goal-127
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2174ugly1990ugly1823ugly301ugly714ugly514ugly633reach-goal-134
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2175ugly1690ugly2376ugly263ugly84ugly309ugly370close_cb2
  :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly2176ugly1874ugly1734ugly221ugly139ugly141ugly365reach-goal-452
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2177ugly2060ugly1744ugly431ugly689ugly560ugly543reach-goal-22
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2178ugly2180ugly2336ugly685ugly204ugly386ugly287reach-goal-123
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2179ugly2136ugly1961ugly745ugly81ugly742ugly727wait_cb2-condeff0-no-4
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd10))
  :effect (and (done-0)))
 (:action ugly2180ugly2336ugly2347ugly492ugly644ugly44ugly262close_sd15
  :parameters () :precondition
  (and (do-normal) (not-closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd15-condeffs) (closed-sd15)
       (not (not-closed-sd15))))
 (:action ugly2181ugly1721ugly1915ugly270ugly297ugly180ugly522reach-goal-86
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2182ugly1867ugly2039ugly187ugly247ugly97ugly112close_sd14-condeff0-no-1
  :parameters () :precondition (and (do-close_sd14-condeffs) (not-closed-sd15))
  :effect (and (done-0)))
 (:action ugly2183ugly1816ugly1899ugly754ugly332ugly356ugly7reach-goal-366
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2184ugly2413ugly2325ugly522ugly87ugly601ugly86reach-goal-393
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2185ugly1833ugly2113ugly614ugly282ugly591ugly42reach-goal-152
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2186ugly1933ugly2227ugly557ugly576ugly635ugly64close_sd1-condeff0-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd5))
  :effect (and (done-0)))
 (:action
  ugly2187ugly1714ugly2014ugly292ugly92ugly307ugly729close_sd10-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-sd7) (closed-sd12) (closed-sd11)
       (closed-sd15) (closed-sd14) (closed-sd13) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly2188ugly2200ugly2149ugly692ugly538ugly350ugly266reach-goal-208
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2189ugly2357ugly2044ugly181ugly473ugly563ugly609reach-goal-462
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2190ugly1890ugly1878ugly693ugly120ugly39ugly553reach-goal-428
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2191ugly2052ugly1682ugly213ugly388ugly257ugly366close_sd14-condeff1-no-5
  :parameters () :precondition (and (do-close_sd14-condeffs) (not-closed-sd13))
  :effect (and (done-1)))
 (:action
  ugly2192ugly1675ugly2111ugly400ugly679ugly71ugly392close_sd10-condeff0-no-6
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly2193ugly2245ugly2068ugly670ugly528ugly508ugly47reach-goal-359
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2194ugly2351ugly1927ugly737ugly612ugly173ugly25reach-goal-148
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2195ugly2324ugly2231ugly608ugly231ugly530ugly256open-sd12
  :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd12) (not (closed-sd12))))
 (:action ugly2196ugly1751ugly1828ugly144ugly140ugly385ugly188reach-goal-2
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2197ugly2415ugly2233ugly117ugly614ugly282ugly591reach-goal-41
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2198ugly1678ugly1724ugly423ugly108ugly358ugly716close_sd16-condeff0-no-4
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action ugly2199ugly1851ugly2133ugly337ugly198ugly700ugly364reach-goal-61
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2200ugly2149ugly2354ugly742ugly727ugly671ugly258reach-goal-374
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2201ugly2203ugly1711ugly151ugly651ugly586ugly486reach-goal-334
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2202ugly1719ugly1699ugly412ugly535ugly757ugly189reach-goal-173
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2203ugly1711ugly1813ugly520ugly482ugly670ugly528reach-goal-507
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2204ugly1901ugly2272ugly577ugly213ugly388ugly257reach-goal-365
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2205ugly2121ugly1998ugly33ugly176ugly293ugly511reach-goal-231
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2206ugly2304ugly1918ugly587ugly202ugly552ugly654reach-goal-196
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2207ugly2108ugly2411ugly741ugly241ugly54ugly645close_sd15-condeff1-no-4
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-sd14))
  :effect (and (done-1)))
 (:action ugly2208ugly1807ugly1873ugly310ugly454ugly567ugly476reach-goal-130
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2209ugly1697ugly2342ugly12ugly194ugly566ugly94close_sd11-condeff1-no-4
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd14))
  :effect (and (done-1)))
 (:action ugly2210ugly2126ugly2090ugly679ugly71ugly392ugly598reach-goal-89
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2211ugly2269ugly2313ugly176ugly293ugly511ugly232reach-goal-112
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2212ugly1903ugly2144ugly540ugly130ugly656ugly10open-sd6
  :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd6) (not (closed-sd6))))
 (:action ugly2213ugly2375ugly2420ugly209ugly224ugly58ugly52open-sd1
  :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd1) (not (closed-sd1))))
 (:action
  ugly2214ugly2237ugly2229ugly712ugly5ugly260ugly246close_sd16-endof-condeffs
  :parameters () :precondition (and (do-close_sd16-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd16-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly2215ugly2417ugly1706ugly60ugly126ugly459ugly417reach-goal-352
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-cb3) (closed-sd13) (closed-sd11) (closed-sd15)
       (closed-sd14) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2216ugly1831ugly1783ugly388ugly257ugly366ugly559open-sd4
  :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd4) (not (closed-sd4))))
 (:action ugly2217ugly1778ugly2218ugly383ugly161ugly701ugly115reach-goal-222
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2218ugly2045ugly2256ugly552ugly654ugly197ugly734close_sd10-condeff0-no-4
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action ugly2219ugly2198ugly1678ugly62ugly703ugly363ugly203reach-goal-328
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2220ugly2206ugly2304ugly256ugly686ugly184ugly605reach-goal-446
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2221ugly1775ugly2340ugly617ugly36ugly82ugly578reach-goal-251
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2222ugly1736ugly2019ugly422ugly281ugly41ugly205close_sd11-condeff1-no-2
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd10))
  :effect (and (done-1)))
 (:action
  ugly2223ugly1968ugly1985ugly284ugly127ugly175ugly666close_sd6-endof-condeffs
  :parameters () :precondition (and (do-close_sd6-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))))
 (:action ugly2224ugly1780ugly2317ugly762ugly308ugly758ugly653reach-goal-64
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13)
       (closed-cb3) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2225ugly1977ugly2195ugly662ugly142ugly489ugly403reach-goal-228
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2226ugly1979ugly2188ugly538ugly350ugly266ugly209reach-goal-223
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2227ugly2219ugly2198ugly16ugly469ugly75ugly164wait_cb1-condeff1-yes
  :parameters () :precondition (and (do-wait_cb1-condeffs) (closed-sd6))
  :effect (and (done-1) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly2228ugly1803ugly1668ugly39ugly553ugly429ugly721close_sd10-condeff0-no-1
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd14))
  :effect (and (done-0)))
 (:action ugly2229ugly2374ugly1704ugly358ugly716ugly519ugly83reach-goal-241
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2230ugly2122ugly2287ugly564ugly96ugly531ugly40reach-goal-145
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2231ugly2270ugly2215ugly755ugly154ugly507ugly28reach-goal-480
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2232ugly1819ugly2283ugly230ugly387ugly276ugly497close_sd9-condeff1-no-2
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd8))
  :effect (and (done-1)))
 (:action
  ugly2233ugly1779ugly1917ugly561ugly301ugly714ugly514close_sd8-condeff1-no-0
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action ugly2234ugly1670ugly2064ugly440ugly46ugly597ugly72reach-goal-210
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2235ugly1685ugly1761ugly562ugly398ugly19ugly745reach-goal-80
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2236ugly2386ugly1965ugly46ugly597ugly72ugly211reach-goal-181
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2237ugly2229ugly2374ugly42ugly153ugly357ugly316reach-goal-403
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2238ugly2273ugly1884ugly513ugly248ugly313ugly227reach-goal-69
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2239ugly1774ugly2378ugly653ugly65ugly288ugly579reach-goal-209
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2240ugly2142ugly1853ugly441ugly79ugly572ugly509reach-goal-143
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2241ugly2159ugly2241ugly497ugly620ugly587ugly202close_sd14-condeff0-no-6
  :parameters () :precondition (and (do-close_sd14-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly2242ugly2179ugly2136ugly299ugly569ugly269ugly435close_sd8
  :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action ugly2243ugly1866ugly2049ugly701ugly115ugly223ugly746reach-goal-467
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2244ugly1785ugly1716ugly397ugly345ugly695ugly691open-sd16
  :parameters () :precondition
  (and (do-normal) (closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd16) (not (closed-sd16))))
 (:action ugly2245ugly2068ugly2332ugly220ugly677ugly234ugly91reach-goal-162
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2246ugly2330ugly1797ugly280ugly484ugly390ugly456open-cb3
  :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly2247ugly1973ugly1924ugly605ugly447ugly103ugly299close_sd13-condeff0-no-5
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-sd14))
  :effect (and (done-0)))
 (:action ugly2248ugly1865ugly2254ugly354ugly503ugly452ugly502reach-goal-431
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2249ugly2165ugly1821ugly295ugly200ugly27ugly11reach-goal-381
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2250ugly2197ugly2415ugly571ugly743ugly744ugly650close_sd10-condeff1-no-2
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd11))
  :effect (and (done-1)))
 (:action
  ugly2251ugly2116ugly2221ugly113ugly286ugly520ugly482wait_cb2-condeff0-no-3
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action
  ugly2252ugly1953ugly2282ugly476ugly131ugly186ugly69close_sd4-condeff0-no-3
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly2253ugly1844ugly2308ugly458ugly723ugly685ugly204reach-goal-385
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2254ugly2016ugly1910ugly443ugly123ugly408ugly218open-sd15
  :parameters () :precondition
  (and (do-normal) (closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd15) (not (closed-sd15))))
 (:action
  ugly2255ugly1889ugly2258ugly472ugly544ugly603ugly675close_sd11-condeff1-no-6
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-cb3))
  :effect (and (done-1)))
 (:action ugly2256ugly2214ugly2237ugly567ugly476ugly131ugly186reach-goal-68
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2257ugly2171ugly1671ugly421ugly272ugly631ugly690reach-goal-42
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2258ugly2134ugly2278ugly206ugly499ugly440ugly46close_sd10-condeff0-no-5
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action ugly2259ugly2271ugly1916ugly138ugly323ugly333ugly443reach-goal-122
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2260ugly1832ugly2187ugly52ugly697ugly347ugly615close_sd13-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd13-condeffs) (closed-sd16) (closed-cb3)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly2261ugly2337ugly1951ugly580ugly759ugly434ugly490reach-goal-180
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2262ugly1679ugly2065ugly732ugly711ugly555ugly455open-sd2
  :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd2) (not (closed-sd2))))
 (:action ugly2263ugly1705ugly1764ugly515ugly271ugly255ugly183reach-goal-371
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2264ugly2005ugly1822ugly612ugly173ugly25ugly149close_sd11-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd16) (closed-sd14) (closed-sd15)
       (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly2265ugly2364ugly1856ugly88ugly668ugly285ugly341close_sd4-endof-condeffs
  :parameters () :precondition (and (do-close_sd4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))))
 (:action ugly2266ugly1766ugly2288ugly448ugly137ugly397ugly345open-sd3
  :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd3) (not (closed-sd3))))
 (:action ugly2267ugly1941ugly1763ugly1ugly143ugly640ugly419reach-goal-400
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2268ugly1829ugly1696ugly581ugly384ugly100ugly550reach-goal-370
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2269ugly2313ugly1838ugly576ugly635ugly64ugly659close_sd12-condeff0-no-3
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action
  ugly2270ugly2215ugly2417ugly44ugly262ugly526ugly8close_sd8-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd7) (closed-sd12) (closed-sd9)
       (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly2271ugly1916ugly1800ugly223ugly746ugly468ugly422reach-goal-280
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2272ugly2239ugly1774ugly716ugly519ugly83ugly242reach-goal-176
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2273ugly1884ugly2175ugly28ugly481ugly418ugly708reach-goal-250
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2274ugly2119ugly1730ugly442ugly66ugly480ugly216wait_cb2-condeff0-no-6
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action ugly2275ugly1898ugly2125ugly554ugly389ugly437ugly616reach-goal-289
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2276ugly2302ugly2011ugly405ugly56ugly590ugly428reach-goal-20
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2277ugly1944ugly1995ugly45ugly12ugly194ugly566reach-goal-93
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2278ugly1868ugly2400ugly649ugly575ugly594ugly709close_sd8-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd16) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly2279ugly2145ugly1913ugly332ugly356ugly7ugly367reach-goal-13
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2280ugly2253ugly1844ugly646ugly273ugly521ugly245close_sd13-condeff0-no-0
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action ugly2281ugly2076ugly2117ugly55ugly577ugly213ugly388reach-goal-256
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13)
       (closed-cb3) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2282ugly2138ugly2262ugly17ugly324ugly625ugly95reach-goal-443
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2283ugly1892ugly2316ugly115ugly223ugly746ugly468reach-goal-421
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2284ugly1762ugly2319ugly264ugly222ugly491ugly230reach-goal-386
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2285ugly2307ugly2077ugly574ugly658ugly751ugly500close_sd16-condeff0-no-1
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-sd15))
  :effect (and (done-0)))
 (:action ugly2286ugly2391ugly1726ugly468ugly422ugly281ugly41reach-goal-204
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2287ugly2226ugly1979ugly526ugly8ugly632ugly719wait_cb2-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd16))
  :effect (and (done-0)))
 (:action ugly2288ugly2110ugly2046ugly172ugly73ugly761ugly361reach-goal-303
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2289ugly2213ugly2375ugly758ugly653ugly65ugly288close_sd12-condeff0-no-2
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action
  ugly2290ugly2163ugly2036ugly87ugly601ugly86ugly394close_sd15-condeff1-no-6
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-cb3))
  :effect (and (done-1)))
 (:action ugly2291ugly2072ugly2396ugly632ugly719ugly667ugly446reach-goal-243
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2292ugly1742ugly2109ugly92ugly307ugly729ugly599close_sd10-condeff1-no-0
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action ugly2293ugly1923ugly2097ugly514ugly633ugly135ugly283reach-goal-444
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd12)
       (closed-sd9) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2294ugly2388ugly1981ugly568ugly254ugly374ugly105close_sd3
  :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action ugly2295ugly1992ugly2026ugly578ugly252ugly178ugly741reach-goal-240
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2296ugly1827ugly1974ugly416ugly148ugly617ugly36reach-goal-81
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2297ugly2392ugly1811ugly644ugly44ugly262ugly526reach-goal-7
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2298ugly2037ugly2385ugly318ugly413ugly315ugly421reach-goal-271
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2299ugly2082ugly2358ugly114ugly752ugly558ugly156reach-goal-151
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2300ugly1958ugly1984ugly366ugly559ugly694ugly102reach-goal-149
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2301ugly2361ugly2051ugly70ugly310ugly454ugly567reach-goal-475
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2302ugly2011ugly2067ugly353ugly305ugly626ugly99close_sd1-condeff0-no-2
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly2303ugly1781ugly1792ugly485ugly424ugly693ugly120reach-goal-38
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2304ugly1918ugly2249ugly503ugly452ugly502ugly432reach-goal-58
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2305ugly2148ugly2222ugly74ugly430ugly351ugly487reach-goal-216
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2306ugly2169ugly1720ugly198ugly700ugly364ugly62close_sd11-condeff0-no-0
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd16))
  :effect (and (done-0)))
 (:action ugly2307ugly2077ugly2236ugly724ugly527ugly225ugly611reach-goal-460
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2308ugly2120ugly2321ugly98ugly510ugly483ugly339reach-goal-302
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2309ugly1738ugly1912ugly643ugly629ugly537ugly642reach-goal-504
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2310ugly2115ugly2335ugly150ugly410ugly359ugly628reach-goal-367
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2311ugly2300ugly1958ugly322ugly159ugly321ugly425reach-goal-297
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2312ugly2025ugly1949ugly327ugly291ugly29ugly704reach-goal-62
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2313ugly1838ugly2238ugly611ugly461ugly479ugly515reach-goal-270
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2314ugly2094ugly1839ugly283ugly445ugly239ugly492close_sd4-condeff0-no-0
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd5))
  :effect (and (done-0)))
 (:action ugly2315ugly1825ugly2042ugly546ugly132ugly712ugly5reach-goal-259
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2316ugly1777ugly1740ugly168ugly125ugly627ugly589reach-goal-150
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2317ugly2424ugly1907ugly671ugly258ugly375ugly226reach-goal-368
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2318ugly1798ugly1769ugly84ugly309ugly370ugly680reach-goal-447
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2319ugly1926ugly2151ugly110ugly51ugly80ugly664reach-goal-191
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2320ugly2225ugly1977ugly533ugly439ugly378ugly449reach-goal-408
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2321ugly1760ugly2373ugly224ugly58ugly52ugly697reach-goal-346
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2322ugly2041ugly2131ugly175ugly666ugly641ugly485reach-goal-423
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2323ugly1748ugly2143ugly760ugly725ugly221ugly139reach-goal-140
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2324ugly2231ugly2270ugly553ugly429ugly721ugly593reach-goal-375
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2325ugly2184ugly2413ugly663ugly529ugly169ugly67reach-goal-274
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2326ugly1934ugly2264ugly343ugly630ugly292ugly92reach-goal-306
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2327ugly2185ugly1833ugly451ugly32ugly118ugly554reach-goal-388
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2328ugly2322ugly2041ugly469ugly75ugly164ugly760close_sd7-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd12) (closed-sd10) (closed-sd11)
       (closed-sd15) (closed-sd14) (closed-sd13) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly2329ugly2024ugly1850ugly268ugly138ugly323ugly333reach-goal-442
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2330ugly1797ugly1942ugly399ugly34ugly342ugly494close_sd14-condeff1-no-3
  :parameters () :precondition (and (do-close_sd14-condeffs) (not-closed-sd11))
  :effect (and (done-1)))
 (:action ugly2331ugly1818ugly2155ugly395ugly78ugly740ugly665reach-goal-505
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2332ugly1882ugly2079ugly183ugly372ugly13ugly121close_sd7-condeff0-no-3
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly2333ugly1809ugly2162ugly736ugly119ugly539ugly109reach-goal-171
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2334ugly2257ugly2171ugly9ugly98ugly510ugly483reach-goal-338
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2335ugly1812ugly1858ugly700ugly364ugly62ugly703reach-goal-362
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2336ugly2347ugly2154ugly184ugly605ugly447ugly103reach-goal-298
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2337ugly1951ugly2242ugly517ugly504ugly334ugly513reach-goal-247
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2338ugly1810ugly1931ugly648ugly296ugly393ugly328close_sd14-condeff0-no-3
  :parameters () :precondition (and (do-close_sd14-condeffs) (not-closed-sd10))
  :effect (and (done-0)))
 (:action ugly2339ugly2247ugly1973ugly262ugly526ugly8ugly632close_sd7
  :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action
  ugly2340ugly2279ugly2145ugly251ugly457ugly171ugly732close_sd11-condeff1-no-0
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action
  ugly2341ugly2232ugly1819ugly621ugly541ugly733ugly460close_sd7-condeff1-no-5
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd13))
  :effect (and (done-1)))
 (:action ugly2342ugly1674ugly2190ugly228ugly546ugly132ugly712reach-goal-4
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2343ugly1676ugly2314ugly432ugly59ugly116ugly636reach-goal-37
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2344ugly2366ugly2380ugly656ugly10ugly692ugly538reach-goal-349
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2345ugly1737ugly2089ugly50ugly60ugly126ugly459reach-goal-416
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-cb3) (closed-sd11) (closed-sd15) (closed-sd14)
       (closed-sd13) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2346ugly1836ugly1770ugly152ugly312ugly331ugly380reach-goal-474
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2347ugly2154ugly1846ugly408ugly218ugly683ugly582close_sd16-condeff0-no-3
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-sd10))
  :effect (and (done-0)))
 (:action ugly2348ugly2387ugly1893ugly590ugly428ugly21ugly233reach-goal-198
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2349ugly1741ugly1997ugly426ugly93ugly536ugly391close_sd6
  :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action ugly2350ugly2260ugly1832ugly525ugly619ugly495ugly735open-sd14
  :parameters () :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd14) (not (closed-sd14))))
 (:action ugly2351ugly1927ugly2399ugly527ugly225ugly611ugly461reach-goal-478
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2352ugly1939ugly1684ugly340ugly128ugly604ugly396reach-goal-214
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2353ugly1879ugly1666ugly38ugly496ugly76ugly110reach-goal-50
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2354ugly2404ugly1784ugly5ugly260ugly246ugly525close_sd9-condeff1-no-1
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd12))
  :effect (and (done-1)))
 (:action
  ugly2355ugly1870ugly2194ugly689ugly560ugly543ugly23close_sd7-condeff1-no-4
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd14))
  :effect (and (done-1)))
 (:action ugly2356ugly2128ugly2410ugly639ugly264ugly222ugly491reach-goal-229
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2357ugly2044ugly1843ugly242ugly177ugly22ugly158close_sd13-condeff0-no-6
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly2358ugly1776ugly1943ugly752ugly558ugly156ugly152reach-goal-311
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2359ugly2352ugly1939ugly22ugly158ugly570ugly639reach-goal-263
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2360ugly2405ugly1950ugly226ugly369ugly618ugly101reach-goal-47
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2361ugly2051ugly1732ugly199ugly402ugly565ugly249reach-goal-84
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2362ugly1731ugly1771ugly424ugly693ugly120ugly39close_sd14-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd14-condeffs) (closed-sd7) (closed-sd12) (closed-sd10)
       (closed-sd11) (closed-sd15) (closed-sd13) (closed-cb3))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly2363ugly1906ugly2013ugly450ugly728ugly18ugly354reach-goal-502
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2364ugly1856ugly1750ugly361ugly304ugly253ugly185reach-goal-116
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2365ugly1752ugly2303ugly119ugly539ugly109ugly172reach-goal-72
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2366ugly2380ugly2318ugly136ugly236ugly74ugly430reach-goal-350
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2367ugly2421ugly2217ugly116ugly636ugly38ugly496reach-goal-75
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2368ugly2390ugly2268ugly167ugly206ugly499ugly440reach-goal-45
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2369ugly1794ugly2173ugly683ugly582ugly518ugly748reach-goal-242
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2370ugly2087ugly2368ugly728ugly18ugly354ugly503reach-goal-451
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2371ugly1852ugly2048ugly615ugly571ugly743ugly744close_sd3-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd5) (closed-sd4) (closed-sd1)
       (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly2372ugly2032ugly2199ugly189ugly174ugly319ugly147reach-goal-422
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2373ugly1886ugly2402ugly195ugly613ugly61ugly381reach-goal-398
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2374ugly1704ugly2020ugly495ugly735ugly684ugly114wait_cb3-condeff1-no-1
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd13))
  :effect (and (done-1)))
 (:action
  ugly2375ugly2420ugly1871ugly294ugly471ugly1ugly143close_sd6-condeff0-no-0
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly2376ugly1925ugly1914ugly722ugly622ugly406ugly17reach-goal-323
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2377ugly1733ugly2031ugly124ugly458ugly723ugly685reach-goal-203
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2378ugly2315ugly1825ugly380ugly475ugly585ugly166close_sd9
  :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action ugly2379ugly1920ugly1758ugly572ugly509ugly144ugly140reach-goal-384
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13)
       (closed-cb3) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2380ugly2318ugly1798ugly107ugly467ugly278ugly68reach-goal-376
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2381ugly2291ugly2072ugly734ugly596ugly289ugly652reach-goal-461
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2382ugly1988ugly2058ugly219ugly568ugly254ugly374reach-goal-104
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2383ugly2132ugly1688ugly566ugly94ugly715ugly438reach-goal-128
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-sd11) (closed-sd15) (closed-sd14) (closed-sd13)
       (closed-cb3) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2384ugly1820ugly1767ugly97ugly112ugly547ugly750reach-goal-106
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2385ugly1980ugly2135ugly2ugly705ugly214ugly451reach-goal-31
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-sd12)
       (closed-cb2) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2386ugly1965ugly1708ugly647ugly346ugly478ugly343close_sd8-condeff0-no-5
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action
  ugly2387ugly1893ugly2252ugly291ugly29ugly704ugly63close_sd9-condeff0-no-0
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd16))
  :effect (and (done-0)))
 (:action ugly2388ugly1981ugly2230ugly460ugly731ugly420ugly720reach-goal-249
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2389ugly2107ugly1902ugly731ugly420ugly720ugly250open-cb2
  :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly2390ugly2268ugly1829ugly34ugly342ugly494ugly557close_sd12-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd12-condeffs) (closed-sd7) (closed-sd9) (closed-sd8)
       (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly2391ugly1726ugly2130ugly193ugly270ugly297ugly180close_sd16-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd16-condeffs) (closed-sd13) (closed-cb3)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly2392ugly1811ugly2306ugly507ugly28ugly481ugly418close_sd11-condeff0-no-5
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action
  ugly2393ugly1796ugly1922ugly650ugly602ugly317ugly259wait_cb2-condeff1-yes
  :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd7) (closed-sd12) (closed-sd9)
       (closed-sd8))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly2394ugly2038ugly2280ugly591ugly42ugly153ugly357reach-goal-315
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2395ugly2389ugly2107ugly240ugly338ugly517ugly504reach-goal-333
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2396ugly2294ugly2388ugly319ugly147ugly423ugly108reach-goal-357
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2397ugly1728ugly2250ugly535ugly757ugly189ugly174reach-goal-318
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd12)
       (closed-sd8) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2398ugly1964ugly1847ugly439ugly378ugly449ugly409reach-goal-8
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd12)
       (closed-sd10) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2399ugly2189ugly2357ugly382ugly722ugly622ugly406reach-goal-16
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2400ugly2311ugly2300ugly296ugly393ugly328ugly549reach-goal-44
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-cb3) (closed-sd13)
       (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2401ugly2160ugly1887ugly103ugly299ugly569ugly269reach-goal-434
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2402ugly1857ugly2328ugly660ugly512ugly584ugly465reach-goal-88
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2403ugly1895ugly2251ugly454ugly567ugly476ugly131reach-goal-185
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2404ugly1784ugly1667ugly214ugly451ugly32ugly118close_sd14-condeff1-no-0
  :parameters () :precondition (and (do-close_sd14-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action ugly2405ugly1950ugly1888ugly30ugly295ugly200ugly27reach-goal-10
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2406ugly2331ugly1818ugly493ugly2ugly705ugly214reach-goal-450
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2407ugly2212ugly1903ugly482ugly670ugly528ugly508reach-goal-46
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2408ugly1894ugly2192ugly13ugly121ugly724ugly527reach-goal-224
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-sd12) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd11)
       (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2409ugly1905ugly2009ugly720ugly250ugly699ugly228close_sd14-condeff0-no-0
  :parameters () :precondition (and (do-close_sd14-condeffs) (not-closed-sd16))
  :effect (and (done-0)))
 (:action ugly2410ugly2301ugly2361ugly389ugly437ugly616ugly290open-sd10
  :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd10) (not (closed-sd10))))
 (:action ugly2411ugly2403ugly1895ugly589ugly151ugly651ugly586reach-goal-485
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2412ugly2365ugly1752ugly641ugly485ugly424ugly693reach-goal-119
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2413ugly2325ugly2184ugly751ugly500ugly516ugly749close_sd5-condeff0-no-3
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action
  ugly2414ugly2235ugly1685ugly99ugly661ugly407ugly55close_sd12-condeff0-no-0
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action ugly2415ugly2233ugly1779ugly255ugly183ugly372ugly13reach-goal-120
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-cb3)
       (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11) (closed-sd10)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2416ugly2348ugly2387ugly231ugly530ugly256ugly686reach-goal-183
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2417ugly1706ugly1722ugly275ugly314ugly167ugly206reach-goal-498
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-cb3) (closed-sd13) (closed-sd14)
       (closed-sd15) (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2418ugly1791ugly1991ugly534ugly415ugly672ugly24reach-goal-361
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2419ugly1693ugly2098ugly298ugly104ugly352ugly170reach-goal-207
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15)
       (closed-sd11) (closed-sd10) (closed-sd9) (closed-sd8) (closed-cb2)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action ugly2420ugly1871ugly1956ugly338ugly517ugly504ugly334close_sd16
  :parameters () :precondition
  (and (do-normal) (not-closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd16-condeffs) (closed-sd16)
       (not (not-closed-sd16))))
 (:action ugly2421ugly2217ugly1778ugly556ugly235ugly427ugly155reach-goal-144
  :parameters () :precondition
  (and (do-normal) (updated-cb3) (updated-cb2) (updated-cb1) (closed-sd3)
       (closed-sd4) (closed-cb2) (closed-sd8) (closed-sd9) (closed-sd10)
       (closed-cb3) (closed-sd13) (closed-sd14) (closed-sd15) (closed-sd11)
       (closed-sd12) (closed-cb1) (closed-sd1) (closed-sd2))
  :effect (and (goal-reached)))
 (:action
  ugly2422ugly2409ugly1905ugly347ugly615ugly571ugly743wait_cb3-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd12))
  :effect (and (done-0)))
 (:action
  ugly2423ugly2092ugly2178ugly518ugly748ugly243ugly279close_sd11-endof-condeffs
  :parameters () :precondition (and (do-close_sd11-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0))
       (not (done-1))))
 (:action
  ugly2424ugly1907ugly2333ugly147ugly423ugly108ugly358close_sd11-condeff1-no-5
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd13))
  :effect (and (done-1)))) 