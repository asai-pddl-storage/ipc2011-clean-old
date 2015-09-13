
(define (domain grounded-strips-psr) (:requirements :strips :action-costs)
 (:predicates (do-close_sd8-condeffs) (updated-cb3) (not-closed-sd18)
  (not-updated-cb2) (do-close_sd3-condeffs) (closed-cb1)
  (do-close_sd17-condeffs) (not-closed-sd3) (updated-cb5) (not-updated-cb6)
  (not-closed-cb2) (do-close_sd7-condeffs) (closed-sd17)
  (do-close_sd4-condeffs) (closed-sd8) (updated-cb1) (not-closed-sd16)
  (not-closed-sd1) (closed-sd13) (not-updated-cb4) (closed-cb6)
  (do-close_sd9-condeffs) (not-closed-sd13) (not-closed-sd5) (closed-cb2)
  (not-closed-sd6) (closed-sd6) (not-closed-sd2) (not-closed-sd14)
  (not-closed-sd4) (not-updated-cb3) (not-updated-cb1) (not-closed-sd11)
  (updated-cb4) (not-closed-sd12) (updated-cb6) (do-close_sd15-condeffs)
  (do-wait_cb1-condeffs) (closed-sd11) (not-closed-sd8) (closed-sd1)
  (do-close_sd13-condeffs) (closed-sd16) (do-close_sd6-condeffs)
  (not-closed-sd7) (not-updated-cb5) (closed-sd15) (do-wait_cb2-condeffs)
  (closed-sd5) (done-0) (closed-sd3) (do-close_sd1-condeffs) (not-closed-sd17)
  (closed-sd4) (do-wait_cb6-condeffs) (not-closed-cb5) (not-closed-cb1)
  (do-normal) (not-closed-cb4) (done-1) (do-close_sd16-condeffs) (closed-sd9)
  (closed-sd12) (closed-sd7) (closed-sd10) (goal-reached) (closed-sd14)
  (do-close_sd5-condeffs) (closed-sd2) (not-closed-sd15) (not-closed-sd10)
  (updated-cb2) (not-closed-cb6) (do-close_sd18-condeffs) (closed-sd18)
  (do-close_sd2-condeffs) (do-wait_cb3-condeffs) (closed-cb4) (not-closed-cb3)
  (closed-cb3) (not-closed-sd9) (closed-cb5))
 (:functions (total-cost) - number)
 (:action
  ugly1099ugly1162ugly1346ugly1154ugly157ugly343ugly157ugly343close_sd13-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd13-condeffs) (closed-sd6) (closed-sd5) (closed-sd4)
       (closed-sd3) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly1100ugly1177ugly1262ugly1421ugly327ugly43ugly78ugly235close_sd13-condeff0-no-0
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-sd6))
  :effect (and (done-0)))
 (:action
  ugly1101ugly1328ugly1176ugly1438ugly274ugly44ugly232ugly110close_sd18-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd18-condeffs) (closed-sd15) (closed-sd7) (closed-sd3)
       (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly1102ugly1263ugly1232ugly1281ugly225ugly159ugly265ugly249close_sd4-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd13) (closed-sd6) (closed-sd5)
       (closed-sd7) (closed-sd18) (closed-cb6))
  :effect (and (done-1) (not-closed-cb6) (not (closed-cb6))))
 (:action ugly1103ugly1304ugly1379ugly1285ugly85ugly211ugly36ugly58close_sd3
  :parameters () :precondition
  (and (do-normal) (not-closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd3-condeffs) (closed-sd3)
       (not (not-closed-sd3))))
 (:action
  ugly1104ugly1251ugly1303ugly1325ugly71ugly86ugly194ugly228reach-goal-74
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1105ugly1194ugly1382ugly1118ugly19ugly125ugly81ugly123reach-goal-126
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd5)
       (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1106ugly1199ugly1294ugly1215ugly154ugly238ugly111ugly188reach-goal-8
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-cb6) (closed-sd18) (closed-sd7)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly1107ugly1123ugly1216ugly1278ugly202ugly239ugly234ugly193open-sd4
  :parameters () :precondition
  (and (do-normal) (closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd4) (not (closed-sd4))))
 (:action
  ugly1108ugly1254ugly1287ugly1191ugly199ugly76ugly324ugly199reach-goal-75
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1109ugly1404ugly1125ugly1119ugly37ugly205ugly221ugly268close_sd8-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd8-condeffs) (closed-sd16) (closed-sd17) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly1110ugly1106ugly1199ugly1294ugly117ugly21ugly185ugly225close_sd13-condeff0-no-1
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-sd5))
  :effect (and (done-0)))
 (:action
  ugly1111ugly1114ugly1107ugly1123ugly118ugly262ugly261ugly98reach-goal-68
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1112ugly1174ugly1348ugly1410ugly207ugly35ugly45ugly128reach-goal-86
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd3)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1113ugly1363ugly1415ugly1246ugly166ugly31ugly164ugly311wait_cb2-condeff0-no-2
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd5))
  :effect (and (done-0)))
 (:action
  ugly1114ugly1107ugly1123ugly1216ugly180ugly163ugly240ugly88reach-goal-78
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd5)
       (closed-sd3) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1115ugly1197ugly1156ugly1240ugly190ugly277ugly153ugly184close_sd6-condeff0-no-4
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly1116ugly1376ugly1142ugly1210ugly86ugly194ugly228ugly75open-sd8
  :parameters () :precondition
  (and (do-normal) (closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd8) (not (closed-sd8))))
 (:action
  ugly1117ugly1381ugly1275ugly1111ugly16ugly299ugly104ugly112close_sd13-condeff0-no-2
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action
  ugly1118ugly1117ugly1381ugly1275ugly13ugly321ugly303ugly24wait_cb2-condeff0-yes
  :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd13) (closed-sd6) (closed-sd5)
       (closed-sd4) (closed-sd3))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly1119ugly1135ugly1181ugly1332ugly236ugly144ugly300ugly203reach-goal-63
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-sd5)
       (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8) (closed-cb2))
  :effect (and (goal-reached)))
 (:action ugly1120ugly1160ugly1389ugly1236ugly246ugly49ugly115ugly5close_sd18
  :parameters () :precondition
  (and (do-normal) (not-closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd18-condeffs) (closed-sd18)
       (not (not-closed-sd18))))
 (:action
  ugly1121ugly1178ugly1201ugly1395ugly194ugly228ugly75ugly271reach-goal-61
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1122ugly1198ugly1313ugly1335ugly245ugly154ugly238ugly111close_sd5-condeff1-no-2
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd4))
  :effect (and (done-1)))
 (:action
  ugly1123ugly1216ugly1278ugly1300ugly217ugly67ugly139ugly29reach-goal-38
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd3)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1124ugly1431ugly1301ugly1418ugly14ugly74ugly72ugly122close_sd1-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd1-condeffs) (closed-sd2) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly1125ugly1119ugly1135ugly1181ugly234ugly193ugly275ugly148close_sd9-condeff0-no-0
  :parameters () :precondition (and (do-close_sd9-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action
  ugly1126ugly1185ugly1249ugly1436ugly299ugly104ugly112ugly160reach-goal-101
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1127ugly1266ugly1273ugly1225ugly38ugly165ugly149ugly182close_sd7-condeff1-no-5
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-cb6))
  :effect (and (done-1)))
 (:action
  ugly1128ugly1377ugly1411ugly1333ugly5ugly129ugly15ugly61close_sd3-endof-condeffs
  :parameters () :precondition (and (do-close_sd3-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd3-condeffs)) (not (done-0))
       (not (done-1))))
 (:action
  ugly1129ugly1116ugly1376ugly1142ugly112ugly160ugly102ugly94reach-goal-2
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly1130ugly1166ugly1359ugly1206ugly219ugly335ugly280ugly202close_cb4
  :parameters () :precondition
  (and (do-normal) (not-closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb4) (not-updated-cb4) (not (not-closed-cb4))
       (not (updated-cb4))))
 (:action
  ugly1131ugly1432ugly1102ugly1263ugly134ugly322ugly227ugly256reach-goal-107
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1132ugly1367ugly1226ugly1104ugly153ugly184ugly320ugly317reach-goal-25
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1133ugly1407ugly1269ugly1211ugly266ugly13ugly321ugly303reach-goal-23
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-cb2)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1134ugly1338ugly1161ugly1423ugly341ugly84ugly257ugly151reach-goal-104
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-cb6) (closed-sd18) (closed-sd7)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1135ugly1181ugly1332ugly1334ugly22ugly133ugly77ugly109close_sd5-condeff0-no-1
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd6))
  :effect (and (done-0)))
 (:action
  ugly1136ugly1320ugly1122ugly1198ugly215ugly68ugly283ugly276reach-goal-91
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1137ugly1330ugly1196ugly1383ugly258ugly336ugly71ugly86close_sd4-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd4-condeffs) (closed-sd13) (closed-sd6) (closed-sd5)
       (closed-sd3) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly1138ugly1355ugly1260ugly1349ugly149ugly182ugly312ugly288reach-goal-59
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1139ugly1374ugly1193ugly1385ugly11ugly97ugly52ugly191reach-goal-120
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-cb6) (closed-sd18) (closed-sd7)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1140ugly1302ugly1209ugly1137ugly232ugly110ugly130ugly175close_sd5-condeff1-no-1
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd6))
  :effect (and (done-1)))
 (:action
  ugly1141ugly1277ugly1392ugly1370ugly174ugly8ugly273ugly195reach-goal-81
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1142ugly1210ugly1184ugly1429ugly60ugly209ugly302ugly141reach-goal-55
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-cb2)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1143ugly1242ugly1108ugly1254ugly189ugly172ugly17ugly19reach-goal-124
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1144ugly1354ugly1229ugly1245ugly254ugly99ugly190ugly277close_sd16-condeff0-no-2
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action ugly1145ugly1248ugly1322ugly1299ugly249ugly200ugly38ugly165close_sd16
  :parameters () :precondition
  (and (do-normal) (not-closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd16-condeffs) (closed-sd16)
       (not (not-closed-sd16))))
 (:action
  ugly1146ugly1295ugly1308ugly1238ugly139ugly29ugly39ugly96reach-goal-15
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-sd5)
       (closed-cb2) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1147ugly1307ugly1342ugly1203ugly129ugly15ugly61ugly220reach-goal-11
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1148ugly1148ugly1148ugly1148ugly50ugly290ugly162ugly152reach-goal-125
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1149ugly1401ugly1165ugly1270ugly213ugly291ugly251ugly33close_sd6-endof-condeffs
  :parameters () :precondition (and (do-close_sd6-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd6-condeffs)) (not (done-0))
       (not (done-1))))
 (:action
  ugly1150ugly1357ugly1130ugly1166ugly261ugly98ugly69ugly233reach-goal-92
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1151ugly1403ugly1435ugly1149ugly303ugly24ugly242ugly27wait_cb3-condeff0-no-2
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action
  ugly1152ugly1286ugly1440ugly1283ugly200ugly38ugly165ugly149close_sd5-condeff0-no-2
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action
  ugly1153ugly1387ugly1235ugly1375ugly242ugly27ugly340ugly289close_sd5-condeff0-no-0
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd13))
  :effect (and (done-0)))
 (:action ugly1154ugly1255ugly1152ugly1286ugly342ugly226ugly278ugly47wait_cb1
  :parameters () :precondition (and (do-normal) (not-updated-cb1)) :effect
  (and (not (do-normal)) (do-wait_cb1-condeffs) (updated-cb1)
       (not (not-updated-cb1))))
 (:action
  ugly1155ugly1368ugly1139ugly1374ugly95ugly30ugly59ugly131close_sd15-condeff1-no-0
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-cb6))
  :effect (and (done-1)))
 (:action
  ugly1156ugly1240ugly1288ugly1143ugly144ugly300ugly203ugly64reach-goal-65
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly1157ugly1279ugly1388ugly1133ugly309ugly338ugly310ugly258wait_cb3
  :parameters () :precondition (and (do-normal) (not-updated-cb3)) :effect
  (and (not (do-normal)) (do-wait_cb3-condeffs) (updated-cb3)
       (not (not-updated-cb3))))
 (:action
  ugly1158ugly1202ugly1326ugly1409ugly220ugly12ugly155ugly14reach-goal-73
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1159ugly1138ugly1355ugly1260ugly251ugly33ugly328ugly301reach-goal-1
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1160ugly1389ugly1236ugly1344ugly314ugly10ugly331ugly210reach-goal-10
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly1161ugly1423ugly1439ugly1188ugly318ugly337ugly250ugly25close_sd9
  :parameters () :precondition
  (and (do-normal) (not-closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd9-condeffs) (closed-sd9)
       (not (not-closed-sd9))))
 (:action
  ugly1162ugly1346ugly1154ugly1255ugly54ugly143ugly207ugly35reach-goal-44
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly1163ugly1099ugly1162ugly1346ugly56ugly326ugly218ugly48wait_cb5
  :parameters () :precondition (and (do-normal) (not-updated-cb5)) :effect
  (and (not-closed-cb5) (updated-cb5) (not (closed-cb5))
       (not (not-updated-cb5))))
 (:action
  ugly1164ugly1151ugly1403ugly1435ugly51ugly281ugly252ugly296close_sd4-condeff1-no-3
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action
  ugly1165ugly1270ugly1311ugly1126ugly87ugly95ugly30ugly59close_sd18-condeff0-no-0
  :parameters () :precondition (and (do-close_sd18-condeffs) (not-closed-sd15))
  :effect (and (done-0)))
 (:action
  ugly1166ugly1359ugly1206ugly1317ugly315ugly116ugly42ugly171close_sd18-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd18-condeffs) (closed-sd13) (closed-sd6) (closed-sd5)
       (closed-sd4) (closed-sd7) (closed-cb6))
  :effect (and (done-1) (not-closed-cb6) (not (closed-cb6))))
 (:action
  ugly1167ugly1274ugly1351ugly1150ugly259ugly216ugly120ugly161reach-goal-72
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-cb6) (closed-sd18) (closed-sd7)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1168ugly1144ugly1354ugly1229ugly147ugly119ugly267ugly259close_sd3-condeff1-no-0
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd15))
  :effect (and (done-1)))
 (:action
  ugly1169ugly1365ugly1186ugly1153ugly289ugly180ugly163ugly240reach-goal-87
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-cb2)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1170ugly1208ugly1164ugly1151ugly305ugly339ugly70ugly179reach-goal-39
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-cb2)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1171ugly1312ugly1212ugly1261ugly198ugly6ugly297ugly192close_sd13-condeff1-no-3
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action ugly1172ugly1134ugly1338ugly1161ugly325ugly4ugly342ugly226open-sd1
  :parameters () :precondition
  (and (do-normal) (closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd1) (not (closed-sd1))))
 (:action
  ugly1173ugly1391ugly1390ugly1398ugly332ugly90ugly254ugly99close_sd5-condeff1-no-4
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd18))
  :effect (and (done-1)))
 (:action
  ugly1174ugly1348ugly1410ugly1305ugly49ugly115ugly5ugly129reach-goal-14
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd5)
       (closed-sd3) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1175ugly1290ugly1327ugly1336ugly120ugly161ugly73ugly305wait_cb3-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd17))
  :effect (and (done-0)))
 (:action
  ugly1176ugly1438ugly1372ugly1280ugly123ugly127ugly124ugly309wait_cb3-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd16))
  :effect (and (done-0)))
 (:action
  ugly1177ugly1262ugly1421ugly1425ugly92ugly332ugly90ugly254reach-goal-98
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1178ugly1201ugly1395ugly1292ugly2ugly138ugly142ugly298reach-goal-79
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-sd5)
       (closed-cb2) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1179ugly1339ugly1167ugly1274ugly253ugly318ugly337ugly250reach-goal-24
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-cb6) (closed-sd18) (closed-sd7)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1180ugly1400ugly1204ugly1378ugly178ugly214ugly341ugly84wait_cb1-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action
  ugly1181ugly1332ugly1334ugly1120ugly62ugly287ugly183ugly101wait_cb6-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb6-condeffs) (not-closed-sd13))
  :effect (and (done-1)))
 (:action
  ugly1182ugly1405ugly1258ugly1420ugly146ugly308ugly212ugly223close_sd7-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd13) (closed-sd6) (closed-sd5)
       (closed-sd4) (closed-sd18) (closed-cb6))
  :effect (and (done-1) (not-closed-cb6) (not (closed-cb6))))
 (:action
  ugly1183ugly1159ugly1138ugly1355ugly162ugly152ugly126ugly85close_sd3-condeff0-no-1
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd6))
  :effect (and (done-0)))
 (:action
  ugly1184ugly1429ugly1158ugly1202ugly228ugly75ugly271ugly62close_sd15-condeff0-no-0
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-sd18))
  :effect (and (done-0)))
 (:action
  ugly1185ugly1249ugly1436ugly1397ugly42ugly171ugly135ugly18wait_cb2-condeff1-yes
  :parameters () :precondition
  (and (do-wait_cb2-condeffs) (closed-sd15) (closed-sd18) (closed-sd7)
       (closed-sd3))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly1186ugly1153ugly1387ugly1235ugly277ugly153ugly184ugly320close_sd6-condeff0-no-1
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd5))
  :effect (and (done-0)))
 (:action
  ugly1187ugly1345ugly1358ugly1414ugly26ugly65ugly22ugly133reach-goal-76
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1188ugly1416ugly1293ugly1362ugly298ugly80ugly54ugly143close_sd4-endof-condeffs
  :parameters () :precondition (and (do-close_sd4-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd4-condeffs)) (not (done-0))
       (not (done-1))))
 (:action
  ugly1189ugly1424ugly1253ugly1168ugly46ugly269ugly241ugly284close_sd7-condeff1-no-0
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd13))
  :effect (and (done-1)))
 (:action
  ugly1190ugly1234ugly1101ugly1328ugly78ugly235ugly158ugly197close_sd6-condeff1-no-1
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd5))
  :effect (and (done-1)))
 (:action
  ugly1191ugly1297ugly1243ugly1228ugly295ugly34ugly113ugly333wait_cb2-condeff0-no-3
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action
  ugly1192ugly1441ugly1267ugly1241ugly335ugly280ugly202ugly239wait_cb6-condeff1-no-4
  :parameters () :precondition (and (do-wait_cb6-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action
  ugly1193ugly1385ugly1109ugly1404ugly27ugly340ugly289ugly180close_sd13-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd13-condeffs) (closed-sd6) (closed-sd5) (closed-sd4)
       (closed-sd7) (closed-sd18) (closed-cb6))
  :effect (and (done-1) (not-closed-cb6) (not (closed-cb6))))
 (:action
  ugly1194ugly1382ugly1118ugly1117ugly283ugly276ugly92ugly332reach-goal-89
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1195ugly1360ugly1213ugly1426ugly77ugly109ugly181ugly260reach-goal-0
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-sd5) (closed-sd6) (closed-sd17)
       (closed-cb3) (closed-sd8) (closed-sd7) (closed-sd18))
  :effect (and (goal-reached)))
 (:action
  ugly1196ugly1383ugly1356ugly1128ugly279ugly293ugly294ugly37close_sd4-condeff1-no-4
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd18))
  :effect (and (done-1)))
 (:action
  ugly1197ugly1156ugly1240ugly1288ugly45ugly128ugly87ugly95reach-goal-29
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly1198ugly1313ugly1335ugly1343ugly304ugly168ugly201ugly51open-cb4
  :parameters () :precondition
  (and (do-normal) (closed-cb4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb4) (not (closed-cb4))))
 (:action
  ugly1199ugly1294ugly1215ugly1252ugly339ugly70ugly179ugly40reach-goal-105
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1200ugly1309ugly1282ugly1220ugly330ugly274ugly44ugly232reach-goal-109
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1201ugly1395ugly1292ugly1100ugly79ugly329ugly330ugly274reach-goal-43
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1202ugly1326ugly1409ugly1318ugly97ugly52ugly191ugly121reach-goal-54
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd3)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly1203ugly1227ugly1205ugly1394ugly231ugly315ugly116ugly42close_sd12
  :parameters () :precondition
  (and (do-normal) (not-closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd12) (not (not-closed-sd12))))
 (:action
  ugly1204ugly1378ugly1276ugly1384ugly319ugly7ugly170ugly285reach-goal-27
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1205ugly1394ugly1329ugly1373ugly255ugly313ugly114ugly53wait_cb6-condeff1-yes
  :parameters () :precondition
  (and (do-wait_cb6-condeffs) (closed-sd13) (closed-sd6) (closed-sd5)
       (closed-sd4) (closed-sd7) (closed-sd18))
  :effect (and (done-1) (not-closed-cb6) (not (closed-cb6))))
 (:action
  ugly1206ugly1317ugly1413ugly1408ugly308ugly212ugly223ugly306wait_cb2-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd6))
  :effect (and (done-0)))
 (:action
  ugly1207ugly1222ugly1132ugly1367ugly128ugly87ugly95ugly30reach-goal-58
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1208ugly1164ugly1151ugly1403ugly337ugly250ugly25ugly174reach-goal-7
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-cb2)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1209ugly1137ugly1330ugly1196ugly285ugly28ugly253ugly318wait_cb3-condeff0-yes
  :parameters () :precondition
  (and (do-wait_cb3-condeffs) (closed-sd16) (closed-sd17) (closed-sd8)) :effect
  (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly1210ugly1184ugly1429ugly1158ugly104ugly112ugly160ugly102reach-goal-93
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly1211ugly1364ugly1110ugly1106ugly101ugly230ugly137ugly91close_sd5
  :parameters () :precondition
  (and (do-normal) (not-closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd5-condeffs) (closed-sd5)
       (not (not-closed-sd5))))
 (:action
  ugly1212ugly1261ugly1296ugly1163ugly1ugly213ugly291ugly251reach-goal-32
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-sd5) (closed-sd6) (closed-sd17)
       (closed-cb3) (closed-sd8) (closed-cb6) (closed-sd7))
  :effect (and (goal-reached)))
 (:action
  ugly1213ugly1426ugly1175ugly1290ugly229ugly150ugly107ugly215reach-goal-67
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1214ugly1145ugly1248ugly1322ugly201ugly51ugly281ugly252close_sd8-condeff0-no-0
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd16))
  :effect (and (done-0)))
 (:action ugly1215ugly1252ugly1437ugly1271ugly133ugly77ugly109ugly181close_cb1
  :parameters () :precondition
  (and (do-normal) (not-closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb1) (not-updated-cb1) (not (not-closed-cb1))
       (not (updated-cb1))))
 (:action
  ugly1216ugly1278ugly1300ugly1315ugly141ugly56ugly326ugly218reach-goal-47
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-sd5)
       (closed-cb2) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1217ugly1127ugly1266ugly1273ugly127ugly124ugly309ugly338close_sd7-condeff1-no-3
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd4))
  :effect (and (done-1)))
 (:action
  ugly1218ugly1207ugly1222ugly1132ugly269ugly241ugly284ugly307close_sd6-condeff1-no-3
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action ugly1219ugly1180ugly1400ugly1204ugly280ugly202ugly239ugly234close_sd4
  :parameters () :precondition
  (and (do-normal) (not-closed-sd4) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd4-condeffs) (closed-sd4)
       (not (not-closed-sd4))))
 (:action ugly1220ugly1428ugly1250ugly1419ugly15ugly61ugly220ugly12close_sd14
  :parameters () :precondition
  (and (do-normal) (not-closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd14) (not (not-closed-sd14))))
 (:action
  ugly1221ugly1187ugly1345ugly1358ugly316ugly147ugly119ugly267wait_cb1-endof-condeffs
  :parameters () :precondition (and (do-wait_cb1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-wait_cb1-condeffs)) (not (done-0))))
 (:action
  ugly1222ugly1132ugly1367ugly1226ugly6ugly297ugly192ugly167close_sd3-condeff1-no-1
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd18))
  :effect (and (done-1)))
 (:action
  ugly1223ugly1224ugly1171ugly1312ugly114ugly53ugly229ugly150reach-goal-106
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly1224ugly1171ugly1312ugly1212ugly163ugly240ugly88ugly79close_sd2
  :parameters () :precondition
  (and (do-normal) (not-closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd2-condeffs) (closed-sd2)
       (not (not-closed-sd2))))
 (:action
  ugly1225ugly1136ugly1320ugly1122ugly100ugly32ugly319ugly7close_sd13-endof-condeffs
  :parameters () :precondition (and (do-close_sd13-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd13-condeffs)) (not (done-0))
       (not (done-1))))
 (:action
  ugly1226ugly1104ugly1251ugly1303ugly227ugly256ugly108ugly186wait_cb6-condeff1-no-1
  :parameters () :precondition (and (do-wait_cb6-condeffs) (not-closed-sd6))
  :effect (and (done-1)))
 (:action ugly1227ugly1205ugly1394ugly1329ugly275ugly148ugly176ugly118open-sd17
  :parameters () :precondition
  (and (do-normal) (closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd17) (not (closed-sd17))))
 (:action ugly1228ugly1393ugly1399ugly1141ugly179ugly40ugly106ugly247open-cb6
  :parameters () :precondition
  (and (do-normal) (closed-cb6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb6) (not (closed-cb6))))
 (:action
  ugly1229ugly1245ugly1352ugly1341ugly7ugly170ugly285ugly28wait_cb2-endof-condeffs
  :parameters () :precondition (and (do-wait_cb2-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-wait_cb2-condeffs)) (not (done-0)) (not (done-1))))
 (:action
  ugly1230ugly1310ugly1427ugly1265ugly288ugly60ugly209ugly302close_sd18-condeff1-no-5
  :parameters () :precondition (and (do-close_sd18-condeffs) (not-closed-cb6))
  :effect (and (done-1)))
 (:action
  ugly1231ugly1321ugly1121ugly1178ugly103ugly146ugly308ugly212close_sd1-condeff0-no-0
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-sd2))
  :effect (and (done-0)))
 (:action ugly1232ugly1281ugly1323ugly1182ugly307ugly325ugly4ugly342wait_cb6
  :parameters () :precondition (and (do-normal) (not-updated-cb6)) :effect
  (and (not (do-normal)) (do-wait_cb6-condeffs) (updated-cb6)
       (not (not-updated-cb6))))
 (:action
  ugly1233ugly1319ugly1289ugly1361ugly216ugly120ugly161ugly73close_sd7-condeff0-no-3
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly1234ugly1101ugly1328ugly1176ugly340ugly289ugly180ugly163close_cb3
  :parameters () :precondition
  (and (do-normal) (not-closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb3) (not-updated-cb3) (not (not-closed-cb3))
       (not (updated-cb3))))
 (:action
  ugly1235ugly1375ugly1340ugly1146ugly197ugly323ugly206ugly166reach-goal-30
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd5)
       (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8) (closed-sd3))
  :effect (and (goal-reached)))
 (:action
  ugly1236ugly1344ugly1412ugly1189ugly326ugly218ugly48ugly334wait_cb6-endof-condeffs
  :parameters () :precondition (and (do-wait_cb6-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-wait_cb6-condeffs)) (not (done-0)) (not (done-1))))
 (:action
  ugly1237ugly1179ugly1339ugly1167ugly176ugly118ugly262ugly261reach-goal-97
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1238ugly1237ugly1179ugly1339ugly69ugly233ugly93ugly270wait_cb2-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd13))
  :effect (and (done-0)))
 (:action
  ugly1239ugly1337ugly1129ugly1116ugly278ugly47ugly255ugly313reach-goal-113
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1240ugly1288ugly1143ugly1242ugly10ugly331ugly210ugly11reach-goal-96
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-sd5) (closed-sd6) (closed-sd17)
       (closed-cb3) (closed-sd8) (closed-cb6) (closed-sd18))
  :effect (and (goal-reached)))
 (:action
  ugly1241ugly1433ugly1268ugly1157ugly181ugly260ugly1ugly213close_sd15-condeff1-yes
  :parameters () :precondition (and (do-close_sd15-condeffs) (closed-cb6))
  :effect (and (done-1) (not-closed-cb6) (not (closed-cb6))))
 (:action
  ugly1242ugly1108ugly1254ugly1287ugly93ugly270ugly243ugly263close_sd9-endof-condeffs
  :parameters () :precondition (and (do-close_sd9-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd9-condeffs)) (not (done-0))))
 (:action
  ugly1243ugly1228ugly1393ugly1399ugly43ugly78ugly235ugly158close_sd4-condeff0-no-2
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd5))
  :effect (and (done-0)))
 (:action ugly1244ugly1219ugly1180ugly1400ugly106ugly247ugly279ugly293close_sd8
  :parameters () :precondition
  (and (do-normal) (not-closed-sd8) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd8-condeffs) (closed-sd8)
       (not (not-closed-sd8))))
 (:action
  ugly1245ugly1352ugly1341ugly1105ugly96ugly16ugly299ugly104reach-goal-111
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-sd5)
       (closed-cb2) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1246ugly1264ugly1233ugly1319ugly191ugly121ugly55ugly89reach-goal-45
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly1247ugly1366ugly1434ugly1173ugly293ugly294ugly37ugly205close_sd1
  :parameters () :precondition
  (and (do-normal) (not-closed-sd1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd1-condeffs) (closed-sd1)
       (not (not-closed-sd1))))
 (:action
  ugly1248ugly1322ugly1299ugly1347ugly119ugly267ugly259ugly216reach-goal-119
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-cb2)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1249ugly1436ugly1397ugly1140ugly204ugly219ugly335ugly280close_sd4-condeff1-no-1
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd6))
  :effect (and (done-1)))
 (:action
  ugly1250ugly1419ugly1113ugly1363ugly317ugly26ugly65ugly22close_sd18-condeff0-no-2
  :parameters () :precondition (and (do-close_sd18-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action
  ugly1251ugly1303ugly1325ugly1169ugly267ugly259ugly216ugly120close_sd13-condeff0-no-3
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action
  ugly1252ugly1437ugly1271ugly1231ugly223ugly306ugly244ugly316close_sd17-condeff0-no-2
  :parameters () :precondition (and (do-close_sd17-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action
  ugly1253ugly1168ugly1144ugly1354ugly131ugly292ugly314ugly10close_sd2-condeff0-no-0
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action
  ugly1254ugly1287ugly1191ugly1297ugly145ugly83ugly272ugly132reach-goal-62
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd5)
       (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8) (closed-sd3))
  :effect (and (goal-reached)))
 (:action
  ugly1255ugly1152ugly1286ugly1440ugly185ugly225ugly159ugly265wait_cb2-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd15))
  :effect (and (done-1)))
 (:action
  ugly1256ugly1131ugly1432ugly1102ugly165ugly149ugly182ugly312close_sd15-condeff0-no-1
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action
  ugly1257ugly1257ugly1257ugly1257ugly159ugly265ugly249ugly200reach-goal-37
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1258ugly1420ugly1244ugly1219ugly82ugly266ugly13ugly321close_sd7-condeff0-no-1
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd18))
  :effect (and (done-0)))
 (:action
  ugly1259ugly1371ugly1172ugly1134ugly240ugly88ugly79ugly329close_sd2-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd2-condeffs) (closed-sd1) (closed-cb1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly1260ugly1349ugly1247ugly1366ugly336ugly71ugly86ugly194wait_cb6-condeff0-no-0
  :parameters () :precondition (and (do-wait_cb6-condeffs) (not-closed-sd15))
  :effect (and (done-0)))
 (:action
  ugly1261ugly1296ugly1163ugly1099ugly64ugly66ugly196ugly50close_sd15-condeff0-no-3
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action
  ugly1262ugly1421ugly1425ugly1190ugly136ugly57ugly156ugly145reach-goal-82
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1263ugly1232ugly1281ugly1323ugly84ugly257ugly151ugly105close_sd18-condeff0-no-3
  :parameters () :precondition (and (do-close_sd18-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action
  ugly1264ugly1233ugly1319ugly1289ugly263ugly177ugly189ugly172reach-goal-16
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-sd5) (closed-cb6) (closed-sd18)
       (closed-sd7) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1265ugly1386ugly1223ugly1224ugly73ugly305ugly339ugly70close_sd5-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-sd13) (closed-sd6) (closed-sd4)
       (closed-sd3) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly1266ugly1273ugly1225ugly1136ugly222ugly140ugly237ugly41reach-goal-22
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd3)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1267ugly1241ugly1433ugly1268ugly59ugly131ugly292ugly314reach-goal-9
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1268ugly1157ugly1279ugly1388ugly35ugly45ugly128ugly87reach-goal-94
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd5)
       (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8) (closed-sd3))
  :effect (and (goal-reached)))
 (:action ugly1269ugly1211ugly1364ugly1110ugly8ugly273ugly195ugly82open-sd13
  :parameters () :precondition
  (and (do-normal) (closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd13) (not (closed-sd13))))
 (:action
  ugly1270ugly1311ugly1126ugly1185ugly151ugly105ugly134ugly322wait_cb6-condeff0-yes
  :parameters () :precondition (and (do-wait_cb6-condeffs) (closed-sd15))
  :effect (and (done-0) (not-closed-cb6) (not (closed-cb6))))
 (:action
  ugly1271ugly1231ugly1321ugly1121ugly80ugly54ugly143ugly207reach-goal-34
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1272ugly1192ugly1441ugly1267ugly143ugly207ugly35ugly45reach-goal-127
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-sd5)
       (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1273ugly1225ugly1136ugly1320ugly24ugly242ugly27ugly340close_sd15-condeff0-no-2
  :parameters () :precondition (and (do-close_sd15-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1274ugly1351ugly1150ugly1357ugly32ugly319ugly7ugly170close_sd15
  :parameters () :precondition
  (and (do-normal) (not-closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd15-condeffs) (closed-sd15)
       (not (not-closed-sd15))))
 (:action
  ugly1275ugly1111ugly1114ugly1107ugly25ugly174ugly8ugly273close_sd4-condeff0-no-0
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd13))
  :effect (and (done-0)))
 (:action
  ugly1276ugly1384ugly1417ugly1256ugly33ugly328ugly301ugly2close_sd18-condeff1-no-2
  :parameters () :precondition (and (do-close_sd18-condeffs) (not-closed-sd5))
  :effect (and (done-1)))
 (:action
  ugly1277ugly1392ugly1370ugly1272ugly94ugly3ugly198ugly6close_sd8-condeff0-no-1
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-sd17))
  :effect (and (done-0)))
 (:action
  ugly1278ugly1300ugly1315ugly1239ugly239ugly234ugly193ugly275close_sd17-endof-condeffs
  :parameters () :precondition (and (do-close_sd17-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd17-condeffs)) (not (done-0))))
 (:action
  ugly1279ugly1388ugly1133ugly1407ugly171ugly135ugly18ugly248reach-goal-116
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1280ugly1221ugly1187ugly1345ugly260ugly1ugly213ugly291wait_cb2-condeff1-no-2
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action
  ugly1281ugly1323ugly1182ugly1405ugly160ugly102ugly94ugly3close_sd4-condeff0-no-3
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action
  ugly1282ugly1220ugly1428ugly1250ugly321ugly303ugly24ugly242reach-goal-26
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1283ugly1298ugly1230ugly1310ugly329ugly330ugly274ugly44wait_cb6-condeff1-no-2
  :parameters () :precondition (and (do-wait_cb6-condeffs) (not-closed-sd5))
  :effect (and (done-1)))
 (:action
  ugly1284ugly1170ugly1208ugly1164ugly53ugly229ugly150ugly107close_sd3-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd15) (closed-sd18) (closed-sd7)
       (closed-cb2))
  :effect (and (done-1) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly1285ugly1183ugly1159ugly1138ugly257ugly151ugly105ugly134close_sd6-condeff1-no-0
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd13))
  :effect (and (done-1)))
 (:action
  ugly1286ugly1440ugly1283ugly1298ugly132ugly63ugly327ugly43reach-goal-77
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1287ugly1191ugly1297ugly1243ugly130ugly175ugly187ugly264close_sd18-condeff1-no-0
  :parameters () :precondition (and (do-close_sd18-condeffs) (not-closed-sd13))
  :effect (and (done-1)))
 (:action
  ugly1288ugly1143ugly1242ugly1108ugly156ugly145ugly83ugly272close_sd18-condeff0-no-1
  :parameters () :precondition (and (do-close_sd18-condeffs) (not-closed-sd7))
  :effect (and (done-0)))
 (:action
  ugly1289ugly1361ugly1314ugly1259ugly273ugly195ugly82ugly266reach-goal-12
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1290ugly1327ugly1336ugly1218ugly109ugly181ugly260ugly1close_sd3-condeff0-no-3
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd4))
  :effect (and (done-0)))
 (:action
  ugly1291ugly1316ugly1350ugly1115ugly99ugly190ugly277ugly153close_sd5-condeff0-no-4
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action
  ugly1292ugly1100ugly1177ugly1262ugly323ugly206ugly166ugly31close_sd13-condeff1-no-0
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-sd6))
  :effect (and (done-1)))
 (:action ugly1293ugly1362ugly1396ugly1306ugly57ugly156ugly145ugly83open-sd7
  :parameters () :precondition
  (and (do-normal) (closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd7) (not (closed-sd7))))
 (:action
  ugly1294ugly1215ugly1252ugly1437ugly173ugly224ugly169ugly20close_sd15-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd15-condeffs) (closed-sd18) (closed-sd7) (closed-sd3)
       (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly1295ugly1308ugly1238ugly1237ugly81ugly123ugly127ugly124close_sd7-condeff1-no-2
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd5))
  :effect (and (done-1)))
 (:action
  ugly1296ugly1163ugly1099ugly1162ugly248ugly117ugly21ugly185close_sd1-endof-condeffs
  :parameters () :precondition (and (do-close_sd1-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd1-condeffs)) (not (done-0))))
 (:action
  ugly1297ugly1243ugly1228ugly1393ugly301ugly2ugly138ugly142close_sd8-condeff0-no-2
  :parameters () :precondition (and (do-close_sd8-condeffs) (not-closed-cb3))
  :effect (and (done-0)))
 (:action
  ugly1298ugly1230ugly1310ugly1427ugly167ugly217ugly67ugly139reach-goal-28
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1299ugly1347ugly1217ugly1127ugly168ugly201ugly51ugly281wait_cb2-condeff1-no-3
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd3))
  :effect (and (done-1)))
 (:action
  ugly1300ugly1315ugly1239ugly1337ugly31ugly164ugly311ugly245close_sd16-endof-condeffs
  :parameters () :precondition (and (do-close_sd16-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd16-condeffs)) (not (done-0))))
 (:action ugly1301ugly1418ugly1112ugly1174ugly250ugly25ugly174ugly8open-sd6
  :parameters () :precondition
  (and (do-normal) (closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd6) (not (closed-sd6))))
 (:action ugly1302ugly1209ugly1137ugly1330ugly98ugly69ugly233ugly93open-sd9
  :parameters () :precondition
  (and (do-normal) (closed-sd9) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd9) (not (closed-sd9))))
 (:action ugly1303ugly1325ugly1169ugly1365ugly88ugly79ugly329ugly330open-sd5
  :parameters () :precondition
  (and (do-normal) (closed-sd5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd5) (not (closed-sd5))))
 (:action
  ugly1304ugly1379ugly1285ugly1183ugly61ugly220ugly12ugly155reach-goal-13
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1305ugly1147ugly1307ugly1342ugly105ugly134ugly322ugly227wait_cb1-condeff0-yes
  :parameters () :precondition
  (and (do-wait_cb1-condeffs) (closed-sd2) (closed-sd1)) :effect
  (and (done-0) (not-closed-cb1) (not (closed-cb1))))
 (:action ugly1306ugly1155ugly1368ugly1139ugly276ugly92ugly332ugly90close_cb2
  :parameters () :precondition
  (and (do-normal) (not-closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb2) (not-updated-cb2) (not (not-closed-cb2))
       (not (updated-cb2))))
 (:action ugly1307ugly1342ugly1203ugly1227ugly107ugly215ugly68ugly283open-sd3
  :parameters () :precondition
  (and (do-normal) (closed-sd3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd3) (not (closed-sd3))))
 (:action
  ugly1308ugly1238ugly1237ugly1179ugly241ugly284ugly307ugly325reach-goal-3
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1309ugly1282ugly1220ugly1428ugly152ugly126ugly85ugly211reach-goal-35
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1310ugly1427ugly1265ugly1386ugly125ugly81ugly123ugly127reach-goal-123
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1311ugly1126ugly1185ugly1249ugly338ugly310ugly258ugly336reach-goal-70
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd3)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1312ugly1212ugly1261ugly1296ugly65ugly22ugly133ugly77reach-goal-108
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly1313ugly1335ugly1343ugly1402ugly233ugly93ugly270ugly243open-sd16
  :parameters () :precondition
  (and (do-normal) (closed-sd16) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd16) (not (closed-sd16))))
 (:action
  ugly1314ugly1259ugly1371ugly1172ugly36ugly58ugly208ugly173close_sd1-condeff0-no-1
  :parameters () :precondition (and (do-close_sd1-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action
  ugly1315ugly1239ugly1337ugly1129ugly18ugly248ugly117ugly21close_sd5-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd5-condeffs) (closed-sd13) (closed-sd6) (closed-sd4)
       (closed-sd7) (closed-sd18) (closed-cb6))
  :effect (and (done-1) (not-closed-cb6) (not (closed-cb6))))
 (:action
  ugly1316ugly1350ugly1115ugly1197ugly58ugly208ugly173ugly224close_sd13-condeff1-no-5
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-cb6))
  :effect (and (done-1)))
 (:action
  ugly1317ugly1413ugly1408ugly1406ugly282ugly103ugly146ugly308close_sd3-condeff0-no-2
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd5))
  :effect (and (done-0)))
 (:action
  ugly1318ugly1195ugly1360ugly1213ugly328ugly301ugly2ugly138close_sd18-endof-condeffs
  :parameters () :precondition (and (do-close_sd18-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd18-condeffs)) (not (done-0))
       (not (done-1))))
 (:action
  ugly1319ugly1289ugly1361ugly1314ugly161ugly73ugly305ugly339reach-goal-69
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1320ugly1122ugly1198ugly1313ugly237ugly41ugly23ugly282reach-goal-102
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd3)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1321ugly1121ugly1178ugly1201ugly297ugly192ugly167ugly217reach-goal-66
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1322ugly1299ugly1347ugly1217ugly29ugly39ugly96ugly16close_sd8-endof-condeffs
  :parameters () :precondition (and (do-close_sd8-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd8-condeffs)) (not (done-0))))
 (:action
  ugly1323ugly1182ugly1405ugly1258ugly322ugly227ugly256ugly108close_sd5-condeff1-no-0
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd13))
  :effect (and (done-1)))
 (:action
  ugly1324ugly1214ugly1145ugly1248ugly224ugly169ugly20ugly286reach-goal-99
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly1325ugly1169ugly1365ugly1186ugly55ugly89ugly46ugly269wait_cb2
  :parameters () :precondition (and (do-normal) (not-updated-cb2)) :effect
  (and (not (do-normal)) (do-wait_cb2-condeffs) (updated-cb2)
       (not (not-updated-cb2))))
 (:action
  ugly1326ugly1409ugly1318ugly1195ugly262ugly261ugly98ugly69wait_cb6-condeff1-no-3
  :parameters () :precondition (and (do-wait_cb6-condeffs) (not-closed-sd4))
  :effect (and (done-1)))
 (:action
  ugly1327ugly1336ugly1218ugly1207ugly124ugly309ugly338ugly310wait_cb1-condeff0-no-1
  :parameters () :precondition (and (do-wait_cb1-condeffs) (not-closed-sd1))
  :effect (and (done-0)))
 (:action
  ugly1328ugly1176ugly1438ugly1372ugly182ugly312ugly288ugly60close_sd3-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd3-condeffs) (closed-sd13) (closed-sd6) (closed-sd5)
       (closed-sd4) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly1329ugly1373ugly1353ugly1369ugly324ugly199ugly76ugly324close_sd4-condeff0-no-4
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action ugly1330ugly1196ugly1383ugly1356ugly30ugly59ugly131ugly292close_sd6
  :parameters () :precondition
  (and (do-normal) (not-closed-sd6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd6-condeffs) (closed-sd6)
       (not (not-closed-sd6))))
 (:action
  ugly1331ugly1200ugly1309ugly1282ugly122ugly222ugly140ugly237reach-goal-40
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-cb6) (closed-sd18) (closed-sd7)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1332ugly1334ugly1120ugly1160ugly291ugly251ugly33ugly328close_sd7-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd7-condeffs) (closed-sd15) (closed-sd18) (closed-sd3)
       (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action ugly1333ugly1103ugly1304ugly1379ugly187ugly264ugly136ugly57close_sd13
  :parameters () :precondition
  (and (do-normal) (not-closed-sd13) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd13-condeffs) (closed-sd13)
       (not (not-closed-sd13))))
 (:action
  ugly1334ugly1120ugly1160ugly1389ugly138ugly142ugly298ugly80reach-goal-53
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly1335ugly1343ugly1402ugly1331ugly102ugly94ugly3ugly198reach-goal-5
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1336ugly1218ugly1207ugly1222ugly34ugly113ugly333ugly246reach-goal-48
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-sd5) (closed-cb6) (closed-sd18)
       (closed-sd7) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1337ugly1129ugly1116ugly1376ugly44ugly232ugly110ugly130close_sd9-condeff0-yes
  :parameters () :precondition (and (do-close_sd9-condeffs) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action ugly1338ugly1161ugly1423ugly1439ugly90ugly254ugly99ugly190open-sd2
  :parameters () :precondition
  (and (do-normal) (closed-sd2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-sd2) (not (closed-sd2))))
 (:action
  ugly1339ugly1167ugly1274ugly1351ugly52ugly191ugly121ugly55reach-goal-88
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-cb6) (closed-sd18) (closed-sd7)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly1340ugly1146ugly1295ugly1308ugly140ugly237ugly41ugly23open-cb3
  :parameters () :precondition
  (and (do-normal) (closed-cb3) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly1341ugly1105ugly1194ugly1382ugly20ugly286ugly100ugly32close_sd6-condeff0-no-3
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1342ugly1203ugly1227ugly1205ugly296ugly204ugly219ugly335open-cb5
  :parameters () :precondition
  (and (do-normal) (closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb5) (not (closed-cb5))))
 (:action ugly1343ugly1402ugly1331ugly1200ugly211ugly36ugly58ugly208close_sd10
  :parameters () :precondition
  (and (do-normal) (not-closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd10) (not (not-closed-sd10))))
 (:action
  ugly1344ugly1412ugly1189ugly1424ugly155ugly14ugly74ugly72reach-goal-121
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1345ugly1358ugly1414ugly1124ugly333ugly246ugly49ugly115reach-goal-4
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1346ugly1154ugly1255ugly1152ugly188ugly9ugly304ugly168close_sd4-condeff1-no-0
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd13))
  :effect (and (done-1)))
 (:action
  ugly1347ugly1217ugly1127ugly1266ugly175ugly187ugly264ugly136reach-goal-56
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-cb6) (closed-sd18) (closed-sd7)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1348ugly1410ugly1305ugly1147ugly209ugly302ugly141ugly56close_sd6-condeff1-no-4
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd18))
  :effect (and (done-1)))
 (:action
  ugly1349ugly1247ugly1366ugly1434ugly75ugly271ugly62ugly287close_sd5-condeff0-no-3
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action ugly1350ugly1115ugly1197ugly1156ugly142ugly298ugly80ugly54close_sd17
  :parameters () :precondition
  (and (do-normal) (not-closed-sd17) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd17-condeffs) (closed-sd17)
       (not (not-closed-sd17))))
 (:action
  ugly1351ugly1150ugly1357ugly1130ugly68ugly283ugly276ugly92close_sd2-condeff0-no-1
  :parameters () :precondition (and (do-close_sd2-condeffs) (not-closed-cb1))
  :effect (and (done-0)))
 (:action
  ugly1352ugly1341ugly1105ugly1194ugly284ugly307ugly325ugly4wait_cb3-condeff1-no-0
  :parameters () :precondition (and (do-wait_cb3-condeffs) (not-closed-sd9))
  :effect (and (done-1)))
 (:action
  ugly1353ugly1369ugly1422ugly1291ugly218ugly48ugly334ugly236close_sd17-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd17-condeffs) (closed-sd16) (closed-sd8) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly1354ugly1229ugly1245ugly1352ugly243ugly263ugly177ugly189close_sd11
  :parameters () :precondition
  (and (do-normal) (not-closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (closed-sd11) (not (not-closed-sd11))))
 (:action
  ugly1355ugly1260ugly1349ugly1247ugly268ugly295ugly34ugly113close_sd2-endof-condeffs
  :parameters () :precondition (and (do-close_sd2-condeffs) (done-0)) :effect
  (and (do-normal) (not (do-close_sd2-condeffs)) (not (done-0))))
 (:action
  ugly1356ugly1128ugly1377ugly1411ugly235ugly158ugly197ugly323close_sd4-condeff1-no-5
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-cb6))
  :effect (and (done-1)))
 (:action
  ugly1357ugly1130ugly1166ugly1359ugly108ugly186ugly231ugly315reach-goal-115
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1358ugly1414ugly1124ugly1431ugly203ugly64ugly66ugly196reach-goal-49
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1359ugly1206ugly1317ugly1413ugly310ugly258ugly336ugly71reach-goal-85
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1360ugly1213ugly1426ugly1175ugly192ugly167ugly217ugly67close_sd18-condeff1-no-3
  :parameters () :precondition (and (do-close_sd18-condeffs) (not-closed-sd4))
  :effect (and (done-1)))
 (:action
  ugly1361ugly1314ugly1259ugly1371ugly74ugly72ugly122ugly222close_sd18-condeff1-no-4
  :parameters () :precondition (and (do-close_sd18-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action
  ugly1362ugly1396ugly1306ugly1155ugly270ugly243ugly263ugly177close_sd5-condeff1-no-3
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action
  ugly1363ugly1415ugly1246ugly1264ugly135ugly18ugly248ugly117reach-goal-20
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1364ugly1110ugly1106ugly1199ugly196ugly50ugly290ugly162close_sd16-condeff0-no-1
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action
  ugly1365ugly1186ugly1153ugly1387ugly137ugly91ugly178ugly214wait_cb3-condeff1-yes
  :parameters () :precondition (and (do-wait_cb3-condeffs) (closed-sd9))
  :effect (and (done-1) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly1366ugly1434ugly1173ugly1391ugly292ugly314ugly10ugly331close_sd3-condeff0-no-0
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd13))
  :effect (and (done-0)))
 (:action
  ugly1367ugly1226ugly1104ugly1251ugly205ugly221ugly268ugly295reach-goal-33
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1368ugly1139ugly1374ugly1193ugly287ugly183ugly101ugly230close_sd18-condeff1-no-1
  :parameters () :precondition (and (do-close_sd18-condeffs) (not-closed-sd6))
  :effect (and (done-1)))
 (:action ugly1369ugly1422ugly1291ugly1316ugly252ugly296ugly204ugly219wait_cb4
  :parameters () :precondition (and (do-normal) (not-updated-cb4)) :effect
  (and (not-closed-cb4) (updated-cb4) (not (closed-cb4))
       (not (not-updated-cb4))))
 (:action
  ugly1370ugly1272ugly1192ugly1441ugly169ugly20ugly286ugly100reach-goal-31
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-sd5)
       (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8) (closed-cb2))
  :effect (and (goal-reached)))
 (:action
  ugly1371ugly1172ugly1134ugly1338ugly63ugly327ugly43ugly78wait_cb6-condeff1-no-5
  :parameters () :precondition (and (do-wait_cb6-condeffs) (not-closed-sd18))
  :effect (and (done-1)))
 (:action
  ugly1372ugly1280ugly1221ugly1187ugly247ugly279ugly293ugly294reach-goal-36
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1373ugly1353ugly1369ugly1422ugly193ugly275ugly148ugly176reach-goal-117
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1374ugly1193ugly1385ugly1109ugly306ugly244ugly316ugly147reach-goal-118
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd3)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1375ugly1340ugly1146ugly1295ugly210ugly11ugly97ugly52close_sd5-condeff1-no-5
  :parameters () :precondition (and (do-close_sd5-condeffs) (not-closed-cb6))
  :effect (and (done-1)))
 (:action
  ugly1376ugly1142ugly1210ugly1184ugly331ugly210ugly11ugly97reach-goal-51
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1377ugly1411ugly1333ugly1103ugly206ugly166ugly31ugly164close_sd7-condeff1-no-4
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd18))
  :effect (and (done-1)))
 (:action
  ugly1378ugly1276ugly1384ugly1417ugly158ugly197ugly323ugly206close_sd13-condeff1-no-2
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-sd4))
  :effect (and (done-1)))
 (:action
  ugly1379ugly1285ugly1183ugly1159ugly40ugly106ugly247ugly279close_sd15-endof-condeffs
  :parameters () :precondition (and (do-close_sd15-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd15-condeffs)) (not (done-0))
       (not (done-1))))
 (:action ugly1380ugly1324ugly1214ugly1145ugly150ugly107ugly215ugly68open-cb2
  :parameters () :precondition
  (and (do-normal) (closed-cb2) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly1381ugly1275ugly1111ugly1114ugly9ugly304ugly168ugly201reach-goal-50
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1382ugly1118ugly1117ugly1381ugly177ugly189ugly172ugly17reach-goal-18
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1383ugly1356ugly1128ugly1377ugly313ugly114ugly53ugly229close_sd16-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd16-condeffs) (closed-sd17) (closed-sd8) (closed-cb3))
  :effect (and (done-0) (not-closed-cb3) (not (closed-cb3))))
 (:action
  ugly1384ugly1417ugly1256ugly1131ugly334ugly236ugly144ugly300close_sd4-condeff1-no-2
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd5))
  :effect (and (done-1)))
 (:action ugly1385ugly1109ugly1404ugly1125ugly21ugly185ugly225ugly159open-sd14
  :parameters () :precondition
  (and (do-normal) (closed-sd14) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd14) (not (closed-sd14))))
 (:action
  ugly1386ugly1223ugly1224ugly1171ugly214ugly341ugly84ugly257close_sd16-condeff0-no-0
  :parameters () :precondition (and (do-close_sd16-condeffs) (not-closed-sd17))
  :effect (and (done-0)))
 (:action ugly1387ugly1235ugly1375ugly1340ugly48ugly334ugly236ugly144close_sd7
  :parameters () :precondition
  (and (do-normal) (not-closed-sd7) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (not (do-normal)) (do-close_sd7-condeffs) (closed-sd7)
       (not (not-closed-sd7))))
 (:action
  ugly1388ugly1133ugly1407ugly1269ugly113ugly333ugly246ugly49reach-goal-114
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1389ugly1236ugly1344ugly1412ugly91ugly178ugly214ugly341reach-goal-83
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly1390ugly1398ugly1430ugly1284ugly72ugly122ugly222ugly140close_cb6
  :parameters () :precondition
  (and (do-normal) (not-closed-cb6) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb6) (not-updated-cb6) (not (not-closed-cb6))
       (not (updated-cb6))))
 (:action
  ugly1391ugly1390ugly1398ugly1430ugly186ugly231ugly315ugly116reach-goal-41
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1392ugly1370ugly1272ugly1192ugly343ugly157ugly343ugly157wait_cb3-endof-condeffs
  :parameters () :precondition (and (do-wait_cb3-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-wait_cb3-condeffs)) (not (done-0)) (not (done-1))))
 (:action ugly1393ugly1399ugly1141ugly1277ugly294ugly37ugly205ugly221open-sd11
  :parameters () :precondition
  (and (do-normal) (closed-sd11) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd11) (not (closed-sd11))))
 (:action
  ugly1394ugly1329ugly1373ugly1353ugly271ugly62ugly287ugly183reach-goal-100
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly1395ugly1292ugly1100ugly1177ugly164ugly311ugly245ugly154close_cb5
  :parameters () :precondition
  (and (do-normal) (not-closed-cb5) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (closed-cb5) (not-updated-cb5) (not (not-closed-cb5))
       (not (updated-cb5))))
 (:action
  ugly1396ugly1306ugly1155ugly1368ugly41ugly23ugly282ugly103close_sd17-condeff0-no-1
  :parameters () :precondition (and (do-close_sd17-condeffs) (not-closed-sd8))
  :effect (and (done-0)))
 (:action
  ugly1397ugly1140ugly1302ugly1209ugly39ugly96ugly16ugly299reach-goal-103
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-cb2)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly1398ugly1430ugly1284ugly1170ugly110ugly130ugly175ugly187open-sd15
  :parameters () :precondition
  (and (do-normal) (closed-sd15) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd15) (not (closed-sd15))))
 (:action
  ugly1399ugly1141ugly1277ugly1392ugly272ugly132ugly63ugly327reach-goal-42
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1400ugly1204ugly1378ugly1276ugly286ugly100ugly32ugly319reach-goal-6
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd3)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1401ugly1165ugly1270ugly1311ugly28ugly253ugly318ugly337wait_cb2-condeff1-no-1
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd18))
  :effect (and (done-1)))
 (:action
  ugly1402ugly1331ugly1200ugly1309ugly184ugly320ugly317ugly26reach-goal-64
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-sd5) (closed-sd6) (closed-sd17)
       (closed-cb3) (closed-sd8) (closed-sd7) (closed-sd18) (closed-cb6))
  :effect (and (goal-reached)))
 (:action
  ugly1403ugly1435ugly1149ugly1401ugly67ugly139ugly29ugly39reach-goal-95
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-sd5)
       (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8) (closed-cb2))
  :effect (and (goal-reached)))
 (:action
  ugly1404ugly1125ugly1119ugly1135ugly83ugly272ugly132ugly63close_sd6-condeff1-no-5
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-cb6))
  :effect (and (done-1)))
 (:action ugly1405ugly1258ugly1420ugly1244ugly121ugly55ugly89ugly46open-sd10
  :parameters () :precondition
  (and (do-normal) (closed-sd10) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd10) (not (closed-sd10))))
 (:action
  ugly1406ugly1380ugly1324ugly1214ugly47ugly255ugly313ugly114reach-goal-52
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1407ugly1269ugly1211ugly1364ugly12ugly155ugly14ugly74reach-goal-71
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4) (closed-cb2)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1408ugly1406ugly1380ugly1324ugly116ugly42ugly171ugly135reach-goal-17
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1409ugly1318ugly1195ugly1360ugly115ugly5ugly129ugly15reach-goal-60
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action ugly1410ugly1305ugly1147ugly1307ugly244ugly316ugly147ugly119open-sd12
  :parameters () :precondition
  (and (do-normal) (closed-sd12) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd12) (not (closed-sd12))))
 (:action
  ugly1411ugly1333ugly1103ugly1304ugly281ugly252ugly296ugly204close_sd3-condeff1-no-3
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-cb2))
  :effect (and (done-1)))
 (:action
  ugly1412ugly1189ugly1424ugly1253ugly70ugly179ugly40ugly106wait_cb2-condeff0-no-4
  :parameters () :precondition (and (do-wait_cb2-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action
  ugly1413ugly1408ugly1406ugly1380ugly226ugly278ugly47ugly255close_sd7-endof-condeffs
  :parameters () :precondition (and (do-close_sd7-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd7-condeffs)) (not (done-0))
       (not (done-1))))
 (:action
  ugly1414ugly1124ugly1431ugly1301ugly320ugly317ugly26ugly65reach-goal-21
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1415ugly1246ugly1264ugly1233ugly221ugly268ugly295ugly34reach-goal-112
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-sd5) (closed-cb6) (closed-sd18)
       (closed-sd7) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1416ugly1293ugly1362ugly1396ugly208ugly173ugly224ugly169reach-goal-19
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1417ugly1256ugly1131ugly1432ugly4ugly342ugly226ugly278reach-goal-46
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd5)
       (closed-sd3) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1418ugly1112ugly1174ugly1348ugly312ugly288ugly60ugly209close_sd7-condeff0-no-0
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd15))
  :effect (and (done-0)))
 (:action ugly1419ugly1113ugly1363ugly1415ugly148ugly176ugly118ugly262open-sd18
  :parameters () :precondition
  (and (do-normal) (closed-sd18) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect
  (and (increase (total-cost) 1) (not-closed-sd18) (not (closed-sd18))))
 (:action
  ugly1420ugly1244ugly1219ugly1180ugly302ugly141ugly56ugly326close_sd3-condeff1-no-2
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-sd7))
  :effect (and (done-1)))
 (:action
  ugly1421ugly1425ugly1190ugly1234ugly3ugly198ugly6ugly297close_sd5-endof-condeffs
  :parameters () :precondition (and (do-close_sd5-condeffs) (done-0) (done-1))
  :effect
  (and (do-normal) (not (do-close_sd5-condeffs)) (not (done-0))
       (not (done-1))))
 (:action
  ugly1422ugly1291ugly1316ugly1350ugly17ugly19ugly125ugly81reach-goal-122
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1423ugly1439ugly1188ugly1416ugly195ugly82ugly266ugly13close_sd6-condeff1-yes
  :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd13) (closed-sd5) (closed-sd4)
       (closed-sd7) (closed-sd18) (closed-cb6))
  :effect (and (done-1) (not-closed-cb6) (not (closed-cb6))))
 (:action
  ugly1424ugly1253ugly1168ugly1144ugly256ugly108ugly186ugly231close_sd6-condeff0-yes
  :parameters () :precondition
  (and (do-close_sd6-condeffs) (closed-sd13) (closed-sd5) (closed-sd4)
       (closed-sd3) (closed-cb2))
  :effect (and (done-0) (not-closed-cb2) (not (closed-cb2))))
 (:action
  ugly1425ugly1190ugly1234ugly1101ugly230ugly137ugly91ugly178close_sd3-condeff0-no-4
  :parameters () :precondition (and (do-close_sd3-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action
  ugly1426ugly1175ugly1290ugly1327ugly238ugly111ugly188ugly9close_sd7-condeff0-no-2
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd3))
  :effect (and (done-0)))
 (:action
  ugly1427ugly1265ugly1386ugly1223ugly126ugly85ugly211ugly36reach-goal-57
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb6)
       (closed-sd18) (closed-sd7) (closed-sd3) (closed-cb2) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1428ugly1250ugly1419ugly1113ugly265ugly249ugly200ugly38close_sd13-condeff1-no-1
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-sd5))
  :effect (and (done-1)))
 (:action
  ugly1429ugly1158ugly1202ugly1326ugly311ugly245ugly154ugly238reach-goal-110
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4) (closed-sd5)
       (closed-sd3) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1430ugly1284ugly1170ugly1208ugly66ugly196ugly50ugly290close_sd13-condeff0-no-4
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-cb2))
  :effect (and (done-0)))
 (:action
  ugly1431ugly1301ugly1418ugly1112ugly76ugly324ugly199ugly76close_sd6-condeff1-no-2
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd4))
  :effect (and (done-1)))
 (:action
  ugly1432ugly1102ugly1263ugly1232ugly183ugly101ugly230ugly137reach-goal-90
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd3) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1433ugly1268ugly1157ugly1279ugly290ugly162ugly152ugly126reach-goal-84
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-cb6) (closed-sd18) (closed-sd7) (closed-sd4)
       (closed-sd5) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1434ugly1173ugly1391ugly1390ugly300ugly203ugly64ugly66close_sd4-condeff0-no-1
  :parameters () :precondition (and (do-close_sd4-condeffs) (not-closed-sd6))
  :effect (and (done-0)))
 (:action
  ugly1435ugly1149ugly1401ugly1165ugly172ugly17ugly19ugly125reach-goal-80
  :parameters () :precondition
  (and (do-normal) (updated-cb6) (updated-cb5) (updated-cb4) (updated-cb3)
       (updated-cb2) (updated-cb1) (closed-cb1) (closed-sd1) (closed-cb2)
       (closed-sd3) (closed-sd4) (closed-sd5) (closed-cb6) (closed-sd18)
       (closed-sd7) (closed-sd6) (closed-sd17) (closed-cb3) (closed-sd8))
  :effect (and (goal-reached)))
 (:action
  ugly1436ugly1397ugly1140ugly1302ugly111ugly188ugly9ugly304close_sd13-condeff1-no-4
  :parameters () :precondition (and (do-close_sd13-condeffs) (not-closed-sd18))
  :effect (and (done-1)))
 (:action
  ugly1437ugly1271ugly1231ugly1321ugly23ugly282ugly103ugly146close_sd7-condeff1-no-1
  :parameters () :precondition (and (do-close_sd7-condeffs) (not-closed-sd6))
  :effect (and (done-1)))
 (:action ugly1438ugly1372ugly1280ugly1221ugly89ugly46ugly269ugly241open-cb1
  :parameters () :precondition
  (and (do-normal) (closed-cb1) (updated-cb1) (updated-cb2) (updated-cb3)
       (updated-cb4) (updated-cb5) (updated-cb6))
  :effect (and (increase (total-cost) 1) (not-closed-cb1) (not (closed-cb1))))
 (:action
  ugly1439ugly1188ugly1416ugly1293ugly264ugly136ugly57ugly156close_sd17-condeff0-no-0
  :parameters () :precondition (and (do-close_sd17-condeffs) (not-closed-sd16))
  :effect (and (done-0)))
 (:action
  ugly1440ugly1283ugly1298ugly1230ugly212ugly223ugly306ugly244close_sd6-condeff0-no-0
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd13))
  :effect (and (done-0)))
 (:action
  ugly1441ugly1267ugly1241ugly1433ugly170ugly285ugly28ugly253close_sd6-condeff0-no-2
  :parameters () :precondition (and (do-close_sd6-condeffs) (not-closed-sd4))
  :effect (and (done-0)))) 