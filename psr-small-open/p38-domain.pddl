
(define (domain grounded-strips-psr) (:requirements :strips :action-costs)
 (:predicates (not-closed-sd5) (not-closed-sd8) (not-closed-sd6)
  (do-close_sd13-condeffs) (updated-cb1) (do-close_sd10-condeffs) (done-1)
  (not-closed-sd9) (closed-cb1) (closed-sd8) (do-wait_cb1-condeffs)
  (not-closed-sd2) (do-close_sd12-condeffs) (not-closed-sd1) (not-closed-sd12)
  (closed-sd2) (not-closed-cb2) (not-updated-cb1) (closed-cb3) (not-closed-sd4)
  (done-0) (closed-sd1) (do-close_sd11-condeffs) (updated-cb3)
  (not-closed-sd13) (not-closed-sd10) (do-normal) (do-close_sd1-condeffs)
  (not-updated-cb3) (not-updated-cb2) (do-wait_cb2-condeffs) (updated-cb2)
  (not-closed-cb3) (not-closed-sd11) (closed-sd7) (closed-sd11) (closed-sd9)
  (closed-sd10) (closed-sd13) (closed-cb2) (closed-sd4) (closed-sd5)
  (closed-sd3) (closed-sd6) (not-closed-cb1) (not-closed-sd7) (not-closed-sd3)
  (closed-sd12))
 (:functions (total-cost) - number)
 (:action ugly1517ugly1548ugly28ugly27ugly44ugly59close_sd2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action ugly1518ugly1564ugly25ugly6ugly32ugly52wait_cb2-condeff0-yes
  :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd10) (closed-sd11)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1519ugly1580ugly50ugly36ugly5ugly14close_sd10 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action ugly1520ugly1568ugly49ugly26ugly51ugly64open-cb2 :parameters ()
  :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1521ugly1551ugly30ugly46ugly10ugly56close_sd10-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-sd11) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1522ugly1537ugly57ugly45ugly22ugly18wait_cb2-endof-condeffs
  :parameters () :precondition (and (do-wait_cb2-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly1523ugly1530ugly1ugly37ugly7ugly40close_sd1-endof-condeffs
  :parameters () :precondition (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action ugly1524ugly1535ugly4ugly29ugly23ugly34open-sd4 :parameters ()
  :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd4) (not (closed-sd4))))
 (:action ugly1525ugly1525ugly9ugly60ugly13ugly33open-sd5 :parameters ()
  :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd5) (not (closed-sd5))))
 (:action ugly1526ugly1543ugly20ugly4ugly29ugly23open-sd12 :parameters ()
  :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd12) (not (closed-sd12))))
 (:action ugly1527ugly1569ugly17ugly9ugly60ugly13open-sd13 :parameters ()
  :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd13) (not (closed-sd13))))
 (:action ugly1528ugly1522ugly21ugly35ugly2ugly38open-sd3 :parameters ()
  :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd3) (not (closed-sd3))))
 (:action ugly1529ugly1549ugly39ugly11ugly3ugly12close_sd1-condeff0-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action ugly1530ugly1517ugly32ugly52ugly24ugly48close_sd10-endof-condeffs
  :parameters () :precondition (and (do-close_sd10-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))))
 (:action ugly1531ugly1577ugly46ugly10ugly56ugly55close_sd3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action ugly1532ugly1524ugly19ugly1ugly37ugly7open-sd6 :parameters ()
  :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd6) (not (closed-sd6))))
 (:action ugly1533ugly1558ugly38ugly43ugly28ugly27open-sd2 :parameters ()
  :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd2) (not (closed-sd2))))
 (:action ugly1534ugly1556ugly36ugly5ugly14ugly54open-sd7 :parameters ()
  :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd7) (not (closed-sd7))))
 (:action ugly1535ugly1520ugly52ugly24ugly48ugly58close_cb2 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly1536ugly1532ugly8ugly15ugly53ugly63wait_cb2-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd10))
  :effect (and (done-0)))
 (:action ugly1537ugly1573ugly34ugly42ugly49ugly26close_sd12-condeff0-no-0
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-sd13))
  :effect (and (done-0)))
 (:action ugly1538ugly1534ugly40ugly21ugly35ugly2open-sd8 :parameters ()
  :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd8) (not (closed-sd8))))
 (:action ugly1539ugly1575ugly45ugly22ugly18ugly30open-cb3 :parameters ()
  :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1540ugly1538ugly18ugly30ugly46ugly10close_sd10-condeff0-no-0
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action ugly1541ugly1526ugly27ugly44ugly59ugly17close_sd11-condeff0-no-1
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly1542ugly1576ugly37ugly7ugly40ugly21open-sd11 :parameters ()
  :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd11) (not (closed-sd11))))
 (:action ugly1543ugly1536ugly16ugly19ugly1ugly37close_sd11-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd10) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1544ugly1527ugly53ugly63ugly25ugly6close_cb1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action ugly1545ugly1518ugly48ugly58ugly31ugly8close_sd4 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd4) (not (not-closed-sd4))))
 (:action ugly1546ugly1547ugly62ugly57ugly45ugly22close_sd1 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action ugly1547ugly1578ugly47ugly61ugly62ugly57open-sd1 :parameters ()
  :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd1) (not (closed-sd1))))
 (:action ugly1548ugly1544ugly11ugly3ugly12ugly20close_sd13-condeff0-no-1
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly1549ugly1555ugly23ugly34ugly42ugly49wait_cb2-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action ugly1550ugly1545ugly2ugly38ugly43ugly28wait_cb2-condeff1-yes
  :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd13) (closed-sd12)) :effect
  (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1551ugly1546ugly31ugly8ugly15ugly53wait_cb1-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action ugly1552ugly1559ugly44ugly59ugly17ugly9wait_cb3 :parameters ()
  :precondition (and (do-normal) (not-updated-cb3)) :effect
  (and (not-closed-cb3) (updated-cb3) (not (closed-cb3))
       (not (not-updated-cb3))))
 (:action ugly1553ugly1521ugly35ugly2ugly38ugly43wait_cb2-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd13))
  :effect (and (done-1)))
 (:action ugly1554ugly1557ugly15ugly53ugly63ugly25close_sd11 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action ugly1555ugly1539ugly59ugly17ugly9ugly60close_sd6 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action ugly1556ugly1552ugly43ugly28ugly27ugly44close_sd9 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd9) (not (not-closed-sd9))))
 (:action ugly1557ugly1531ugly61ugly62ugly57ugly45close_cb3 :parameters ()
  :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action ugly1558ugly1554ugly41ugly50ugly36ugly5close_sd5 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd5) (not (not-closed-sd5))))
 (:action ugly1559ugly1560ugly12ugly20ugly4ugly29wait_cb2 :parameters ()
  :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action ugly1560ugly1528ugly6ugly32ugly52ugly24open-cb1 :parameters ()
  :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1561ugly1571ugly51ugly64ugly47ugly61wait_cb1-condeff0-yes
  :parameters () :precondition (and (do-wait_cb1-condeffs) (closed-sd1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1562ugly1529ugly33ugly41ugly50ugly36close_sd13-endof-condeffs
  :parameters () :precondition (and (do-close_sd13-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd13-condeffs)) (not (done-0))))
 (:action ugly1563ugly1570ugly63ugly25ugly6ugly32close_sd12-condeff0-no-1
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly1564ugly1541ugly10ugly56ugly55ugly16close_sd1-condeff0-yes
  :parameters () :precondition (and (do-close_sd1-condeffs) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1565ugly1540ugly22ugly18ugly30ugly46close_sd11-endof-condeffs
  :parameters () :precondition (and (do-close_sd11-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0))))
 (:action ugly1566ugly1574ugly3ugly12ugly20ugly4wait_cb2-condeff1-no-1
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd12))
  :effect (and (done-1)))
 (:action ugly1567ugly1572ugly7ugly40ugly21ugly35close_sd13-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd13-condeffs) (closed-sd12) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1568ugly1565ugly24ugly48ugly58ugly31close_sd11-condeff0-no-0
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd10))
  :effect (and (done-0)))
 (:action ugly1569ugly1533ugly42ugly49ugly26ugly51wait_cb1-endof-condeffs
  :parameters () :precondition (and (do-wait_cb1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0))))
 (:action ugly1570ugly1579ugly26ugly51ugly64ugly47wait_cb1 :parameters ()
  :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action ugly1571ugly1567ugly56ugly55ugly16ugly19close_sd13 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd13-condeffs) (closed-sd13)
       (not (not-closed-sd13))))
 (:action ugly1572ugly1523ugly14ugly54ugly39ugly11close_sd13-condeff0-no-0
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-sd12))
  :effect (and (done-0)))
 (:action ugly1573ugly1550ugly29ugly23ugly34ugly42close_sd12 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd12-condeffs) (closed-sd12)
       (not (not-closed-sd12))))
 (:action ugly1574ugly1519ugly64ugly47ugly61ugly62close_sd10-condeff0-no-1
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly1575ugly1561ugly55ugly16ugly19ugly1open-sd9 :parameters ()
  :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd9) (not (closed-sd9))))
 (:action ugly1576ugly1553ugly5ugly14ugly54ugly39close_sd8 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd8) (not (not-closed-sd8))))
 (:action ugly1577ugly1562ugly13ugly33ugly41ugly50open-sd10 :parameters ()
  :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd10) (not (closed-sd10))))
 (:action ugly1578ugly1563ugly54ugly39ugly11ugly3close_sd7 :parameters ()
  :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd7) (not (not-closed-sd7))))
 (:action ugly1579ugly1542ugly60ugly13ugly33ugly41close_sd12-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd12-condeffs) (closed-sd13) (closed-cb2)) :effect
  (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1580ugly1566ugly58ugly31ugly8ugly15close_sd12-endof-condeffs
  :parameters () :precondition (and (do-close_sd12-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd12-condeffs)) (not (done-0))))) 