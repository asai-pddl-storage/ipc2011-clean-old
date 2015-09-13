
(define (domain airport_fixed_structure) (:requirements :typing :action-costs)
 (:predicates (airborne ?a - airplane ?s - segment)
  (blocked ?s - segment ?a - airplane)
  (has-type ?a - airplane ?t - airplanetype)
  (at-segment ?a - airplane ?s - segment)
  (not_blocked ?s - segment ?a - airplane) (occupied ?s - segment)
  (is-start-runway ?s - segment ?d - direction) (not_occupied ?s - segment)
  (is-parked ?a - airplane ?s - segment) (facing ?a - airplane ?d - direction)
  (is-moving ?a - airplane) (is-pushing ?a - airplane))
 (:types airplane segment direction airplanetype)
 (:constants north south - direction light medium heavy - airplanetype
  seg_09thresh_0_100 seg_09help_0_100 seg_09_0_150 seg_a_09_0_100
  seg_rwy_0_1300 seg_27thresh_0_100 seg_27help_0_100 seg_27_0_150
  seg_b_27_0_100 seg_n1_n2_0_100 seg_n1_a_0_100 seg_n2_n3_1_0_86 seg_n2_n3_0_85
  seg_n3_n_0_100 seg_n_n4_0_100 seg_n_c_0_100 seg_n4_n5_1_0_85 seg_n4_n5_0_86
  seg_n5_n6_0_100 seg_n6_b_0_100 seg_c_c2_0_100 seg_c2_c3_0_100 seg_c3_c4_0_50
  seg_c3_c_a01_0_100 seg_c3_c_b01_0_100 seg_c4_c5_0_50 seg_c5_c6_0_50
  seg_c5_c_a02_0_100 seg_c5_c_b02_0_100 seg_c6_c7_0_100 seg_a01_0_100
  seg_a02_0_100 seg_b01_0_100 seg_b02_0_100 seg_n2_n3_2_0_86 seg_n2_n3_3_0_86
  seg_n2_n3_4_0_85 seg_n2_n3_5_0_86 seg_n2_n3_6_0_86 seg_n4_n5_2_0_86
  seg_n4_n5_3_0_86 seg_n4_n5_4_0_85 seg_n4_n5_5_0_86 seg_n4_n5_6_0_86 - segment
  airplane_cfbeg airplane_daewh airplane_dfboy airplane_wurst airplane_holgi
  airplane_4xekd - airplane)
 (:functions (total-cost) - number)
 (:action
  ugly1143ugly1164ugly1252ugly1222ugly1276ugly19ugly110ugly20ugly1startup_seg_c2_c3_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_c3_0_100)
       (not_occupied seg_c_c2_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_0_100 ?a)
       (not (not_blocked seg_c_c2_0_100 ?a))))
 (:action
  ugly1144ugly1162ugly1144ugly1162ugly1144ugly20ugly1ugly90ugly17startup_seg_n2_n3_3_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_3_0_86)
       (not_occupied seg_n2_n3_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_2_0_86 ?a)
       (not (not_blocked seg_n2_n3_2_0_86 ?a))))
 (:action
  ugly1145ugly1269ugly1267ugly1232ugly1172ugly35ugly101ugly88ugly59move_seg_n4_n5_5_0_86_seg_n4_n5_4_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_5_0_86) (not_occupied seg_n4_n5_4_0_85)
       (not_blocked seg_n4_n5_4_0_85 airplane_cfbeg)
       (not_blocked seg_n4_n5_4_0_85 airplane_daewh)
       (not_blocked seg_n4_n5_4_0_85 airplane_dfboy)
       (not_blocked seg_n4_n5_4_0_85 airplane_wurst)
       (not_blocked seg_n4_n5_4_0_85 airplane_holgi)
       (not_blocked seg_n4_n5_4_0_85 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_5_0_86))
       (not_occupied seg_n4_n5_5_0_86) (not (at-segment ?a seg_n4_n5_5_0_86))
       (occupied seg_n4_n5_4_0_85) (not (not_occupied seg_n4_n5_4_0_85))
       (blocked seg_n4_n5_4_0_85 ?a) (not (not_blocked seg_n4_n5_4_0_85 ?a))
       (at-segment ?a seg_n4_n5_4_0_85) (not (blocked seg_n4_n5_6_0_86 ?a))
       (not_blocked seg_n4_n5_6_0_86 ?a)))
 (:action
  ugly1146ugly1195ugly1248ugly1224ugly1265ugly94ugly26ugly78ugly31park_seg_b02_0_100_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_b02_0_100) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_b02_0_100) (not (is-moving ?a))
       (not (blocked seg_c5_c_b02_0_100 ?a))
       (not_blocked seg_c5_c_b02_0_100 ?a)))
 (:action
  ugly1147ugly1228ugly1245ugly1146ugly1195ugly106ugly37ugly137ugly97move_seg_c3_c_b01_0_100_seg_c3_c4_0_50_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c3_c_b01_0_100) (not_occupied seg_c3_c4_0_50)
       (not_blocked seg_c3_c4_0_50 airplane_cfbeg)
       (not_blocked seg_c3_c4_0_50 airplane_daewh)
       (not_blocked seg_c3_c4_0_50 airplane_dfboy)
       (not_blocked seg_c3_c4_0_50 airplane_wurst)
       (not_blocked seg_c3_c4_0_50 airplane_holgi)
       (not_blocked seg_c3_c4_0_50 airplane_4xekd)
       (not_occupied seg_c2_c3_0_100) (not_occupied seg_c3_c_a01_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c3_c_b01_0_100))
       (not_occupied seg_c3_c_b01_0_100)
       (not (at-segment ?a seg_c3_c_b01_0_100)) (occupied seg_c3_c4_0_50)
       (not (not_occupied seg_c3_c4_0_50)) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a)) (at-segment ?a seg_c3_c4_0_50)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_b01_0_100 ?a)) (not_blocked seg_b01_0_100 ?a)
       (blocked seg_c2_c3_0_100 ?a) (not (not_blocked seg_c2_c3_0_100 ?a))
       (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))))
 (:action
  ugly1148ugly1178ugly1174ugly1158ugly1274ugly111ugly9ugly3ugly58move_seg_n4_n5_1_0_85_seg_n_n4_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_1_0_85) (not_occupied seg_n_n4_0_100)
       (not_blocked seg_n_n4_0_100 airplane_cfbeg)
       (not_blocked seg_n_n4_0_100 airplane_daewh)
       (not_blocked seg_n_n4_0_100 airplane_dfboy)
       (not_blocked seg_n_n4_0_100 airplane_wurst)
       (not_blocked seg_n_n4_0_100 airplane_holgi)
       (not_blocked seg_n_n4_0_100 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_1_0_85))
       (not_occupied seg_n4_n5_1_0_85) (not (at-segment ?a seg_n4_n5_1_0_85))
       (occupied seg_n_n4_0_100) (not (not_occupied seg_n_n4_0_100))
       (blocked seg_n_n4_0_100 ?a) (not (not_blocked seg_n_n4_0_100 ?a))
       (at-segment ?a seg_n_n4_0_100) (not (blocked seg_n4_n5_2_0_86 ?a))
       (not_blocked seg_n4_n5_2_0_86 ?a)))
 (:action
  ugly1149ugly1225ugly1193ugly1192ugly1283ugly81ugly127ugly48ugly51move_seg_n4_n5_3_0_86_seg_n4_n5_2_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_3_0_86) (not_occupied seg_n4_n5_2_0_86)
       (not_blocked seg_n4_n5_2_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_2_0_86 airplane_daewh)
       (not_blocked seg_n4_n5_2_0_86 airplane_dfboy)
       (not_blocked seg_n4_n5_2_0_86 airplane_wurst)
       (not_blocked seg_n4_n5_2_0_86 airplane_holgi)
       (not_blocked seg_n4_n5_2_0_86 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_3_0_86))
       (not_occupied seg_n4_n5_3_0_86) (not (at-segment ?a seg_n4_n5_3_0_86))
       (occupied seg_n4_n5_2_0_86) (not (not_occupied seg_n4_n5_2_0_86))
       (blocked seg_n4_n5_2_0_86 ?a) (not (not_blocked seg_n4_n5_2_0_86 ?a))
       (at-segment ?a seg_n4_n5_2_0_86) (not (blocked seg_n4_n5_4_0_85 ?a))
       (not_blocked seg_n4_n5_4_0_85 ?a)))
 (:action
  ugly1150ugly1282ugly1244ugly1200ugly1272ugly87ugly125ugly104ugly33startup_seg_n4_n5_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_0_86)
       (not_occupied seg_n5_n6_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n5_n6_0_100 ?a)
       (not (not_blocked seg_n5_n6_0_100 ?a))))
 (:action
  ugly1151ugly1251ugly1230ugly1197ugly1171ugly14ugly142ugly112ugly6startup_seg_c3_c_b01_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_c_b01_0_100)
       (not_occupied seg_b01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b01_0_100 ?a)
       (not (not_blocked seg_b01_0_100 ?a))))
 (:action
  ugly1152ugly1212ugly1219ugly1145ugly1269ugly125ugly104ugly33ugly81startup_seg_n2_n3_4_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_4_0_85)
       (not_occupied seg_n2_n3_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_5_0_86 ?a)
       (not (not_blocked seg_n2_n3_5_0_86 ?a))))
 (:action
  ugly1153ugly1218ugly1188ugly1259ugly1233ugly63ugly102ugly72ugly107startup_seg_n1_n2_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_n2_0_100)
       (not_occupied seg_n1_a_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_a_0_100 ?a)
       (not (not_blocked seg_n1_a_0_100 ?a))))
 (:action
  ugly1154ugly1256ugly1257ugly1143ugly1164ugly110ugly20ugly1ugly90move_seg_n1_n2_0_100_seg_n1_a_0_100_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n1_n2_0_100) (not_occupied seg_n1_a_0_100)
       (not_blocked seg_n1_a_0_100 airplane_cfbeg)
       (not_blocked seg_n1_a_0_100 airplane_daewh)
       (not_blocked seg_n1_a_0_100 airplane_dfboy)
       (not_blocked seg_n1_a_0_100 airplane_wurst)
       (not_blocked seg_n1_a_0_100 airplane_holgi)
       (not_blocked seg_n1_a_0_100 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n1_n2_0_100))
       (not_occupied seg_n1_n2_0_100) (not (at-segment ?a seg_n1_n2_0_100))
       (occupied seg_n1_a_0_100) (not (not_occupied seg_n1_a_0_100))
       (blocked seg_n1_a_0_100 ?a) (not (not_blocked seg_n1_a_0_100 ?a))
       (at-segment ?a seg_n1_a_0_100) (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n2_n3_1_0_86 ?a)) (not_blocked seg_n2_n3_1_0_86 ?a)))
 (:action
  ugly1155ugly1213ugly1196ugly1254ugly1241ugly41ugly8ugly67ugly100move_seg_c3_c_a01_0_100_seg_c3_c4_0_50_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c3_c_a01_0_100) (not_occupied seg_c3_c4_0_50)
       (not_blocked seg_c3_c4_0_50 airplane_cfbeg)
       (not_blocked seg_c3_c4_0_50 airplane_daewh)
       (not_blocked seg_c3_c4_0_50 airplane_dfboy)
       (not_blocked seg_c3_c4_0_50 airplane_wurst)
       (not_blocked seg_c3_c4_0_50 airplane_holgi)
       (not_blocked seg_c3_c4_0_50 airplane_4xekd)
       (not_occupied seg_c2_c3_0_100) (not_occupied seg_c3_c_b01_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c3_c_a01_0_100))
       (not_occupied seg_c3_c_a01_0_100)
       (not (at-segment ?a seg_c3_c_a01_0_100)) (occupied seg_c3_c4_0_50)
       (not (not_occupied seg_c3_c4_0_50)) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a)) (at-segment ?a seg_c3_c4_0_50)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_a01_0_100 ?a)) (not_blocked seg_a01_0_100 ?a)
       (blocked seg_c2_c3_0_100 ?a) (not (not_blocked seg_c2_c3_0_100 ?a))
       (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))))
 (:action
  ugly1156ugly1262ugly1234ugly1250ugly1240ugly52ugly61ugly103ugly65move_seg_n6_b_0_100_seg_n5_n6_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n6_b_0_100) (not_occupied seg_n5_n6_0_100)
       (not_blocked seg_n5_n6_0_100 airplane_cfbeg)
       (not_blocked seg_n5_n6_0_100 airplane_daewh)
       (not_blocked seg_n5_n6_0_100 airplane_dfboy)
       (not_blocked seg_n5_n6_0_100 airplane_wurst)
       (not_blocked seg_n5_n6_0_100 airplane_holgi)
       (not_blocked seg_n5_n6_0_100 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n6_b_0_100))
       (not_occupied seg_n6_b_0_100) (not (at-segment ?a seg_n6_b_0_100))
       (occupied seg_n5_n6_0_100) (not (not_occupied seg_n5_n6_0_100))
       (blocked seg_n5_n6_0_100 ?a) (not (not_blocked seg_n5_n6_0_100 ?a))
       (at-segment ?a seg_n5_n6_0_100) (not (blocked seg_b_27_0_100 ?a))
       (not_blocked seg_b_27_0_100 ?a)))
 (:action
  ugly1157ugly1255ugly1226ugly1170ugly1271ugly39ugly128ugly98ugly15startup_seg_n5_n6_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n5_n6_0_100)
       (not_occupied seg_n4_n5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_0_86 ?a)
       (not (not_blocked seg_n4_n5_0_86 ?a))))
 (:action
  ugly1158ugly1274ugly1253ugly1203ugly1246ugly27ugly38ugly111ugly9move_seg_c3_c4_0_50_seg_c4_c5_0_50_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c3_c4_0_50) (not_occupied seg_c4_c5_0_50)
       (not_blocked seg_c4_c5_0_50 airplane_cfbeg)
       (not_blocked seg_c4_c5_0_50 airplane_daewh)
       (not_blocked seg_c4_c5_0_50 airplane_dfboy)
       (not_blocked seg_c4_c5_0_50 airplane_wurst)
       (not_blocked seg_c4_c5_0_50 airplane_holgi)
       (not_blocked seg_c4_c5_0_50 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c3_c4_0_50))
       (not_occupied seg_c3_c4_0_50) (not (at-segment ?a seg_c3_c4_0_50))
       (occupied seg_c4_c5_0_50) (not (not_occupied seg_c4_c5_0_50))
       (blocked seg_c4_c5_0_50 ?a) (not (not_blocked seg_c4_c5_0_50 ?a))
       (at-segment ?a seg_c4_c5_0_50) (not (blocked seg_c2_c3_0_100 ?a))
       (not_blocked seg_c2_c3_0_100 ?a) (not (blocked seg_c3_c_a01_0_100 ?a))
       (not_blocked seg_c3_c_a01_0_100 ?a)
       (not (blocked seg_c3_c_b01_0_100 ?a))
       (not_blocked seg_c3_c_b01_0_100 ?a)))
 (:action
  ugly1159ugly1182ugly1266ugly1179ugly1149ugly83ugly93ugly96ugly135park_seg_b02_0_100_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_b02_0_100) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_b02_0_100) (not (is-moving ?a))))
 (:action
  ugly1160ugly1277ugly1152ugly1212ugly1219ugly3ugly58ugly32ugly34startup_seg_n4_n5_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_0_86)
       (not_occupied seg_n4_n5_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_6_0_86 ?a)
       (not (not_blocked seg_n4_n5_6_0_86 ?a))))
 (:action
  ugly1161ugly1167ugly1211ugly1231ugly1166ugly48ugly51ugly30ugly69move_seg_c2_c3_0_100_seg_c3_c_a01_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c2_c3_0_100) (not_occupied seg_c3_c_a01_0_100)
       (not_blocked seg_c3_c_a01_0_100 airplane_cfbeg)
       (not_blocked seg_c3_c_a01_0_100 airplane_daewh)
       (not_blocked seg_c3_c_a01_0_100 airplane_dfboy)
       (not_blocked seg_c3_c_a01_0_100 airplane_wurst)
       (not_blocked seg_c3_c_a01_0_100 airplane_holgi)
       (not_blocked seg_c3_c_a01_0_100 airplane_4xekd)
       (not_occupied seg_c3_c4_0_50) (not_occupied seg_c3_c_b01_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c2_c3_0_100))
       (not_occupied seg_c2_c3_0_100) (not (at-segment ?a seg_c2_c3_0_100))
       (occupied seg_c3_c_a01_0_100) (not (not_occupied seg_c3_c_a01_0_100))
       (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))
       (at-segment ?a seg_c3_c_a01_0_100) (not (blocked seg_c_c2_0_100 ?a))
       (not_blocked seg_c_c2_0_100 ?a) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a)) (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))))
 (:action
  ugly1162ugly1144ugly1162ugly1144ugly1162ugly2ugly19ugly110ugly20move_seg_a01_0_100_seg_c3_c_a01_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a01_0_100) (not_occupied seg_c3_c_a01_0_100)
       (not_blocked seg_c3_c_a01_0_100 airplane_cfbeg)
       (not_blocked seg_c3_c_a01_0_100 airplane_daewh)
       (not_blocked seg_c3_c_a01_0_100 airplane_dfboy)
       (not_blocked seg_c3_c_a01_0_100 airplane_wurst)
       (not_blocked seg_c3_c_a01_0_100 airplane_holgi)
       (not_blocked seg_c3_c_a01_0_100 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a01_0_100))
       (not_occupied seg_a01_0_100) (not (at-segment ?a seg_a01_0_100))
       (occupied seg_c3_c_a01_0_100) (not (not_occupied seg_c3_c_a01_0_100))
       (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))
       (at-segment ?a seg_c3_c_a01_0_100)))
 (:action
  ugly1163ugly1204ugly1159ugly1182ugly1266ugly37ugly137ugly97ugly47move_seg_rwy_0_1300_seg_27_0_150_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_rwy_0_1300) (not_occupied seg_27_0_150)
       (not_blocked seg_27_0_150 airplane_cfbeg)
       (not_blocked seg_27_0_150 airplane_daewh)
       (not_blocked seg_27_0_150 airplane_dfboy)
       (not_blocked seg_27_0_150 airplane_wurst)
       (not_blocked seg_27_0_150 airplane_holgi)
       (not_blocked seg_27_0_150 airplane_4xekd) (not_occupied seg_09_0_150))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_rwy_0_1300))
       (not_occupied seg_rwy_0_1300) (not (at-segment ?a seg_rwy_0_1300))
       (occupied seg_27_0_150) (not (not_occupied seg_27_0_150))
       (blocked seg_27_0_150 ?a) (not (not_blocked seg_27_0_150 ?a))
       (at-segment ?a seg_27_0_150)))
 (:action
  ugly1164ugly1252ugly1222ugly1276ugly1161ugly25ugly75ugly43ugly114takeoff_seg_09_0_150_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_09_0_150) (facing ?a south) (is-moving ?a)) :effect
  (and (not (occupied seg_09_0_150)) (not_occupied seg_09_0_150)
       (not (blocked seg_09_0_150 ?a)) (not_blocked seg_09_0_150 ?a)
       (not (at-segment ?a seg_09_0_150)) (airborne ?a seg_09_0_150)
       (not (is-moving ?a)) (not (blocked seg_a_09_0_100 ?a))
       (not_blocked seg_a_09_0_100 ?a)))
 (:action
  ugly1165ugly1268ugly1150ugly1282ugly1244ugly58ugly32ugly34ugly82startup_seg_a01_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a01_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1166ugly1190ugly1261ugly1278ugly1264ugly6ugly95ugly50ugly62park_seg_b01_0_100_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_b01_0_100) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_b01_0_100) (not (is-moving ?a))
       (not (blocked seg_c3_c_b01_0_100 ?a))
       (not_blocked seg_c3_c_b01_0_100 ?a)))
 (:action
  ugly1167ugly1211ugly1231ugly1166ugly1190ugly119ugly74ugly83ugly93startup_seg_c3_c_b01_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_c_b01_0_100)
       (not_occupied seg_c2_c3_0_100) (not_occupied seg_c3_c4_0_50)
       (not_occupied seg_c3_c_a01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_c3_0_100 ?a)
       (not (not_blocked seg_c2_c3_0_100 ?a)) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a)) (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))))
 (:action
  ugly1168ugly1258ugly1238ugly1247ugly1198ugly100ugly2ugly19ugly110move_seg_09_0_150_seg_rwy_0_1300_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_09_0_150) (not_occupied seg_rwy_0_1300)
       (not_blocked seg_rwy_0_1300 airplane_cfbeg)
       (not_blocked seg_rwy_0_1300 airplane_daewh)
       (not_blocked seg_rwy_0_1300 airplane_dfboy)
       (not_blocked seg_rwy_0_1300 airplane_wurst)
       (not_blocked seg_rwy_0_1300 airplane_holgi)
       (not_blocked seg_rwy_0_1300 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_09_0_150))
       (not_occupied seg_09_0_150) (not (at-segment ?a seg_09_0_150))
       (occupied seg_rwy_0_1300) (not (not_occupied seg_rwy_0_1300))
       (blocked seg_rwy_0_1300 ?a) (not (not_blocked seg_rwy_0_1300 ?a))
       (at-segment ?a seg_rwy_0_1300) (not (blocked seg_a_09_0_100 ?a))
       (not_blocked seg_a_09_0_100 ?a)))
 (:action
  ugly1169ugly1237ugly1153ugly1218ugly1188ugly117ugly5ugly29ugly91startup_seg_n4_n5_4_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_4_0_85)
       (not_occupied seg_n4_n5_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_3_0_86 ?a)
       (not (not_blocked seg_n4_n5_3_0_86 ?a))))
 (:action
  ugly1170ugly1271ugly1181ugly1157ugly1255ugly84ugly4ugly86ugly79startup_seg_n2_n3_6_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_6_0_86)
       (not_occupied seg_n2_n3_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_0_85 ?a)
       (not (not_blocked seg_n2_n3_0_85 ?a))))
 (:action
  ugly1171ugly1156ugly1262ugly1234ugly1250ugly98ugly15ugly84ugly4startup_seg_n6_b_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n6_b_0_100)
       (not_occupied seg_n5_n6_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n5_n6_0_100 ?a)
       (not (not_blocked seg_n5_n6_0_100 ?a))))
 (:action
  ugly1172ugly1177ugly1217ugly1191ugly1209ugly68ugly76ugly141ugly118startup_seg_c6_c7_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c6_c7_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1173ugly1208ugly1273ugly1279ugly1173ugly66ugly54ugly44ugly45move_seg_n2_n3_5_0_86_seg_n2_n3_4_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_5_0_86) (not_occupied seg_n2_n3_4_0_85)
       (not_blocked seg_n2_n3_4_0_85 airplane_cfbeg)
       (not_blocked seg_n2_n3_4_0_85 airplane_daewh)
       (not_blocked seg_n2_n3_4_0_85 airplane_dfboy)
       (not_blocked seg_n2_n3_4_0_85 airplane_wurst)
       (not_blocked seg_n2_n3_4_0_85 airplane_holgi)
       (not_blocked seg_n2_n3_4_0_85 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_5_0_86))
       (not_occupied seg_n2_n3_5_0_86) (not (at-segment ?a seg_n2_n3_5_0_86))
       (occupied seg_n2_n3_4_0_85) (not (not_occupied seg_n2_n3_4_0_85))
       (blocked seg_n2_n3_4_0_85 ?a) (not (not_blocked seg_n2_n3_4_0_85 ?a))
       (at-segment ?a seg_n2_n3_4_0_85) (not (blocked seg_n2_n3_6_0_86 ?a))
       (not_blocked seg_n2_n3_6_0_86 ?a)))
 (:action
  ugly1174ugly1158ugly1274ugly1253ugly1203ugly104ugly33ugly81ugly127move_seg_c2_c3_0_100_seg_c3_c_b01_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c2_c3_0_100) (not_occupied seg_c3_c_b01_0_100)
       (not_blocked seg_c3_c_b01_0_100 airplane_cfbeg)
       (not_blocked seg_c3_c_b01_0_100 airplane_daewh)
       (not_blocked seg_c3_c_b01_0_100 airplane_dfboy)
       (not_blocked seg_c3_c_b01_0_100 airplane_wurst)
       (not_blocked seg_c3_c_b01_0_100 airplane_holgi)
       (not_blocked seg_c3_c_b01_0_100 airplane_4xekd)
       (not_occupied seg_c3_c4_0_50) (not_occupied seg_c3_c_a01_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c2_c3_0_100))
       (not_occupied seg_c2_c3_0_100) (not (at-segment ?a seg_c2_c3_0_100))
       (occupied seg_c3_c_b01_0_100) (not (not_occupied seg_c3_c_b01_0_100))
       (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))
       (at-segment ?a seg_c3_c_b01_0_100) (not (blocked seg_c_c2_0_100 ?a))
       (not_blocked seg_c_c2_0_100 ?a) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a)) (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))))
 (:action
  ugly1175ugly1155ugly1213ugly1196ugly1254ugly99ugly68ugly76ugly141startup_seg_b01_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b01_0_100)
       (not_occupied seg_c3_c_b01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))))
 (:action
  ugly1176ugly1249ugly1235ugly1189ugly1165ugly126ugly64ugly80ugly71startup_seg_n4_n5_5_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_5_0_86)
       (not_occupied seg_n4_n5_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_4_0_85 ?a)
       (not (not_blocked seg_n4_n5_4_0_85 ?a))))
 (:action
  ugly1177ugly1217ugly1191ugly1209ugly1210ugly45ugly12ugly117ugly5move_seg_n4_n5_4_0_85_seg_n4_n5_3_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_4_0_85) (not_occupied seg_n4_n5_3_0_86)
       (not_blocked seg_n4_n5_3_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_3_0_86 airplane_daewh)
       (not_blocked seg_n4_n5_3_0_86 airplane_dfboy)
       (not_blocked seg_n4_n5_3_0_86 airplane_wurst)
       (not_blocked seg_n4_n5_3_0_86 airplane_holgi)
       (not_blocked seg_n4_n5_3_0_86 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_4_0_85))
       (not_occupied seg_n4_n5_4_0_85) (not (at-segment ?a seg_n4_n5_4_0_85))
       (occupied seg_n4_n5_3_0_86) (not (not_occupied seg_n4_n5_3_0_86))
       (blocked seg_n4_n5_3_0_86 ?a) (not (not_blocked seg_n4_n5_3_0_86 ?a))
       (at-segment ?a seg_n4_n5_3_0_86) (not (blocked seg_n4_n5_5_0_86 ?a))
       (not_blocked seg_n4_n5_5_0_86 ?a)))
 (:action
  ugly1178ugly1174ugly1158ugly1274ugly1253ugly61ugly103ugly65ugly24startup_seg_n4_n5_2_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_2_0_86)
       (not_occupied seg_n4_n5_1_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_1_0_85 ?a)
       (not (not_blocked seg_n4_n5_1_0_85 ?a))))
 (:action
  ugly1179ugly1149ugly1225ugly1193ugly1192ugly141ugly118ugly105ugly94move_seg_n4_n5_0_86_seg_n4_n5_6_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_0_86) (not_occupied seg_n4_n5_6_0_86)
       (not_blocked seg_n4_n5_6_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_6_0_86 airplane_daewh)
       (not_blocked seg_n4_n5_6_0_86 airplane_dfboy)
       (not_blocked seg_n4_n5_6_0_86 airplane_wurst)
       (not_blocked seg_n4_n5_6_0_86 airplane_holgi)
       (not_blocked seg_n4_n5_6_0_86 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_0_86))
       (not_occupied seg_n4_n5_0_86) (not (at-segment ?a seg_n4_n5_0_86))
       (occupied seg_n4_n5_6_0_86) (not (not_occupied seg_n4_n5_6_0_86))
       (blocked seg_n4_n5_6_0_86 ?a) (not (not_blocked seg_n4_n5_6_0_86 ?a))
       (at-segment ?a seg_n4_n5_6_0_86) (not (blocked seg_n5_n6_0_100 ?a))
       (not_blocked seg_n5_n6_0_100 ?a)))
 (:action
  ugly1180ugly1220ugly1186ugly1168ugly1258ugly96ugly135ugly119ugly74startup_seg_n5_n6_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n5_n6_0_100)
       (not_occupied seg_n6_b_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n6_b_0_100 ?a)
       (not (not_blocked seg_n6_b_0_100 ?a))))
 (:action
  ugly1181ugly1157ugly1255ugly1226ugly1170ugly129ugly115ugly52ugly61startup_seg_c5_c_b02_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c_b02_0_100)
       (not_occupied seg_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b02_0_100 ?a)
       (not (not_blocked seg_b02_0_100 ?a))))
 (:action
  ugly1182ugly1266ugly1179ugly1149ugly1225ugly51ugly30ugly69ugly36startup_seg_n4_n5_3_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_3_0_86)
       (not_occupied seg_n4_n5_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_2_0_86 ?a)
       (not (not_blocked seg_n4_n5_2_0_86 ?a))))
 (:action
  ugly1183ugly1199ugly1263ugly1202ugly1243ugly34ugly82ugly109ugly27move_seg_a02_0_100_seg_c5_c_a02_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a02_0_100) (not_occupied seg_c5_c_a02_0_100)
       (not_blocked seg_c5_c_a02_0_100 airplane_cfbeg)
       (not_blocked seg_c5_c_a02_0_100 airplane_daewh)
       (not_blocked seg_c5_c_a02_0_100 airplane_dfboy)
       (not_blocked seg_c5_c_a02_0_100 airplane_wurst)
       (not_blocked seg_c5_c_a02_0_100 airplane_holgi)
       (not_blocked seg_c5_c_a02_0_100 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a02_0_100))
       (not_occupied seg_a02_0_100) (not (at-segment ?a seg_a02_0_100))
       (occupied seg_c5_c_a02_0_100) (not (not_occupied seg_c5_c_a02_0_100))
       (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))
       (at-segment ?a seg_c5_c_a02_0_100)))
 (:action
  ugly1184ugly1280ugly1175ugly1155ugly1213ugly54ugly44ugly45ugly12startup_seg_b01_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b01_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1185ugly1215ugly1227ugly1151ugly1251ugly88ugly59ugly28ugly46startup_seg_n2_n3_5_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_5_0_86)
       (not_occupied seg_n2_n3_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_4_0_85 ?a)
       (not (not_blocked seg_n2_n3_4_0_85 ?a))))
 (:action
  ugly1186ugly1168ugly1258ugly1238ugly1247ugly56ugly53ugly41ugly8startup_seg_n1_a_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_a_0_100)
       (not_occupied seg_a_09_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a_09_0_100 ?a)
       (not (not_blocked seg_a_09_0_100 ?a))))
 (:action
  ugly1187ugly1207ugly1201ugly1147ugly1228ugly103ugly65ugly24ugly134startup_seg_n2_n3_2_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_2_0_86)
       (not_occupied seg_n2_n3_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_3_0_86 ?a)
       (not (not_blocked seg_n2_n3_3_0_86 ?a))))
 (:action
  ugly1188ugly1259ugly1233ugly1205ugly1284ugly72ugly107ugly66ugly54move_seg_c4_c5_0_50_seg_c5_c_a02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_c5_0_50) (not_occupied seg_c5_c_a02_0_100)
       (not_blocked seg_c5_c_a02_0_100 airplane_cfbeg)
       (not_blocked seg_c5_c_a02_0_100 airplane_daewh)
       (not_blocked seg_c5_c_a02_0_100 airplane_dfboy)
       (not_blocked seg_c5_c_a02_0_100 airplane_wurst)
       (not_blocked seg_c5_c_a02_0_100 airplane_holgi)
       (not_blocked seg_c5_c_a02_0_100 airplane_4xekd)
       (not_occupied seg_c5_c6_0_50) (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c4_c5_0_50))
       (not_occupied seg_c4_c5_0_50) (not (at-segment ?a seg_c4_c5_0_50))
       (occupied seg_c5_c_a02_0_100) (not (not_occupied seg_c5_c_a02_0_100))
       (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))
       (at-segment ?a seg_c5_c_a02_0_100) (not (blocked seg_c3_c4_0_50 ?a))
       (not_blocked seg_c3_c4_0_50 ?a) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action
  ugly1189ugly1165ugly1268ugly1150ugly1282ugly102ugly72ugly107ugly66pushback_seg_a02_0_100_seg_c5_c_a02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_a02_0_100) (not_occupied seg_c5_c_a02_0_100)
       (not_blocked seg_c5_c_a02_0_100 airplane_cfbeg)
       (not_blocked seg_c5_c_a02_0_100 airplane_daewh)
       (not_blocked seg_c5_c_a02_0_100 airplane_dfboy)
       (not_blocked seg_c5_c_a02_0_100 airplane_wurst)
       (not_blocked seg_c5_c_a02_0_100 airplane_holgi)
       (not_blocked seg_c5_c_a02_0_100 airplane_4xekd))
  :effect
  (and (not (occupied seg_a02_0_100)) (not_occupied seg_a02_0_100)
       (not (blocked seg_a02_0_100 ?a)) (not_blocked seg_a02_0_100 ?a)
       (not (at-segment ?a seg_a02_0_100)) (occupied seg_c5_c_a02_0_100)
       (not (not_occupied seg_c5_c_a02_0_100)) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))
       (at-segment ?a seg_c5_c_a02_0_100)))
 (:action
  ugly1190ugly1261ugly1278ugly1264ugly1148ugly36ugly136ugly73ugly57park_seg_a01_0_100_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_a01_0_100) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_a01_0_100) (not (is-moving ?a))
       (not (blocked seg_c3_c_a01_0_100 ?a))
       (not_blocked seg_c3_c_a01_0_100 ?a)))
 (:action
  ugly1191ugly1209ugly1210ugly1187ugly1207ugly59ugly28ugly46ugly130startup_seg_c6_c7_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c6_c7_0_100)
       (not_occupied seg_c5_c6_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a))))
 (:action
  ugly1192ugly1283ugly1223ugly1185ugly1215ugly85ugly13ugly89ugly22move_seg_c_c2_0_100_seg_n_c_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c_c2_0_100) (not_occupied seg_n_c_0_100)
       (not_blocked seg_n_c_0_100 airplane_cfbeg)
       (not_blocked seg_n_c_0_100 airplane_daewh)
       (not_blocked seg_n_c_0_100 airplane_dfboy)
       (not_blocked seg_n_c_0_100 airplane_wurst)
       (not_blocked seg_n_c_0_100 airplane_holgi)
       (not_blocked seg_n_c_0_100 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c_c2_0_100))
       (not_occupied seg_c_c2_0_100) (not (at-segment ?a seg_c_c2_0_100))
       (occupied seg_n_c_0_100) (not (not_occupied seg_n_c_0_100))
       (blocked seg_n_c_0_100 ?a) (not (not_blocked seg_n_c_0_100 ?a))
       (at-segment ?a seg_n_c_0_100) (not (blocked seg_c2_c3_0_100 ?a))
       (not_blocked seg_c2_c3_0_100 ?a)))
 (:action
  ugly1193ugly1192ugly1283ugly1223ugly1185ugly73ugly57ugly108ugly35startup_seg_c5_c_a02_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c_a02_0_100)
       (not_occupied seg_a02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a02_0_100 ?a)
       (not (not_blocked seg_a02_0_100 ?a))))
 (:action
  ugly1194ugly1260ugly1163ugly1204ugly1159ugly40ugly113ugly25ugly75move_seg_c2_c3_0_100_seg_c3_c4_0_50_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c2_c3_0_100) (not_occupied seg_c3_c4_0_50)
       (not_blocked seg_c3_c4_0_50 airplane_cfbeg)
       (not_blocked seg_c3_c4_0_50 airplane_daewh)
       (not_blocked seg_c3_c4_0_50 airplane_dfboy)
       (not_blocked seg_c3_c4_0_50 airplane_wurst)
       (not_blocked seg_c3_c4_0_50 airplane_holgi)
       (not_blocked seg_c3_c4_0_50 airplane_4xekd)
       (not_occupied seg_c3_c_a01_0_100) (not_occupied seg_c3_c_b01_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c2_c3_0_100))
       (not_occupied seg_c2_c3_0_100) (not (at-segment ?a seg_c2_c3_0_100))
       (occupied seg_c3_c4_0_50) (not (not_occupied seg_c3_c4_0_50))
       (blocked seg_c3_c4_0_50 ?a) (not (not_blocked seg_c3_c4_0_50 ?a))
       (at-segment ?a seg_c3_c4_0_50) (not (blocked seg_c_c2_0_100 ?a))
       (not_blocked seg_c_c2_0_100 ?a) (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))
       (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))))
 (:action
  ugly1195ugly1248ugly1224ugly1265ugly1236ugly38ugly111ugly9ugly3pushback_seg_c5_c_b02_0_100_seg_c5_c6_0_50_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_c5_c_b02_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg)
       (not_blocked seg_c5_c6_0_50 airplane_daewh)
       (not_blocked seg_c5_c6_0_50 airplane_dfboy)
       (not_blocked seg_c5_c6_0_50 airplane_wurst)
       (not_blocked seg_c5_c6_0_50 airplane_holgi)
       (not_blocked seg_c5_c6_0_50 airplane_4xekd))
  :effect
  (and (not (occupied seg_c5_c_b02_0_100)) (not_occupied seg_c5_c_b02_0_100)
       (not (blocked seg_c5_c_b02_0_100 ?a))
       (not_blocked seg_c5_c_b02_0_100 ?a)
       (not (at-segment ?a seg_c5_c_b02_0_100)) (occupied seg_c5_c6_0_50)
       (not (not_occupied seg_c5_c6_0_50)) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (at-segment ?a seg_c5_c6_0_50)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly1196ugly1254ugly1241ugly1183ugly1199ugly121ugly122ugly23ugly133startup_seg_n6_b_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n6_b_0_100)
       (not_occupied seg_b_27_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b_27_0_100 ?a)
       (not (not_blocked seg_b_27_0_100 ?a))))
 (:action
  ugly1197ugly1171ugly1156ugly1262ugly1234ugly108ugly35ugly101ugly88takeoff_seg_27_0_150_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_27_0_150) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_27_0_150)) (not_occupied seg_27_0_150)
       (not (blocked seg_27_0_150 ?a)) (not_blocked seg_27_0_150 ?a)
       (not (at-segment ?a seg_27_0_150)) (airborne ?a seg_27_0_150)
       (not (is-moving ?a)) (not (blocked seg_b_27_0_100 ?a))
       (not_blocked seg_b_27_0_100 ?a)))
 (:action
  ugly1198ugly1242ugly1221ugly1281ugly1239ugly64ugly80ugly71ugly140startup_seg_n2_n3_5_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_5_0_86)
       (not_occupied seg_n2_n3_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_6_0_86 ?a)
       (not (not_blocked seg_n2_n3_6_0_86 ?a))))
 (:action
  ugly1199ugly1263ugly1202ugly1243ugly1176ugly107ugly66ugly54ugly44move_seg_c5_c_a02_0_100_seg_a02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c5_c_a02_0_100) (not_occupied seg_a02_0_100)
       (not_blocked seg_a02_0_100 airplane_cfbeg)
       (not_blocked seg_a02_0_100 airplane_daewh)
       (not_blocked seg_a02_0_100 airplane_dfboy)
       (not_blocked seg_a02_0_100 airplane_wurst)
       (not_blocked seg_a02_0_100 airplane_holgi)
       (not_blocked seg_a02_0_100 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c5_c_a02_0_100))
       (not_occupied seg_c5_c_a02_0_100)
       (not (at-segment ?a seg_c5_c_a02_0_100)) (occupied seg_a02_0_100)
       (not (not_occupied seg_a02_0_100)) (blocked seg_a02_0_100 ?a)
       (not (not_blocked seg_a02_0_100 ?a)) (at-segment ?a seg_a02_0_100)
       (not (blocked seg_c4_c5_0_50 ?a)) (not_blocked seg_c4_c5_0_50 ?a)
       (not (blocked seg_c5_c6_0_50 ?a)) (not_blocked seg_c5_c6_0_50 ?a)
       (not (blocked seg_c5_c_b02_0_100 ?a))
       (not_blocked seg_c5_c_b02_0_100 ?a)))
 (:action
  ugly1200ugly1272ugly1229ugly1184ugly1280ugly33ugly81ugly127ugly48move_seg_c5_c_b02_0_100_seg_c5_c6_0_50_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c5_c_b02_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg)
       (not_blocked seg_c5_c6_0_50 airplane_daewh)
       (not_blocked seg_c5_c6_0_50 airplane_dfboy)
       (not_blocked seg_c5_c6_0_50 airplane_wurst)
       (not_blocked seg_c5_c6_0_50 airplane_holgi)
       (not_blocked seg_c5_c6_0_50 airplane_4xekd)
       (not_occupied seg_c4_c5_0_50) (not_occupied seg_c5_c_a02_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c5_c_b02_0_100))
       (not_occupied seg_c5_c_b02_0_100)
       (not (at-segment ?a seg_c5_c_b02_0_100)) (occupied seg_c5_c6_0_50)
       (not (not_occupied seg_c5_c6_0_50)) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (at-segment ?a seg_c5_c6_0_50)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_b02_0_100 ?a)) (not_blocked seg_b02_0_100 ?a)
       (blocked seg_c4_c5_0_50 ?a) (not (not_blocked seg_c4_c5_0_50 ?a))
       (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))))
 (:action
  ugly1201ugly1147ugly1228ugly1245ugly1146ugly53ugly41ugly8ugly67startup_seg_c5_c6_0_50_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c6_0_50)
       (not_occupied seg_c4_c5_0_50) (not_occupied seg_c5_c_a02_0_100)
       (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a)) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))
       (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action
  ugly1202ugly1243ugly1176ugly1249ugly1235ugly47ugly21ugly87ugly125startup_seg_c5_c_b02_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c_b02_0_100)
       (not_occupied seg_c4_c5_0_50) (not_occupied seg_c5_c6_0_50)
       (not_occupied seg_c5_c_a02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a)) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))))
 (:action
  ugly1203ugly1246ugly1169ugly1237ugly1153ugly76ugly141ugly118ugly105startup_seg_c3_c_a01_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_c_a01_0_100)
       (not_occupied seg_c2_c3_0_100) (not_occupied seg_c3_c4_0_50)
       (not_occupied seg_c3_c_b01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_c3_0_100 ?a)
       (not (not_blocked seg_c2_c3_0_100 ?a)) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a)) (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))))
 (:action
  ugly1204ugly1159ugly1182ugly1266ugly1179ugly7ugly99ugly68ugly76startup_seg_n4_n5_6_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_6_0_86)
       (not_occupied seg_n4_n5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_0_86 ?a)
       (not (not_blocked seg_n4_n5_0_86 ?a))))
 (:action
  ugly1205ugly1284ugly1214ugly1216ugly1275ugly18ugly56ugly53ugly41move_seg_n_c_0_100_seg_n3_n_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_c_0_100) (not_occupied seg_n3_n_0_100)
       (not_blocked seg_n3_n_0_100 airplane_cfbeg)
       (not_blocked seg_n3_n_0_100 airplane_daewh)
       (not_blocked seg_n3_n_0_100 airplane_dfboy)
       (not_blocked seg_n3_n_0_100 airplane_wurst)
       (not_blocked seg_n3_n_0_100 airplane_holgi)
       (not_blocked seg_n3_n_0_100 airplane_4xekd)
       (not_occupied seg_n_n4_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_c_0_100))
       (not_occupied seg_n_c_0_100) (not (at-segment ?a seg_n_c_0_100))
       (occupied seg_n3_n_0_100) (not (not_occupied seg_n3_n_0_100))
       (blocked seg_n3_n_0_100 ?a) (not (not_blocked seg_n3_n_0_100 ?a))
       (at-segment ?a seg_n3_n_0_100) (not (blocked seg_c_c2_0_100 ?a))
       (not_blocked seg_c_c2_0_100 ?a) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a))))
 (:action
  ugly1206ugly1154ugly1256ugly1257ugly1143ugly22ugly7ugly99ugly68startup_seg_n_n4_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n4_0_100)
       (not_occupied seg_n3_n_0_100) (not_occupied seg_n_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a)) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a))))
 (:action
  ugly1207ugly1201ugly1147ugly1228ugly1245ugly4ugly86ugly79ugly131move_seg_c5_c6_0_50_seg_c6_c7_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c5_c6_0_50) (not_occupied seg_c6_c7_0_100)
       (not_blocked seg_c6_c7_0_100 airplane_cfbeg)
       (not_blocked seg_c6_c7_0_100 airplane_daewh)
       (not_blocked seg_c6_c7_0_100 airplane_dfboy)
       (not_blocked seg_c6_c7_0_100 airplane_wurst)
       (not_blocked seg_c6_c7_0_100 airplane_holgi)
       (not_blocked seg_c6_c7_0_100 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c5_c6_0_50))
       (not_occupied seg_c5_c6_0_50) (not (at-segment ?a seg_c5_c6_0_50))
       (occupied seg_c6_c7_0_100) (not (not_occupied seg_c6_c7_0_100))
       (blocked seg_c6_c7_0_100 ?a) (not (not_blocked seg_c6_c7_0_100 ?a))
       (at-segment ?a seg_c6_c7_0_100) (not (blocked seg_c4_c5_0_50 ?a))
       (not_blocked seg_c4_c5_0_50 ?a) (not (blocked seg_c5_c_a02_0_100 ?a))
       (not_blocked seg_c5_c_a02_0_100 ?a)
       (not (blocked seg_c5_c_b02_0_100 ?a))
       (not_blocked seg_c5_c_b02_0_100 ?a)))
 (:action
  ugly1208ugly1273ugly1279ugly1173ugly1208ugly131ugly40ugly113ugly25startup_seg_n_n4_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n4_0_100)
       (not_occupied seg_n4_n5_1_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_1_0_85 ?a)
       (not (not_blocked seg_n4_n5_1_0_85 ?a))))
 (:action
  ugly1209ugly1210ugly1187ugly1207ugly1201ugly5ugly29ugly91ugly138move_seg_n2_n3_3_0_86_seg_n2_n3_2_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_3_0_86) (not_occupied seg_n2_n3_2_0_86)
       (not_blocked seg_n2_n3_2_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_2_0_86 airplane_daewh)
       (not_blocked seg_n2_n3_2_0_86 airplane_dfboy)
       (not_blocked seg_n2_n3_2_0_86 airplane_wurst)
       (not_blocked seg_n2_n3_2_0_86 airplane_holgi)
       (not_blocked seg_n2_n3_2_0_86 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_3_0_86))
       (not_occupied seg_n2_n3_3_0_86) (not (at-segment ?a seg_n2_n3_3_0_86))
       (occupied seg_n2_n3_2_0_86) (not (not_occupied seg_n2_n3_2_0_86))
       (blocked seg_n2_n3_2_0_86 ?a) (not (not_blocked seg_n2_n3_2_0_86 ?a))
       (at-segment ?a seg_n2_n3_2_0_86) (not (blocked seg_n2_n3_4_0_85 ?a))
       (not_blocked seg_n2_n3_4_0_85 ?a)))
 (:action
  ugly1210ugly1187ugly1207ugly1201ugly1147ugly86ugly79ugly131ugly40startup_seg_a02_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a02_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1211ugly1231ugly1166ugly1190ugly1261ugly136ugly73ugly57ugly108move_seg_c_c2_0_100_seg_c2_c3_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c_c2_0_100) (not_occupied seg_c2_c3_0_100)
       (not_blocked seg_c2_c3_0_100 airplane_cfbeg)
       (not_blocked seg_c2_c3_0_100 airplane_daewh)
       (not_blocked seg_c2_c3_0_100 airplane_dfboy)
       (not_blocked seg_c2_c3_0_100 airplane_wurst)
       (not_blocked seg_c2_c3_0_100 airplane_holgi)
       (not_blocked seg_c2_c3_0_100 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c_c2_0_100))
       (not_occupied seg_c_c2_0_100) (not (at-segment ?a seg_c_c2_0_100))
       (occupied seg_c2_c3_0_100) (not (not_occupied seg_c2_c3_0_100))
       (blocked seg_c2_c3_0_100 ?a) (not (not_blocked seg_c2_c3_0_100 ?a))
       (at-segment ?a seg_c2_c3_0_100) (not (blocked seg_n_c_0_100 ?a))
       (not_blocked seg_n_c_0_100 ?a)))
 (:action
  ugly1212ugly1219ugly1145ugly1269ugly1267ugly90ugly17ugly126ugly64startup_seg_n4_n5_1_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_1_0_85)
       (not_occupied seg_n_n4_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a))))
 (:action
  ugly1213ugly1196ugly1254ugly1241ugly1183ugly57ugly108ugly35ugly101startup_seg_c_c2_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_0_100)
       (not_occupied seg_n_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a))))
 (:action
  ugly1214ugly1216ugly1275ugly1160ugly1277ugly10ugly132ugly124ugly39startup_seg_n2_n3_4_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_4_0_85)
       (not_occupied seg_n2_n3_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_3_0_86 ?a)
       (not (not_blocked seg_n2_n3_3_0_86 ?a))))
 (:action
  ugly1215ugly1227ugly1151ugly1251ugly1230ugly55ugly63ugly102ugly72park_seg_a01_0_100_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_a01_0_100) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_a01_0_100) (not (is-moving ?a))))
 (:action
  ugly1216ugly1275ugly1160ugly1277ugly1152ugly70ugly10ugly132ugly124move_seg_c5_c_a02_0_100_seg_c5_c6_0_50_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c5_c_a02_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg)
       (not_blocked seg_c5_c6_0_50 airplane_daewh)
       (not_blocked seg_c5_c6_0_50 airplane_dfboy)
       (not_blocked seg_c5_c6_0_50 airplane_wurst)
       (not_blocked seg_c5_c6_0_50 airplane_holgi)
       (not_blocked seg_c5_c6_0_50 airplane_4xekd)
       (not_occupied seg_c4_c5_0_50) (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c5_c_a02_0_100))
       (not_occupied seg_c5_c_a02_0_100)
       (not (at-segment ?a seg_c5_c_a02_0_100)) (occupied seg_c5_c6_0_50)
       (not (not_occupied seg_c5_c6_0_50)) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (at-segment ?a seg_c5_c6_0_50)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_a02_0_100 ?a)) (not_blocked seg_a02_0_100 ?a)
       (blocked seg_c4_c5_0_50 ?a) (not (not_blocked seg_c4_c5_0_50 ?a))
       (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action
  ugly1217ugly1191ugly1209ugly1210ugly1187ugly65ugly24ugly134ugly123move_seg_c5_c6_0_50_seg_c4_c5_0_50_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c5_c6_0_50) (not_occupied seg_c4_c5_0_50)
       (not_blocked seg_c4_c5_0_50 airplane_cfbeg)
       (not_blocked seg_c4_c5_0_50 airplane_daewh)
       (not_blocked seg_c4_c5_0_50 airplane_dfboy)
       (not_blocked seg_c4_c5_0_50 airplane_wurst)
       (not_blocked seg_c4_c5_0_50 airplane_holgi)
       (not_blocked seg_c4_c5_0_50 airplane_4xekd)
       (not_occupied seg_c5_c_a02_0_100) (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c5_c6_0_50))
       (not_occupied seg_c5_c6_0_50) (not (at-segment ?a seg_c5_c6_0_50))
       (occupied seg_c4_c5_0_50) (not (not_occupied seg_c4_c5_0_50))
       (blocked seg_c4_c5_0_50 ?a) (not (not_blocked seg_c4_c5_0_50 ?a))
       (at-segment ?a seg_c4_c5_0_50) (not (blocked seg_c6_c7_0_100 ?a))
       (not_blocked seg_c6_c7_0_100 ?a) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))
       (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action
  ugly1218ugly1188ugly1259ugly1233ugly1205ugly142ugly112ugly6ugly95move_seg_b02_0_100_seg_c5_c_b02_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b02_0_100) (not_occupied seg_c5_c_b02_0_100)
       (not_blocked seg_c5_c_b02_0_100 airplane_cfbeg)
       (not_blocked seg_c5_c_b02_0_100 airplane_daewh)
       (not_blocked seg_c5_c_b02_0_100 airplane_dfboy)
       (not_blocked seg_c5_c_b02_0_100 airplane_wurst)
       (not_blocked seg_c5_c_b02_0_100 airplane_holgi)
       (not_blocked seg_c5_c_b02_0_100 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_b02_0_100))
       (not_occupied seg_b02_0_100) (not (at-segment ?a seg_b02_0_100))
       (occupied seg_c5_c_b02_0_100) (not (not_occupied seg_c5_c_b02_0_100))
       (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))
       (at-segment ?a seg_c5_c_b02_0_100)))
 (:action
  ugly1219ugly1145ugly1269ugly1267ugly1232ugly30ugly69ugly36ugly136startup_seg_n3_n_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n3_n_0_100)
       (not_occupied seg_n_n4_0_100) (not_occupied seg_n_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a)) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a))))
 (:action
  ugly1220ugly1186ugly1168ugly1258ugly1238ugly105ugly94ugly26ugly78move_seg_n4_n5_2_0_86_seg_n4_n5_1_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_2_0_86) (not_occupied seg_n4_n5_1_0_85)
       (not_blocked seg_n4_n5_1_0_85 airplane_cfbeg)
       (not_blocked seg_n4_n5_1_0_85 airplane_daewh)
       (not_blocked seg_n4_n5_1_0_85 airplane_dfboy)
       (not_blocked seg_n4_n5_1_0_85 airplane_wurst)
       (not_blocked seg_n4_n5_1_0_85 airplane_holgi)
       (not_blocked seg_n4_n5_1_0_85 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_2_0_86))
       (not_occupied seg_n4_n5_2_0_86) (not (at-segment ?a seg_n4_n5_2_0_86))
       (occupied seg_n4_n5_1_0_85) (not (not_occupied seg_n4_n5_1_0_85))
       (blocked seg_n4_n5_1_0_85 ?a) (not (not_blocked seg_n4_n5_1_0_85 ?a))
       (at-segment ?a seg_n4_n5_1_0_85) (not (blocked seg_n4_n5_3_0_86 ?a))
       (not_blocked seg_n4_n5_3_0_86 ?a)))
 (:action
  ugly1221ugly1281ugly1239ugly1206ugly1154ugly114ugly60ugly77ugly49move_seg_n2_n3_1_0_86_seg_n1_n2_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_1_0_86) (not_occupied seg_n1_n2_0_100)
       (not_blocked seg_n1_n2_0_100 airplane_cfbeg)
       (not_blocked seg_n1_n2_0_100 airplane_daewh)
       (not_blocked seg_n1_n2_0_100 airplane_dfboy)
       (not_blocked seg_n1_n2_0_100 airplane_wurst)
       (not_blocked seg_n1_n2_0_100 airplane_holgi)
       (not_blocked seg_n1_n2_0_100 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_1_0_86))
       (not_occupied seg_n2_n3_1_0_86) (not (at-segment ?a seg_n2_n3_1_0_86))
       (occupied seg_n1_n2_0_100) (not (not_occupied seg_n1_n2_0_100))
       (blocked seg_n1_n2_0_100 ?a) (not (not_blocked seg_n1_n2_0_100 ?a))
       (at-segment ?a seg_n1_n2_0_100) (not (blocked seg_n2_n3_2_0_86 ?a))
       (not_blocked seg_n2_n3_2_0_86 ?a)))
 (:action
  ugly1222ugly1276ugly1161ugly1167ugly1211ugly89ugly22ugly7ugly99startup_seg_n1_a_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_a_0_100)
       (not_occupied seg_n1_n2_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_n2_0_100 ?a)
       (not (not_blocked seg_n1_n2_0_100 ?a))))
 (:action
  ugly1223ugly1185ugly1215ugly1227ugly1151ugly109ugly27ugly38ugly111move_seg_n3_n_0_100_seg_n2_n3_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n3_n_0_100) (not_occupied seg_n2_n3_0_85)
       (not_blocked seg_n2_n3_0_85 airplane_cfbeg)
       (not_blocked seg_n2_n3_0_85 airplane_daewh)
       (not_blocked seg_n2_n3_0_85 airplane_dfboy)
       (not_blocked seg_n2_n3_0_85 airplane_wurst)
       (not_blocked seg_n2_n3_0_85 airplane_holgi)
       (not_blocked seg_n2_n3_0_85 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n3_n_0_100))
       (not_occupied seg_n3_n_0_100) (not (at-segment ?a seg_n3_n_0_100))
       (occupied seg_n2_n3_0_85) (not (not_occupied seg_n2_n3_0_85))
       (blocked seg_n2_n3_0_85 ?a) (not (not_blocked seg_n2_n3_0_85 ?a))
       (at-segment ?a seg_n2_n3_0_85) (not (blocked seg_n_n4_0_100 ?a))
       (not_blocked seg_n_n4_0_100 ?a) (not (blocked seg_n_c_0_100 ?a))
       (not_blocked seg_n_c_0_100 ?a)))
 (:action
  ugly1224ugly1265ugly1236ugly1180ugly1220ugly44ugly45ugly12ugly117move_seg_c3_c4_0_50_seg_c2_c3_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c3_c4_0_50) (not_occupied seg_c2_c3_0_100)
       (not_blocked seg_c2_c3_0_100 airplane_cfbeg)
       (not_blocked seg_c2_c3_0_100 airplane_daewh)
       (not_blocked seg_c2_c3_0_100 airplane_dfboy)
       (not_blocked seg_c2_c3_0_100 airplane_wurst)
       (not_blocked seg_c2_c3_0_100 airplane_holgi)
       (not_blocked seg_c2_c3_0_100 airplane_4xekd)
       (not_occupied seg_c3_c_a01_0_100) (not_occupied seg_c3_c_b01_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c3_c4_0_50))
       (not_occupied seg_c3_c4_0_50) (not (at-segment ?a seg_c3_c4_0_50))
       (occupied seg_c2_c3_0_100) (not (not_occupied seg_c2_c3_0_100))
       (blocked seg_c2_c3_0_100 ?a) (not (not_blocked seg_c2_c3_0_100 ?a))
       (at-segment ?a seg_c2_c3_0_100) (not (blocked seg_c4_c5_0_50 ?a))
       (not_blocked seg_c4_c5_0_50 ?a) (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))
       (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))))
 (:action
  ugly1225ugly1193ugly1192ugly1283ugly1223ugly43ugly114ugly60ugly77move_seg_c3_c_b01_0_100_seg_b01_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c3_c_b01_0_100) (not_occupied seg_b01_0_100)
       (not_blocked seg_b01_0_100 airplane_cfbeg)
       (not_blocked seg_b01_0_100 airplane_daewh)
       (not_blocked seg_b01_0_100 airplane_dfboy)
       (not_blocked seg_b01_0_100 airplane_wurst)
       (not_blocked seg_b01_0_100 airplane_holgi)
       (not_blocked seg_b01_0_100 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c3_c_b01_0_100))
       (not_occupied seg_c3_c_b01_0_100)
       (not (at-segment ?a seg_c3_c_b01_0_100)) (occupied seg_b01_0_100)
       (not (not_occupied seg_b01_0_100)) (blocked seg_b01_0_100 ?a)
       (not (not_blocked seg_b01_0_100 ?a)) (at-segment ?a seg_b01_0_100)
       (not (blocked seg_c2_c3_0_100 ?a)) (not_blocked seg_c2_c3_0_100 ?a)
       (not (blocked seg_c3_c4_0_50 ?a)) (not_blocked seg_c3_c4_0_50 ?a)
       (not (blocked seg_c3_c_a01_0_100 ?a))
       (not_blocked seg_c3_c_a01_0_100 ?a)))
 (:action
  ugly1226ugly1170ugly1271ugly1181ugly1157ugly113ugly25ugly75ugly43startup_seg_a02_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a02_0_100)
       (not_occupied seg_c5_c_a02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))))
 (:action
  ugly1227ugly1151ugly1251ugly1230ugly1197ugly29ugly91ugly138ugly14startup_seg_n4_n5_6_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_6_0_86)
       (not_occupied seg_n4_n5_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_5_0_86 ?a)
       (not (not_blocked seg_n4_n5_5_0_86 ?a))))
 (:action
  ugly1228ugly1245ugly1146ugly1195ugly1248ugly82ugly109ugly27ugly38park_seg_a02_0_100_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_a02_0_100) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_a02_0_100) (not (is-moving ?a))))
 (:action
  ugly1229ugly1184ugly1280ugly1175ugly1155ugly71ugly140ugly129ugly115move_seg_c4_c5_0_50_seg_c5_c_b02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_c5_0_50) (not_occupied seg_c5_c_b02_0_100)
       (not_blocked seg_c5_c_b02_0_100 airplane_cfbeg)
       (not_blocked seg_c5_c_b02_0_100 airplane_daewh)
       (not_blocked seg_c5_c_b02_0_100 airplane_dfboy)
       (not_blocked seg_c5_c_b02_0_100 airplane_wurst)
       (not_blocked seg_c5_c_b02_0_100 airplane_holgi)
       (not_blocked seg_c5_c_b02_0_100 airplane_4xekd)
       (not_occupied seg_c5_c6_0_50) (not_occupied seg_c5_c_a02_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c4_c5_0_50))
       (not_occupied seg_c4_c5_0_50) (not (at-segment ?a seg_c4_c5_0_50))
       (occupied seg_c5_c_b02_0_100) (not (not_occupied seg_c5_c_b02_0_100))
       (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))
       (at-segment ?a seg_c5_c_b02_0_100) (not (blocked seg_c3_c4_0_50 ?a))
       (not_blocked seg_c3_c4_0_50 ?a) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))))
 (:action
  ugly1230ugly1197ugly1171ugly1156ugly1262ugly92ugly55ugly63ugly102startup_seg_n2_n3_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_0_85)
       (not_occupied seg_n2_n3_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_6_0_86 ?a)
       (not (not_blocked seg_n2_n3_6_0_86 ?a))))
 (:action
  ugly1231ugly1166ugly1190ugly1261ugly1278ugly122ugly23ugly133ugly85move_seg_n2_n3_4_0_85_seg_n2_n3_3_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_4_0_85) (not_occupied seg_n2_n3_3_0_86)
       (not_blocked seg_n2_n3_3_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_3_0_86 airplane_daewh)
       (not_blocked seg_n2_n3_3_0_86 airplane_dfboy)
       (not_blocked seg_n2_n3_3_0_86 airplane_wurst)
       (not_blocked seg_n2_n3_3_0_86 airplane_holgi)
       (not_blocked seg_n2_n3_3_0_86 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_4_0_85))
       (not_occupied seg_n2_n3_4_0_85) (not (at-segment ?a seg_n2_n3_4_0_85))
       (occupied seg_n2_n3_3_0_86) (not (not_occupied seg_n2_n3_3_0_86))
       (blocked seg_n2_n3_3_0_86 ?a) (not (not_blocked seg_n2_n3_3_0_86 ?a))
       (at-segment ?a seg_n2_n3_3_0_86) (not (blocked seg_n2_n3_5_0_86 ?a))
       (not_blocked seg_n2_n3_5_0_86 ?a)))
 (:action
  ugly1232ugly1172ugly1177ugly1217ugly1191ugly67ugly100ugly2ugly19startup_seg_a01_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a01_0_100)
       (not_occupied seg_c3_c_a01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))))
 (:action
  ugly1233ugly1205ugly1284ugly1214ugly1216ugly133ugly85ugly13ugly89move_seg_27_0_150_seg_b_27_0_100_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_27_0_150) (not_occupied seg_b_27_0_100)
       (not_blocked seg_b_27_0_100 airplane_cfbeg)
       (not_blocked seg_b_27_0_100 airplane_daewh)
       (not_blocked seg_b_27_0_100 airplane_dfboy)
       (not_blocked seg_b_27_0_100 airplane_wurst)
       (not_blocked seg_b_27_0_100 airplane_holgi)
       (not_blocked seg_b_27_0_100 airplane_4xekd)
       (not_occupied seg_27help_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_27_0_150))
       (not_occupied seg_27_0_150) (not (at-segment ?a seg_27_0_150))
       (occupied seg_b_27_0_100) (not (not_occupied seg_b_27_0_100))
       (blocked seg_b_27_0_100 ?a) (not (not_blocked seg_b_27_0_100 ?a))
       (at-segment ?a seg_b_27_0_100) (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_09_0_150 ?a)) (not_blocked seg_09_0_150 ?a)
       (not (blocked seg_rwy_0_1300 ?a)) (not_blocked seg_rwy_0_1300 ?a)
       (blocked seg_27help_0_100 ?a) (not (not_blocked seg_27help_0_100 ?a))))
 (:action
  ugly1234ugly1250ugly1240ugly1194ugly1260ugly21ugly87ugly125ugly104move_seg_n_n4_0_100_seg_n_c_0_100_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n4_0_100) (not_occupied seg_n_c_0_100)
       (not_blocked seg_n_c_0_100 airplane_cfbeg)
       (not_blocked seg_n_c_0_100 airplane_daewh)
       (not_blocked seg_n_c_0_100 airplane_dfboy)
       (not_blocked seg_n_c_0_100 airplane_wurst)
       (not_blocked seg_n_c_0_100 airplane_holgi)
       (not_blocked seg_n_c_0_100 airplane_4xekd)
       (not_occupied seg_n3_n_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n4_0_100))
       (not_occupied seg_n_n4_0_100) (not (at-segment ?a seg_n_n4_0_100))
       (occupied seg_n_c_0_100) (not (not_occupied seg_n_c_0_100))
       (blocked seg_n_c_0_100 ?a) (not (not_blocked seg_n_c_0_100 ?a))
       (at-segment ?a seg_n_c_0_100) (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n4_n5_1_0_85 ?a)) (not_blocked seg_n4_n5_1_0_85 ?a)
       (blocked seg_n3_n_0_100 ?a) (not (not_blocked seg_n3_n_0_100 ?a))))
 (:action
  ugly1235ugly1189ugly1165ugly1268ugly1150ugly140ugly129ugly115ugly52startup_seg_a_09_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a_09_0_100)
       (not_occupied seg_09help_0_100) (not_occupied seg_09_0_150))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_09help_0_100 ?a)
       (not (not_blocked seg_09help_0_100 ?a)) (blocked seg_09_0_150 ?a)
       (not (not_blocked seg_09_0_150 ?a))))
 (:action
  ugly1236ugly1180ugly1220ugly1186ugly1168ugly116ugly70ugly10ugly132startup_seg_n2_n3_2_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_2_0_86)
       (not_occupied seg_n2_n3_1_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_1_0_86 ?a)
       (not (not_blocked seg_n2_n3_1_0_86 ?a))))
 (:action
  ugly1237ugly1153ugly1218ugly1188ugly1259ugly91ugly138ugly14ugly142park_seg_a02_0_100_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_a02_0_100) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_a02_0_100) (not (is-moving ?a))
       (not (blocked seg_c5_c_a02_0_100 ?a))
       (not_blocked seg_c5_c_a02_0_100 ?a)))
 (:action
  ugly1238ugly1247ugly1198ugly1242ugly1221ugly139ugly121ugly122ugly23startup_seg_n4_n5_2_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_2_0_86)
       (not_occupied seg_n4_n5_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_3_0_86 ?a)
       (not (not_blocked seg_n4_n5_3_0_86 ?a))))
 (:action
  ugly1239ugly1206ugly1154ugly1256ugly1257ugly1ugly90ugly17ugly126startup_seg_b_27_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b_27_0_100)
       (not_occupied seg_n6_b_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n6_b_0_100 ?a)
       (not (not_blocked seg_n6_b_0_100 ?a))))
 (:action
  ugly1240ugly1194ugly1260ugly1163ugly1204ugly17ugly126ugly64ugly80startup_seg_n2_n3_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_0_85)
       (not_occupied seg_n3_n_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a))))
 (:action
  ugly1241ugly1183ugly1199ugly1263ugly1202ugly101ugly88ugly59ugly28move_seg_b01_0_100_seg_c3_c_b01_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b01_0_100) (not_occupied seg_c3_c_b01_0_100)
       (not_blocked seg_c3_c_b01_0_100 airplane_cfbeg)
       (not_blocked seg_c3_c_b01_0_100 airplane_daewh)
       (not_blocked seg_c3_c_b01_0_100 airplane_dfboy)
       (not_blocked seg_c3_c_b01_0_100 airplane_wurst)
       (not_blocked seg_c3_c_b01_0_100 airplane_holgi)
       (not_blocked seg_c3_c_b01_0_100 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_b01_0_100))
       (not_occupied seg_b01_0_100) (not (at-segment ?a seg_b01_0_100))
       (occupied seg_c3_c_b01_0_100) (not (not_occupied seg_c3_c_b01_0_100))
       (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))
       (at-segment ?a seg_c3_c_b01_0_100)))
 (:action
  ugly1242ugly1221ugly1281ugly1239ugly1206ugly12ugly117ugly5ugly29startup_seg_c3_c4_0_50_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_c4_0_50)
       (not_occupied seg_c4_c5_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a))))
 (:action
  ugly1243ugly1176ugly1249ugly1235ugly1189ugly23ugly133ugly85ugly13startup_seg_c2_c3_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_c3_0_100)
       (not_occupied seg_c3_c4_0_50) (not_occupied seg_c3_c_a01_0_100)
       (not_occupied seg_c3_c_b01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a)) (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))
       (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))))
 (:action
  ugly1244ugly1200ugly1272ugly1229ugly1184ugly138ugly14ugly142ugly112move_seg_c2_c3_0_100_seg_c_c2_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c2_c3_0_100) (not_occupied seg_c_c2_0_100)
       (not_blocked seg_c_c2_0_100 airplane_cfbeg)
       (not_blocked seg_c_c2_0_100 airplane_daewh)
       (not_blocked seg_c_c2_0_100 airplane_dfboy)
       (not_blocked seg_c_c2_0_100 airplane_wurst)
       (not_blocked seg_c_c2_0_100 airplane_holgi)
       (not_blocked seg_c_c2_0_100 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c2_c3_0_100))
       (not_occupied seg_c2_c3_0_100) (not (at-segment ?a seg_c2_c3_0_100))
       (occupied seg_c_c2_0_100) (not (not_occupied seg_c_c2_0_100))
       (blocked seg_c_c2_0_100 ?a) (not (not_blocked seg_c_c2_0_100 ?a))
       (at-segment ?a seg_c_c2_0_100) (not (blocked seg_c3_c4_0_50 ?a))
       (not_blocked seg_c3_c4_0_50 ?a) (not (blocked seg_c3_c_a01_0_100 ?a))
       (not_blocked seg_c3_c_a01_0_100 ?a)
       (not (blocked seg_c3_c_b01_0_100 ?a))
       (not_blocked seg_c3_c_b01_0_100 ?a)))
 (:action
  ugly1245ugly1146ugly1195ugly1248ugly1224ugly123ugly42ugly139ugly121startup_seg_b02_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b02_0_100)
       (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action
  ugly1246ugly1169ugly1237ugly1153ugly1218ugly46ugly130ugly106ugly37startup_seg_n4_n5_4_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_4_0_85)
       (not_occupied seg_n4_n5_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_5_0_86 ?a)
       (not (not_blocked seg_n4_n5_5_0_86 ?a))))
 (:action
  ugly1247ugly1198ugly1242ugly1221ugly1281ugly97ugly47ugly21ugly87startup_seg_n2_n3_3_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_3_0_86)
       (not_occupied seg_n2_n3_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_4_0_85 ?a)
       (not (not_blocked seg_n2_n3_4_0_85 ?a))))
 (:action
  ugly1248ugly1224ugly1265ugly1236ugly1180ugly78ugly31ugly120ugly11move_seg_n1_a_0_100_seg_a_09_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n1_a_0_100) (not_occupied seg_a_09_0_100)
       (not_blocked seg_a_09_0_100 airplane_cfbeg)
       (not_blocked seg_a_09_0_100 airplane_daewh)
       (not_blocked seg_a_09_0_100 airplane_dfboy)
       (not_blocked seg_a_09_0_100 airplane_wurst)
       (not_blocked seg_a_09_0_100 airplane_holgi)
       (not_blocked seg_a_09_0_100 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n1_a_0_100))
       (not_occupied seg_n1_a_0_100) (not (at-segment ?a seg_n1_a_0_100))
       (occupied seg_a_09_0_100) (not (not_occupied seg_a_09_0_100))
       (blocked seg_a_09_0_100 ?a) (not (not_blocked seg_a_09_0_100 ?a))
       (at-segment ?a seg_a_09_0_100) (not (blocked seg_n1_n2_0_100 ?a))
       (not_blocked seg_n1_n2_0_100 ?a)))
 (:action
  ugly1249ugly1235ugly1189ugly1165ugly1268ugly8ugly67ugly100ugly2move_seg_a_09_0_100_seg_09_0_150_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a_09_0_100) (not_occupied seg_09_0_150)
       (not_blocked seg_09_0_150 airplane_cfbeg)
       (not_blocked seg_09_0_150 airplane_daewh)
       (not_blocked seg_09_0_150 airplane_dfboy)
       (not_blocked seg_09_0_150 airplane_wurst)
       (not_blocked seg_09_0_150 airplane_holgi)
       (not_blocked seg_09_0_150 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a_09_0_100))
       (not_occupied seg_a_09_0_100) (not (at-segment ?a seg_a_09_0_100))
       (occupied seg_09_0_150) (not (not_occupied seg_09_0_150))
       (blocked seg_09_0_150 ?a) (not (not_blocked seg_09_0_150 ?a))
       (at-segment ?a seg_09_0_150) (not (blocked seg_n1_a_0_100 ?a))
       (not_blocked seg_n1_a_0_100 ?a)))
 (:action
  ugly1250ugly1240ugly1194ugly1260ugly1163ugly62ugly116ugly70ugly10startup_seg_n2_n3_6_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_6_0_86)
       (not_occupied seg_n2_n3_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_5_0_86 ?a)
       (not (not_blocked seg_n2_n3_5_0_86 ?a))))
 (:action
  ugly1251ugly1230ugly1197ugly1171ugly1156ugly120ugly11ugly18ugly56move_seg_c5_c_b02_0_100_seg_b02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c5_c_b02_0_100) (not_occupied seg_b02_0_100)
       (not_blocked seg_b02_0_100 airplane_cfbeg)
       (not_blocked seg_b02_0_100 airplane_daewh)
       (not_blocked seg_b02_0_100 airplane_dfboy)
       (not_blocked seg_b02_0_100 airplane_wurst)
       (not_blocked seg_b02_0_100 airplane_holgi)
       (not_blocked seg_b02_0_100 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c5_c_b02_0_100))
       (not_occupied seg_c5_c_b02_0_100)
       (not (at-segment ?a seg_c5_c_b02_0_100)) (occupied seg_b02_0_100)
       (not (not_occupied seg_b02_0_100)) (blocked seg_b02_0_100 ?a)
       (not (not_blocked seg_b02_0_100 ?a)) (at-segment ?a seg_b02_0_100)
       (not (blocked seg_c4_c5_0_50 ?a)) (not_blocked seg_c4_c5_0_50 ?a)
       (not (blocked seg_c5_c6_0_50 ?a)) (not_blocked seg_c5_c6_0_50 ?a)
       (not (blocked seg_c5_c_a02_0_100 ?a))
       (not_blocked seg_c5_c_a02_0_100 ?a)))
 (:action
  ugly1252ugly1222ugly1276ugly1161ugly1167ugly69ugly36ugly136ugly73pushback_seg_b02_0_100_seg_c5_c_b02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_b02_0_100) (not_occupied seg_c5_c_b02_0_100)
       (not_blocked seg_c5_c_b02_0_100 airplane_cfbeg)
       (not_blocked seg_c5_c_b02_0_100 airplane_daewh)
       (not_blocked seg_c5_c_b02_0_100 airplane_dfboy)
       (not_blocked seg_c5_c_b02_0_100 airplane_wurst)
       (not_blocked seg_c5_c_b02_0_100 airplane_holgi)
       (not_blocked seg_c5_c_b02_0_100 airplane_4xekd))
  :effect
  (and (not (occupied seg_b02_0_100)) (not_occupied seg_b02_0_100)
       (not (blocked seg_b02_0_100 ?a)) (not_blocked seg_b02_0_100 ?a)
       (not (at-segment ?a seg_b02_0_100)) (occupied seg_c5_c_b02_0_100)
       (not (not_occupied seg_c5_c_b02_0_100)) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))
       (at-segment ?a seg_c5_c_b02_0_100)))
 (:action
  ugly1253ugly1203ugly1246ugly1169ugly1237ugly11ugly18ugly56ugly53move_seg_c6_c7_0_100_seg_c5_c6_0_50_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c6_c7_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg)
       (not_blocked seg_c5_c6_0_50 airplane_daewh)
       (not_blocked seg_c5_c6_0_50 airplane_dfboy)
       (not_blocked seg_c5_c6_0_50 airplane_wurst)
       (not_blocked seg_c5_c6_0_50 airplane_holgi)
       (not_blocked seg_c5_c6_0_50 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c6_c7_0_100))
       (not_occupied seg_c6_c7_0_100) (not (at-segment ?a seg_c6_c7_0_100))
       (occupied seg_c5_c6_0_50) (not (not_occupied seg_c5_c6_0_50))
       (blocked seg_c5_c6_0_50 ?a) (not (not_blocked seg_c5_c6_0_50 ?a))
       (at-segment ?a seg_c5_c6_0_50)))
 (:action
  ugly1254ugly1241ugly1183ugly1199ugly1263ugly60ugly77ugly49ugly16startup_seg_c3_c4_0_50_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_c4_0_50)
       (not_occupied seg_c2_c3_0_100) (not_occupied seg_c3_c_a01_0_100)
       (not_occupied seg_c3_c_b01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_c3_0_100 ?a)
       (not (not_blocked seg_c2_c3_0_100 ?a)) (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))
       (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))))
 (:action
  ugly1255ugly1226ugly1170ugly1271ugly1181ugly15ugly84ugly4ugly86startup_seg_n4_n5_1_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_1_0_85)
       (not_occupied seg_n4_n5_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_2_0_86 ?a)
       (not (not_blocked seg_n4_n5_2_0_86 ?a))))
 (:action
  ugly1256ugly1257ugly1143ugly1164ugly1252ugly80ugly71ugly140ugly129park_seg_b01_0_100_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_b01_0_100) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_b01_0_100) (not (is-moving ?a))))
 (:action
  ugly1257ugly1143ugly1164ugly1252ugly1222ugly134ugly123ugly42ugly139startup_seg_b02_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b02_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1258ugly1238ugly1247ugly1198ugly1242ugly79ugly131ugly40ugly113move_seg_n5_n6_0_100_seg_n4_n5_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n5_n6_0_100) (not_occupied seg_n4_n5_0_86)
       (not_blocked seg_n4_n5_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_0_86 airplane_daewh)
       (not_blocked seg_n4_n5_0_86 airplane_dfboy)
       (not_blocked seg_n4_n5_0_86 airplane_wurst)
       (not_blocked seg_n4_n5_0_86 airplane_holgi)
       (not_blocked seg_n4_n5_0_86 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n5_n6_0_100))
       (not_occupied seg_n5_n6_0_100) (not (at-segment ?a seg_n5_n6_0_100))
       (occupied seg_n4_n5_0_86) (not (not_occupied seg_n4_n5_0_86))
       (blocked seg_n4_n5_0_86 ?a) (not (not_blocked seg_n4_n5_0_86 ?a))
       (at-segment ?a seg_n4_n5_0_86) (not (blocked seg_n6_b_0_100 ?a))
       (not_blocked seg_n6_b_0_100 ?a)))
 (:action
  ugly1259ugly1233ugly1205ugly1284ugly1214ugly74ugly83ugly93ugly96startup_seg_n4_n5_3_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_3_0_86)
       (not_occupied seg_n4_n5_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_4_0_85 ?a)
       (not (not_blocked seg_n4_n5_4_0_85 ?a))))
 (:action
  ugly1260ugly1163ugly1204ugly1159ugly1182ugly124ugly39ugly128ugly98move_seg_n2_n3_2_0_86_seg_n2_n3_1_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_2_0_86) (not_occupied seg_n2_n3_1_0_86)
       (not_blocked seg_n2_n3_1_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_1_0_86 airplane_daewh)
       (not_blocked seg_n2_n3_1_0_86 airplane_dfboy)
       (not_blocked seg_n2_n3_1_0_86 airplane_wurst)
       (not_blocked seg_n2_n3_1_0_86 airplane_holgi)
       (not_blocked seg_n2_n3_1_0_86 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_2_0_86))
       (not_occupied seg_n2_n3_2_0_86) (not (at-segment ?a seg_n2_n3_2_0_86))
       (occupied seg_n2_n3_1_0_86) (not (not_occupied seg_n2_n3_1_0_86))
       (blocked seg_n2_n3_1_0_86 ?a) (not (not_blocked seg_n2_n3_1_0_86 ?a))
       (at-segment ?a seg_n2_n3_1_0_86) (not (blocked seg_n2_n3_3_0_86 ?a))
       (not_blocked seg_n2_n3_3_0_86 ?a)))
 (:action
  ugly1261ugly1278ugly1264ugly1148ugly1178ugly32ugly34ugly82ugly109move_seg_n4_n5_6_0_86_seg_n4_n5_5_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_6_0_86) (not_occupied seg_n4_n5_5_0_86)
       (not_blocked seg_n4_n5_5_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_5_0_86 airplane_daewh)
       (not_blocked seg_n4_n5_5_0_86 airplane_dfboy)
       (not_blocked seg_n4_n5_5_0_86 airplane_wurst)
       (not_blocked seg_n4_n5_5_0_86 airplane_holgi)
       (not_blocked seg_n4_n5_5_0_86 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_6_0_86))
       (not_occupied seg_n4_n5_6_0_86) (not (at-segment ?a seg_n4_n5_6_0_86))
       (occupied seg_n4_n5_5_0_86) (not (not_occupied seg_n4_n5_5_0_86))
       (blocked seg_n4_n5_5_0_86 ?a) (not (not_blocked seg_n4_n5_5_0_86 ?a))
       (at-segment ?a seg_n4_n5_5_0_86) (not (blocked seg_n4_n5_0_86 ?a))
       (not_blocked seg_n4_n5_0_86 ?a)))
 (:action
  ugly1262ugly1234ugly1250ugly1240ugly1194ugly118ugly105ugly94ugly26startup_seg_n_c_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_c_0_100)
       (not_occupied seg_n3_n_0_100) (not_occupied seg_n_n4_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a)) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a))))
 (:action
  ugly1263ugly1202ugly1243ugly1176ugly1249ugly93ugly96ugly135ugly119startup_seg_n3_n_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n3_n_0_100)
       (not_occupied seg_n2_n3_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_0_85 ?a)
       (not (not_blocked seg_n2_n3_0_85 ?a))))
 (:action
  ugly1264ugly1148ugly1178ugly1174ugly1158ugly132ugly124ugly39ugly128startup_seg_c4_c5_0_50_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_c5_0_50)
       (not_occupied seg_c3_c4_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a))))
 (:action
  ugly1265ugly1236ugly1180ugly1220ugly1186ugly26ugly78ugly31ugly120move_seg_n2_n3_6_0_86_seg_n2_n3_5_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_6_0_86) (not_occupied seg_n2_n3_5_0_86)
       (not_blocked seg_n2_n3_5_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_5_0_86 airplane_daewh)
       (not_blocked seg_n2_n3_5_0_86 airplane_dfboy)
       (not_blocked seg_n2_n3_5_0_86 airplane_wurst)
       (not_blocked seg_n2_n3_5_0_86 airplane_holgi)
       (not_blocked seg_n2_n3_5_0_86 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_6_0_86))
       (not_occupied seg_n2_n3_6_0_86) (not (at-segment ?a seg_n2_n3_6_0_86))
       (occupied seg_n2_n3_5_0_86) (not (not_occupied seg_n2_n3_5_0_86))
       (blocked seg_n2_n3_5_0_86 ?a) (not (not_blocked seg_n2_n3_5_0_86 ?a))
       (at-segment ?a seg_n2_n3_5_0_86) (not (blocked seg_n2_n3_0_85 ?a))
       (not_blocked seg_n2_n3_0_85 ?a)))
 (:action
  ugly1266ugly1179ugly1149ugly1225ugly1193ugly50ugly62ugly116ugly70move_seg_n2_n3_0_85_seg_n2_n3_6_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_0_85) (not_occupied seg_n2_n3_6_0_86)
       (not_blocked seg_n2_n3_6_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_6_0_86 airplane_daewh)
       (not_blocked seg_n2_n3_6_0_86 airplane_dfboy)
       (not_blocked seg_n2_n3_6_0_86 airplane_wurst)
       (not_blocked seg_n2_n3_6_0_86 airplane_holgi)
       (not_blocked seg_n2_n3_6_0_86 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_0_85))
       (not_occupied seg_n2_n3_0_85) (not (at-segment ?a seg_n2_n3_0_85))
       (occupied seg_n2_n3_6_0_86) (not (not_occupied seg_n2_n3_6_0_86))
       (blocked seg_n2_n3_6_0_86 ?a) (not (not_blocked seg_n2_n3_6_0_86 ?a))
       (at-segment ?a seg_n2_n3_6_0_86) (not (blocked seg_n3_n_0_100 ?a))
       (not_blocked seg_n3_n_0_100 ?a)))
 (:action
  ugly1267ugly1232ugly1172ugly1177ugly1217ugly49ugly16ugly92ugly55startup_seg_b_27_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b_27_0_100)
       (not_occupied seg_27_0_150) (not_occupied seg_27help_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_27_0_150 ?a)
       (not (not_blocked seg_27_0_150 ?a)) (blocked seg_27help_0_100 ?a)
       (not (not_blocked seg_27help_0_100 ?a))))
 (:action
  ugly1268ugly1150ugly1282ugly1244ugly1200ugly130ugly106ugly37ugly137startup_seg_c4_c5_0_50_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_c5_0_50)
       (not_occupied seg_c5_c6_0_50) (not_occupied seg_c5_c_a02_0_100)
       (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))
       (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action
  ugly1269ugly1267ugly1232ugly1172ugly1177ugly75ugly43ugly114ugly60startup_seg_n_c_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_c_0_100)
       (not_occupied seg_c_c2_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_0_100 ?a)
       (not (not_blocked seg_c_c2_0_100 ?a))))
 (:action
  ugly1270ugly1270ugly1270ugly1270ugly1270ugly128ugly98ugly15ugly84move_seg_c4_c5_0_50_seg_c3_c4_0_50_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c4_c5_0_50) (not_occupied seg_c3_c4_0_50)
       (not_blocked seg_c3_c4_0_50 airplane_cfbeg)
       (not_blocked seg_c3_c4_0_50 airplane_daewh)
       (not_blocked seg_c3_c4_0_50 airplane_dfboy)
       (not_blocked seg_c3_c4_0_50 airplane_wurst)
       (not_blocked seg_c3_c4_0_50 airplane_holgi)
       (not_blocked seg_c3_c4_0_50 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c4_c5_0_50))
       (not_occupied seg_c4_c5_0_50) (not (at-segment ?a seg_c4_c5_0_50))
       (occupied seg_c3_c4_0_50) (not (not_occupied seg_c3_c4_0_50))
       (blocked seg_c3_c4_0_50 ?a) (not (not_blocked seg_c3_c4_0_50 ?a))
       (at-segment ?a seg_c3_c4_0_50) (not (blocked seg_c5_c6_0_50 ?a))
       (not_blocked seg_c5_c6_0_50 ?a) (not (blocked seg_c5_c_a02_0_100 ?a))
       (not_blocked seg_c5_c_a02_0_100 ?a)
       (not (blocked seg_c5_c_b02_0_100 ?a))
       (not_blocked seg_c5_c_b02_0_100 ?a)))
 (:action
  ugly1271ugly1181ugly1157ugly1255ugly1226ugly28ugly46ugly130ugly106move_seg_c3_c_a01_0_100_seg_a01_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c3_c_a01_0_100) (not_occupied seg_a01_0_100)
       (not_blocked seg_a01_0_100 airplane_cfbeg)
       (not_blocked seg_a01_0_100 airplane_daewh)
       (not_blocked seg_a01_0_100 airplane_dfboy)
       (not_blocked seg_a01_0_100 airplane_wurst)
       (not_blocked seg_a01_0_100 airplane_holgi)
       (not_blocked seg_a01_0_100 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c3_c_a01_0_100))
       (not_occupied seg_c3_c_a01_0_100)
       (not (at-segment ?a seg_c3_c_a01_0_100)) (occupied seg_a01_0_100)
       (not (not_occupied seg_a01_0_100)) (blocked seg_a01_0_100 ?a)
       (not (not_blocked seg_a01_0_100 ?a)) (at-segment ?a seg_a01_0_100)
       (not (blocked seg_c2_c3_0_100 ?a)) (not_blocked seg_c2_c3_0_100 ?a)
       (not (blocked seg_c3_c4_0_50 ?a)) (not_blocked seg_c3_c4_0_50 ?a)
       (not (blocked seg_c3_c_b01_0_100 ?a))
       (not_blocked seg_c3_c_b01_0_100 ?a)))
 (:action
  ugly1272ugly1229ugly1184ugly1280ugly1175ugly13ugly89ugly22ugly7startup_seg_c5_c6_0_50_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c6_0_50)
       (not_occupied seg_c6_c7_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c6_c7_0_100 ?a)
       (not (not_blocked seg_c6_c7_0_100 ?a))))
 (:action
  ugly1273ugly1279ugly1173ugly1208ugly1273ugly137ugly97ugly47ugly21startup_seg_c_c2_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_0_100)
       (not_occupied seg_c2_c3_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_c3_0_100 ?a)
       (not (not_blocked seg_c2_c3_0_100 ?a))))
 (:action
  ugly1274ugly1253ugly1203ugly1246ugly1169ugly95ugly50ugly62ugly116startup_seg_n2_n3_1_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_1_0_86)
       (not_occupied seg_n1_n2_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_n2_0_100 ?a)
       (not (not_blocked seg_n1_n2_0_100 ?a))))
 (:action
  ugly1275ugly1160ugly1277ugly1152ugly1212ugly77ugly49ugly16ugly92pushback_seg_c5_c_a02_0_100_seg_c5_c6_0_50_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_c5_c_a02_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg)
       (not_blocked seg_c5_c6_0_50 airplane_daewh)
       (not_blocked seg_c5_c6_0_50 airplane_dfboy)
       (not_blocked seg_c5_c6_0_50 airplane_wurst)
       (not_blocked seg_c5_c6_0_50 airplane_holgi)
       (not_blocked seg_c5_c6_0_50 airplane_4xekd))
  :effect
  (and (not (occupied seg_c5_c_a02_0_100)) (not_occupied seg_c5_c_a02_0_100)
       (not (blocked seg_c5_c_a02_0_100 ?a))
       (not_blocked seg_c5_c_a02_0_100 ?a)
       (not (at-segment ?a seg_c5_c_a02_0_100)) (occupied seg_c5_c6_0_50)
       (not (not_occupied seg_c5_c6_0_50)) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (at-segment ?a seg_c5_c6_0_50)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly1276ugly1161ugly1167ugly1211ugly1231ugly24ugly134ugly123ugly42startup_seg_n4_n5_5_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_5_0_86)
       (not_occupied seg_n4_n5_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_6_0_86 ?a)
       (not (not_blocked seg_n4_n5_6_0_86 ?a))))
 (:action
  ugly1277ugly1152ugly1212ugly1219ugly1145ugly127ugly48ugly51ugly30startup_seg_n2_n3_1_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_1_0_86)
       (not_occupied seg_n2_n3_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_2_0_86 ?a)
       (not (not_blocked seg_n2_n3_2_0_86 ?a))))
 (:action
  ugly1278ugly1264ugly1148ugly1178ugly1174ugly16ugly92ugly55ugly63startup_seg_c5_c_a02_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c_a02_0_100)
       (not_occupied seg_c4_c5_0_50) (not_occupied seg_c5_c6_0_50)
       (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a)) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action
  ugly1279ugly1173ugly1208ugly1273ugly1279ugly31ugly120ugly11ugly18pushback_seg_c5_c6_0_50_seg_c6_c7_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_c5_c6_0_50) (not_occupied seg_c6_c7_0_100)
       (not_blocked seg_c6_c7_0_100 airplane_cfbeg)
       (not_blocked seg_c6_c7_0_100 airplane_daewh)
       (not_blocked seg_c6_c7_0_100 airplane_dfboy)
       (not_blocked seg_c6_c7_0_100 airplane_wurst)
       (not_blocked seg_c6_c7_0_100 airplane_holgi)
       (not_blocked seg_c6_c7_0_100 airplane_4xekd))
  :effect
  (and (not (occupied seg_c5_c6_0_50)) (not_occupied seg_c5_c6_0_50)
       (not (blocked seg_c5_c6_0_50 ?a)) (not_blocked seg_c5_c6_0_50 ?a)
       (not (at-segment ?a seg_c5_c6_0_50)) (occupied seg_c6_c7_0_100)
       (not (not_occupied seg_c6_c7_0_100)) (blocked seg_c6_c7_0_100 ?a)
       (not (not_blocked seg_c6_c7_0_100 ?a)) (at-segment ?a seg_c6_c7_0_100)))
 (:action
  ugly1280ugly1175ugly1155ugly1213ugly1196ugly112ugly6ugly95ugly50startup_seg_a_09_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a_09_0_100)
       (not_occupied seg_n1_a_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_a_0_100 ?a)
       (not (not_blocked seg_n1_a_0_100 ?a))))
 (:action
  ugly1281ugly1239ugly1206ugly1154ugly1256ugly115ugly52ugly61ugly103startup_seg_n1_n2_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_n2_0_100)
       (not_occupied seg_n2_n3_1_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_1_0_86 ?a)
       (not (not_blocked seg_n2_n3_1_0_86 ?a))))
 (:action
  ugly1282ugly1244ugly1200ugly1272ugly1229ugly42ugly139ugly121ugly122move_seg_b_27_0_100_seg_n6_b_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b_27_0_100) (not_occupied seg_n6_b_0_100)
       (not_blocked seg_n6_b_0_100 airplane_cfbeg)
       (not_blocked seg_n6_b_0_100 airplane_daewh)
       (not_blocked seg_n6_b_0_100 airplane_dfboy)
       (not_blocked seg_n6_b_0_100 airplane_wurst)
       (not_blocked seg_n6_b_0_100 airplane_holgi)
       (not_blocked seg_n6_b_0_100 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_b_27_0_100))
       (not_occupied seg_b_27_0_100) (not (at-segment ?a seg_b_27_0_100))
       (occupied seg_n6_b_0_100) (not (not_occupied seg_n6_b_0_100))
       (blocked seg_n6_b_0_100 ?a) (not (not_blocked seg_n6_b_0_100 ?a))
       (at-segment ?a seg_n6_b_0_100) (not (blocked seg_27_0_150 ?a))
       (not_blocked seg_27_0_150 ?a) (not (blocked seg_27help_0_100 ?a))
       (not_blocked seg_27help_0_100 ?a)))
 (:action
  ugly1283ugly1223ugly1185ugly1215ugly1227ugly9ugly3ugly58ugly32move_seg_n_c_0_100_seg_c_c2_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_c_0_100) (not_occupied seg_c_c2_0_100)
       (not_blocked seg_c_c2_0_100 airplane_cfbeg)
       (not_blocked seg_c_c2_0_100 airplane_daewh)
       (not_blocked seg_c_c2_0_100 airplane_dfboy)
       (not_blocked seg_c_c2_0_100 airplane_wurst)
       (not_blocked seg_c_c2_0_100 airplane_holgi)
       (not_blocked seg_c_c2_0_100 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_c_0_100))
       (not_occupied seg_n_c_0_100) (not (at-segment ?a seg_n_c_0_100))
       (occupied seg_c_c2_0_100) (not (not_occupied seg_c_c2_0_100))
       (blocked seg_c_c2_0_100 ?a) (not (not_blocked seg_c_c2_0_100 ?a))
       (at-segment ?a seg_c_c2_0_100) (not (blocked seg_n3_n_0_100 ?a))
       (not_blocked seg_n3_n_0_100 ?a) (not (blocked seg_n_n4_0_100 ?a))
       (not_blocked seg_n_n4_0_100 ?a)))
 (:action
  ugly1284ugly1214ugly1216ugly1275ugly1160ugly135ugly119ugly74ugly83startup_seg_c3_c_a01_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_c_a01_0_100)
       (not_occupied seg_a01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a01_0_100 ?a)
       (not (not_blocked seg_a01_0_100 ?a))))) 