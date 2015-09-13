
(define (domain grounded-strips-psr) (:requirements :strips :action-costs)
 (:predicates (do-close_sd5-condeffs) (closed-sd6) (closed-cb2)
  (not-updated-cb2) (done-3) (closed-sd10) (not-closed-sd7) (not-closed-cb3)
  (not-closed-sd8) (closed-sd1) (not-closed-sd3) (not-closed-cb1) (do-normal)
  (updated-cb3) (do-close_sd4-condeffs) (do-close_sd1-condeffs)
  (not-updated-cb3) (closed-sd11) (not-closed-sd6) (updated-cb2) (updated-cb1)
  (not-closed-sd5) (closed-sd2) (do-close_sd11-condeffs) (closed-sd5)
  (not-closed-sd2) (do-close_sd9-condeffs) (closed-sd3) (not-closed-sd9)
  (do-close_sd10-condeffs) (not-closed-cb2) (closed-sd7) (not-closed-sd4)
  (done-1) (closed-sd8) (done-2) (do-wait_cb1-condeffs) (closed-cb3)
  (closed-sd12) (do-close_sd12-condeffs) (not-updated-cb1) (closed-sd4)
  (closed-cb1) (do-wait_cb3-condeffs) (not-closed-sd11) (not-closed-sd1)
  (done-0) (not-closed-sd10) (closed-sd9) (not-closed-sd12))
 (:functions (total-cost) - number)
 (:action
  ugly1581ugly1621ugly1627ugly1633ugly1592ugly1650ugly81ugly58ugly19ugly73close_sd10-condeff0-no-1
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action
  ugly1582ugly1637ugly1631ugly1609ugly1629ugly1593ugly6ugly78ugly49ugly76close_sd5
  :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action
  ugly1583ugly1598ugly1606ugly1591ugly1624ugly1652ugly8ugly11ugly3ugly29close_sd9-condeff0-no-1
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action
  ugly1584ugly1635ugly1636ugly1613ugly1641ugly1640ugly17ugly68ugly35ugly33close_sd5-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-sd9) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly1585ugly1656ugly1584ugly1635ugly1636ugly1613ugly61ugly82ugly45ugly38close_sd6
  :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd6) (not (not-closed-sd6))))
 (:action
  ugly1586ugly1653ugly1596ugly1605ugly1616ugly1610ugly42ugly37ugly26ugly14wait_cb3-endof-condeffs
  :parameters () :precondition
  (and (do-wait_cb3-condeffs) (done-0) (done-1) (done-2) (done-3)) :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0)) (not (done-1))
       (not (done-2)) (not (done-3))))
 (:action
  ugly1587ugly1651ugly1647ugly1643ugly1582ugly1637ugly51ugly31ugly36ugly44close_sd11-endof-condeffs
  :parameters () :precondition (and (do-close_sd11-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd11-condeffs)) (not (done-0))))
 (:action
  ugly1588ugly1614ugly1648ugly1638ugly1581ugly1621ugly47ugly62ugly59ugly69close_sd1-condeff0-yes
  :parameters () :precondition (and (do-close_sd1-condeffs) (closed-cb1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly1589ugly1608ugly1626ugly1583ugly1598ugly1606ugly11ugly3ugly29ugly17wait_cb3-condeff1-yes
  :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd5) (closed-sd9)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly1590ugly1615ugly1623ugly1612ugly1617ugly1654ugly27ugly81ugly58ugly19wait_cb3-condeff2-no-1
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd10))
  :effect (and (done-2)))
 (:action
  ugly1591ugly1624ugly1652ugly1588ugly1614ugly1648ugly58ugly19ugly73ugly9close_sd11-condeff0-no-1
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action
  ugly1592ugly1650ugly1661ugly1594ugly1585ugly1656ugly4ugly2ugly75ugly34close_sd3
  :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd3) (not (not-closed-sd3))))
 (:action
  ugly1593ugly1586ugly1653ugly1596ugly1605ugly1616ugly30ugly46ugly8ugly11close_sd12-condeff0-no-0
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-sd10))
  :effect (and (done-0)))
 (:action
  ugly1594ugly1585ugly1656ugly1584ugly1635ugly1636ugly33ugly55ugly65ugly40close_sd12-condeff0-no-1
  :parameters () :precondition (and (do-close_sd12-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action
  ugly1595ugly1628ugly1595ugly1628ugly1595ugly1628ugly15ugly23ugly48ugly20close_sd9-condeff0-no-0
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action
  ugly1596ugly1605ugly1616ugly1610ugly1622ugly1611ugly79ugly7ugly47ugly62close_sd4
  :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action
  ugly1597ugly1645ugly1601ugly1658ugly1632ugly1657ugly59ugly69ugly28ugly72open-sd3
  :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd3) (not (closed-sd3))))
 (:action
  ugly1598ugly1606ugly1591ugly1624ugly1652ugly1588ugly34ugly25ugly67ugly39close_sd5-condeff0-no-1
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action
  ugly1599ugly1662ugly1590ugly1615ugly1623ugly1612ugly37ugly26ugly14ugly77wait_cb1
  :parameters () :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action
  ugly1600ugly1603ugly1587ugly1651ugly1647ugly1643ugly2ugly75ugly34ugly25wait_cb3-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action
  ugly1601ugly1658ugly1632ugly1657ugly1639ugly1620ugly39ugly57ugly12ugly21close_sd4-condeff0-no-0
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action
  ugly1602ugly1630ugly1634ugly1649ugly1602ugly1630ugly54ugly50ugly60ugly63wait_cb3
  :parameters () :precondition (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action
  ugly1603ugly1587ugly1651ugly1647ugly1643ugly1582ugly57ugly12ugly21ugly61wait_cb1-endof-condeffs
  :parameters () :precondition (and (do-wait_cb1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0))))
 (:action
  ugly1604ugly1642ugly1660ugly1599ugly1662ugly1590ugly35ugly33ugly55ugly65open-sd6
  :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd6) (not (closed-sd6))))
 (:action
  ugly1605ugly1616ugly1610ugly1622ugly1611ugly1659ugly9ugly52ugly56ugly51close_cb3
  :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action
  ugly1606ugly1591ugly1624ugly1652ugly1588ugly1614ugly68ugly35ugly33ugly55wait_cb3-condeff0-yes
  :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd4) (closed-sd9)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly1607ugly1604ugly1642ugly1660ugly1599ugly1662ugly10ugly22ugly70ugly18open-sd4
  :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd4) (not (closed-sd4))))
 (:action
  ugly1608ugly1626ugly1583ugly1598ugly1606ugly1591ugly44ugly53ugly66ugly71close_cb2
  :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action
  ugly1609ugly1629ugly1593ugly1586ugly1653ugly1596ugly25ugly67ugly39ugly57close_sd10-condeff1-no-1
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-cb3))
  :effect (and (done-1)))
 (:action
  ugly1610ugly1622ugly1611ugly1659ugly1589ugly1608ugly46ugly8ugly11ugly3close_sd1-condeff0-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action
  ugly1611ugly1659ugly1589ugly1608ugly1626ugly1583ugly18ugly42ugly37ugly26close_sd9
  :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action
  ugly1612ugly1617ugly1654ugly1607ugly1604ugly1642ugly80ugly80ugly80ugly80wait_cb1-condeff0-yes
  :parameters () :precondition (and (do-wait_cb1-condeffs) (closed-sd1))
  :effect (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly1613ugly1641ugly1640ugly1597ugly1645ugly1601ugly78ugly49ugly76ugly54close_sd11-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd11-condeffs) (closed-sd10) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly1614ugly1648ugly1638ugly1581ugly1621ugly1627ugly53ugly66ugly71ugly32close_sd9-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd4) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly1615ugly1623ugly1612ugly1617ugly1654ugly1607ugly24ugly41ugly30ugly46close_sd10-condeff0-no-0
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd11))
  :effect (and (done-0)))
 (:action
  ugly1616ugly1610ugly1622ugly1611ugly1659ugly1589ugly28ugly72ugly43ugly5close_sd10
  :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd10-condeffs) (closed-sd10)
       (not (not-closed-sd10))))
 (:action
  ugly1617ugly1654ugly1607ugly1604ugly1642ugly1660ugly19ugly73ugly9ugly52close_sd5-condeff0-no-0
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd9))
  :effect (and (done-0)))
 (:action
  ugly1618ugly1646ugly1625ugly1644ugly1655ugly1618ugly66ugly71ugly32ugly15close_sd7
  :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd7) (not (not-closed-sd7))))
 (:action
  ugly1619ugly1600ugly1603ugly1587ugly1651ugly1647ugly63ugly64ugly1ugly74close_sd10-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-sd12) (closed-cb3)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly1620ugly1619ugly1600ugly1603ugly1587ugly1651ugly67ugly39ugly57ugly12close_sd9-endof-condeffs
  :parameters () :precondition (and (do-close_sd9-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0))
       (not (done-1))))
 (:action
  ugly1621ugly1627ugly1633ugly1592ugly1650ugly1661ugly14ugly77ugly79ugly7open-cb2
  :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly1622ugly1611ugly1659ugly1589ugly1608ugly1626ugly3ugly29ugly17ugly68open-sd11
  :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd11) (not (closed-sd11))))
 (:action
  ugly1623ugly1612ugly1617ugly1654ugly1607ugly1604ugly62ugly59ugly69ugly28wait_cb3-condeff2-no-0
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd11))
  :effect (and (done-2)))
 (:action
  ugly1624ugly1652ugly1588ugly1614ugly1648ugly1638ugly1ugly74ugly10ugly22wait_cb3-condeff1-no-1
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd9))
  :effect (and (done-1)))
 (:action
  ugly1625ugly1644ugly1655ugly1618ugly1646ugly1625ugly64ugly1ugly74ugly10close_sd8
  :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd8) (not (not-closed-sd8))))
 (:action
  ugly1626ugly1583ugly1598ugly1606ugly1591ugly1624ugly72ugly43ugly5ugly6wait_cb2
  :parameters () :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not-closed-cb2) (updated-cb2) (not (closed-cb2))
       (not (not-updated-cb2))))
 (:action
  ugly1627ugly1633ugly1592ugly1650ugly1661ugly1594ugly5ugly6ugly78ugly49wait_cb3-condeff3-no-1
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd10))
  :effect (and (done-3)))
 (:action
  ugly1628ugly1595ugly1628ugly1595ugly1628ugly1595ugly48ugly20ugly16ugly13close_sd1
  :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action
  ugly1629ugly1593ugly1586ugly1653ugly1596ugly1605ugly36ugly44ugly53ugly66wait_cb3-condeff2-yes
  :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd11) (closed-sd10)) :effect
  (and (done-2) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly1630ugly1634ugly1649ugly1602ugly1630ugly1634ugly69ugly28ugly72ugly43close_sd12-endof-condeffs
  :parameters () :precondition (and (do-close_sd12-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd12-condeffs)) (not (done-0))))
 (:action
  ugly1631ugly1609ugly1629ugly1593ugly1586ugly1653ugly16ugly13ugly27ugly81close_sd5-endof-condeffs
  :parameters () :precondition (and (do-close_sd5-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))))
 (:action
  ugly1632ugly1657ugly1639ugly1620ugly1619ugly1600ugly23ugly48ugly20ugly16close_sd10-endof-condeffs
  :parameters () :precondition (and (do-close_sd10-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd10-condeffs)) (not (done-0))
       (not (done-1))))
 (:action
  ugly1633ugly1592ugly1650ugly1661ugly1594ugly1585ugly76ugly54ugly50ugly60close_sd4-endof-condeffs
  :parameters () :precondition (and (do-close_sd4-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))))
 (:action
  ugly1634ugly1649ugly1602ugly1630ugly1634ugly1649ugly22ugly70ugly18ugly42open-sd9
  :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd9) (not (closed-sd9))))
 (:action
  ugly1635ugly1636ugly1613ugly1641ugly1640ugly1597ugly65ugly40ugly4ugly2wait_cb3-condeff3-no-0
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd12))
  :effect (and (done-3)))
 (:action
  ugly1636ugly1613ugly1641ugly1640ugly1597ugly1645ugly21ugly61ugly82ugly45open-sd8
  :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd8) (not (closed-sd8))))
 (:action
  ugly1637ugly1631ugly1609ugly1629ugly1593ugly1586ugly73ugly9ugly52ugly56close_sd11-condeff0-no-0
  :parameters () :precondition (and (do-close_sd11-condeffs) (not-closed-sd10))
  :effect (and (done-0)))
 (:action
  ugly1638ugly1581ugly1621ugly1627ugly1633ugly1592ugly70ugly18ugly42ugly37close_sd2
  :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (closed-sd2) (not (not-closed-sd2))))
 (:action
  ugly1639ugly1620ugly1619ugly1600ugly1603ugly1587ugly71ugly32ugly15ugly23open-cb1
  :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly1640ugly1597ugly1645ugly1601ugly1658ugly1632ugly77ugly79ugly7ugly47close_sd4-condeff0-no-1
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action
  ugly1641ugly1640ugly1597ugly1645ugly1601ugly1658ugly52ugly56ugly51ugly31open-sd10
  :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd10) (not (closed-sd10))))
 (:action
  ugly1642ugly1660ugly1599ugly1662ugly1590ugly1615ugly43ugly5ugly6ugly78close_sd11
  :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd11-condeffs) (closed-sd11)
       (not (not-closed-sd11))))
 (:action
  ugly1643ugly1582ugly1637ugly1631ugly1609ugly1629ugly13ugly27ugly81ugly58close_sd9-condeff1-no-0
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-sd5))
  :effect (and (done-1)))
 (:action
  ugly1644ugly1655ugly1618ugly1646ugly1625ugly1644ugly75ugly34ugly25ugly67open-sd7
  :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd7) (not (closed-sd7))))
 (:action
  ugly1645ugly1601ugly1658ugly1632ugly1657ugly1639ugly40ugly4ugly2ugly75open-sd12
  :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd12) (not (closed-sd12))))
 (:action
  ugly1646ugly1625ugly1644ugly1655ugly1618ugly1646ugly45ugly38ugly24ugly41close_sd1-endof-condeffs
  :parameters () :precondition (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action
  ugly1647ugly1643ugly1582ugly1637ugly1631ugly1609ugly49ugly76ugly54ugly50close_sd4-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd9) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly1648ugly1638ugly1581ugly1621ugly1627ugly1633ugly12ugly21ugly61ugly82open-sd1
  :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd1) (not (closed-sd1))))
 (:action
  ugly1649ugly1602ugly1630ugly1634ugly1649ugly1602ugly50ugly60ugly63ugly64close_sd12
  :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (not (do-normal)) (do-close_sd12-condeffs) (closed-sd12)
       (not (not-closed-sd12))))
 (:action
  ugly1650ugly1661ugly1594ugly1585ugly1656ugly1584ugly55ugly65ugly40ugly4close_sd12-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd12-condeffs) (closed-sd10) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly1651ugly1647ugly1643ugly1582ugly1637ugly1631ugly29ugly17ugly68ugly35close_cb1
  :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action
  ugly1652ugly1588ugly1614ugly1648ugly1638ugly1581ugly41ugly30ugly46ugly8close_sd10-condeff1-no-0
  :parameters () :precondition (and (do-close_sd10-condeffs) (not-closed-sd12))
  :effect (and (done-1)))
 (:action
  ugly1653ugly1596ugly1605ugly1616ugly1610ugly1622ugly31ugly36ugly44ugly53wait_cb3-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action
  ugly1654ugly1607ugly1604ugly1642ugly1660ugly1599ugly82ugly45ugly38ugly24open-sd5
  :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd5) (not (closed-sd5))))
 (:action
  ugly1655ugly1618ugly1646ugly1625ugly1644ugly1655ugly38ugly24ugly41ugly30open-cb3
  :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly1656ugly1584ugly1635ugly1636ugly1613ugly1641ugly60ugly63ugly64ugly1wait_cb3-condeff3-yes
  :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd12) (closed-sd10)) :effect
  (and (done-3) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly1657ugly1639ugly1620ugly1619ugly1600ugly1603ugly7ugly47ugly62ugly59wait_cb3-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd5))
  :effect (and (done-1)))
 (:action
  ugly1658ugly1632ugly1657ugly1639ugly1620ugly1619ugly20ugly16ugly13ugly27wait_cb1-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action
  ugly1659ugly1589ugly1608ugly1626ugly1583ugly1598ugly26ugly14ugly77ugly79close_sd10-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd10-condeffs) (closed-sd11) (closed-cb3)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly1660ugly1599ugly1662ugly1590ugly1615ugly1623ugly32ugly15ugly23ugly48close_sd9-condeff1-no-1
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-cb3))
  :effect (and (done-1)))
 (:action
  ugly1661ugly1594ugly1585ugly1656ugly1584ugly1635ugly56ugly51ugly31ugly36open-sd2
  :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3))
  :effect (and (increase (total-cost) 1) (not-closed-sd2) (not (closed-sd2))))
 (:action
  ugly1662ugly1590ugly1615ugly1623ugly1612ugly1617ugly74ugly10ugly22ugly70close_sd9-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd9-condeffs) (closed-sd5) (closed-cb3)) :effect
  (and (done-1) (not-closed-cb3) (not (closed-cb3))))) 