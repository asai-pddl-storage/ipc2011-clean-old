
(define (domain grounded-strips-psr) (:requirements :strips :action-costs)
 (:predicates (not-closed-sd7) (closed-cb6) (do-close_sd3-condeffs)
  (updated-cb3) (not-closed-sd2) (closed-sd1) (not-closed-sd10) (closed-sd10)
  (not-closed-sd11) (closed-sd6) (closed-cb1) (closed-sd2) (not-updated-cb4)
  (closed-sd11) (not-updated-cb3) (not-updated-cb2) (not-closed-cb4)
  (not-closed-sd1) (not-updated-cb1) (closed-sd12) (closed-cb3)
  (not-closed-sd3) (not-closed-sd8) (do-normal) (updated-cb4) (done-0)
  (updated-cb1) (closed-sd3) (do-close_sd12-condeffs) (do-wait_cb1-condeffs)
  (closed-cb2) (done-1) (not-closed-sd4) (not-closed-sd9)
  (do-close_sd4-condeffs) (not-closed-cb2) (closed-sd5) (closed-sd8)
  (closed-cb4) (do-wait_cb2-condeffs) (not-closed-cb3) (updated-cb2)
  (not-closed-sd13) (not-closed-cb5) (updated-cb5) (not-closed-sd5)
  (updated-cb6) (not-updated-cb6) (not-closed-cb6) (do-close_sd9-condeffs)
  (closed-sd14) (not-closed-sd6) (not-closed-sd12) (not-closed-cb1)
  (closed-sd13) (closed-cb5) (closed-sd7) (not-updated-cb5)
  (do-wait_cb4-condeffs) (closed-sd9) (not-closed-sd14) (closed-sd4)
  (do-close_sd1-condeffs))
 (:functions (total-cost) - number)
 (:action
  ugly1442ugly1445ugly1513ugly58ugly33ugly68ugly27close_sd1-condeff0-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1443ugly1443ugly1443ugly2ugly45ugly49ugly44wait_cb2 :parameters
  () :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly1444ugly1454ugly1467ugly68ugly27ugly18ugly60close_cb1 :parameters
  () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly1445ugly1513ugly1499ugly59ugly64ugly25ugly8close_sd1 :parameters
  () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly1446ugly1446ugly1446ugly5ugly14ugly54ugly75open-sd9 :parameters
  () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd9) (not (closed-sd9))))
 (:action ugly1447ugly1457ugly1511ugly56ugly57ugly67ugly3close_sd5 :parameters
  () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action
  ugly1448ugly1498ugly1491ugly18ugly60ugly32ugly50close_sd12-endof-condeffs
  :parameters () :precondition (and (do-close_sd12-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd12-condeffs)) (not (done-0))))
 (:action ugly1449ugly1483ugly1455ugly41ugly13ugly9ugly6close_cb6 :parameters
  () :precondition
  (and (do-normal) (not-closed-cb6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb6) (not-updated-cb6) (not (not-closed-cb6))
       (not (updated-cb6))))
 (:action ugly1450ugly1512ugly1506ugly23ugly39ugly1ugly4close_cb4 :parameters
  () :precondition
  (and (do-normal) (not-closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb4) (not-updated-cb4) (not (not-closed-cb4))
       (not (updated-cb4))))
 (:action ugly1451ugly1449ugly1483ugly14ugly54ugly75ugly38close_cb2 :parameters
  () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly1452ugly1505ugly1484ugly37ugly46ugly59ugly64wait_cb2-condeff0-yes
  :parameters () :precondition (and (do-wait_cb2-condeffs) (closed-sd3))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1453ugly1515ugly1507ugly1ugly4ugly22ugly10close_sd3-condeff0-yes
  :parameters () :precondition (and (do-close_sd3-condeffs) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1454ugly1467ugly1509ugly60ugly32ugly50ugly5close_sd6 :parameters
  () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly1455ugly1482ugly1470ugly38ugly31ugly17ugly34close_cb3 :parameters
  () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly1456ugly1444ugly1454ugly26ugly48ugly58ugly33wait_cb4-condeff0-yes
  :parameters () :precondition (and (do-wait_cb4-condeffs) (closed-sd12))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1457ugly1511ugly1497ugly40ugly55ugly52ugly62close_cb5 :parameters
  () :precondition
  (and (do-normal) (not-closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb5) (not-updated-cb5) (not (not-closed-cb5))
       (not (updated-cb5))))
 (:action ugly1458ugly1447ugly1457ugly70ugly72ugly40ugly55open-cb1 :parameters
  () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1459ugly1468ugly1504ugly28ugly26ugly48ugly58open-sd14 :parameters
  () :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd14) (not (closed-sd14))))
 (:action ugly1460ugly1492ugly1490ugly17ugly34ugly23ugly39close_sd13
  :parameters () :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd13) (not (not-closed-sd13))))
 (:action ugly1461ugly1495ugly1456ugly3ugly15ugly63ugly11open-sd12 :parameters
  () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd12) (not (closed-sd12))))
 (:action
  ugly1462ugly1489ugly1461ugly54ugly75ugly38ugly31close_sd1-condeff0-yes
  :parameters () :precondition (and (do-close_sd1-condeffs) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1463ugly1473ugly1486ugly33ugly68ugly27ugly18close_sd3 :parameters
  () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action
  ugly1464ugly1503ugly1466ugly34ugly23ugly39ugly1close_sd12-condeff0-no-0
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-cb4))
  :effect (and (done-0)))
 (:action ugly1465ugly1485ugly1480ugly21ugly65ugly36ugly71open-sd5 :parameters
  () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd5) (not (closed-sd5))))
 (:action
  ugly1466ugly1475ugly1516ugly53ugly56ugly57ugly67close_sd12-condeff0-yes
  :parameters () :precondition (and (do-close_sd12-condeffs) (closed-cb4))
  :effect (and (done-0) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1467ugly1509ugly1501ugly31ugly17ugly34ugly23open-sd8 :parameters
  () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd8) (not (closed-sd8))))
 (:action ugly1468ugly1504ugly1469ugly19ugly7ugly70ugly72open-sd7 :parameters
  () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd7) (not (closed-sd7))))
 (:action ugly1469ugly1460ugly1492ugly49ugly44ugly24ugly29open-sd10 :parameters
  () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd10) (not (closed-sd10))))
 (:action
  ugly1470ugly1479ugly1487ugly67ugly3ugly15ugly63close_sd9-endof-condeffs
  :parameters () :precondition (and (do-close_sd9-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0))))
 (:action ugly1471ugly1488ugly1452ugly64ugly25ugly8ugly16open-sd6 :parameters
  () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd6) (not (closed-sd6))))
 (:action ugly1472ugly1514ugly1502ugly7ugly70ugly72ugly40close_sd4 :parameters
  () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly1473ugly1486ugly1474ugly9ugly6ugly20ugly74open-cb2 :parameters ()
  :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly1474ugly1450ugly1512ugly65ugly36ugly71ugly42wait_cb4-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb4-condeffs) (not-closed-sd12))
  :effect (and (done-0)))
 (:action ugly1475ugly1516ugly1494ugly52ugly62ugly21ugly65open-sd11 :parameters
  () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd11) (not (closed-sd11))))
 (:action ugly1476ugly1451ugly1449ugly42ugly69ugly47ugly43close_sd14
  :parameters () :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd14) (not (not-closed-sd14))))
 (:action ugly1477ugly1471ugly1488ugly11ugly35ugly30ugly19close_sd9 :parameters
  () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action ugly1478ugly1496ugly1463ugly32ugly50ugly5ugly14close_sd11 :parameters
  () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd11) (not (not-closed-sd11))))
 (:action
  ugly1479ugly1487ugly1508ugly24ugly29ugly37ugly46close_sd4-endof-condeffs
  :parameters () :precondition (and (do-close_sd4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))))
 (:action ugly1480ugly1462ugly1489ugly20ugly74ugly51ugly12wait_cb5 :parameters
  () :precondition (and (do-normal) (not-updated-cb5)) :effect
  (and (not-closed-cb5) (updated-cb5) (not (closed-cb5))
       (not (not-updated-cb5))))
 (:action
  ugly1481ugly1477ugly1471ugly47ugly43ugly53ugly56close_sd4-condeff0-no-0
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action
  ugly1482ugly1470ugly1479ugly46ugly59ugly64ugly25close_sd9-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd4) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1483ugly1455ugly1482ugly29ugly37ugly46ugly59close_sd2 :parameters
  () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action
  ugly1484ugly1478ugly1496ugly22ugly10ugly61ugly28wait_cb2-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1485ugly1480ugly1462ugly48ugly58ugly33ugly68wait_cb2-condeff1-yes
  :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd9) (closed-sd4)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1486ugly1474ugly1450ugly71ugly42ugly69ugly47open-sd4 :parameters
  () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd4) (not (closed-sd4))))
 (:action ugly1487ugly1508ugly1465ugly44ugly24ugly29ugly37open-sd1 :parameters
  () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd1) (not (closed-sd1))))
 (:action ugly1488ugly1452ugly1505ugly43ugly53ugly56ugly57wait_cb4 :parameters
  () :precondition (and (do-normal) (not-updated-cb4)) :effect
  (and (not (do-normal)) (do-wait_cb4-condeffs) (updated-cb4)
       (not (not-updated-cb4))))
 (:action
  ugly1489ugly1461ugly1495ugly15ugly63ugly11ugly35wait_cb2-endof-condeffs
  :parameters () :precondition (and (do-wait_cb2-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly1490ugly1458ugly1447ugly16ugly41ugly13ugly9close_sd10 :parameters
  () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd10) (not (not-closed-sd10))))
 (:action
  ugly1491ugly1459ugly1468ugly63ugly11ugly35ugly30close_sd1-endof-condeffs
  :parameters () :precondition (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly1492ugly1490ugly1458ugly6ugly20ugly74ugly51close_sd8 :parameters
  () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd8) (not (not-closed-sd8))))
 (:action
  ugly1493ugly1476ugly1451ugly8ugly16ugly41ugly13close_sd9-condeff0-no-0
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action ugly1494ugly1493ugly1476ugly10ugly61ugly28ugly26open-cb5 :parameters
  () :precondition
  (and (do-normal) (closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly1495ugly1456ugly1444ugly13ugly9ugly6ugly20wait_cb1-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action
  ugly1496ugly1463ugly1473ugly45ugly49ugly44ugly24wait_cb2-condeff1-no-1
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd4))
  :effect (and (done-1)))
 (:action ugly1497ugly1481ugly1477ugly30ugly19ugly7ugly70wait_cb1 :parameters
  () :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly1498ugly1491ugly1459ugly27ugly18ugly60ugly32open-cb3 :parameters
  () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1499ugly1500ugly1510ugly12ugly66ugly2ugly45open-cb4 :parameters
  () :precondition
  (and (do-normal) (closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb4) (not (closed-cb4))))
 (:action ugly1500ugly1510ugly1453ugly74ugly51ugly12ugly66close_sd12
  :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd12-condeffs) (closed-sd12)
       (not (not-closed-sd12))))
 (:action
  ugly1501ugly1472ugly1514ugly61ugly28ugly26ugly48close_sd4-condeff0-no-1
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action
  ugly1502ugly1448ugly1498ugly50ugly5ugly14ugly54wait_cb1-endof-condeffs
  :parameters () :precondition (and (do-wait_cb1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0))))
 (:action ugly1503ugly1466ugly1475ugly75ugly38ugly31ugly17open-sd13 :parameters
  () :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd13) (not (closed-sd13))))
 (:action ugly1504ugly1469ugly1460ugly51ugly12ugly66ugly2open-sd2 :parameters
  () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd2) (not (closed-sd2))))
 (:action ugly1505ugly1484ugly1478ugly55ugly52ugly62ugly21wait_cb6 :parameters
  () :precondition (and (do-normal) (not-updated-cb6)) :effect
  (and (not-closed-cb6) (updated-cb6) (not (closed-cb6))
       (not (not-updated-cb6))))
 (:action ugly1506ugly1464ugly1503ugly25ugly8ugly16ugly41close_sd7 :parameters
  () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd7) (not (not-closed-sd7))))
 (:action
  ugly1507ugly1442ugly1445ugly72ugly40ugly55ugly52close_sd3-condeff0-no-0
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly1508ugly1465ugly1485ugly39ugly1ugly4ugly22close_sd9-condeff0-no-1
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly1509ugly1501ugly1472ugly73ugly73ugly73ugly73wait_cb1-condeff0-yes
  :parameters () :precondition (and (do-wait_cb1-condeffs) (closed-sd1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1510ugly1453ugly1515ugly66ugly2ugly45ugly49open-sd3 :parameters
  () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd3) (not (closed-sd3))))
 (:action ugly1511ugly1497ugly1481ugly36ugly71ugly42ugly69open-cb6 :parameters
  () :precondition
  (and (do-normal) (closed-cb6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly1512ugly1506ugly1464ugly62ugly21ugly65ugly36wait_cb3 :parameters
  () :precondition (and (do-normal) (not-updated-cb3)) :effect
  (and (not-closed-cb3) (updated-cb3) (not (closed-cb3))
       (not (not-updated-cb3))))
 (:action
  ugly1513ugly1499ugly1500ugly69ugly47ugly43ugly53close_sd4-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd9) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly1514ugly1502ugly1448ugly57ugly67ugly3ugly15close_sd3-endof-condeffs
  :parameters () :precondition (and (do-close_sd3-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))))
 (:action ugly1515ugly1507ugly1442ugly4ugly22ugly10ugly61wait_cb2-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd9))
  :effect (and (done-1)))
 (:action
  ugly1516ugly1494ugly1493ugly35ugly30ugly19ugly7wait_cb4-endof-condeffs
  :parameters () :precondition (and (do-wait_cb4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb4-condeffs)) (not (done-0))))) 