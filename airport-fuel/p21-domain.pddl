
(define (domain airport_fixed_structure) (:requirements :typing :action-costs)
 (:predicates (not_occupied ?s - segment) (is-moving ?a - airplane)
  (is-start-runway ?s - segment ?d - direction) (is-pushing ?a - airplane)
  (is-parked ?a - airplane ?s - segment)
  (not_blocked ?s - segment ?a - airplane)
  (has-type ?a - airplane ?t - airplanetype)
  (blocked ?s - segment ?a - airplane) (facing ?a - airplane ?d - direction)
  (occupied ?s - segment) (airborne ?a - airplane ?s - segment)
  (at-segment ?a - airplane ?s - segment))
 (:types airplane segment direction airplanetype)
 (:constants north south - direction light medium heavy - airplanetype
  seg_w1_c1a_0_60 seg_w1_c1b_0_60 seg_w1_c1c_0_34 seg_n1_0_108 seg_c1_n2c_0_60
  seg_w1_141a_0_34 seg_w1_141b_0_45 seg_w1_141c_0_34 seg_p141_0_75
  seg_w1_142a_0_34 seg_w1_142b_0_45 seg_w1_142c_0_34 seg_p142_0_75
  seg_w1_143a_0_34 seg_w1_143b_0_45 seg_w1_143c_0_60 seg_p143_0_75
  seg_w1_c2a_0_60 seg_w1_c2b_0_60 seg_w1_c2c_0_34 seg_c2_a_0_80
  seg_w1_151a_0_34 seg_w1_151b_0_45 seg_w1_151c_0_34 seg_p151_0_75
  seg_w1_152a_0_34 seg_w1_152b_0_45 seg_w1_152c_0_34 seg_p152_0_75
  seg_w1_153a_0_34 seg_w1_153b_0_45 seg_w1_153c_0_34 seg_p153_0_75
  seg_w1_154a_0_34 seg_w1_154b_0_45 seg_w1_154c_0_34 seg_p154_0_75
  seg_w1_c3a_0_34 seg_w1_c3b_0_60 seg_w1_c3c_0_48 seg_c3_a_0_80
  seg_w1_161a_0_34 seg_w1_161b_0_45 seg_w1_161c_0_34 seg_p161_0_75
  seg_w1_162a_0_34 seg_w1_162b_0_45 seg_w1_162c_0_34 seg_p162_0_75
  seg_w1_163a_0_34 seg_w1_163b_0_45 seg_w1_163c_0_34 seg_p163_0_75
  seg_w1_164a_0_34 seg_w1_164b_0_45 seg_w1_164c_0_34 seg_p164_0_75
  seg_w1_c4a_0_34 seg_w1_c4b_0_60 seg_c4_s6c_0_60 seg_o1_c1a_0_60
  seg_o1_c1b_0_34 seg_o1_c1c_0_80 seg_p101_0_76 seg_o1_102a_0_34
  seg_c1_n2b_0_80 seg_o1_102b_0_60 seg_o1_102c_0_34 seg_p102_0_76
  seg_o1_103a_0_34 seg_o1_103b_0_60 seg_o1_103c_0_34 seg_p103_0_76
  seg_o1_104a_0_34 seg_o1_104b_0_60 seg_o1_104c_0_60 seg_p104_0_76
  seg_o1_c2a_0_60 seg_o1_c2b_0_60 seg_o1_c2c_0_34 seg_o1_c2d_0_60 seg_p107_0_76
  seg_o1_108a_0_34 seg_c2_b_0_80 seg_o1_108b_0_60 seg_o1_108c_0_34
  seg_o1_108d_0_45 seg_p108_0_76 seg_o1_109a_0_34 seg_p131_0_75
  seg_o1_109b_0_60 seg_o1_109c_0_34 seg_o1_109d_0_45 seg_p109_0_76
  seg_o1_110a_0_34 seg_p132_0_75 seg_o1_110b_0_60 seg_o1_110c_0_34
  seg_o1_110d_0_45 seg_p110_0_76 seg_o1_111a_0_34 seg_p133_0_75
  seg_o1_111b_0_60 seg_o1_111c_0_34 seg_o1_111d_0_45 seg_p111_0_76
  seg_p134_0_75 seg_o1_c3a_0_34 seg_o1_c3b_0_60 seg_o1_c3c_0_48 seg_o1_c3d_0_60
  seg_p112_0_76 seg_o1_115a_0_34 seg_c3_b_0_80 seg_o1_115b_0_60
  seg_o1_115c_0_34 seg_p115_0_76 seg_o1_116a_0_34 seg_o1_116b_0_60
  seg_o1_116c_0_34 seg_p116_0_76 seg_o1_117a_0_34 seg_o1_117b_0_60
  seg_o1_117c_0_34 seg_p117_0_76 seg_o1_118a_0_34 seg_o1_118b_0_60
  seg_o1_118c_0_34 seg_p118_0_76 seg_o1_c4a_0_34 seg_o1_c4b_0_60
  seg_o1_c4c_0_80 seg_p119_0_76 seg_c4_s6a_0_80 seg_c1_n2a_0_60 seg_n2_0_108
  seg_08l_a2a_0_80 seg_08l_a2b_0_80 seg_08l_a2a3_0_970 seg_a2_a_0_90
  seg_08l_a3a_0_80 seg_08l_a3b_0_161_245 seg_08l_0_80 seg_08l_a3a4_0_450
  seg_a3_a_0_158_647 seg_08l_a4a_0_80 seg_08l_a4b_0_161_245
  seg_08l_a4c_0_161_245 seg_08l_a4d_0_80 seg_08l_a6a7_0_450 seg_a6_a_0_158_647
  seg_a4_a_0_157_785 seg_08l_a7a_0_80 seg_08l_a7b_0_161_245
  seg_08l_a7c_0_161_245 seg_08l_a7d_0_80 seg_08l_a7a9_0_270 seg_a8_a_0_157_785
  seg_a7_a_0_156_924 seg_09l_0_80 seg_08l_a9b_0_161_245 seg_08l_a9c_0_80
  seg_08l_a9a10_0_1010 seg_a9_a_0_158_647 seg_08l_a10a_0_80 seg_08l_a10b_0_80
  seg_a10_1_0_80 seg_m_a3a_0_120_934 seg_m_a3b_0_60 seg_m_a3c_0_60
  seg_a3_b_0_159_512 seg_m_a3a4a_0_75 seg_n_a3a_0_60 seg_m_a3a4b_0_75
  seg_m_a3a4c_0_75 seg_m_a3a4d_0_75 seg_m_a3a4e_0_75 seg_m_a3a4f_0_115
  seg_m_a4a_0_120_934 seg_m_a4b_0_60 seg_m_a4c_0_60 seg_m_a4d_0_60
  seg_a4_b_0_79_7559 seg_m_a4a7a_0_75 seg_n_a4a_0_60 seg_m_a4a7b_0_75
  seg_m_a4a7c_0_75 seg_m_a4a7d_0_75 seg_m_a4a7e_0_75 seg_m_a4a7f_0_115
  seg_m_a7a_0_120_934 seg_m_a7b_0_60 seg_m_a7c_0_60 seg_m_a7d_0_60
  seg_a7_b_0_80_6226 seg_m_a7a6a_0_75 seg_n_a7a_0_60 seg_m_a7a6b_0_75
  seg_m_a7a6c_0_75 seg_m_a7a6d_0_85 seg_m_a6a_0_60 seg_m_a6b_0_60
  seg_m_a6c_0_60 seg_m_a6d_0_120_934 seg_m_a6a8a_0_75 seg_n_a6a_0_60
  seg_a6_b_0_159_512 seg_m_a6a8b_0_75 seg_m_a6a8c_0_75 seg_m_a6a8d_0_75
  seg_m_a6a8e_0_75 seg_m_a6a8f_0_115 seg_m_a8a_0_60 seg_m_a8b_0_60
  seg_m_a8c_0_60 seg_m_a8d_0_120_934 seg_m_a8a9a_0_75 seg_n_a8a_0_60
  seg_a8_b_0_80_6226 seg_m_a8a9b_0_75 seg_m_a8a9c_0_75 seg_m_a8a9d_0_85
  seg_m_a9a_0_60 seg_m_a9b_0_60 seg_m_a9c_0_60 seg_m_a9d_0_120_934
  seg_m_a9a10a_0_75 seg_n_a9a_0_60 seg_a9_b_0_159_512 seg_m_a9a10b_0_75
  seg_m_a9a10c_0_75 seg_m_a9a10d_0_75 seg_m_a9a10e_0_75 seg_m_a9a10f_0_75
  seg_m_a9a10g_0_80 seg_m_a10a_0_60 seg_m_a10b_0_60 seg_m_a10c_0_60
  seg_a10_0_80 seg_n_a10a_0_60 seg_n_a2a_0_60 seg_n_a2b_0_60 seg_a2_c_0_100
  seg_n_a2a3a_0_75 seg_n_a2a3b_0_75 seg_n_a2a3c_0_75 seg_n_a2a3d_0_75
  seg_n_a2a3e_0_75 seg_n_a2a3f_0_115 seg_n_a3b_0_60 seg_n_a3c_0_60
  seg_n_a3d_0_60 seg_n_n2c_0_60 seg_n_n2a_0_60 seg_n_n2b_0_60 seg_n_n2a4a_0_70
  seg_n_n2a4b_0_75 seg_n_n2a4c_0_75 seg_n_n2a4d_0_75 seg_n_n2a4e_0_75
  seg_n_a4b_0_60 seg_n_a4c_0_60 seg_n_a4a7a_0_115 seg_n_a4a7b_0_75
  seg_n_a4a7c_0_75 seg_n_a4a7d_0_75 seg_n_a4a7e_0_75 seg_n_a4a7f_0_75
  seg_n_a7b_0_60 seg_n_a7c_0_60 seg_n_a7a6a_0_85 seg_n_a7a6b_0_75
  seg_n_a7a6c_0_75 seg_n_a7a6d_0_75 seg_n_a6b_0_60 seg_n_a6c_0_60
  seg_n_a6a8a_0_115 seg_n_a6a8b_0_75 seg_n_a6a8c_0_75 seg_n_a6a8d_0_75
  seg_n_a6a8e_0_75 seg_n_a6a8f_0_75 seg_n_a8b_0_60 seg_n_a8c_0_60
  seg_n_a8a9a_0_85 seg_n_a8a9b_0_75 seg_n_a8a9c_0_75 seg_n_a8a9d_0_75
  seg_n_a9b_0_60 seg_n_a9c_0_60 seg_n_a9a10a_0_80 seg_n_a9a10b_0_75
  seg_n_a9a10c_0_75 seg_n_a9a10d_0_75 seg_n_a9a10e_0_75 seg_n_a9a10f_0_75
  seg_n_a9a10g_0_75 seg_n_a10b_0_60 seg_a2_b_0_90 seg_a4_b_1_0_80_6226
  seg_a7_b_1_0_80_6226 seg_a8_b_1_0_79_7559 - segment airplane_cfbeg
  airplane_daew7 - airplane)
 (:functions (total-cost) - number)
 (:action
  ugly1432ugly616ugly311ugly167ugly326move_seg_n_a6a8c_0_75_seg_n_a6a8b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8c_0_75) (not_occupied seg_n_a6a8b_0_75)
       (not_blocked seg_n_a6a8b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8c_0_75))
       (not_occupied seg_n_a6a8c_0_75) (not (at-segment ?a seg_n_a6a8c_0_75))
       (occupied seg_n_a6a8b_0_75) (not (not_occupied seg_n_a6a8b_0_75))
       (blocked seg_n_a6a8b_0_75 ?a) (not (not_blocked seg_n_a6a8b_0_75 ?a))
       (at-segment ?a seg_n_a6a8b_0_75) (not (blocked seg_n_a6a8d_0_75 ?a))
       (not_blocked seg_n_a6a8d_0_75 ?a)))
 (:action
  ugly1433ugly663ugly139ugly205ugly641startup_seg_m_a4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4b_0_60)
       (not_occupied seg_m_a4a_0_120_934) (not_occupied seg_m_a4c_0_60)
       (not_occupied seg_m_a4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a_0_120_934 ?a)
       (not (not_blocked seg_m_a4a_0_120_934 ?a)) (blocked seg_m_a4c_0_60 ?a)
       (not (not_blocked seg_m_a4c_0_60 ?a)) (blocked seg_m_a4d_0_60 ?a)
       (not (not_blocked seg_m_a4d_0_60 ?a))))
 (:action
  ugly1434ugly675ugly128ugly138ugly195move_seg_o1_111a_0_34_seg_o1_111b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111b_0_60)
       (not_blocked seg_o1_111b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_111b_0_60 airplane_daew7)
       (not_occupied seg_o1_111c_0_34) (not_occupied seg_o1_111d_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_111a_0_34))
       (not_occupied seg_o1_111a_0_34) (not (at-segment ?a seg_o1_111a_0_34))
       (occupied seg_o1_111b_0_60) (not (not_occupied seg_o1_111b_0_60))
       (blocked seg_o1_111b_0_60 ?a) (not (not_blocked seg_o1_111b_0_60 ?a))
       (at-segment ?a seg_o1_111b_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_110c_0_34 ?a))
       (not_blocked seg_o1_110c_0_34 ?a) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a)) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action
  ugly1435ugly516ugly425ugly693ugly694startup_seg_m_a4a_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a_0_120_934)
       (not_occupied seg_m_a4b_0_60) (not_occupied seg_m_a4c_0_60)
       (not_occupied seg_m_a4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4b_0_60 ?a)
       (not (not_blocked seg_m_a4b_0_60 ?a)) (blocked seg_m_a4c_0_60 ?a)
       (not (not_blocked seg_m_a4c_0_60 ?a)) (blocked seg_m_a4d_0_60 ?a)
       (not (not_blocked seg_m_a4d_0_60 ?a))))
 (:action
  ugly1436ugly257ugly179ugly800ugly83move_seg_w1_141c_0_34_seg_w1_142a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141c_0_34) (not_occupied seg_w1_142a_0_34)
       (not_blocked seg_w1_142a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142a_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_141c_0_34))
       (not_occupied seg_w1_141c_0_34) (not (at-segment ?a seg_w1_141c_0_34))
       (occupied seg_w1_142a_0_34) (not (not_occupied seg_w1_142a_0_34))
       (blocked seg_w1_142a_0_34 ?a) (not (not_blocked seg_w1_142a_0_34 ?a))
       (at-segment ?a seg_w1_142a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_141a_0_34 ?a))
       (not_blocked seg_w1_141a_0_34 ?a) (not (blocked seg_w1_141b_0_45 ?a))
       (not_blocked seg_w1_141b_0_45 ?a)))
 (:action
  ugly1437ugly500ugly201ugly839ugly667move_seg_o1_c2c_0_34_seg_o1_108a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2c_0_34) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c2c_0_34))
       (not_occupied seg_o1_c2c_0_34) (not (at-segment ?a seg_o1_c2c_0_34))
       (occupied seg_o1_108a_0_34) (not (not_occupied seg_o1_108a_0_34))
       (blocked seg_o1_108a_0_34 ?a) (not (not_blocked seg_o1_108a_0_34 ?a))
       (at-segment ?a seg_o1_108a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_c2a_0_60 ?a))
       (not_blocked seg_o1_c2a_0_60 ?a) (not (blocked seg_o1_c2b_0_60 ?a))
       (not_blocked seg_o1_c2b_0_60 ?a) (not (blocked seg_o1_c2d_0_60 ?a))
       (not_blocked seg_o1_c2d_0_60 ?a)))
 (:action
  ugly1438ugly490ugly313ugly764ugly805move_seg_n_n2a_0_60_seg_n_n2b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a_0_60) (not_occupied seg_n_n2b_0_60)
       (not_blocked seg_n_n2b_0_60 airplane_cfbeg)
       (not_blocked seg_n_n2b_0_60 airplane_daew7)
       (not_occupied seg_n_n2c_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2a_0_60))
       (not_occupied seg_n_n2a_0_60) (not (at-segment ?a seg_n_n2a_0_60))
       (occupied seg_n_n2b_0_60) (not (not_occupied seg_n_n2b_0_60))
       (blocked seg_n_n2b_0_60 ?a) (not (not_blocked seg_n_n2b_0_60 ?a))
       (at-segment ?a seg_n_n2b_0_60) (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n_n2a4a_0_70 ?a)) (not_blocked seg_n_n2a4a_0_70 ?a)
       (blocked seg_n_n2c_0_60 ?a) (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action
  ugly1439ugly215ugly549ugly865ugly364startup_seg_o1_118b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118b_0_60)
       (not_occupied seg_o1_118a_0_34) (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action
  ugly1440ugly773ugly29ugly650ugly177startup_seg_n_a3d_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3d_0_60)
       (not_occupied seg_n_a3a_0_60) (not_occupied seg_n_a3b_0_60)
       (not_occupied seg_n_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3a_0_60 ?a)
       (not (not_blocked seg_n_a3a_0_60 ?a)) (blocked seg_n_a3b_0_60 ?a)
       (not (not_blocked seg_n_a3b_0_60 ?a)) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a))))
 (:action
  ugly1441ugly344ugly93ugly597ugly559startup_seg_n_a9b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9b_0_60)
       (not_occupied seg_n_a9a_0_60) (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a)) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action
  ugly1442ugly513ugly935ugly502ugly434move_seg_w1_153b_0_45_seg_w1_153c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153b_0_45) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_daew7)
       (not_occupied seg_w1_153a_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_153b_0_45))
       (not_occupied seg_w1_153b_0_45) (not (at-segment ?a seg_w1_153b_0_45))
       (occupied seg_w1_153c_0_34) (not (not_occupied seg_w1_153c_0_34))
       (blocked seg_w1_153c_0_34 ?a) (not (not_blocked seg_w1_153c_0_34 ?a))
       (at-segment ?a seg_w1_153c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p153_0_75 ?a))
       (not_blocked seg_p153_0_75 ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a))))
 (:action
  ugly1443ugly313ugly764ugly805ugly72startup_seg_n_a3c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3c_0_60)
       (not_occupied seg_n_a3a_0_60) (not_occupied seg_n_a3b_0_60)
       (not_occupied seg_n_a3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3a_0_60 ?a)
       (not (not_blocked seg_n_a3a_0_60 ?a)) (blocked seg_n_a3b_0_60 ?a)
       (not (not_blocked seg_n_a3b_0_60 ?a)) (blocked seg_n_a3d_0_60 ?a)
       (not (not_blocked seg_n_a3d_0_60 ?a))))
 (:action
  ugly1444ugly147ugly561ugly71ugly832startup_seg_m_a7c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7c_0_60)
       (not_occupied seg_n_a7a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a))))
 (:action
  ugly1445ugly454ugly215ugly549ugly865startup_seg_w1_c2c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2c_0_34)
       (not_occupied seg_w1_151a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a))))
 (:action
  ugly1446ugly474ugly15ugly412ugly351startup_seg_o1_118c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118c_0_34)
       (not_occupied seg_o1_c4a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a))))
 (:action
  ugly1447ugly250ugly570ugly687ugly749startup_seg_w1_151b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151b_0_45)
       (not_occupied seg_w1_151a_0_34) (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action
  ugly1448ugly630ugly204ugly701ugly611startup_seg_o1_108b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108b_0_60)
       (not_occupied seg_o1_108a_0_34) (not_occupied seg_o1_108c_0_34)
       (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a)) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action
  ugly1449ugly836ugly604ugly449ugly881move_seg_w1_152a_0_34_seg_w1_151c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_152a_0_34))
       (not_occupied seg_w1_152a_0_34) (not (at-segment ?a seg_w1_152a_0_34))
       (occupied seg_w1_151c_0_34) (not (not_occupied seg_w1_151c_0_34))
       (blocked seg_w1_151c_0_34 ?a) (not (not_blocked seg_w1_151c_0_34 ?a))
       (at-segment ?a seg_w1_151c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_152b_0_45 ?a))
       (not_blocked seg_w1_152b_0_45 ?a) (not (blocked seg_w1_152c_0_34 ?a))
       (not_blocked seg_w1_152c_0_34 ?a)))
 (:action
  ugly1450ugly899ugly460ugly115ugly857startup_seg_08l_a2b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a2b_0_80)
       (not_occupied seg_08l_a2a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a2a_0_80 ?a)
       (not (not_blocked seg_08l_a2a_0_80 ?a))))
 (:action
  ugly1451ugly233ugly457ugly934ugly887startup_seg_o1_108a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108a_0_34)
       (not_occupied seg_o1_108b_0_60) (not_occupied seg_o1_108c_0_34)
       (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a)) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action
  ugly1452ugly617ugly329ugly715ugly950move_seg_n_a7b_0_60_seg_n_a7c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7b_0_60) (not_occupied seg_n_a7c_0_60)
       (not_blocked seg_n_a7c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a7c_0_60 airplane_daew7)
       (not_occupied seg_n_a7a_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a7b_0_60))
       (not_occupied seg_n_a7b_0_60) (not (at-segment ?a seg_n_a7b_0_60))
       (occupied seg_n_a7c_0_60) (not (not_occupied seg_n_a7c_0_60))
       (blocked seg_n_a7c_0_60 ?a) (not (not_blocked seg_n_a7c_0_60 ?a))
       (at-segment ?a seg_n_a7c_0_60) (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n_a7a6a_0_85 ?a)) (not_blocked seg_n_a7a6a_0_85 ?a)
       (blocked seg_n_a7a_0_60 ?a) (not (not_blocked seg_n_a7a_0_60 ?a))))
 (:action
  ugly1453ugly877ugly584ugly736ugly558move_seg_o1_110a_0_34_seg_o1_110b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110b_0_60)
       (not_blocked seg_o1_110b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_110b_0_60 airplane_daew7)
       (not_occupied seg_o1_110c_0_34) (not_occupied seg_o1_110d_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_110a_0_34))
       (not_occupied seg_o1_110a_0_34) (not (at-segment ?a seg_o1_110a_0_34))
       (occupied seg_o1_110b_0_60) (not (not_occupied seg_o1_110b_0_60))
       (blocked seg_o1_110b_0_60 ?a) (not (not_blocked seg_o1_110b_0_60 ?a))
       (at-segment ?a seg_o1_110b_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_109c_0_34 ?a))
       (not_blocked seg_o1_109c_0_34 ?a) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a)) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action
  ugly1454ugly657ugly873ugly99ugly545move_seg_o1_116a_0_34_seg_o1_115c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_116a_0_34))
       (not_occupied seg_o1_116a_0_34) (not (at-segment ?a seg_o1_116a_0_34))
       (occupied seg_o1_115c_0_34) (not (not_occupied seg_o1_115c_0_34))
       (blocked seg_o1_115c_0_34 ?a) (not (not_blocked seg_o1_115c_0_34 ?a))
       (at-segment ?a seg_o1_115c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_116b_0_60 ?a))
       (not_blocked seg_o1_116b_0_60 ?a) (not (blocked seg_o1_116c_0_34 ?a))
       (not_blocked seg_o1_116c_0_34 ?a)))
 (:action ugly1455ugly12ugly616ugly311ugly167startup_seg_n1_0_108_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_0_108)
       (not_occupied seg_w1_c1a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a))))
 (:action
  ugly1456ugly889ugly537ugly883ugly494startup_seg_m_a6a8d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8d_0_75)
       (not_occupied seg_m_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8c_0_75 ?a)
       (not (not_blocked seg_m_a6a8c_0_75 ?a))))
 (:action
  ugly1457ugly872ugly546ugly162ugly824startup_seg_o1_111d_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111d_0_45)
       (not_occupied seg_o1_111a_0_34) (not_occupied seg_o1_111b_0_60)
       (not_occupied seg_o1_111c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a)) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a)) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a))))
 (:action
  ugly1458ugly583ugly882ugly565ugly347move_seg_o1_c4b_0_60_seg_p119_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4b_0_60) (not_occupied seg_p119_0_76)
       (not_blocked seg_p119_0_76 airplane_cfbeg)
       (not_blocked seg_p119_0_76 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c4b_0_60))
       (not_occupied seg_o1_c4b_0_60) (not (at-segment ?a seg_o1_c4b_0_60))
       (occupied seg_p119_0_76) (not (not_occupied seg_p119_0_76))
       (blocked seg_p119_0_76 ?a) (not (not_blocked seg_p119_0_76 ?a))
       (at-segment ?a seg_p119_0_76) (not (blocked seg_o1_c4a_0_34 ?a))
       (not_blocked seg_o1_c4a_0_34 ?a) (not (blocked seg_o1_c4c_0_80 ?a))
       (not_blocked seg_o1_c4c_0_80 ?a)))
 (:action
  ugly1459ugly224ugly624ugly691ugly592startup_seg_a9_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_b_0_159_512)
       (not_occupied seg_m_a9d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9d_0_120_934 ?a)
       (not (not_blocked seg_m_a9d_0_120_934 ?a))))
 (:action
  ugly1460ugly770ugly189ugly385ugly105move_seg_n_a4a7e_0_75_seg_n_a4a7d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7e_0_75) (not_occupied seg_n_a4a7d_0_75)
       (not_blocked seg_n_a4a7d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7e_0_75))
       (not_occupied seg_n_a4a7e_0_75) (not (at-segment ?a seg_n_a4a7e_0_75))
       (occupied seg_n_a4a7d_0_75) (not (not_occupied seg_n_a4a7d_0_75))
       (blocked seg_n_a4a7d_0_75 ?a) (not (not_blocked seg_n_a4a7d_0_75 ?a))
       (at-segment ?a seg_n_a4a7d_0_75) (not (blocked seg_n_a4a7f_0_75 ?a))
       (not_blocked seg_n_a4a7f_0_75 ?a)))
 (:action
  ugly1461ugly827ugly186ugly636ugly617startup_seg_c1_n2c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2c_0_60)
       (not_occupied seg_c1_n2a_0_60) (not_occupied seg_c1_n2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a)) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a))))
 (:action
  ugly1462ugly293ugly711ugly888ugly544startup_seg_p115_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p115_0_76)
       (not_occupied seg_o1_115b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action
  ugly1463ugly216ugly718ugly655ugly102startup_seg_n_a6a8b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8b_0_75)
       (not_occupied seg_n_a6a8a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8a_0_115 ?a)
       (not (not_blocked seg_n_a6a8a_0_115 ?a))))
 (:action
  ugly1464ugly728ugly202ugly310ugly95move_seg_o1_110a_0_34_seg_o1_109c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_110a_0_34))
       (not_occupied seg_o1_110a_0_34) (not (at-segment ?a seg_o1_110a_0_34))
       (occupied seg_o1_109c_0_34) (not (not_occupied seg_o1_109c_0_34))
       (blocked seg_o1_109c_0_34 ?a) (not (not_blocked seg_o1_109c_0_34 ?a))
       (at-segment ?a seg_o1_109c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_110b_0_60 ?a))
       (not_blocked seg_o1_110b_0_60 ?a) (not (blocked seg_o1_110c_0_34 ?a))
       (not_blocked seg_o1_110c_0_34 ?a) (not (blocked seg_o1_110d_0_45 ?a))
       (not_blocked seg_o1_110d_0_45 ?a)))
 (:action ugly1465ugly785ugly567ugly897ugly33startup_seg_p102_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p102_0_76)
       (not_occupied seg_o1_102b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action
  ugly1466ugly652ugly925ugly327ugly907move_seg_w1_164c_0_34_seg_w1_c4a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164c_0_34) (not_occupied seg_w1_c4a_0_34)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c4a_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_164c_0_34))
       (not_occupied seg_w1_164c_0_34) (not (at-segment ?a seg_w1_164c_0_34))
       (occupied seg_w1_c4a_0_34) (not (not_occupied seg_w1_c4a_0_34))
       (blocked seg_w1_c4a_0_34 ?a) (not (not_blocked seg_w1_c4a_0_34 ?a))
       (at-segment ?a seg_w1_c4a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_164a_0_34 ?a))
       (not_blocked seg_w1_164a_0_34 ?a) (not (blocked seg_w1_164b_0_45 ?a))
       (not_blocked seg_w1_164b_0_45 ?a)))
 (:action
  ugly1467ugly229ugly489ugly823ugly180startup_seg_p108_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p108_0_76)
       (not_occupied seg_o1_108b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a))))
 (:action
  ugly1468ugly144ugly844ugly924ugly912startup_seg_n_a6a8e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8e_0_75)
       (not_occupied seg_n_a6a8f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8f_0_75 ?a)
       (not (not_blocked seg_n_a6a8f_0_75 ?a))))
 (:action
  ugly1469ugly736ugly558ugly246ugly120startup_seg_w1_164c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164c_0_34)
       (not_occupied seg_w1_c4a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a))))
 (:action
  ugly1470ugly881ugly100ugly84ugly455startup_seg_n_a2a3c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3c_0_75)
       (not_occupied seg_n_a2a3b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3b_0_75 ?a)
       (not (not_blocked seg_n_a2a3b_0_75 ?a))))
 (:action
  ugly1471ugly748ugly631ugly53ugly207startup_seg_o1_c4c_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4c_0_80)
       (not_occupied seg_c4_s6a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a))))
 (:action ugly1472ugly334ugly842ugly344ugly93startup_seg_c3_b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_b_0_80)
       (not_occupied seg_c3_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_a_0_80 ?a)
       (not (not_blocked seg_c3_a_0_80 ?a))))
 (:action
  ugly1473ugly592ugly806ugly657ugly873move_seg_w1_151c_0_34_seg_w1_152a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151c_0_34) (not_occupied seg_w1_152a_0_34)
       (not_blocked seg_w1_152a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152a_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_151c_0_34))
       (not_occupied seg_w1_151c_0_34) (not (at-segment ?a seg_w1_151c_0_34))
       (occupied seg_w1_152a_0_34) (not (not_occupied seg_w1_152a_0_34))
       (blocked seg_w1_152a_0_34 ?a) (not (not_blocked seg_w1_152a_0_34 ?a))
       (at-segment ?a seg_w1_152a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_151a_0_34 ?a))
       (not_blocked seg_w1_151a_0_34 ?a) (not (blocked seg_w1_151b_0_45 ?a))
       (not_blocked seg_w1_151b_0_45 ?a)))
 (:action
  ugly1474ugly184ugly746ugly456ugly387startup_seg_w1_141a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141a_0_34)
       (not_occupied seg_w1_141b_0_45) (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly1475ugly363ugly103ugly778ugly458startup_seg_n_a6a8e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8e_0_75)
       (not_occupied seg_n_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8d_0_75 ?a)
       (not (not_blocked seg_n_a6a8d_0_75 ?a))))
 (:action
  ugly1476ugly463ugly308ugly601ugly607startup_seg_w1_c1a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1a_0_60)
       (not_occupied seg_w1_c1b_0_60) (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a)) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action
  ugly1477ugly212ugly564ugly782ugly827move_seg_o1_c1c_0_80_seg_o1_c1b_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_daew7)
       (not_occupied seg_o1_c1a_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c1c_0_80))
       (not_occupied seg_o1_c1c_0_80) (not (at-segment ?a seg_o1_c1c_0_80))
       (occupied seg_o1_c1b_0_34) (not (not_occupied seg_o1_c1b_0_34))
       (blocked seg_o1_c1b_0_34 ?a) (not (not_blocked seg_o1_c1b_0_34 ?a))
       (at-segment ?a seg_o1_c1b_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_c1_n2b_0_80 ?a))
       (not_blocked seg_c1_n2b_0_80 ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a))))
 (:action
  ugly1478ugly265ugly4ugly165ugly826startup_seg_o1_109c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109c_0_34)
       (not_occupied seg_o1_110a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a))))
 (:action
  ugly1479ugly734ugly793ugly560ugly727move_seg_o1_103a_0_34_seg_o1_102c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_103a_0_34))
       (not_occupied seg_o1_103a_0_34) (not (at-segment ?a seg_o1_103a_0_34))
       (occupied seg_o1_102c_0_34) (not (not_occupied seg_o1_102c_0_34))
       (blocked seg_o1_102c_0_34 ?a) (not (not_blocked seg_o1_102c_0_34 ?a))
       (at-segment ?a seg_o1_102c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_103b_0_60 ?a))
       (not_blocked seg_o1_103b_0_60 ?a) (not (blocked seg_o1_103c_0_34 ?a))
       (not_blocked seg_o1_103c_0_34 ?a)))
 (:action
  ugly1480ugly676ugly742ugly319ugly757move_seg_o1_c2c_0_34_seg_o1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2c_0_34) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_daew7)
       (not_occupied seg_o1_c2b_0_60) (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c2c_0_34))
       (not_occupied seg_o1_c2c_0_34) (not (at-segment ?a seg_o1_c2c_0_34))
       (occupied seg_o1_c2a_0_60) (not (not_occupied seg_o1_c2a_0_60))
       (blocked seg_o1_c2a_0_60 ?a) (not (not_blocked seg_o1_c2a_0_60 ?a))
       (at-segment ?a seg_o1_c2a_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_108a_0_34 ?a))
       (not_blocked seg_o1_108a_0_34 ?a) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a)) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action
  ugly1481ugly824ugly573ugly864ugly360startup_seg_m_a8a9c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9c_0_75)
       (not_occupied seg_m_a8a9d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9d_0_85 ?a)
       (not (not_blocked seg_m_a8a9d_0_85 ?a))))
 (:action
  ugly1482ugly648ugly152ugly392ugly814move_seg_o1_108a_0_34_seg_o1_c2c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_c2c_0_34)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c2c_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_108a_0_34))
       (not_occupied seg_o1_108a_0_34) (not (at-segment ?a seg_o1_108a_0_34))
       (occupied seg_o1_c2c_0_34) (not (not_occupied seg_o1_c2c_0_34))
       (blocked seg_o1_c2c_0_34 ?a) (not (not_blocked seg_o1_c2c_0_34 ?a))
       (at-segment ?a seg_o1_c2c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_108b_0_60 ?a))
       (not_blocked seg_o1_108b_0_60 ?a) (not (blocked seg_o1_108c_0_34 ?a))
       (not_blocked seg_o1_108c_0_34 ?a) (not (blocked seg_o1_108d_0_45 ?a))
       (not_blocked seg_o1_108d_0_45 ?a)))
 (:action
  ugly1483ugly587ugly780ugly743ugly110startup_seg_a10_1_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_1_0_80)
       (not_occupied seg_a10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_0_80 ?a)
       (not (not_blocked seg_a10_0_80 ?a))))
 (:action
  ugly1484ugly725ugly660ugly5ugly278move_seg_o1_110a_0_34_seg_o1_110d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110d_0_45)
       (not_blocked seg_o1_110d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_110d_0_45 airplane_daew7)
       (not_occupied seg_o1_110b_0_60) (not_occupied seg_o1_110c_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_110a_0_34))
       (not_occupied seg_o1_110a_0_34) (not (at-segment ?a seg_o1_110a_0_34))
       (occupied seg_o1_110d_0_45) (not (not_occupied seg_o1_110d_0_45))
       (blocked seg_o1_110d_0_45 ?a) (not (not_blocked seg_o1_110d_0_45 ?a))
       (at-segment ?a seg_o1_110d_0_45) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_109c_0_34 ?a))
       (not_blocked seg_o1_109c_0_34 ?a) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a)) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a))))
 (:action
  ugly1485ugly274ugly73ugly837ugly552startup_seg_w1_164c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164c_0_34)
       (not_occupied seg_w1_164a_0_34) (not_occupied seg_w1_164b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a))))
 (:action
  ugly1486ugly524ugly896ugly901ugly599move_seg_o1_102b_0_60_seg_o1_102c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102b_0_60) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_daew7)
       (not_occupied seg_o1_102a_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_102b_0_60))
       (not_occupied seg_o1_102b_0_60) (not (at-segment ?a seg_o1_102b_0_60))
       (occupied seg_o1_102c_0_34) (not (not_occupied seg_o1_102c_0_34))
       (blocked seg_o1_102c_0_34 ?a) (not (not_blocked seg_o1_102c_0_34 ?a))
       (at-segment ?a seg_o1_102c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p102_0_76 ?a))
       (not_blocked seg_p102_0_76 ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a))))
 (:action
  ugly1487ugly931ugly254ugly374ugly30move_seg_n_n2a4d_0_75_seg_n_n2a4c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4d_0_75) (not_occupied seg_n_n2a4c_0_75)
       (not_blocked seg_n_n2a4c_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2a4d_0_75))
       (not_occupied seg_n_n2a4d_0_75) (not (at-segment ?a seg_n_n2a4d_0_75))
       (occupied seg_n_n2a4c_0_75) (not (not_occupied seg_n_n2a4c_0_75))
       (blocked seg_n_n2a4c_0_75 ?a) (not (not_blocked seg_n_n2a4c_0_75 ?a))
       (at-segment ?a seg_n_n2a4c_0_75) (not (blocked seg_n_n2a4e_0_75 ?a))
       (not_blocked seg_n_n2a4e_0_75 ?a)))
 (:action ugly1488ugly720ugly618ugly31ugly634startup_seg_p151_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p151_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly1489ugly843ugly301ugly884ugly2startup_seg_n_n2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2b_0_60)
       (not_occupied seg_n_n2a_0_60) (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a)) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action
  ugly1490ugly794ugly198ugly633ugly239move_seg_w1_c2c_0_34_seg_w1_151a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c2c_0_34) (not_occupied seg_w1_151a_0_34)
       (not_blocked seg_w1_151a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151a_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_c2c_0_34))
       (not_occupied seg_w1_c2c_0_34) (not (at-segment ?a seg_w1_c2c_0_34))
       (occupied seg_w1_151a_0_34) (not (not_occupied seg_w1_151a_0_34))
       (blocked seg_w1_151a_0_34 ?a) (not (not_blocked seg_w1_151a_0_34 ?a))
       (at-segment ?a seg_w1_151a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_c2a_0_60 ?a))
       (not_blocked seg_w1_c2a_0_60 ?a) (not (blocked seg_w1_c2b_0_60 ?a))
       (not_blocked seg_w1_c2b_0_60 ?a)))
 (:action
  ugly1491ugly58ugly187ugly610ugly566move_seg_w1_153c_0_34_seg_w1_153a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153c_0_34) (not_occupied seg_w1_153a_0_34)
       (not_blocked seg_w1_153a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153a_0_34 airplane_daew7)
       (not_occupied seg_w1_153b_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_153c_0_34))
       (not_occupied seg_w1_153c_0_34) (not (at-segment ?a seg_w1_153c_0_34))
       (occupied seg_w1_153a_0_34) (not (not_occupied seg_w1_153a_0_34))
       (blocked seg_w1_153a_0_34 ?a) (not (not_blocked seg_w1_153a_0_34 ?a))
       (at-segment ?a seg_w1_153a_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_154a_0_34 ?a))
       (not_blocked seg_w1_154a_0_34 ?a) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action
  ugly1492ugly745ugly730ugly354ugly454move_seg_o1_108c_0_34_seg_o1_109a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_108c_0_34))
       (not_occupied seg_o1_108c_0_34) (not (at-segment ?a seg_o1_108c_0_34))
       (occupied seg_o1_109a_0_34) (not (not_occupied seg_o1_109a_0_34))
       (blocked seg_o1_109a_0_34 ?a) (not (not_blocked seg_o1_109a_0_34 ?a))
       (at-segment ?a seg_o1_109a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_108a_0_34 ?a))
       (not_blocked seg_o1_108a_0_34 ?a) (not (blocked seg_o1_108b_0_60 ?a))
       (not_blocked seg_o1_108b_0_60 ?a) (not (blocked seg_o1_108d_0_45 ?a))
       (not_blocked seg_o1_108d_0_45 ?a)))
 (:action
  ugly1493ugly922ugly500ugly201ugly839startup_seg_a4_a_0_157_785_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_a_0_157_785)
       (not_occupied seg_08l_a4c_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a4c_0_161_245 ?a)
       (not (not_blocked seg_08l_a4c_0_161_245 ?a))))
 (:action
  ugly1494ugly308ugly601ugly607ugly321startup_seg_08l_a7c_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a7c_0_161_245)
       (not_occupied seg_a7_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_a_0_156_924 ?a)
       (not (not_blocked seg_a7_a_0_156_924 ?a))))
 (:action
  ugly1495ugly429ugly161ugly260ugly702startup_seg_p161_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p161_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1496ugly641ugly709ugly36ugly274move_seg_n_n2b_0_60_seg_n2_0_108_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_n2b_0_60) (not_occupied seg_n2_0_108)
       (not_blocked seg_n2_0_108 airplane_cfbeg)
       (not_blocked seg_n2_0_108 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2b_0_60))
       (not_occupied seg_n_n2b_0_60) (not (at-segment ?a seg_n_n2b_0_60))
       (occupied seg_n2_0_108) (not (not_occupied seg_n2_0_108))
       (blocked seg_n2_0_108 ?a) (not (not_blocked seg_n2_0_108 ?a))
       (at-segment ?a seg_n2_0_108) (not (blocked seg_n_n2a_0_60 ?a))
       (not_blocked seg_n_n2a_0_60 ?a) (not (blocked seg_n_n2c_0_60 ?a))
       (not_blocked seg_n_n2c_0_60 ?a)))
 (:action
  ugly1497ugly38ugly88ugly28ugly104startup_seg_w1_151a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151a_0_34)
       (not_occupied seg_w1_151b_0_45) (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action ugly1498ugly807ugly317ugly658ugly32startup_seg_p116_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p116_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1499ugly559ugly927ugly175ugly129move_seg_w1_162a_0_34_seg_w1_162c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_daew7)
       (not_occupied seg_w1_162b_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_162a_0_34))
       (not_occupied seg_w1_162a_0_34) (not (at-segment ?a seg_w1_162a_0_34))
       (occupied seg_w1_162c_0_34) (not (not_occupied seg_w1_162c_0_34))
       (blocked seg_w1_162c_0_34 ?a) (not (not_blocked seg_w1_162c_0_34 ?a))
       (at-segment ?a seg_w1_162c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_161c_0_34 ?a))
       (not_blocked seg_w1_161c_0_34 ?a) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action
  ugly1500ugly39ugly9ugly603ugly755move_seg_w1_c1b_0_60_seg_w1_c1c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1b_0_60) (not_occupied seg_w1_c1c_0_34)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c1c_0_34 airplane_daew7)
       (not_occupied seg_w1_c1a_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_c1b_0_60))
       (not_occupied seg_w1_c1b_0_60) (not (at-segment ?a seg_w1_c1b_0_60))
       (occupied seg_w1_c1c_0_34) (not (not_occupied seg_w1_c1c_0_34))
       (blocked seg_w1_c1c_0_34 ?a) (not (not_blocked seg_w1_c1c_0_34 ?a))
       (at-segment ?a seg_w1_c1c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_c1_n2c_0_60 ?a))
       (not_blocked seg_c1_n2c_0_60 ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a))))
 (:action
  ugly1501ugly176ugly391ugly312ugly13startup_seg_n_a2a3c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3c_0_75)
       (not_occupied seg_n_a2a3d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3d_0_75 ?a)
       (not (not_blocked seg_n_a2a3d_0_75 ?a))))
 (:action
  ugly1502ugly320ugly785ugly567ugly897move_seg_08l_a7a_0_80_seg_08l_a7a9_0_270_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7a_0_80) (not_occupied seg_08l_a7a9_0_270)
       (not_blocked seg_08l_a7a9_0_270 airplane_cfbeg)
       (not_blocked seg_08l_a7a9_0_270 airplane_daew7)
       (not_occupied seg_08l_a2a_0_80) (not_occupied seg_09l_0_80)
       (not_occupied seg_08l_a4a_0_80) (not_occupied seg_08l_a3a_0_80)
       (not_occupied seg_08l_0_80) (not_occupied seg_08l_a3a4_0_450)
       (not_occupied seg_08l_a4d_0_80) (not_occupied seg_08l_a6a7_0_450)
       (not_occupied seg_08l_a7d_0_80))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_08l_a7a_0_80))
       (not_occupied seg_08l_a7a_0_80) (not (at-segment ?a seg_08l_a7a_0_80))
       (occupied seg_08l_a7a9_0_270) (not (not_occupied seg_08l_a7a9_0_270))
       (blocked seg_08l_a7a9_0_270 ?a)
       (not (not_blocked seg_08l_a7a9_0_270 ?a))
       (at-segment ?a seg_08l_a7a9_0_270)
       (not (blocked seg_08l_a7b_0_161_245 ?a))
       (not_blocked seg_08l_a7b_0_161_245 ?a)
       (not (blocked seg_08l_a7c_0_161_245 ?a))
       (not_blocked seg_08l_a7c_0_161_245 ?a) (blocked seg_08l_a4a_0_80 ?a)
       (not (not_blocked seg_08l_a4a_0_80 ?a)) (blocked seg_08l_a3a_0_80 ?a)
       (not (not_blocked seg_08l_a3a_0_80 ?a)) (blocked seg_08l_0_80 ?a)
       (not (not_blocked seg_08l_0_80 ?a)) (blocked seg_08l_a3a4_0_450 ?a)
       (not (not_blocked seg_08l_a3a4_0_450 ?a)) (blocked seg_08l_a4d_0_80 ?a)
       (not (not_blocked seg_08l_a4d_0_80 ?a)) (blocked seg_08l_a6a7_0_450 ?a)
       (not (not_blocked seg_08l_a6a7_0_450 ?a))))
 (:action ugly1503ugly264ugly302ugly652ugly925startup_seg_n1_0_108_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_0_108)
       (not_occupied seg_n_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a))))
 (:action
  ugly1504ugly261ugly300ugly846ugly407startup_seg_n_a9a10d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10d_0_75)
       (not_occupied seg_n_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10c_0_75 ?a)
       (not (not_blocked seg_n_a9a10c_0_75 ?a))))
 (:action
  ugly1505ugly329ugly715ugly950ugly57startup_seg_a9_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_b_0_159_512)
       (not_occupied seg_a9_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_a_0_158_647 ?a)
       (not (not_blocked seg_a9_a_0_158_647 ?a))))
 (:action
  ugly1506ugly262ugly721ugly11ugly612move_seg_o1_103c_0_34_seg_o1_104a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103c_0_34) (not_occupied seg_o1_104a_0_34)
       (not_blocked seg_o1_104a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_104a_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_103c_0_34))
       (not_occupied seg_o1_103c_0_34) (not (at-segment ?a seg_o1_103c_0_34))
       (occupied seg_o1_104a_0_34) (not (not_occupied seg_o1_104a_0_34))
       (blocked seg_o1_104a_0_34 ?a) (not (not_blocked seg_o1_104a_0_34 ?a))
       (at-segment ?a seg_o1_104a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_103a_0_34 ?a))
       (not_blocked seg_o1_103a_0_34 ?a) (not (blocked seg_o1_103b_0_60 ?a))
       (not_blocked seg_o1_103b_0_60 ?a)))
 (:action
  ugly1507ugly119ugly230ugly415ugly594startup_seg_m_a9a10d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10d_0_75)
       (not_occupied seg_m_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10e_0_75 ?a)
       (not (not_blocked seg_m_a9a10e_0_75 ?a))))
 (:action
  ugly1508ugly192ugly349ugly575ugly244startup_seg_m_a7a6b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6b_0_75)
       (not_occupied seg_m_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6c_0_75 ?a)
       (not (not_blocked seg_m_a7a6c_0_75 ?a))))
 (:action
  ugly1509ugly64ugly235ugly732ugly928startup_seg_a7_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_0_80_6226)
       (not_occupied seg_a7_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_1_0_80_6226 ?a))))
 (:action
  ugly1510ugly203ugly723ugly767ugly644move_seg_w1_152b_0_45_seg_p152_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152b_0_45) (not_occupied seg_p152_0_75)
       (not_blocked seg_p152_0_75 airplane_cfbeg)
       (not_blocked seg_p152_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_152b_0_45))
       (not_occupied seg_w1_152b_0_45) (not (at-segment ?a seg_w1_152b_0_45))
       (occupied seg_p152_0_75) (not (not_occupied seg_p152_0_75))
       (blocked seg_p152_0_75 ?a) (not (not_blocked seg_p152_0_75 ?a))
       (at-segment ?a seg_p152_0_75) (not (blocked seg_w1_152a_0_34 ?a))
       (not_blocked seg_w1_152a_0_34 ?a) (not (blocked seg_w1_152c_0_34 ?a))
       (not_blocked seg_w1_152c_0_34 ?a)))
 (:action
  ugly1511ugly26ugly922ugly500ugly201startup_seg_n_a2a3b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3b_0_75)
       (not_occupied seg_n_a2a3a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3a_0_75 ?a)
       (not (not_blocked seg_n_a2a3a_0_75 ?a))))
 (:action ugly1512ugly270ugly761ugly1ugly741startup_seg_p143_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p143_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1513ugly193ugly173ugly553ugly273startup_seg_a4_a_0_157_785_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_a_0_157_785)
       (not_occupied seg_a4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a4_b_1_0_80_6226 ?a))))
 (:action
  ugly1514ugly354ugly454ugly215ugly549startup_seg_n_n2a4c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4c_0_75)
       (not_occupied seg_n_n2a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4b_0_75 ?a)
       (not (not_blocked seg_n_n2a4b_0_75 ?a))))
 (:action
  ugly1515ugly279ugly759ugly148ugly356startup_seg_o1_111a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111a_0_34)
       (not_occupied seg_o1_110c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a))))
 (:action
  ugly1516ugly206ugly626ugly606ugly92startup_seg_m_a9a10g_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10g_0_80)
       (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action
  ugly1517ugly305ugly487ugly337ugly176startup_seg_w1_153b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153b_0_45)
       (not_occupied seg_w1_153a_0_34) (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action
  ugly1518ugly392ugly814ugly218ugly266startup_seg_n_n2c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2c_0_60)
       (not_occupied seg_n_n2a_0_60) (not_occupied seg_n_n2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a)) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a))))
 (:action
  ugly1519ugly813ugly206ugly626ugly606move_seg_w1_c2a_0_60_seg_w1_143c_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c2a_0_60) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_c2a_0_60))
       (not_occupied seg_w1_c2a_0_60) (not (at-segment ?a seg_w1_c2a_0_60))
       (occupied seg_w1_143c_0_60) (not (not_occupied seg_w1_143c_0_60))
       (blocked seg_w1_143c_0_60 ?a) (not (not_blocked seg_w1_143c_0_60 ?a))
       (at-segment ?a seg_w1_143c_0_60) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_c2b_0_60 ?a))
       (not_blocked seg_w1_c2b_0_60 ?a) (not (blocked seg_w1_c2c_0_34 ?a))
       (not_blocked seg_w1_c2c_0_34 ?a)))
 (:action
  ugly1520ugly379ugly868ugly875ugly518startup_seg_m_a9a10c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10c_0_75)
       (not_occupied seg_m_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10d_0_75 ?a)
       (not (not_blocked seg_m_a9a10d_0_75 ?a))))
 (:action
  ugly1521ugly830ugly725ugly660ugly5move_seg_o1_c3c_0_48_seg_o1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3c_0_48) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_daew7)
       (not_occupied seg_o1_c3b_0_60) (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c3c_0_48))
       (not_occupied seg_o1_c3c_0_48) (not (at-segment ?a seg_o1_c3c_0_48))
       (occupied seg_o1_c3a_0_34) (not (not_occupied seg_o1_c3a_0_34))
       (blocked seg_o1_c3a_0_34 ?a) (not (not_blocked seg_o1_c3a_0_34 ?a))
       (at-segment ?a seg_o1_c3a_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_115a_0_34 ?a))
       (not_blocked seg_o1_115a_0_34 ?a) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a)) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action
  ugly1522ugly128ugly138ugly195ugly258startup_seg_n_n2c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2c_0_60)
       (not_occupied seg_n_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3b_0_60 ?a)
       (not (not_blocked seg_n_a3b_0_60 ?a))))
 (:action
  ugly1523ugly410ugly866ugly16ugly65startup_seg_n_a2a3e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3e_0_75)
       (not_occupied seg_n_a2a3d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3d_0_75 ?a)
       (not (not_blocked seg_n_a2a3d_0_75 ?a))))
 (:action ugly1524ugly398ugly504ugly199ugly900park_seg_p117_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p117_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p117_0_76) (not (is-moving ?a))))
 (:action
  ugly1525ugly835ugly506ugly796ugly770move_seg_p103_0_76_seg_o1_103b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p103_0_76) (not_occupied seg_o1_103b_0_60)
       (not_blocked seg_o1_103b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_103b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p103_0_76))
       (not_occupied seg_p103_0_76) (not (at-segment ?a seg_p103_0_76))
       (occupied seg_o1_103b_0_60) (not (not_occupied seg_o1_103b_0_60))
       (blocked seg_o1_103b_0_60 ?a) (not (not_blocked seg_o1_103b_0_60 ?a))
       (at-segment ?a seg_o1_103b_0_60)))
 (:action
  ugly1526ugly99ugly545ugly275ugly886startup_seg_n_a6b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6b_0_60)
       (not_occupied seg_n_a6a_0_60) (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a)) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action
  ugly1527ugly816ugly335ugly492ugly293startup_seg_m_a4c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4c_0_60)
       (not_occupied seg_m_a4a_0_120_934) (not_occupied seg_m_a4b_0_60)
       (not_occupied seg_m_a4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a_0_120_934 ?a)
       (not (not_blocked seg_m_a4a_0_120_934 ?a)) (blocked seg_m_a4b_0_60 ?a)
       (not (not_blocked seg_m_a4b_0_60 ?a)) (blocked seg_m_a4d_0_60 ?a)
       (not (not_blocked seg_m_a4d_0_60 ?a))))
 (:action
  ugly1528ugly221ugly747ugly188ugly236move_seg_o1_109c_0_34_seg_o1_109a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109c_0_34) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_daew7)
       (not_occupied seg_o1_109b_0_60) (not_occupied seg_o1_109d_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_109c_0_34))
       (not_occupied seg_o1_109c_0_34) (not (at-segment ?a seg_o1_109c_0_34))
       (occupied seg_o1_109a_0_34) (not (not_occupied seg_o1_109a_0_34))
       (blocked seg_o1_109a_0_34 ?a) (not (not_blocked seg_o1_109a_0_34 ?a))
       (at-segment ?a seg_o1_109a_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_110a_0_34 ?a))
       (not_blocked seg_o1_110a_0_34 ?a) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a)) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action
  ugly1529ugly499ugly37ugly403ugly338startup_seg_o1_c2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2b_0_60)
       (not_occupied seg_o1_c2a_0_60) (not_occupied seg_o1_c2c_0_34)
       (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a)) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a)) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action ugly1530ugly341ugly54ugly535ugly7takeoff_seg_09l_0_80_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_09l_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_09l_0_80)) (not_occupied seg_09l_0_80)
       (not (blocked seg_09l_0_80 ?a)) (not_blocked seg_09l_0_80 ?a)
       (not (at-segment ?a seg_09l_0_80)) (airborne ?a seg_09l_0_80)
       (not (is-moving ?a)) (not (blocked seg_08l_a9a10_0_1010 ?a))
       (not_blocked seg_08l_a9a10_0_1010 ?a)))
 (:action
  ugly1531ugly348ugly384ugly268ugly797startup_seg_w1_161c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161c_0_34)
       (not_occupied seg_w1_162a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a))))
 (:action
  ugly1532ugly870ugly717ugly390ugly700startup_seg_p102_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p102_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1533ugly190ugly125ugly438ugly526startup_seg_w1_154b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154b_0_45)
       (not_occupied seg_w1_154a_0_34) (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action
  ugly1534ugly91ugly427ugly508ugly808startup_seg_w1_161a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161a_0_34)
       (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action
  ugly1535ugly525ugly234ugly581ugly172startup_seg_m_a6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6b_0_60)
       (not_occupied seg_n_a6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a))))
 (:action
  ugly1536ugly854ugly6ugly185ugly929startup_seg_m_a3a4c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4c_0_75)
       (not_occupied seg_m_a3a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4b_0_75 ?a)
       (not (not_blocked seg_m_a3a4b_0_75 ?a))))
 (:action
  ugly1537ugly122ugly340ugly532ugly689move_seg_w1_161c_0_34_seg_w1_161a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161c_0_34) (not_occupied seg_w1_161a_0_34)
       (not_blocked seg_w1_161a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161a_0_34 airplane_daew7)
       (not_occupied seg_w1_161b_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_161c_0_34))
       (not_occupied seg_w1_161c_0_34) (not (at-segment ?a seg_w1_161c_0_34))
       (occupied seg_w1_161a_0_34) (not (not_occupied seg_w1_161a_0_34))
       (blocked seg_w1_161a_0_34 ?a) (not (not_blocked seg_w1_161a_0_34 ?a))
       (at-segment ?a seg_w1_161a_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_162a_0_34 ?a))
       (not_blocked seg_w1_162a_0_34 ?a) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a))))
 (:action
  ugly1538ugly699ugly399ugly756ugly858move_seg_o1_109a_0_34_seg_o1_108c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_109a_0_34))
       (not_occupied seg_o1_109a_0_34) (not (at-segment ?a seg_o1_109a_0_34))
       (occupied seg_o1_108c_0_34) (not (not_occupied seg_o1_108c_0_34))
       (blocked seg_o1_108c_0_34 ?a) (not (not_blocked seg_o1_108c_0_34 ?a))
       (at-segment ?a seg_o1_108c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_109b_0_60 ?a))
       (not_blocked seg_o1_109b_0_60 ?a) (not (blocked seg_o1_109c_0_34 ?a))
       (not_blocked seg_o1_109c_0_34 ?a) (not (blocked seg_o1_109d_0_45 ?a))
       (not_blocked seg_o1_109d_0_45 ?a)))
 (:action ugly1539ugly710ugly540ugly66ugly212park_seg_p133_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p133_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p133_0_75) (not (is-moving ?a))))
 (:action
  ugly1540ugly581ugly172ugly752ugly290move_seg_o1_115c_0_34_seg_o1_115a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115c_0_34) (not_occupied seg_o1_115a_0_34)
       (not_blocked seg_o1_115a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115a_0_34 airplane_daew7)
       (not_occupied seg_o1_115b_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_115c_0_34))
       (not_occupied seg_o1_115c_0_34) (not (at-segment ?a seg_o1_115c_0_34))
       (occupied seg_o1_115a_0_34) (not (not_occupied seg_o1_115a_0_34))
       (blocked seg_o1_115a_0_34 ?a) (not (not_blocked seg_o1_115a_0_34 ?a))
       (at-segment ?a seg_o1_115a_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_116a_0_34 ?a))
       (not_blocked seg_o1_116a_0_34 ?a) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action
  ugly1541ugly159ugly107ugly193ugly173startup_seg_o1_110b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110b_0_60)
       (not_occupied seg_o1_110a_0_34) (not_occupied seg_o1_110c_0_34)
       (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a)) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a)) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action
  ugly1542ugly60ugly400ugly495ugly596startup_seg_m_a6a8e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8e_0_75)
       (not_occupied seg_m_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8d_0_75 ?a)
       (not (not_blocked seg_m_a6a8d_0_75 ?a))))
 (:action
  ugly1543ugly14ugly490ugly313ugly764startup_seg_n_a9a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a_0_60)
       (not_occupied seg_n_a9b_0_60) (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a)) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action
  ugly1544ugly719ugly722ugly35ugly543startup_seg_n_a4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4b_0_60)
       (not_occupied seg_n_a4a_0_60) (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a)) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action ugly1545ugly766ugly491ugly676ugly742takeoff_seg_08l_0_80_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_08l_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_08l_0_80)) (not_occupied seg_08l_0_80)
       (not (blocked seg_08l_0_80 ?a)) (not_blocked seg_08l_0_80 ?a)
       (not (at-segment ?a seg_08l_0_80)) (airborne ?a seg_08l_0_80)
       (not (is-moving ?a)) (not (blocked seg_08l_a2a3_0_970 ?a))
       (not_blocked seg_08l_a2a3_0_970 ?a)))
 (:action
  ugly1546ugly479ugly951ugly142ugly783move_seg_n_a7a6a_0_85_seg_n_a7b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6a_0_85) (not_occupied seg_n_a7b_0_60)
       (not_blocked seg_n_a7b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a7b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a7a6a_0_85))
       (not_occupied seg_n_a7a6a_0_85) (not (at-segment ?a seg_n_a7a6a_0_85))
       (occupied seg_n_a7b_0_60) (not (not_occupied seg_n_a7b_0_60))
       (blocked seg_n_a7b_0_60 ?a) (not (not_blocked seg_n_a7b_0_60 ?a))
       (at-segment ?a seg_n_a7b_0_60) (not (blocked seg_n_a7a6b_0_75 ?a))
       (not_blocked seg_n_a7a6b_0_75 ?a)))
 (:action
  ugly1547ugly15ugly412ugly351ugly630move_seg_o1_104b_0_60_seg_p104_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104b_0_60) (not_occupied seg_p104_0_76)
       (not_blocked seg_p104_0_76 airplane_cfbeg)
       (not_blocked seg_p104_0_76 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_104b_0_60))
       (not_occupied seg_o1_104b_0_60) (not (at-segment ?a seg_o1_104b_0_60))
       (occupied seg_p104_0_76) (not (not_occupied seg_p104_0_76))
       (blocked seg_p104_0_76 ?a) (not (not_blocked seg_p104_0_76 ?a))
       (at-segment ?a seg_p104_0_76) (not (blocked seg_o1_104a_0_34 ?a))
       (not_blocked seg_o1_104a_0_34 ?a) (not (blocked seg_o1_104c_0_60 ?a))
       (not_blocked seg_o1_104c_0_60 ?a)))
 (:action
  ugly1548ugly358ugly81ugly170ugly478move_seg_n_a7a6b_0_75_seg_n_a7a6a_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6b_0_75) (not_occupied seg_n_a7a6a_0_85)
       (not_blocked seg_n_a7a6a_0_85 airplane_cfbeg)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a7a6b_0_75))
       (not_occupied seg_n_a7a6b_0_75) (not (at-segment ?a seg_n_a7a6b_0_75))
       (occupied seg_n_a7a6a_0_85) (not (not_occupied seg_n_a7a6a_0_85))
       (blocked seg_n_a7a6a_0_85 ?a) (not (not_blocked seg_n_a7a6a_0_85 ?a))
       (at-segment ?a seg_n_a7a6a_0_85) (not (blocked seg_n_a7a6c_0_75 ?a))
       (not_blocked seg_n_a7a6c_0_75 ?a)))
 (:action
  ugly1549ugly219ugly695ugly386ugly563move_seg_w1_142a_0_34_seg_w1_142b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_142b_0_45)
       (not_blocked seg_w1_142b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_142b_0_45 airplane_daew7)
       (not_occupied seg_w1_142c_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_142a_0_34))
       (not_occupied seg_w1_142a_0_34) (not (at-segment ?a seg_w1_142a_0_34))
       (occupied seg_w1_142b_0_45) (not (not_occupied seg_w1_142b_0_45))
       (blocked seg_w1_142b_0_45 ?a) (not (not_blocked seg_w1_142b_0_45 ?a))
       (at-segment ?a seg_w1_142b_0_45) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_141c_0_34 ?a))
       (not_blocked seg_w1_141c_0_34 ?a) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action
  ugly1550ugly729ugly551ugly463ugly308startup_seg_o1_115c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115c_0_34)
       (not_occupied seg_o1_115a_0_34) (not_occupied seg_o1_115b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action
  ugly1551ugly878ugly359ugly476ugly224startup_seg_p117_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p117_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly1552ugly681ugly877ugly584ugly736park_seg_p110_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p110_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p110_0_76) (not (is-moving ?a))))
 (:action
  ugly1553ugly10ugly34ugly751ugly339startup_seg_m_a9a10c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10c_0_75)
       (not_occupied seg_m_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10b_0_75 ?a)
       (not (not_blocked seg_m_a9a10b_0_75 ?a))))
 (:action
  ugly1554ugly571ugly446ugly262ugly721move_seg_n_a3d_0_60_seg_n_a2a3f_0_115_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a3d_0_60) (not_occupied seg_n_a2a3f_0_115)
       (not_blocked seg_n_a2a3f_0_115 airplane_cfbeg)
       (not_blocked seg_n_a2a3f_0_115 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a3d_0_60))
       (not_occupied seg_n_a3d_0_60) (not (at-segment ?a seg_n_a3d_0_60))
       (occupied seg_n_a2a3f_0_115) (not (not_occupied seg_n_a2a3f_0_115))
       (blocked seg_n_a2a3f_0_115 ?a) (not (not_blocked seg_n_a2a3f_0_115 ?a))
       (at-segment ?a seg_n_a2a3f_0_115) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_n_a3a_0_60 ?a))
       (not_blocked seg_n_a3a_0_60 ?a) (not (blocked seg_n_a3b_0_60 ?a))
       (not_blocked seg_n_a3b_0_60 ?a) (not (blocked seg_n_a3c_0_60 ?a))
       (not_blocked seg_n_a3c_0_60 ?a)))
 (:action
  ugly1555ugly136ugly816ugly335ugly492move_seg_o1_117c_0_34_seg_o1_118a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117c_0_34) (not_occupied seg_o1_118a_0_34)
       (not_blocked seg_o1_118a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118a_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_117c_0_34))
       (not_occupied seg_o1_117c_0_34) (not (at-segment ?a seg_o1_117c_0_34))
       (occupied seg_o1_118a_0_34) (not (not_occupied seg_o1_118a_0_34))
       (blocked seg_o1_118a_0_34 ?a) (not (not_blocked seg_o1_118a_0_34 ?a))
       (at-segment ?a seg_o1_118a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_117a_0_34 ?a))
       (not_blocked seg_o1_117a_0_34 ?a) (not (blocked seg_o1_117b_0_60 ?a))
       (not_blocked seg_o1_117b_0_60 ?a)))
 (:action
  ugly1556ugly793ugly560ugly727ugly184startup_seg_m_a7a6c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6c_0_75)
       (not_occupied seg_m_a7a6d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6d_0_85 ?a)
       (not (not_blocked seg_m_a7a6d_0_85 ?a))))
 (:action
  ugly1557ugly353ugly418ugly383ugly781startup_seg_w1_162b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162b_0_45)
       (not_occupied seg_p162_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p162_0_75 ?a)
       (not (not_blocked seg_p162_0_75 ?a))))
 (:action
  ugly1558ugly234ugly581ugly172ugly752move_seg_o1_116b_0_60_seg_p116_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116b_0_60) (not_occupied seg_p116_0_76)
       (not_blocked seg_p116_0_76 airplane_cfbeg)
       (not_blocked seg_p116_0_76 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_116b_0_60))
       (not_occupied seg_o1_116b_0_60) (not (at-segment ?a seg_o1_116b_0_60))
       (occupied seg_p116_0_76) (not (not_occupied seg_p116_0_76))
       (blocked seg_p116_0_76 ?a) (not (not_blocked seg_p116_0_76 ?a))
       (at-segment ?a seg_p116_0_76) (not (blocked seg_o1_116a_0_34 ?a))
       (not_blocked seg_o1_116a_0_34 ?a) (not (blocked seg_o1_116c_0_34 ?a))
       (not_blocked seg_o1_116c_0_34 ?a)))
 (:action
  ugly1559ugly658ugly32ugly614ugly150startup_seg_w1_c4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4b_0_60)
       (not_occupied seg_w1_c4a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a))))
 (:action ugly1560ugly760ugly466ugly637ugly659park_seg_p141_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p141_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p141_0_75) (not (is-moving ?a))))
 (:action
  ugly1561ugly95ugly231ugly233ugly457startup_seg_n_a9a10c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10c_0_75)
       (not_occupied seg_n_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10d_0_75 ?a)
       (not (not_blocked seg_n_a9a10d_0_75 ?a))))
 (:action
  ugly1562ugly461ugly445ugly322ugly779startup_seg_o1_c3d_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3d_0_60)
       (not_occupied seg_o1_c3a_0_34) (not_occupied seg_o1_c3b_0_60)
       (not_occupied seg_o1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a)) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a)) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a))))
 (:action
  ugly1563ugly319ugly757ugly219ugly695startup_seg_p152_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p152_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1564ugly814ugly218ugly266ugly855startup_seg_m_a9a10g_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10g_0_80)
       (not_occupied seg_m_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10f_0_75 ?a)
       (not (not_blocked seg_m_a9a10f_0_75 ?a))))
 (:action
  ugly1565ugly186ugly636ugly617ugly329startup_seg_a4_b_0_79_7559_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_0_79_7559)
       (not_occupied seg_a4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a4_b_1_0_80_6226 ?a))))
 (:action ugly1566ugly364ugly629ugly41ugly59park_seg_p119_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p119_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p119_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c4b_0_60 ?a)) (not_blocked seg_o1_c4b_0_60 ?a)))
 (:action
  ugly1567ugly749ugly371ugly642ugly661startup_seg_o1_110d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110d_0_45)
       (not_occupied seg_p133_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p133_0_75 ?a)
       (not (not_blocked seg_p133_0_75 ?a))))
 (:action
  ugly1568ugly426ugly906ugly156ugly144startup_seg_n_a2a3e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3e_0_75)
       (not_occupied seg_n_a2a3f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3f_0_115 ?a)
       (not (not_blocked seg_n_a2a3f_0_115 ?a))))
 (:action
  ugly1569ugly937ugly64ugly235ugly732startup_seg_n_a9c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9c_0_60)
       (not_occupied seg_n_a8a9d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9d_0_75 ?a)
       (not (not_blocked seg_n_a8a9d_0_75 ?a))))
 (:action
  ugly1570ugly30ugly68ugly24ugly210startup_seg_m_a9a10d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10d_0_75)
       (not_occupied seg_m_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10c_0_75 ?a)
       (not (not_blocked seg_m_a9a10c_0_75 ?a))))
 (:action
  ugly1571ugly35ugly543ugly871ugly784startup_seg_m_a7d_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7d_0_60)
       (not_occupied seg_m_a7a_0_120_934) (not_occupied seg_m_a7b_0_60)
       (not_occupied seg_m_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a_0_120_934 ?a)
       (not (not_blocked seg_m_a7a_0_120_934 ?a)) (blocked seg_m_a7b_0_60 ?a)
       (not (not_blocked seg_m_a7b_0_60 ?a)) (blocked seg_m_a7c_0_60 ?a)
       (not (not_blocked seg_m_a7c_0_60 ?a))))
 (:action
  ugly1572ugly765ugly798ugly788ugly265move_seg_w1_142a_0_34_seg_w1_141c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_142a_0_34))
       (not_occupied seg_w1_142a_0_34) (not (at-segment ?a seg_w1_142a_0_34))
       (occupied seg_w1_141c_0_34) (not (not_occupied seg_w1_141c_0_34))
       (blocked seg_w1_141c_0_34 ?a) (not (not_blocked seg_w1_141c_0_34 ?a))
       (at-segment ?a seg_w1_141c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_142b_0_45 ?a))
       (not_blocked seg_w1_142b_0_45 ?a) (not (blocked seg_w1_142c_0_34 ?a))
       (not_blocked seg_w1_142c_0_34 ?a)))
 (:action
  ugly1573ugly743ugly110ugly682ugly705move_seg_w1_151c_0_34_seg_w1_151a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151c_0_34) (not_occupied seg_w1_151a_0_34)
       (not_blocked seg_w1_151a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151a_0_34 airplane_daew7)
       (not_occupied seg_w1_151b_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_151c_0_34))
       (not_occupied seg_w1_151c_0_34) (not (at-segment ?a seg_w1_151c_0_34))
       (occupied seg_w1_151a_0_34) (not (not_occupied seg_w1_151a_0_34))
       (blocked seg_w1_151a_0_34 ?a) (not (not_blocked seg_w1_151a_0_34 ?a))
       (at-segment ?a seg_w1_151a_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_152a_0_34 ?a))
       (not_blocked seg_w1_152a_0_34 ?a) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action
  ugly1574ugly946ugly511ugly355ugly804startup_seg_n_a4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4b_0_60)
       (not_occupied seg_n_a4a7a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7a_0_115 ?a)
       (not (not_blocked seg_n_a4a7a_0_115 ?a))))
 (:action ugly1575ugly815ugly190ugly125ugly438park_seg_p108_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p108_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p108_0_76) (not (is-moving ?a))))
 (:action
  ugly1576ugly325ugly848ugly25ugly680move_seg_o1_c2d_0_60_seg_o1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_daew7)
       (not_occupied seg_o1_c2b_0_60) (not_occupied seg_o1_c2c_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c2d_0_60))
       (not_occupied seg_o1_c2d_0_60) (not (at-segment ?a seg_o1_c2d_0_60))
       (occupied seg_o1_c2a_0_60) (not (not_occupied seg_o1_c2a_0_60))
       (blocked seg_o1_c2a_0_60 ?a) (not (not_blocked seg_o1_c2a_0_60 ?a))
       (at-segment ?a seg_o1_c2a_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_c2_b_0_80 ?a))
       (not_blocked seg_c2_b_0_80 ?a) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a)) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a))))
 (:action
  ugly1577ugly164ugly748ugly631ugly53move_seg_o1_c2d_0_60_seg_c2_b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_c2_b_0_80)
       (not_blocked seg_c2_b_0_80 airplane_cfbeg)
       (not_blocked seg_c2_b_0_80 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c2d_0_60))
       (not_occupied seg_o1_c2d_0_60) (not (at-segment ?a seg_o1_c2d_0_60))
       (occupied seg_c2_b_0_80) (not (not_occupied seg_c2_b_0_80))
       (blocked seg_c2_b_0_80 ?a) (not (not_blocked seg_c2_b_0_80 ?a))
       (at-segment ?a seg_c2_b_0_80) (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c2a_0_60 ?a)) (not_blocked seg_o1_c2a_0_60 ?a)
       (not (blocked seg_o1_c2b_0_60 ?a)) (not_blocked seg_o1_c2b_0_60 ?a)
       (not (blocked seg_o1_c2c_0_34 ?a)) (not_blocked seg_o1_c2c_0_34 ?a)))
 (:action
  ugly1578ugly666ugly166ugly662ugly588move_seg_w1_143b_0_45_seg_w1_143c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143b_0_45) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_daew7)
       (not_occupied seg_w1_143a_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_143b_0_45))
       (not_occupied seg_w1_143b_0_45) (not (at-segment ?a seg_w1_143b_0_45))
       (occupied seg_w1_143c_0_60) (not (not_occupied seg_w1_143c_0_60))
       (blocked seg_w1_143c_0_60 ?a) (not (not_blocked seg_w1_143c_0_60 ?a))
       (at-segment ?a seg_w1_143c_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p143_0_75 ?a))
       (not_blocked seg_p143_0_75 ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a))))
 (:action ugly1579ugly570ugly687ugly749ugly371park_seg_p119_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p119_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p119_0_76) (not (is-moving ?a))))
 (:action
  ugly1580ugly928ugly739ugly183ugly595move_seg_c1_n2c_0_60_seg_w1_c1b_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c1_n2c_0_60) (not_occupied seg_w1_c1b_0_60)
       (not_blocked seg_w1_c1b_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c1_n2c_0_60))
       (not_occupied seg_c1_n2c_0_60) (not (at-segment ?a seg_c1_n2c_0_60))
       (occupied seg_w1_c1b_0_60) (not (not_occupied seg_w1_c1b_0_60))
       (blocked seg_w1_c1b_0_60 ?a) (not (not_blocked seg_w1_c1b_0_60 ?a))
       (at-segment ?a seg_w1_c1b_0_60) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_c1_n2a_0_60 ?a))
       (not_blocked seg_c1_n2a_0_60 ?a) (not (blocked seg_c1_n2b_0_80 ?a))
       (not_blocked seg_c1_n2b_0_80 ?a)))
 (:action
  ugly1581ugly605ugly140ugly893ugly671startup_seg_a6_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_a_0_158_647)
       (not_occupied seg_08l_a4b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a4b_0_161_245 ?a)
       (not (not_blocked seg_08l_a4b_0_161_245 ?a))))
 (:action
  ugly1582ugly856ugly863ugly203ugly723startup_seg_m_a6a8c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8c_0_75)
       (not_occupied seg_m_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8b_0_75 ?a)
       (not (not_blocked seg_m_a6a8b_0_75 ?a))))
 (:action
  ugly1583ugly247ugly600ugly437ugly380startup_seg_a4_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_1_0_80_6226)
       (not_occupied seg_a4_b_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_0_79_7559 ?a)
       (not (not_blocked seg_a4_b_0_79_7559 ?a))))
 (:action
  ugly1584ugly912ugly910ugly914ugly238move_seg_p143_0_75_seg_w1_143b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p143_0_75) (not_occupied seg_w1_143b_0_45)
       (not_blocked seg_w1_143b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_143b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p143_0_75))
       (not_occupied seg_p143_0_75) (not (at-segment ?a seg_p143_0_75))
       (occupied seg_w1_143b_0_45) (not (not_occupied seg_w1_143b_0_45))
       (blocked seg_w1_143b_0_45 ?a) (not (not_blocked seg_w1_143b_0_45 ?a))
       (at-segment ?a seg_w1_143b_0_45)))
 (:action
  ugly1585ugly707ugly151ugly729ugly551startup_seg_o1_c1a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1a_0_60)
       (not_occupied seg_o1_c1b_0_34) (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action
  ugly1586ugly205ugly641ugly709ugly36move_seg_o1_115c_0_34_seg_o1_116a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115c_0_34) (not_occupied seg_o1_116a_0_34)
       (not_blocked seg_o1_116a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116a_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_115c_0_34))
       (not_occupied seg_o1_115c_0_34) (not (at-segment ?a seg_o1_115c_0_34))
       (occupied seg_o1_116a_0_34) (not (not_occupied seg_o1_116a_0_34))
       (blocked seg_o1_116a_0_34 ?a) (not (not_blocked seg_o1_116a_0_34 ?a))
       (at-segment ?a seg_o1_116a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_115a_0_34 ?a))
       (not_blocked seg_o1_115a_0_34 ?a) (not (blocked seg_o1_115b_0_60 ?a))
       (not_blocked seg_o1_115b_0_60 ?a)))
 (:action
  ugly1587ugly489ugly823ugly180ugly529startup_seg_m_a4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4b_0_60)
       (not_occupied seg_m_a4a7a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7a_0_75 ?a)
       (not (not_blocked seg_m_a4a7a_0_75 ?a))))
 (:action
  ugly1588ugly149ugly947ugly792ugly78startup_seg_n_a8c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8c_0_60)
       (not_occupied seg_n_a8a_0_60) (not_occupied seg_n_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a)) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a))))
 (:action
  ugly1589ugly23ugly867ugly786ugly295startup_seg_n_a7a6c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6c_0_75)
       (not_occupied seg_n_a7a6d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6d_0_75 ?a)
       (not (not_blocked seg_n_a7a6d_0_75 ?a))))
 (:action
  ugly1590ugly523ugly257ugly179ugly800move_seg_w1_142c_0_34_seg_w1_143a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142c_0_34) (not_occupied seg_w1_143a_0_34)
       (not_blocked seg_w1_143a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_143a_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_142c_0_34))
       (not_occupied seg_w1_142c_0_34) (not (at-segment ?a seg_w1_142c_0_34))
       (occupied seg_w1_143a_0_34) (not (not_occupied seg_w1_143a_0_34))
       (blocked seg_w1_143a_0_34 ?a) (not (not_blocked seg_w1_143a_0_34 ?a))
       (at-segment ?a seg_w1_143a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_142a_0_34 ?a))
       (not_blocked seg_w1_142a_0_34 ?a) (not (blocked seg_w1_142b_0_45 ?a))
       (not_blocked seg_w1_142b_0_45 ?a)))
 (:action
  ugly1591ugly852ugly913ugly713ugly499move_seg_08l_a7b_0_161_245_seg_a8_a_0_157_785_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7b_0_161_245) (not_occupied seg_a8_a_0_157_785)
       (not_blocked seg_a8_a_0_157_785 airplane_cfbeg)
       (not_blocked seg_a8_a_0_157_785 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_08l_a7b_0_161_245))
       (not_occupied seg_08l_a7b_0_161_245)
       (not (at-segment ?a seg_08l_a7b_0_161_245))
       (occupied seg_a8_a_0_157_785) (not (not_occupied seg_a8_a_0_157_785))
       (blocked seg_a8_a_0_157_785 ?a)
       (not (not_blocked seg_a8_a_0_157_785 ?a))
       (at-segment ?a seg_a8_a_0_157_785) (not (blocked seg_08l_a7a_0_80 ?a))
       (not_blocked seg_08l_a7a_0_80 ?a)
       (not (blocked seg_08l_a7c_0_161_245 ?a))
       (not_blocked seg_08l_a7c_0_161_245 ?a)
       (not (blocked seg_08l_a7d_0_80 ?a)) (not_blocked seg_08l_a7d_0_80 ?a)))
 (:action
  ugly1592ugly276ugly288ugly591ugly122startup_seg_w1_142a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142a_0_34)
       (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly1593ugly915ugly890ugly237ugly432startup_seg_w1_c2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2b_0_60)
       (not_occupied seg_c2_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_a_0_80 ?a)
       (not (not_blocked seg_c2_a_0_80 ?a))))
 (:action
  ugly1594ugly697ugly697ugly697ugly697startup_seg_m_a3a4b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4b_0_75)
       (not_occupied seg_m_a3a4a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4a_0_75 ?a)
       (not (not_blocked seg_m_a3a4a_0_75 ?a))))
 (:action
  ugly1595ugly34ugly751ugly339ugly811move_seg_o1_108b_0_60_seg_p108_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108b_0_60) (not_occupied seg_p108_0_76)
       (not_blocked seg_p108_0_76 airplane_cfbeg)
       (not_blocked seg_p108_0_76 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_108b_0_60))
       (not_occupied seg_o1_108b_0_60) (not (at-segment ?a seg_o1_108b_0_60))
       (occupied seg_p108_0_76) (not (not_occupied seg_p108_0_76))
       (blocked seg_p108_0_76 ?a) (not (not_blocked seg_p108_0_76 ?a))
       (at-segment ?a seg_p108_0_76) (not (blocked seg_o1_108a_0_34 ?a))
       (not_blocked seg_o1_108a_0_34 ?a) (not (blocked seg_o1_108c_0_34 ?a))
       (not_blocked seg_o1_108c_0_34 ?a) (not (blocked seg_o1_108d_0_45 ?a))
       (not_blocked seg_o1_108d_0_45 ?a)))
 (:action
  ugly1596ugly207ugly640ugly133ugly724move_seg_o1_c3a_0_34_seg_o1_c3c_0_48_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_c3c_0_48)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_o1_c3c_0_48 airplane_daew7)
       (not_occupied seg_o1_c3b_0_60) (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c3a_0_34))
       (not_occupied seg_o1_c3a_0_34) (not (at-segment ?a seg_o1_c3a_0_34))
       (occupied seg_o1_c3c_0_48) (not (not_occupied seg_o1_c3c_0_48))
       (blocked seg_o1_c3c_0_48 ?a) (not (not_blocked seg_o1_c3c_0_48 ?a))
       (at-segment ?a seg_o1_c3c_0_48) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_111c_0_34 ?a))
       (not_blocked seg_o1_111c_0_34 ?a) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a)) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action
  ugly1597ugly50ugly251ugly663ugly139move_seg_p107_0_76_seg_o1_c2b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p107_0_76) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p107_0_76))
       (not_occupied seg_p107_0_76) (not (at-segment ?a seg_p107_0_76))
       (occupied seg_o1_c2b_0_60) (not (not_occupied seg_o1_c2b_0_60))
       (blocked seg_o1_c2b_0_60 ?a) (not (not_blocked seg_o1_c2b_0_60 ?a))
       (at-segment ?a seg_o1_c2b_0_60)))
 (:action
  ugly1598ugly182ugly197ugly74ugly20startup_seg_w1_152b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152b_0_45)
       (not_occupied seg_w1_152a_0_34) (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action
  ugly1599ugly287ugly109ugly417ugly920move_seg_w1_152c_0_34_seg_w1_153a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152c_0_34) (not_occupied seg_w1_153a_0_34)
       (not_blocked seg_w1_153a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153a_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_152c_0_34))
       (not_occupied seg_w1_152c_0_34) (not (at-segment ?a seg_w1_152c_0_34))
       (occupied seg_w1_153a_0_34) (not (not_occupied seg_w1_153a_0_34))
       (blocked seg_w1_153a_0_34 ?a) (not (not_blocked seg_w1_153a_0_34 ?a))
       (at-segment ?a seg_w1_153a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_152a_0_34 ?a))
       (not_blocked seg_w1_152a_0_34 ?a) (not (blocked seg_w1_152b_0_45 ?a))
       (not_blocked seg_w1_152b_0_45 ?a)))
 (:action
  ugly1600ugly495ugly596ugly771ugly918move_seg_w1_154a_0_34_seg_w1_154b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_154b_0_45)
       (not_blocked seg_w1_154b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_154b_0_45 airplane_daew7)
       (not_occupied seg_w1_154c_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_154a_0_34))
       (not_occupied seg_w1_154a_0_34) (not (at-segment ?a seg_w1_154a_0_34))
       (occupied seg_w1_154b_0_45) (not (not_occupied seg_w1_154b_0_45))
       (blocked seg_w1_154b_0_45 ?a) (not (not_blocked seg_w1_154b_0_45 ?a))
       (at-segment ?a seg_w1_154b_0_45) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_153c_0_34 ?a))
       (not_blocked seg_w1_153c_0_34 ?a) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action
  ugly1601ugly180ugly529ugly708ugly69startup_seg_m_a6a8f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8f_0_115)
       (not_occupied seg_m_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8c_0_60 ?a)
       (not (not_blocked seg_m_a8c_0_60 ?a))))
 (:action
  ugly1602ugly170ugly478ugly55ugly638move_seg_w1_153a_0_34_seg_w1_153b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_153b_0_45)
       (not_blocked seg_w1_153b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_153b_0_45 airplane_daew7)
       (not_occupied seg_w1_153c_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_153a_0_34))
       (not_occupied seg_w1_153a_0_34) (not (at-segment ?a seg_w1_153a_0_34))
       (occupied seg_w1_153b_0_45) (not (not_occupied seg_w1_153b_0_45))
       (blocked seg_w1_153b_0_45 ?a) (not (not_blocked seg_w1_153b_0_45 ?a))
       (at-segment ?a seg_w1_153b_0_45) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_152c_0_34 ?a))
       (not_blocked seg_w1_152c_0_34 ?a) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action
  ugly1603ugly902ugly283ugly712ugly673startup_seg_n_a2a3a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3a_0_75)
       (not_occupied seg_n_a2a3b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3b_0_75 ?a)
       (not (not_blocked seg_n_a2a3b_0_75 ?a))))
 (:action
  ugly1604ugly245ugly49ugly405ugly706startup_seg_a8_b_1_0_79_7559_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_1_0_79_7559)
       (not_occupied seg_a8_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_a_0_157_785 ?a)
       (not (not_blocked seg_a8_a_0_157_785 ?a))))
 (:action
  ugly1605ugly93ugly597ugly559ugly927move_seg_c1_n2b_0_80_seg_c1_n2c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2b_0_80) (not_occupied seg_c1_n2c_0_60)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2c_0_60 airplane_daew7)
       (not_occupied seg_c1_n2a_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c1_n2b_0_80))
       (not_occupied seg_c1_n2b_0_80) (not (at-segment ?a seg_c1_n2b_0_80))
       (occupied seg_c1_n2c_0_60) (not (not_occupied seg_c1_n2c_0_60))
       (blocked seg_c1_n2c_0_60 ?a) (not (not_blocked seg_c1_n2c_0_60 ?a))
       (at-segment ?a seg_c1_n2c_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_c1c_0_80 ?a))
       (not_blocked seg_o1_c1c_0_80 ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a))))
 (:action
  ugly1606ugly468ugly155ugly294ugly534startup_seg_o1_111d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111d_0_45)
       (not_occupied seg_p134_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p134_0_75 ?a)
       (not (not_blocked seg_p134_0_75 ?a))))
 (:action
  ugly1607ugly457ugly934ugly887ugly517startup_seg_a2_a_0_90_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_a_0_90)
       (not_occupied seg_a2_b_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_b_0_90 ?a)
       (not (not_blocked seg_a2_b_0_90 ?a))))
 (:action
  ugly1608ugly562ugly580ugly447ugly143startup_seg_a3_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_b_0_159_512)
       (not_occupied seg_m_a3a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a))))
 (:action
  ugly1609ugly759ugly148ugly356ugly562startup_seg_p134_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p134_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1610ugly913ugly713ugly499ugly37startup_seg_w1_154c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154c_0_34)
       (not_occupied seg_w1_154a_0_34) (not_occupied seg_w1_154b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action
  ugly1611ugly705ugly101ugly554ugly285startup_seg_w1_142c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142c_0_34)
       (not_occupied seg_w1_142a_0_34) (not_occupied seg_w1_142b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a))))
 (:action
  ugly1612ugly142ugly783ugly56ugly683startup_seg_o1_116b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116b_0_60)
       (not_occupied seg_o1_116a_0_34) (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action ugly1613ugly534ugly572ugly817ugly698park_seg_p101_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p101_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p101_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)))
 (:action
  ugly1614ugly154ugly475ugly908ugly720startup_seg_o1_117b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117b_0_60)
       (not_occupied seg_p117_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p117_0_76 ?a)
       (not (not_blocked seg_p117_0_76 ?a))))
 (:action
  ugly1615ugly894ugly226ugly523ugly257move_seg_o1_c1c_0_80_seg_o1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_daew7)
       (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c1c_0_80))
       (not_occupied seg_o1_c1c_0_80) (not (at-segment ?a seg_o1_c1c_0_80))
       (occupied seg_o1_c1a_0_60) (not (not_occupied seg_o1_c1a_0_60))
       (blocked seg_o1_c1a_0_60 ?a) (not (not_blocked seg_o1_c1a_0_60 ?a))
       (at-segment ?a seg_o1_c1a_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_c1_n2b_0_80 ?a))
       (not_blocked seg_c1_n2b_0_80 ?a) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action
  ugly1616ugly20ugly381ugly672ugly615move_seg_w1_162c_0_34_seg_w1_162a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162c_0_34) (not_occupied seg_w1_162a_0_34)
       (not_blocked seg_w1_162a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162a_0_34 airplane_daew7)
       (not_occupied seg_w1_162b_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_162c_0_34))
       (not_occupied seg_w1_162c_0_34) (not (at-segment ?a seg_w1_162c_0_34))
       (occupied seg_w1_162a_0_34) (not (not_occupied seg_w1_162a_0_34))
       (blocked seg_w1_162a_0_34 ?a) (not (not_blocked seg_w1_162a_0_34 ?a))
       (at-segment ?a seg_w1_162a_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_163a_0_34 ?a))
       (not_blocked seg_w1_163a_0_34 ?a) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action ugly1617ugly713ugly499ugly37ugly403startup_seg_p141_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p141_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1618ugly328ugly256ugly801ugly269move_seg_a2_a_0_90_seg_08l_a2b_0_80_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_a_0_90) (not_occupied seg_08l_a2b_0_80)
       (not_blocked seg_08l_a2b_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a2b_0_80 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a2_a_0_90))
       (not_occupied seg_a2_a_0_90) (not (at-segment ?a seg_a2_a_0_90))
       (occupied seg_08l_a2b_0_80) (not (not_occupied seg_08l_a2b_0_80))
       (blocked seg_08l_a2b_0_80 ?a) (not (not_blocked seg_08l_a2b_0_80 ?a))
       (at-segment ?a seg_08l_a2b_0_80) (not (blocked seg_a2_b_0_90 ?a))
       (not_blocked seg_a2_b_0_90 ?a)))
 (:action
  ugly1619ugly897ugly33ugly483ugly578startup_seg_08l_a7b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a7b_0_161_245)
       (not_occupied seg_a8_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_a_0_157_785 ?a)
       (not (not_blocked seg_a8_a_0_157_785 ?a))))
 (:action
  ugly1620ugly217ugly550ugly413ugly949startup_seg_w1_152a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152a_0_34)
       (not_occupied seg_w1_152b_0_45) (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action ugly1621ugly646ugly838ugly773ugly29startup_seg_n2_0_108_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_0_108)
       (not_occupied seg_c1_n2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a))))
 (:action
  ugly1622ugly438ugly526ugly401ugly505startup_seg_o1_104b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104b_0_60)
       (not_occupied seg_p104_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p104_0_76 ?a)
       (not (not_blocked seg_p104_0_76 ?a))))
 (:action
  ugly1623ugly726ugly174ugly304ugly915startup_seg_n_a7a6a_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6a_0_85)
       (not_occupied seg_n_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6b_0_75 ?a)
       (not (not_blocked seg_n_a7a6b_0_75 ?a))))
 (:action
  ugly1624ugly183ugly595ugly76ugly484startup_seg_a6_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_b_0_159_512)
       (not_occupied seg_a6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_a_0_158_647 ?a)
       (not (not_blocked seg_a6_a_0_158_647 ?a))))
 (:action ugly1625ugly333ugly651ugly291ugly368park_seg_p161_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p161_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p161_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_161b_0_45 ?a)) (not_blocked seg_w1_161b_0_45 ?a)))
 (:action
  ugly1626ugly769ugly944ugly113ugly571startup_seg_w1_164a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164a_0_34)
       (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action
  ugly1627ugly487ugly337ugly176ugly391move_seg_o1_118a_0_34_seg_o1_118c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_daew7)
       (not_occupied seg_o1_118b_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_118a_0_34))
       (not_occupied seg_o1_118a_0_34) (not (at-segment ?a seg_o1_118a_0_34))
       (occupied seg_o1_118c_0_34) (not (not_occupied seg_o1_118c_0_34))
       (blocked seg_o1_118c_0_34 ?a) (not (not_blocked seg_o1_118c_0_34 ?a))
       (at-segment ?a seg_o1_118c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_117c_0_34 ?a))
       (not_blocked seg_o1_117c_0_34 ?a) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action ugly1628ugly911ugly430ugly227ugly375park_seg_p134_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p134_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p134_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_111d_0_45 ?a)) (not_blocked seg_o1_111d_0_45 ?a)))
 (:action
  ugly1629ugly424ugly774ugly519ugly473startup_seg_n_a6a8b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8b_0_75)
       (not_occupied seg_n_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8c_0_75 ?a)
       (not (not_blocked seg_n_a6a8c_0_75 ?a))))
 (:action
  ugly1630ugly574ugly248ugly169ugly433startup_seg_m_a8a9c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9c_0_75)
       (not_occupied seg_m_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9b_0_75 ?a)
       (not (not_blocked seg_m_a8a9b_0_75 ?a))))
 (:action
  ugly1631ugly317ugly658ugly32ugly614move_seg_w1_161a_0_34_seg_w1_161c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_daew7)
       (not_occupied seg_w1_161b_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_161a_0_34))
       (not_occupied seg_w1_161a_0_34) (not (at-segment ?a seg_w1_161a_0_34))
       (occupied seg_w1_161c_0_34) (not (not_occupied seg_w1_161c_0_34))
       (blocked seg_w1_161c_0_34 ?a) (not (not_blocked seg_w1_161c_0_34 ?a))
       (at-segment ?a seg_w1_161c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_c3c_0_48 ?a))
       (not_blocked seg_w1_c3c_0_48 ?a) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a))))
 (:action
  ugly1632ugly235ugly732ugly928ugly739move_seg_o1_102c_0_34_seg_o1_103a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102c_0_34) (not_occupied seg_o1_103a_0_34)
       (not_blocked seg_o1_103a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103a_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_102c_0_34))
       (not_occupied seg_o1_102c_0_34) (not (at-segment ?a seg_o1_102c_0_34))
       (occupied seg_o1_103a_0_34) (not (not_occupied seg_o1_103a_0_34))
       (blocked seg_o1_103a_0_34 ?a) (not (not_blocked seg_o1_103a_0_34 ?a))
       (at-segment ?a seg_o1_103a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_102a_0_34 ?a))
       (not_blocked seg_o1_102a_0_34 ?a) (not (blocked seg_o1_102b_0_60 ?a))
       (not_blocked seg_o1_102b_0_60 ?a)))
 (:action
  ugly1633ugly610ugly566ugly121ugly892startup_seg_a7_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_0_80_6226)
       (not_occupied seg_m_a7a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a_0_120_934 ?a)
       (not (not_blocked seg_m_a7a_0_120_934 ?a))))
 (:action
  ugly1634ugly362ugly479ugly951ugly142startup_seg_m_a8a9a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9a_0_75)
       (not_occupied seg_m_a8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a))))
 (:action
  ugly1635ugly738ugly587ugly780ugly743move_seg_w1_152b_0_45_seg_w1_152c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152b_0_45) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_daew7)
       (not_occupied seg_w1_152a_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_152b_0_45))
       (not_occupied seg_w1_152b_0_45) (not (at-segment ?a seg_w1_152b_0_45))
       (occupied seg_w1_152c_0_34) (not (not_occupied seg_w1_152c_0_34))
       (blocked seg_w1_152c_0_34 ?a) (not (not_blocked seg_w1_152c_0_34 ?a))
       (at-segment ?a seg_w1_152c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p152_0_75 ?a))
       (not_blocked seg_p152_0_75 ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a))))
 (:action
  ugly1636ugly774ugly519ugly473ugly904move_seg_o1_116a_0_34_seg_o1_116b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_116b_0_60)
       (not_blocked seg_o1_116b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_116b_0_60 airplane_daew7)
       (not_occupied seg_o1_116c_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_116a_0_34))
       (not_occupied seg_o1_116a_0_34) (not (at-segment ?a seg_o1_116a_0_34))
       (occupied seg_o1_116b_0_60) (not (not_occupied seg_o1_116b_0_60))
       (blocked seg_o1_116b_0_60 ?a) (not (not_blocked seg_o1_116b_0_60 ?a))
       (at-segment ?a seg_o1_116b_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_115c_0_34 ?a))
       (not_blocked seg_o1_115c_0_34 ?a) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action
  ugly1637ugly558ugly246ugly120ugly450move_seg_o1_109b_0_60_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109b_0_60) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_daew7)
       (not_occupied seg_o1_109a_0_34) (not_occupied seg_o1_109d_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_109b_0_60))
       (not_occupied seg_o1_109b_0_60) (not (at-segment ?a seg_o1_109b_0_60))
       (occupied seg_o1_109c_0_34) (not (not_occupied seg_o1_109c_0_34))
       (blocked seg_o1_109c_0_34 ?a) (not (not_blocked seg_o1_109c_0_34 ?a))
       (at-segment ?a seg_o1_109c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p109_0_76 ?a))
       (not_blocked seg_p109_0_76 ?a) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a)) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action
  ugly1638ugly761ugly1ugly741ugly358move_seg_p142_0_75_seg_w1_142b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p142_0_75) (not_occupied seg_w1_142b_0_45)
       (not_blocked seg_w1_142b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_142b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p142_0_75))
       (not_occupied seg_p142_0_75) (not (at-segment ?a seg_p142_0_75))
       (occupied seg_w1_142b_0_45) (not (not_occupied seg_w1_142b_0_45))
       (blocked seg_w1_142b_0_45 ?a) (not (not_blocked seg_w1_142b_0_45 ?a))
       (at-segment ?a seg_w1_142b_0_45)))
 (:action
  ugly1639ugly634ugly376ugly171ugly685startup_seg_o1_108d_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108d_0_45)
       (not_occupied seg_o1_108a_0_34) (not_occupied seg_o1_108b_0_60)
       (not_occupied seg_o1_108c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a)) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a)) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a))))
 (:action ugly1640ugly28ugly104ugly369ugly309startup_seg_p153_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p153_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1641ugly491ugly676ugly742ugly319startup_seg_m_a6d_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6d_0_120_934)
       (not_occupied seg_m_a6a_0_60) (not_occupied seg_m_a6b_0_60)
       (not_occupied seg_m_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a_0_60 ?a)
       (not (not_blocked seg_m_a6a_0_60 ?a)) (blocked seg_m_a6b_0_60 ?a)
       (not (not_blocked seg_m_a6b_0_60 ?a)) (blocked seg_m_a6c_0_60 ?a)
       (not (not_blocked seg_m_a6c_0_60 ?a))))
 (:action
  ugly1642ugly421ugly728ugly202ugly310move_seg_w1_143a_0_34_seg_w1_143b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_143b_0_45)
       (not_blocked seg_w1_143b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_143b_0_45 airplane_daew7)
       (not_occupied seg_w1_143c_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_143a_0_34))
       (not_occupied seg_w1_143a_0_34) (not (at-segment ?a seg_w1_143a_0_34))
       (occupied seg_w1_143b_0_45) (not (not_occupied seg_w1_143b_0_45))
       (blocked seg_w1_143b_0_45 ?a) (not (not_blocked seg_w1_143b_0_45 ?a))
       (at-segment ?a seg_w1_143b_0_45) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_142c_0_34 ?a))
       (not_blocked seg_w1_142c_0_34 ?a) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action
  ugly1643ugly747ugly188ugly236ugly232startup_seg_o1_102b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102b_0_60)
       (not_occupied seg_o1_102a_0_34) (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action
  ugly1644ugly637ugly659ugly336ugly635startup_seg_a9_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_a_0_158_647)
       (not_occupied seg_a9_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_b_0_159_512 ?a)
       (not (not_blocked seg_a9_b_0_159_512 ?a))))
 (:action
  ugly1645ugly138ugly195ugly258ugly854move_seg_w1_141a_0_34_seg_w1_c1c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_c1c_0_34)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c1c_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_141a_0_34))
       (not_occupied seg_w1_141a_0_34) (not (at-segment ?a seg_w1_141a_0_34))
       (occupied seg_w1_c1c_0_34) (not (not_occupied seg_w1_c1c_0_34))
       (blocked seg_w1_c1c_0_34 ?a) (not (not_blocked seg_w1_c1c_0_34 ?a))
       (at-segment ?a seg_w1_c1c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_141b_0_45 ?a))
       (not_blocked seg_w1_141b_0_45 ?a) (not (blocked seg_w1_141c_0_34 ?a))
       (not_blocked seg_w1_141c_0_34 ?a)))
 (:action
  ugly1646ugly352ugly264ugly302ugly652startup_seg_n_a8a9d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9d_0_75)
       (not_occupied seg_n_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9c_0_75 ?a)
       (not (not_blocked seg_n_a8a9c_0_75 ?a))))
 (:action
  ugly1647ugly108ugly50ugly251ugly663move_seg_w1_c3c_0_48_seg_w1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c3c_0_48) (not_occupied seg_w1_c3a_0_34)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c3a_0_34 airplane_daew7)
       (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_c3c_0_48))
       (not_occupied seg_w1_c3c_0_48) (not (at-segment ?a seg_w1_c3c_0_48))
       (occupied seg_w1_c3a_0_34) (not (not_occupied seg_w1_c3a_0_34))
       (blocked seg_w1_c3a_0_34 ?a) (not (not_blocked seg_w1_c3a_0_34 ?a))
       (at-segment ?a seg_w1_c3a_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_161a_0_34 ?a))
       (not_blocked seg_w1_161a_0_34 ?a) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action
  ugly1648ugly645ugly214ugly82ugly23startup_seg_n_n2a4d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4d_0_75)
       (not_occupied seg_n_n2a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4c_0_75 ?a)
       (not (not_blocked seg_n_n2a4c_0_75 ?a))))
 (:action
  ugly1649ugly860ugly324ugly593ugly510move_seg_p109_0_76_seg_o1_109b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p109_0_76) (not_occupied seg_o1_109b_0_60)
       (not_blocked seg_o1_109b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_109b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p109_0_76))
       (not_occupied seg_p109_0_76) (not (at-segment ?a seg_p109_0_76))
       (occupied seg_o1_109b_0_60) (not (not_occupied seg_o1_109b_0_60))
       (blocked seg_o1_109b_0_60 ?a) (not (not_blocked seg_o1_109b_0_60 ?a))
       (at-segment ?a seg_o1_109b_0_60)))
 (:action
  ugly1650ugly521ugly402ugly141ugly461startup_seg_p163_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p163_0_75)
       (not_occupied seg_w1_163b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action
  ugly1651ugly868ugly875ugly518ugly810startup_seg_n_a9a10e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10e_0_75)
       (not_occupied seg_n_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10f_0_75 ?a)
       (not (not_blocked seg_n_a9a10f_0_75 ?a))))
 (:action ugly1652ugly105ugly60ugly400ugly495startup_seg_c3_b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_b_0_80)
       (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action
  ugly1653ugly381ugly672ugly615ugly149startup_seg_a2_b_0_90_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_b_0_90)
       (not_occupied seg_a2_a_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_a_0_90 ?a)
       (not (not_blocked seg_a2_a_0_90 ?a))))
 (:action
  ugly1654ugly460ugly115ugly857ugly653startup_seg_o1_110a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110a_0_34)
       (not_occupied seg_o1_110b_0_60) (not_occupied seg_o1_110c_0_34)
       (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a)) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a)) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action
  ugly1655ugly604ugly449ugly881ugly100move_seg_w1_143a_0_34_seg_w1_142c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_143a_0_34))
       (not_occupied seg_w1_143a_0_34) (not (at-segment ?a seg_w1_143a_0_34))
       (occupied seg_w1_142c_0_34) (not (not_occupied seg_w1_142c_0_34))
       (blocked seg_w1_142c_0_34 ?a) (not (not_blocked seg_w1_142c_0_34 ?a))
       (at-segment ?a seg_w1_142c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_143b_0_45 ?a))
       (not_blocked seg_w1_143b_0_45 ?a) (not (blocked seg_w1_143c_0_60 ?a))
       (not_blocked seg_w1_143c_0_60 ?a)))
 (:action
  ugly1656ugly822ugly52ugly509ugly436startup_seg_n_a4a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a_0_60)
       (not_occupied seg_n_a4b_0_60) (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a)) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action
  ugly1657ugly238ugly89ugly542ugly789move_seg_p111_0_76_seg_o1_111b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p111_0_76) (not_occupied seg_o1_111b_0_60)
       (not_blocked seg_o1_111b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_111b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p111_0_76))
       (not_occupied seg_p111_0_76) (not (at-segment ?a seg_p111_0_76))
       (occupied seg_o1_111b_0_60) (not (not_occupied seg_o1_111b_0_60))
       (blocked seg_o1_111b_0_60 ?a) (not (not_blocked seg_o1_111b_0_60 ?a))
       (at-segment ?a seg_o1_111b_0_60)))
 (:action
  ugly1658ugly475ugly908ugly720ugly618move_seg_08l_a6a7_0_450_seg_08l_a7d_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a6a7_0_450) (not_occupied seg_08l_a7d_0_80)
       (not_blocked seg_08l_a7d_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a7d_0_80 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_08l_a6a7_0_450))
       (not_occupied seg_08l_a6a7_0_450)
       (not (at-segment ?a seg_08l_a6a7_0_450)) (occupied seg_08l_a7d_0_80)
       (not (not_occupied seg_08l_a7d_0_80)) (blocked seg_08l_a7d_0_80 ?a)
       (not (not_blocked seg_08l_a7d_0_80 ?a)) (at-segment ?a seg_08l_a7d_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_08l_a4a_0_80 ?a)) (not_blocked seg_08l_a4a_0_80 ?a)
       (not (blocked seg_08l_a2a_0_80 ?a)) (not_blocked seg_08l_a2a_0_80 ?a)
       (not (blocked seg_09l_0_80 ?a)) (not_blocked seg_09l_0_80 ?a)
       (not (blocked seg_08l_a7a_0_80 ?a)) (not_blocked seg_08l_a7a_0_80 ?a)
       (not (blocked seg_08l_a3a_0_80 ?a)) (not_blocked seg_08l_a3a_0_80 ?a)
       (not (blocked seg_08l_0_80 ?a)) (not_blocked seg_08l_0_80 ?a)
       (not (blocked seg_08l_a3a4_0_450 ?a))
       (not_blocked seg_08l_a3a4_0_450 ?a) (not (blocked seg_08l_a4d_0_80 ?a))
       (not_blocked seg_08l_a4d_0_80 ?a)))
 (:action
  ugly1659ugly239ugly106ugly939ugly409move_seg_w1_142a_0_34_seg_w1_142c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_daew7)
       (not_occupied seg_w1_142b_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_142a_0_34))
       (not_occupied seg_w1_142a_0_34) (not (at-segment ?a seg_w1_142a_0_34))
       (occupied seg_w1_142c_0_34) (not (not_occupied seg_w1_142c_0_34))
       (blocked seg_w1_142c_0_34 ?a) (not (not_blocked seg_w1_142c_0_34 ?a))
       (at-segment ?a seg_w1_142c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_141c_0_34 ?a))
       (not_blocked seg_w1_141c_0_34 ?a) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a))))
 (:action
  ugly1660ugly281ugly470ugly441ugly426startup_seg_n_a6a8c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8c_0_75)
       (not_occupied seg_n_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8d_0_75 ?a)
       (not (not_blocked seg_n_a6a8d_0_75 ?a))))
 (:action
  ugly1661ugly339ugly811ugly223ugly96startup_seg_m_a9a10a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10a_0_75)
       (not_occupied seg_m_a9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a_0_60 ?a)
       (not (not_blocked seg_m_a9a_0_60 ?a))))
 (:action
  ugly1662ugly861ugly639ugly733ugly147startup_seg_p110_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p110_0_76)
       (not_occupied seg_o1_110b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a))))
 (:action
  ugly1663ugly940ugly136ugly816ugly335startup_seg_p103_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p103_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly1664ugly17ugly395ugly112ugly17park_seg_p153_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p153_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p153_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_153b_0_45 ?a)) (not_blocked seg_w1_153b_0_45 ?a)))
 (:action
  ugly1665ugly456ugly387ugly331ugly474move_seg_n_a2a3c_0_75_seg_n_a2a3b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3c_0_75) (not_occupied seg_n_a2a3b_0_75)
       (not_blocked seg_n_a2a3b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3c_0_75))
       (not_occupied seg_n_a2a3c_0_75) (not (at-segment ?a seg_n_a2a3c_0_75))
       (occupied seg_n_a2a3b_0_75) (not (not_occupied seg_n_a2a3b_0_75))
       (blocked seg_n_a2a3b_0_75 ?a) (not (not_blocked seg_n_a2a3b_0_75 ?a))
       (at-segment ?a seg_n_a2a3b_0_75) (not (blocked seg_n_a2a3d_0_75 ?a))
       (not_blocked seg_n_a2a3d_0_75 ?a)))
 (:action
  ugly1666ugly802ugly821ugly766ugly491startup_seg_08l_a9b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a9b_0_161_245)
       (not_occupied seg_a9_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_a_0_158_647 ?a)
       (not (not_blocked seg_a9_a_0_158_647 ?a))))
 (:action
  ugly1667ugly810ugly938ugly941ugly825move_seg_08l_a3a_0_80_seg_08l_a3a4_0_450_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a3a_0_80) (not_occupied seg_08l_a3a4_0_450)
       (not_blocked seg_08l_a3a4_0_450 airplane_cfbeg)
       (not_blocked seg_08l_a3a4_0_450 airplane_daew7)
       (not_occupied seg_08l_a2a_0_80) (not_occupied seg_09l_0_80)
       (not_occupied seg_08l_a7a_0_80) (not_occupied seg_08l_a4a_0_80)
       (not_occupied seg_08l_0_80))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_08l_a3a_0_80))
       (not_occupied seg_08l_a3a_0_80) (not (at-segment ?a seg_08l_a3a_0_80))
       (occupied seg_08l_a3a4_0_450) (not (not_occupied seg_08l_a3a4_0_450))
       (blocked seg_08l_a3a4_0_450 ?a)
       (not (not_blocked seg_08l_a3a4_0_450 ?a))
       (at-segment ?a seg_08l_a3a4_0_450)
       (not (blocked seg_08l_a3b_0_161_245 ?a))
       (not_blocked seg_08l_a3b_0_161_245 ?a) (blocked seg_08l_a2a_0_80 ?a)
       (not (not_blocked seg_08l_a2a_0_80 ?a)) (blocked seg_09l_0_80 ?a)
       (not (not_blocked seg_09l_0_80 ?a)) (blocked seg_08l_a7a_0_80 ?a)
       (not (not_blocked seg_08l_a7a_0_80 ?a)) (blocked seg_08l_a4a_0_80 ?a)
       (not (not_blocked seg_08l_a4a_0_80 ?a))))
 (:action
  ugly1668ugly114ugly628ugly809ugly448startup_seg_p119_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p119_0_76)
       (not_occupied seg_o1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a))))
 (:action
  ugly1669ugly36ugly274ugly73ugly837startup_seg_o1_110b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110b_0_60)
       (not_occupied seg_p110_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p110_0_76 ?a)
       (not (not_blocked seg_p110_0_76 ?a))))
 (:action
  ugly1670ugly373ugly389ugly286ugly8move_seg_c1_n2b_0_80_seg_o1_c1c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c1_n2b_0_80) (not_occupied seg_o1_c1c_0_80)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c1c_0_80 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c1_n2b_0_80))
       (not_occupied seg_c1_n2b_0_80) (not (at-segment ?a seg_c1_n2b_0_80))
       (occupied seg_o1_c1c_0_80) (not (not_occupied seg_o1_c1c_0_80))
       (blocked seg_o1_c1c_0_80 ?a) (not (not_blocked seg_o1_c1c_0_80 ?a))
       (at-segment ?a seg_o1_c1c_0_80) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_c1_n2a_0_60 ?a))
       (not_blocked seg_c1_n2a_0_60 ?a) (not (blocked seg_c1_n2c_0_60 ?a))
       (not_blocked seg_c1_n2c_0_60 ?a)))
 (:action
  ugly1671ugly621ugly620ugly754ugly378startup_seg_n_a6a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a_0_60)
       (not_occupied seg_m_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6b_0_60 ?a)
       (not (not_blocked seg_m_a6b_0_60 ?a))))
 (:action
  ugly1672ugly783ugly56ugly683ugly609move_seg_n_a2a_0_60_seg_a2_c_0_100_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a2a_0_60) (not_occupied seg_a2_c_0_100)
       (not_blocked seg_a2_c_0_100 airplane_cfbeg)
       (not_blocked seg_a2_c_0_100 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a_0_60))
       (not_occupied seg_n_a2a_0_60) (not (at-segment ?a seg_n_a2a_0_60))
       (occupied seg_a2_c_0_100) (not (not_occupied seg_a2_c_0_100))
       (blocked seg_a2_c_0_100 ?a) (not (not_blocked seg_a2_c_0_100 ?a))
       (at-segment ?a seg_a2_c_0_100) (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_n_a2b_0_60 ?a)) (not_blocked seg_n_a2b_0_60 ?a)))
 (:action ugly1673ugly258ugly854ugly6ugly185startup_seg_n_a9c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9c_0_60)
       (not_occupied seg_n_a9a_0_60) (not_occupied seg_n_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a)) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a))))
 (:action
  ugly1674ugly399ugly756ugly858ugly216startup_seg_n_a4a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a_0_60)
       (not_occupied seg_m_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4c_0_60 ?a)
       (not (not_blocked seg_m_a4c_0_60 ?a))))
 (:action
  ugly1675ugly361ugly281ugly470ugly441startup_seg_w1_162a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162a_0_34)
       (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action
  ugly1676ugly768ugly181ugly12ugly616move_seg_o1_c4c_0_80_seg_o1_c4a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4c_0_80) (not_occupied seg_o1_c4a_0_34)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c4a_0_34 airplane_daew7)
       (not_occupied seg_o1_c4b_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c4c_0_80))
       (not_occupied seg_o1_c4c_0_80) (not (at-segment ?a seg_o1_c4c_0_80))
       (occupied seg_o1_c4a_0_34) (not (not_occupied seg_o1_c4a_0_34))
       (blocked seg_o1_c4a_0_34 ?a) (not (not_blocked seg_o1_c4a_0_34 ?a))
       (at-segment ?a seg_o1_c4a_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_c4_s6a_0_80 ?a))
       (not_blocked seg_c4_s6a_0_80 ?a) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a))))
 (:action
  ugly1677ugly612ugly191ugly735ugly583startup_seg_n_a4a7e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7e_0_75)
       (not_occupied seg_n_a4a7f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7f_0_75 ?a)
       (not (not_blocked seg_n_a4a7f_0_75 ?a))))
 (:action
  ugly1678ugly396ugly67ugly332ugly253move_seg_w1_153c_0_34_seg_w1_154a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153c_0_34) (not_occupied seg_w1_154a_0_34)
       (not_blocked seg_w1_154a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154a_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_153c_0_34))
       (not_occupied seg_w1_153c_0_34) (not (at-segment ?a seg_w1_153c_0_34))
       (occupied seg_w1_154a_0_34) (not (not_occupied seg_w1_154a_0_34))
       (blocked seg_w1_154a_0_34 ?a) (not (not_blocked seg_w1_154a_0_34 ?a))
       (at-segment ?a seg_w1_154a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_153a_0_34 ?a))
       (not_blocked seg_w1_153a_0_34 ?a) (not (blocked seg_w1_153b_0_45 ?a))
       (not_blocked seg_w1_153b_0_45 ?a)))
 (:action
  ugly1679ugly762ugly323ugly467ugly515startup_seg_p117_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p117_0_76)
       (not_occupied seg_o1_117b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a))))
 (:action
  ugly1680ugly945ugly533ugly62ugly292startup_seg_a6_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_a_0_158_647)
       (not_occupied seg_a6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_b_0_159_512 ?a)
       (not (not_blocked seg_a6_b_0_159_512 ?a))))
 (:action
  ugly1681ugly560ugly727ugly184ugly746startup_seg_w1_c4a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4a_0_34)
       (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action
  ugly1682ugly53ugly207ugly640ugly133startup_seg_m_a4a7d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7d_0_75)
       (not_occupied seg_m_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7e_0_75 ?a)
       (not (not_blocked seg_m_a4a7e_0_75 ?a))))
 (:action
  ugly1683ugly670ugly613ugly919ugly303startup_seg_w1_162b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162b_0_45)
       (not_occupied seg_w1_162a_0_34) (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action
  ugly1684ugly596ugly771ugly918ugly131startup_seg_n_a9a10a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10a_0_80)
       (not_occupied seg_n_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10b_0_75 ?a)
       (not (not_blocked seg_n_a9a10b_0_75 ?a))))
 (:action
  ugly1685ugly177ugly853ugly287ugly109startup_seg_w1_161a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161a_0_34)
       (not_occupied seg_w1_161b_0_45) (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action
  ugly1686ugly82ugly23ugly867ugly786move_seg_o1_117c_0_34_seg_o1_117a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117c_0_34) (not_occupied seg_o1_117a_0_34)
       (not_blocked seg_o1_117a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117a_0_34 airplane_daew7)
       (not_occupied seg_o1_117b_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_117c_0_34))
       (not_occupied seg_o1_117c_0_34) (not (at-segment ?a seg_o1_117c_0_34))
       (occupied seg_o1_117a_0_34) (not (not_occupied seg_o1_117a_0_34))
       (blocked seg_o1_117a_0_34 ?a) (not (not_blocked seg_o1_117a_0_34 ?a))
       (at-segment ?a seg_o1_117a_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_118a_0_34 ?a))
       (not_blocked seg_o1_118a_0_34 ?a) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a))))
 (:action
  ugly1687ugly532ugly689ugly137ugly776startup_seg_n_a3c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3c_0_60)
       (not_occupied seg_n1_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_0_108 ?a)
       (not (not_blocked seg_n1_0_108 ?a))))
 (:action ugly1688ugly191ugly735ugly583ugly882park_seg_p133_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p133_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p133_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_110d_0_45 ?a)) (not_blocked seg_o1_110d_0_45 ?a)))
 (:action
  ugly1689ugly89ugly542ugly789ugly252startup_seg_n_a7a6a_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6a_0_85)
       (not_occupied seg_n_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a))))
 (:action
  ugly1690ugly685ugly525ugly234ugly581move_seg_o1_102a_0_34_seg_o1_c1b_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_102a_0_34))
       (not_occupied seg_o1_102a_0_34) (not (at-segment ?a seg_o1_102a_0_34))
       (occupied seg_o1_c1b_0_34) (not (not_occupied seg_o1_c1b_0_34))
       (blocked seg_o1_c1b_0_34 ?a) (not (not_blocked seg_o1_c1b_0_34 ?a))
       (at-segment ?a seg_o1_c1b_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_102b_0_60 ?a))
       (not_blocked seg_o1_102b_0_60 ?a) (not (blocked seg_o1_102c_0_34 ?a))
       (not_blocked seg_o1_102c_0_34 ?a)))
 (:action
  ugly1691ugly655ugly102ugly905ugly58move_seg_o1_102a_0_34_seg_o1_102b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_102b_0_60)
       (not_blocked seg_o1_102b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_102b_0_60 airplane_daew7)
       (not_occupied seg_o1_102c_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_102a_0_34))
       (not_occupied seg_o1_102a_0_34) (not (at-segment ?a seg_o1_102a_0_34))
       (occupied seg_o1_102b_0_60) (not (not_occupied seg_o1_102b_0_60))
       (blocked seg_o1_102b_0_60 ?a) (not (not_blocked seg_o1_102b_0_60 ?a))
       (at-segment ?a seg_o1_102b_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_c1b_0_34 ?a))
       (not_blocked seg_o1_c1b_0_34 ?a) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action ugly1692ugly299ugly481ugly862ugly422park_seg_p111_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p111_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p111_0_76) (not (is-moving ?a))))
 (:action
  ugly1693ugly296ugly833ugly696ugly462move_seg_w1_151a_0_34_seg_w1_151c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_daew7)
       (not_occupied seg_w1_151b_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_151a_0_34))
       (not_occupied seg_w1_151a_0_34) (not (at-segment ?a seg_w1_151a_0_34))
       (occupied seg_w1_151c_0_34) (not (not_occupied seg_w1_151c_0_34))
       (blocked seg_w1_151c_0_34 ?a) (not (not_blocked seg_w1_151c_0_34 ?a))
       (at-segment ?a seg_w1_151c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_c2c_0_34 ?a))
       (not_blocked seg_w1_c2c_0_34 ?a) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action
  ugly1694ugly909ugly217ugly550ugly413startup_seg_a4_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_1_0_80_6226)
       (not_occupied seg_a4_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_a_0_157_785 ?a)
       (not (not_blocked seg_a4_a_0_157_785 ?a))))
 (:action
  ugly1695ugly414ugly51ugly524ugly896startup_seg_n_a6c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6c_0_60)
       (not_occupied seg_n_a6a_0_60) (not_occupied seg_n_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a)) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a))))
 (:action
  ugly1696ugly711ugly888ugly544ugly605move_seg_w1_154a_0_34_seg_w1_154c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_daew7)
       (not_occupied seg_w1_154b_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_154a_0_34))
       (not_occupied seg_w1_154a_0_34) (not (at-segment ?a seg_w1_154a_0_34))
       (occupied seg_w1_154c_0_34) (not (not_occupied seg_w1_154c_0_34))
       (blocked seg_w1_154c_0_34 ?a) (not (not_blocked seg_w1_154c_0_34 ?a))
       (at-segment ?a seg_w1_154c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_153c_0_34 ?a))
       (not_blocked seg_w1_153c_0_34 ?a) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action
  ugly1697ugly148ugly356ugly562ugly580startup_seg_w1_164a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164a_0_34)
       (not_occupied seg_w1_164b_0_45) (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action
  ugly1698ugly378ugly760ugly466ugly637startup_seg_a3_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_a_0_158_647)
       (not_occupied seg_08l_a3b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a3b_0_161_245 ?a)
       (not (not_blocked seg_08l_a3b_0_161_245 ?a))))
 (:action
  ugly1699ugly488ugly333ugly651ugly291startup_seg_w1_151a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151a_0_34)
       (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action
  ugly1700ugly157ugly513ugly935ugly502startup_seg_p162_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p162_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1701ugly31ugly634ugly376ugly171startup_seg_m_a3a_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a_0_120_934)
       (not_occupied seg_m_a3b_0_60) (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a)) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action
  ugly1702ugly779ugly589ugly777ugly97move_seg_a8_b_0_80_6226_seg_m_a8d_0_120_934_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_b_0_80_6226) (not_occupied seg_m_a8d_0_120_934)
       (not_blocked seg_m_a8d_0_120_934 airplane_cfbeg)
       (not_blocked seg_m_a8d_0_120_934 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a8_b_0_80_6226))
       (not_occupied seg_a8_b_0_80_6226)
       (not (at-segment ?a seg_a8_b_0_80_6226)) (occupied seg_m_a8d_0_120_934)
       (not (not_occupied seg_m_a8d_0_120_934))
       (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))
       (at-segment ?a seg_m_a8d_0_120_934) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_a8_b_1_0_79_7559 ?a))
       (not_blocked seg_a8_b_1_0_79_7559 ?a)))
 (:action
  ugly1703ugly919ugly303ugly429ugly161move_seg_p134_0_75_seg_o1_111d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p134_0_75) (not_occupied seg_o1_111d_0_45)
       (not_blocked seg_o1_111d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_111d_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p134_0_75))
       (not_occupied seg_p134_0_75) (not (at-segment ?a seg_p134_0_75))
       (occupied seg_o1_111d_0_45) (not (not_occupied seg_o1_111d_0_45))
       (blocked seg_o1_111d_0_45 ?a) (not (not_blocked seg_o1_111d_0_45 ?a))
       (at-segment ?a seg_o1_111d_0_45)))
 (:action ugly1704ugly386ugly563ugly87ugly126park_seg_p115_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p115_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p115_0_76) (not (is-moving ?a))))
 (:action
  ugly1705ugly664ugly627ugly828ugly674move_seg_o1_116a_0_34_seg_o1_116c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_daew7)
       (not_occupied seg_o1_116b_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_116a_0_34))
       (not_occupied seg_o1_116a_0_34) (not (at-segment ?a seg_o1_116a_0_34))
       (occupied seg_o1_116c_0_34) (not (not_occupied seg_o1_116c_0_34))
       (blocked seg_o1_116c_0_34 ?a) (not (not_blocked seg_o1_116c_0_34 ?a))
       (at-segment ?a seg_o1_116c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_115c_0_34 ?a))
       (not_blocked seg_o1_115c_0_34 ?a) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action
  ugly1706ugly431ugly874ugly70ugly590move_seg_c1_n2a_0_60_seg_c1_n2c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2a_0_60) (not_occupied seg_c1_n2c_0_60)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2c_0_60 airplane_daew7)
       (not_occupied seg_c1_n2b_0_80))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c1_n2a_0_60))
       (not_occupied seg_c1_n2a_0_60) (not (at-segment ?a seg_c1_n2a_0_60))
       (occupied seg_c1_n2c_0_60) (not (not_occupied seg_c1_n2c_0_60))
       (blocked seg_c1_n2c_0_60 ?a) (not (not_blocked seg_c1_n2c_0_60 ?a))
       (at-segment ?a seg_c1_n2c_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_n2_0_108 ?a))
       (not_blocked seg_n2_0_108 ?a) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a))))
 (:action
  ugly1707ugly209ugly856ugly863ugly203startup_seg_m_a4a7c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7c_0_75)
       (not_occupied seg_m_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7b_0_75 ?a)
       (not (not_blocked seg_m_a4a7b_0_75 ?a))))
 (:action
  ugly1708ugly56ugly683ugly609ugly19move_seg_08l_0_80_seg_08l_a3a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_0_80) (not_occupied seg_08l_a3a_0_80)
       (not_blocked seg_08l_a3a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a3a_0_80 airplane_daew7)
       (not_occupied seg_08l_a3b_0_161_245))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_08l_0_80))
       (not_occupied seg_08l_0_80) (not (at-segment ?a seg_08l_0_80))
       (occupied seg_08l_a3a_0_80) (not (not_occupied seg_08l_a3a_0_80))
       (blocked seg_08l_a3a_0_80 ?a) (not (not_blocked seg_08l_a3a_0_80 ?a))
       (at-segment ?a seg_08l_a3a_0_80) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_08l_a2a3_0_970 ?a))
       (not_blocked seg_08l_a2a3_0_970 ?a) (blocked seg_08l_a3b_0_161_245 ?a)
       (not (not_blocked seg_08l_a3b_0_161_245 ?a))))
 (:action ugly1709ugly5ugly278ugly250ugly570startup_seg_m_a3b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3b_0_60)
       (not_occupied seg_m_a3a_0_120_934) (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a)) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action
  ugly1710ugly195ugly258ugly854ugly6move_seg_o1_102c_0_34_seg_o1_102a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102c_0_34) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_daew7)
       (not_occupied seg_o1_102b_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_102c_0_34))
       (not_occupied seg_o1_102c_0_34) (not (at-segment ?a seg_o1_102c_0_34))
       (occupied seg_o1_102a_0_34) (not (not_occupied seg_o1_102a_0_34))
       (blocked seg_o1_102a_0_34 ?a) (not (not_blocked seg_o1_102a_0_34 ?a))
       (at-segment ?a seg_o1_102a_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_103a_0_34 ?a))
       (not_blocked seg_o1_103a_0_34 ?a) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action
  ugly1711ugly244ugly744ugly361ugly281startup_seg_p101_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p101_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1712ugly572ugly817ugly698ugly469startup_seg_m_a4a7a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7a_0_75)
       (not_occupied seg_m_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7b_0_75 ?a)
       (not (not_blocked seg_m_a4a7b_0_75 ?a))))
 (:action
  ugly1713ugly890ugly237ugly432ugly362startup_seg_o1_102c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102c_0_34)
       (not_occupied seg_o1_102a_0_34) (not_occupied seg_o1_102b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action ugly1714ugly938ugly941ugly825ugly27park_seg_p102_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p102_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p102_0_76) (not (is-moving ?a))))
 (:action
  ugly1715ugly77ugly835ugly506ugly796startup_seg_m_a6a8e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8e_0_75)
       (not_occupied seg_m_a6a8f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8f_0_115 ?a)
       (not (not_blocked seg_m_a6a8f_0_115 ?a))))
 (:action
  ugly1716ugly763ugly531ugly541ugly493move_seg_w1_151b_0_45_seg_p151_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151b_0_45) (not_occupied seg_p151_0_75)
       (not_blocked seg_p151_0_75 airplane_cfbeg)
       (not_blocked seg_p151_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_151b_0_45))
       (not_occupied seg_w1_151b_0_45) (not (at-segment ?a seg_w1_151b_0_45))
       (occupied seg_p151_0_75) (not (not_occupied seg_p151_0_75))
       (blocked seg_p151_0_75 ?a) (not (not_blocked seg_p151_0_75 ?a))
       (at-segment ?a seg_p151_0_75) (not (blocked seg_w1_151a_0_34 ?a))
       (not_blocked seg_w1_151a_0_34 ?a) (not (blocked seg_w1_151c_0_34 ?a))
       (not_blocked seg_w1_151c_0_34 ?a)))
 (:action
  ugly1717ugly818ugly946ugly511ugly355startup_seg_n_a9a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a_0_60)
       (not_occupied seg_m_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9b_0_60 ?a)
       (not (not_blocked seg_m_a9b_0_60 ?a))))
 (:action
  ugly1718ugly688ugly47ugly753ugly421startup_seg_m_a4a7f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7f_0_115)
       (not_occupied seg_m_a7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7d_0_60 ?a)
       (not (not_blocked seg_m_a7d_0_60 ?a))))
 (:action
  ugly1719ugly812ugly452ugly398ugly504move_seg_o1_104c_0_60_seg_o1_c2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104c_0_60) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_104c_0_60))
       (not_occupied seg_o1_104c_0_60) (not (at-segment ?a seg_o1_104c_0_60))
       (occupied seg_o1_c2a_0_60) (not (not_occupied seg_o1_c2a_0_60))
       (blocked seg_o1_c2a_0_60 ?a) (not (not_blocked seg_o1_c2a_0_60 ?a))
       (at-segment ?a seg_o1_c2a_0_60) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_104a_0_34 ?a))
       (not_blocked seg_o1_104a_0_34 ?a) (not (blocked seg_o1_104b_0_60 ?a))
       (not_blocked seg_o1_104b_0_60 ?a)))
 (:action
  ugly1720ugly632ugly44ugly686ugly512startup_seg_w1_143b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143b_0_45)
       (not_occupied seg_w1_143a_0_34) (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action
  ugly1721ugly590ugly75ugly330ugly889startup_seg_o1_109b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109b_0_60)
       (not_occupied seg_o1_109a_0_34) (not_occupied seg_o1_109c_0_34)
       (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a)) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a)) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action
  ugly1722ugly434ugly118ugly282ugly703startup_seg_c4_s6a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6a_0_80)
       (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action
  ugly1723ugly565ugly347ugly314ugly124startup_seg_a7_a_0_156_924_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_a_0_156_924)
       (not_occupied seg_08l_a7c_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a7c_0_161_245 ?a)
       (not (not_blocked seg_08l_a7c_0_161_245 ?a))))
 (:action
  ugly1724ugly397ugly259ugly582ugly307startup_seg_m_a9a10e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10e_0_75)
       (not_occupied seg_m_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10d_0_75 ?a)
       (not (not_blocked seg_m_a9a10d_0_75 ?a))))
 (:action
  ugly1725ugly430ugly227ugly375ugly579startup_seg_a9_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_a_0_158_647)
       (not_occupied seg_08l_a9b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a9b_0_161_245 ?a)
       (not (not_blocked seg_08l_a9b_0_161_245 ?a))))
 (:action
  ugly1726ugly185ugly929ugly699ugly399startup_seg_m_a6d_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6d_0_120_934)
       (not_occupied seg_a6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_b_0_159_512 ?a)
       (not (not_blocked seg_a6_b_0_159_512 ?a))))
 (:action
  ugly1727ugly556ugly831ugly249ugly245move_seg_n_a6a8b_0_75_seg_n_a6a8a_0_115_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8b_0_75) (not_occupied seg_n_a6a8a_0_115)
       (not_blocked seg_n_a6a8a_0_115 airplane_cfbeg)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8b_0_75))
       (not_occupied seg_n_a6a8b_0_75) (not (at-segment ?a seg_n_a6a8b_0_75))
       (occupied seg_n_a6a8a_0_115) (not (not_occupied seg_n_a6a8a_0_115))
       (blocked seg_n_a6a8a_0_115 ?a) (not (not_blocked seg_n_a6a8a_0_115 ?a))
       (at-segment ?a seg_n_a6a8a_0_115) (not (blocked seg_n_a6a8c_0_75 ?a))
       (not_blocked seg_n_a6a8c_0_75 ?a)))
 (:action
  ugly1728ugly263ugly146ugly38ugly88move_seg_08l_a3a4_0_450_seg_08l_a4d_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a3a4_0_450) (not_occupied seg_08l_a4d_0_80)
       (not_blocked seg_08l_a4d_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a4d_0_80 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_08l_a3a4_0_450))
       (not_occupied seg_08l_a3a4_0_450)
       (not (at-segment ?a seg_08l_a3a4_0_450)) (occupied seg_08l_a4d_0_80)
       (not (not_occupied seg_08l_a4d_0_80)) (blocked seg_08l_a4d_0_80 ?a)
       (not (not_blocked seg_08l_a4d_0_80 ?a)) (at-segment ?a seg_08l_a4d_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_08l_a3a_0_80 ?a)) (not_blocked seg_08l_a3a_0_80 ?a)
       (not (blocked seg_08l_a2a_0_80 ?a)) (not_blocked seg_08l_a2a_0_80 ?a)
       (not (blocked seg_09l_0_80 ?a)) (not_blocked seg_09l_0_80 ?a)
       (not (blocked seg_08l_a7a_0_80 ?a)) (not_blocked seg_08l_a7a_0_80 ?a)
       (not (blocked seg_08l_a4a_0_80 ?a)) (not_blocked seg_08l_a4a_0_80 ?a)
       (not (blocked seg_08l_0_80 ?a)) (not_blocked seg_08l_0_80 ?a)))
 (:action
  ugly1729ugly886ugly899ugly460ugly115startup_seg_n_n2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a_0_60)
       (not_occupied seg_n_n2b_0_60) (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a)) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action
  ugly1730ugly586ugly878ugly359ugly476move_seg_p131_0_75_seg_o1_108d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p131_0_75) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p131_0_75))
       (not_occupied seg_p131_0_75) (not (at-segment ?a seg_p131_0_75))
       (occupied seg_o1_108d_0_45) (not (not_occupied seg_o1_108d_0_45))
       (blocked seg_o1_108d_0_45 ?a) (not (not_blocked seg_o1_108d_0_45 ?a))
       (at-segment ?a seg_o1_108d_0_45)))
 (:action
  ugly1731ugly412ugly351ugly630ugly204startup_seg_m_a3a4d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4d_0_75)
       (not_occupied seg_m_a3a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4c_0_75 ?a)
       (not (not_blocked seg_m_a3a4c_0_75 ?a))))
 (:action
  ugly1732ugly530ugly325ugly848ugly25startup_seg_08l_a10a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a10a_0_80)
       (not_occupied seg_a10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_1_0_80 ?a)
       (not (not_blocked seg_a10_1_0_80 ?a))))
 (:action
  ugly1733ugly795ugly555ugly348ugly384move_seg_o1_c3d_0_60_seg_o1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3d_0_60) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_daew7)
       (not_occupied seg_o1_c3b_0_60) (not_occupied seg_o1_c3c_0_48))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c3d_0_60))
       (not_occupied seg_o1_c3d_0_60) (not (at-segment ?a seg_o1_c3d_0_60))
       (occupied seg_o1_c3a_0_34) (not (not_occupied seg_o1_c3a_0_34))
       (blocked seg_o1_c3a_0_34 ?a) (not (not_blocked seg_o1_c3a_0_34 ?a))
       (at-segment ?a seg_o1_c3a_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_c3_b_0_80 ?a))
       (not_blocked seg_c3_b_0_80 ?a) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a)) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a))))
 (:action
  ugly1734ugly876ugly943ugly472ugly410startup_seg_n_n2a4d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4d_0_75)
       (not_occupied seg_n_n2a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4e_0_75 ?a)
       (not (not_blocked seg_n_n2a4e_0_75 ?a))))
 (:action
  ugly1735ugly555ugly348ugly384ugly268startup_seg_m_a9b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9b_0_60)
       (not_occupied seg_m_a9a_0_60) (not_occupied seg_m_a9c_0_60)
       (not_occupied seg_m_a9d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a_0_60 ?a)
       (not (not_blocked seg_m_a9a_0_60 ?a)) (blocked seg_m_a9c_0_60 ?a)
       (not (not_blocked seg_m_a9c_0_60 ?a)) (blocked seg_m_a9d_0_120_934 ?a)
       (not (not_blocked seg_m_a9d_0_120_934 ?a))))
 (:action
  ugly1736ugly859ugly787ugly903ugly370startup_seg_p101_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p101_0_76)
       (not_occupied seg_o1_c1a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a))))
 (:action
  ugly1737ugly178ugly621ugly620ugly754startup_seg_w1_152a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152a_0_34)
       (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action
  ugly1738ugly797ugly420ugly684ugly802startup_seg_m_a10a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10a_0_60)
       (not_occupied seg_m_a10b_0_60) (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a)) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action
  ugly1739ugly904ugly289ugly681ugly877startup_seg_o1_c3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3b_0_60)
       (not_occupied seg_p112_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p112_0_76 ?a)
       (not (not_blocked seg_p112_0_76 ?a))))
 (:action
  ugly1740ugly758ugly464ugly536ugly270startup_seg_n_a6a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a_0_60)
       (not_occupied seg_n_a6b_0_60) (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a)) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action
  ugly1741ugly599ugly182ugly197ugly74move_seg_a2_c_0_100_seg_a2_b_0_90_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_c_0_100) (not_occupied seg_a2_b_0_90)
       (not_blocked seg_a2_b_0_90 airplane_cfbeg)
       (not_blocked seg_a2_b_0_90 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a2_c_0_100))
       (not_occupied seg_a2_c_0_100) (not (at-segment ?a seg_a2_c_0_100))
       (occupied seg_a2_b_0_90) (not (not_occupied seg_a2_b_0_90))
       (blocked seg_a2_b_0_90 ?a) (not (not_blocked seg_a2_b_0_90 ?a))
       (at-segment ?a seg_a2_b_0_90) (not (blocked seg_n_a2a_0_60 ?a))
       (not_blocked seg_n_a2a_0_60 ?a)))
 (:action
  ugly1742ugly423ugly241ugly710ugly540move_seg_n_a4c_0_60_seg_n_n2a4e_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a4c_0_60) (not_occupied seg_n_n2a4e_0_75)
       (not_blocked seg_n_n2a4e_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4e_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4c_0_60))
       (not_occupied seg_n_a4c_0_60) (not (at-segment ?a seg_n_a4c_0_60))
       (occupied seg_n_n2a4e_0_75) (not (not_occupied seg_n_n2a4e_0_75))
       (blocked seg_n_n2a4e_0_75 ?a) (not (not_blocked seg_n_n2a4e_0_75 ?a))
       (at-segment ?a seg_n_n2a4e_0_75) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_n_a4a_0_60 ?a))
       (not_blocked seg_n_a4a_0_60 ?a) (not (blocked seg_n_a4b_0_60 ?a))
       (not_blocked seg_n_a4b_0_60 ?a)))
 (:action
  ugly1743ugly312ugly13ugly840ugly849move_seg_w1_154b_0_45_seg_p154_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154b_0_45) (not_occupied seg_p154_0_75)
       (not_blocked seg_p154_0_75 airplane_cfbeg)
       (not_blocked seg_p154_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_154b_0_45))
       (not_occupied seg_w1_154b_0_45) (not (at-segment ?a seg_w1_154b_0_45))
       (occupied seg_p154_0_75) (not (not_occupied seg_p154_0_75))
       (blocked seg_p154_0_75 ?a) (not (not_blocked seg_p154_0_75 ?a))
       (at-segment ?a seg_p154_0_75) (not (blocked seg_w1_154a_0_34 ?a))
       (not_blocked seg_w1_154a_0_34 ?a) (not (blocked seg_w1_154c_0_34 ?a))
       (not_blocked seg_w1_154c_0_34 ?a)))
 (:action ugly1744ugly625ugly86ugly21ugly194startup_seg_p163_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p163_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1745ugly187ugly610ugly566ugly121startup_seg_n_a7a6b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6b_0_75)
       (not_occupied seg_n_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6c_0_75 ?a)
       (not (not_blocked seg_n_a7a6c_0_75 ?a))))
 (:action
  ugly1746ugly888ugly544ugly605ugly140startup_seg_n_a7a6b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6b_0_75)
       (not_occupied seg_n_a7a6a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6a_0_85 ?a)
       (not (not_blocked seg_n_a7a6a_0_85 ?a))))
 (:action
  ugly1747ugly73ugly837ugly552ugly451startup_seg_o1_108c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108c_0_34)
       (not_occupied seg_o1_109a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a))))
 (:action
  ugly1748ugly819ugly576ugly952ugly240startup_seg_o1_108a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108a_0_34)
       (not_occupied seg_o1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a))))
 (:action ugly1749ugly567ugly897ugly33ugly483park_seg_p134_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p134_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p134_0_75) (not (is-moving ?a))))
 (:action
  ugly1750ugly647ugly316ugly159ugly107move_seg_o1_103c_0_34_seg_o1_103a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103c_0_34) (not_occupied seg_o1_103a_0_34)
       (not_blocked seg_o1_103a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103a_0_34 airplane_daew7)
       (not_occupied seg_o1_103b_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_103c_0_34))
       (not_occupied seg_o1_103c_0_34) (not (at-segment ?a seg_o1_103c_0_34))
       (occupied seg_o1_103a_0_34) (not (not_occupied seg_o1_103a_0_34))
       (blocked seg_o1_103a_0_34 ?a) (not (not_blocked seg_o1_103a_0_34 ?a))
       (at-segment ?a seg_o1_103a_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_104a_0_34 ?a))
       (not_blocked seg_o1_104a_0_34 ?a) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action
  ugly1751ugly929ugly699ugly399ugly756startup_seg_n_n2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2b_0_60)
       (not_occupied seg_n2_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_0_108 ?a)
       (not (not_blocked seg_n2_0_108 ?a))))
 (:action
  ugly1752ugly767ugly644ugly116ugly98move_seg_n_a6a8e_0_75_seg_n_a6a8d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8e_0_75) (not_occupied seg_n_a6a8d_0_75)
       (not_blocked seg_n_a6a8d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8e_0_75))
       (not_occupied seg_n_a6a8e_0_75) (not (at-segment ?a seg_n_a6a8e_0_75))
       (occupied seg_n_a6a8d_0_75) (not (not_occupied seg_n_a6a8d_0_75))
       (blocked seg_n_a6a8d_0_75 ?a) (not (not_blocked seg_n_a6a8d_0_75 ?a))
       (at-segment ?a seg_n_a6a8d_0_75) (not (blocked seg_n_a6a8f_0_75 ?a))
       (not_blocked seg_n_a6a8f_0_75 ?a)))
 (:action
  ugly1753ugly13ugly840ugly849ugly132move_seg_w1_143c_0_60_seg_w1_c2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143c_0_60) (not_occupied seg_w1_c2a_0_60)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c2a_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_143c_0_60))
       (not_occupied seg_w1_143c_0_60) (not (at-segment ?a seg_w1_143c_0_60))
       (occupied seg_w1_c2a_0_60) (not (not_occupied seg_w1_c2a_0_60))
       (blocked seg_w1_c2a_0_60 ?a) (not (not_blocked seg_w1_c2a_0_60 ?a))
       (at-segment ?a seg_w1_c2a_0_60) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_143a_0_34 ?a))
       (not_blocked seg_w1_143a_0_34 ?a) (not (blocked seg_w1_143b_0_45 ?a))
       (not_blocked seg_w1_143b_0_45 ?a)))
 (:action
  ugly1754ugly885ugly820ugly876ugly943startup_seg_o1_102a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102a_0_34)
       (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action
  ugly1755ugly622ugly225ugly885ugly820startup_seg_n_a4a7b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7b_0_75)
       (not_occupied seg_n_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7c_0_75 ?a)
       (not (not_blocked seg_n_a4a7c_0_75 ?a))))
 (:action
  ugly1756ugly917ugly932ugly263ugly146move_seg_a8_a_0_157_785_seg_a8_b_1_0_79_7559_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_a_0_157_785) (not_occupied seg_a8_b_1_0_79_7559)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_cfbeg)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a8_a_0_157_785))
       (not_occupied seg_a8_a_0_157_785)
       (not (at-segment ?a seg_a8_a_0_157_785)) (occupied seg_a8_b_1_0_79_7559)
       (not (not_occupied seg_a8_b_1_0_79_7559))
       (blocked seg_a8_b_1_0_79_7559 ?a)
       (not (not_blocked seg_a8_b_1_0_79_7559 ?a))
       (at-segment ?a seg_a8_b_1_0_79_7559)
       (not (blocked seg_08l_a7b_0_161_245 ?a))
       (not_blocked seg_08l_a7b_0_161_245 ?a)))
 (:action
  ugly1757ugly199ugly900ugly622ugly225startup_seg_n_a4a7f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7f_0_75)
       (not_occupied seg_n_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7e_0_75 ?a)
       (not (not_blocked seg_n_a4a7e_0_75 ?a))))
 (:action
  ugly1758ugly723ugly767ugly644ugly116move_seg_w1_151b_0_45_seg_w1_151c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151b_0_45) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_daew7)
       (not_occupied seg_w1_151a_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_151b_0_45))
       (not_occupied seg_w1_151b_0_45) (not (at-segment ?a seg_w1_151b_0_45))
       (occupied seg_w1_151c_0_34) (not (not_occupied seg_w1_151c_0_34))
       (blocked seg_w1_151c_0_34 ?a) (not (not_blocked seg_w1_151c_0_34 ?a))
       (at-segment ?a seg_w1_151c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p151_0_75 ?a))
       (not_blocked seg_p151_0_75 ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a))))
 (:action ugly1759ugly800ugly83ugly3ugly765startup_seg_m_a9c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9c_0_60)
       (not_occupied seg_m_a8a9d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9d_0_85 ?a)
       (not (not_blocked seg_m_a8a9d_0_85 ?a))))
 (:action ugly1760ugly689ugly137ugly776ugly850park_seg_p117_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p117_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p117_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_117b_0_60 ?a)) (not_blocked seg_o1_117b_0_60 ?a)))
 (:action
  ugly1761ugly636ugly617ugly329ugly715startup_seg_a7_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_1_0_80_6226)
       (not_occupied seg_a7_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_0_80_6226 ?a))))
 (:action
  ugly1762ugly84ugly455ugly841ugly648move_seg_w1_162b_0_45_seg_p162_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162b_0_45) (not_occupied seg_p162_0_75)
       (not_blocked seg_p162_0_75 airplane_cfbeg)
       (not_blocked seg_p162_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_162b_0_45))
       (not_occupied seg_w1_162b_0_45) (not (at-segment ?a seg_w1_162b_0_45))
       (occupied seg_p162_0_75) (not (not_occupied seg_p162_0_75))
       (blocked seg_p162_0_75 ?a) (not (not_blocked seg_p162_0_75 ?a))
       (at-segment ?a seg_p162_0_75) (not (blocked seg_w1_162a_0_34 ?a))
       (not_blocked seg_w1_162a_0_34 ?a) (not (blocked seg_w1_162c_0_34 ?a))
       (not_blocked seg_w1_162c_0_34 ?a)))
 (:action
  ugly1763ugly623ugly79ugly439ugly372startup_seg_w1_c3b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3b_0_60)
       (not_occupied seg_w1_c3a_0_34) (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action
  ugly1764ugly278ugly250ugly570ugly687startup_seg_m_a7a6d_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6d_0_85)
       (not_occupied seg_m_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6c_0_75 ?a)
       (not (not_blocked seg_m_a7a6c_0_75 ?a))))
 (:action
  ugly1765ugly509ugly436ugly719ugly722move_seg_08l_a9c_0_80_seg_09l_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a9c_0_80) (not_occupied seg_09l_0_80)
       (not_blocked seg_09l_0_80 airplane_cfbeg)
       (not_blocked seg_09l_0_80 airplane_daew7)
       (not_occupied seg_08l_a9b_0_161_245) (not_occupied seg_08l_a2a_0_80))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_08l_a9c_0_80))
       (not_occupied seg_08l_a9c_0_80) (not (at-segment ?a seg_08l_a9c_0_80))
       (occupied seg_09l_0_80) (not (not_occupied seg_09l_0_80))
       (blocked seg_09l_0_80 ?a) (not (not_blocked seg_09l_0_80 ?a))
       (at-segment ?a seg_09l_0_80) (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_08l_a7a9_0_270 ?a))
       (not_blocked seg_08l_a7a9_0_270 ?a) (blocked seg_08l_a9b_0_161_245 ?a)
       (not (not_blocked seg_08l_a9b_0_161_245 ?a))
       (blocked seg_08l_a2a_0_80 ?a) (not (not_blocked seg_08l_a2a_0_80 ?a))))
 (:action
  ugly1766ugly918ugly131ugly930ugly794move_seg_o1_104b_0_60_seg_o1_104c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104b_0_60) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_daew7)
       (not_occupied seg_o1_104a_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_104b_0_60))
       (not_occupied seg_o1_104b_0_60) (not (at-segment ?a seg_o1_104b_0_60))
       (occupied seg_o1_104c_0_60) (not (not_occupied seg_o1_104c_0_60))
       (blocked seg_o1_104c_0_60 ?a) (not (not_blocked seg_o1_104c_0_60 ?a))
       (at-segment ?a seg_o1_104c_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p104_0_76 ?a))
       (not_blocked seg_p104_0_76 ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a))))
 (:action
  ugly1767ugly318ugly130ugly775ugly377startup_seg_o1_109c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109c_0_34)
       (not_occupied seg_o1_109a_0_34) (not_occupied seg_o1_109b_0_60)
       (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a)) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a)) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action
  ugly1768ugly174ugly304ugly915ugly890move_seg_o1_109d_0_45_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109d_0_45) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_daew7)
       (not_occupied seg_o1_109a_0_34) (not_occupied seg_o1_109b_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_109d_0_45))
       (not_occupied seg_o1_109d_0_45) (not (at-segment ?a seg_o1_109d_0_45))
       (occupied seg_o1_109c_0_34) (not (not_occupied seg_o1_109c_0_34))
       (blocked seg_o1_109c_0_34 ?a) (not (not_blocked seg_o1_109c_0_34 ?a))
       (at-segment ?a seg_o1_109c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p132_0_75 ?a))
       (not_blocked seg_p132_0_75 ?a) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a)) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a))))
 (:action
  ugly1769ugly789ugly252ugly891ugly341move_seg_n_a7a6c_0_75_seg_n_a7a6b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6c_0_75) (not_occupied seg_n_a7a6b_0_75)
       (not_blocked seg_n_a7a6b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a7a6c_0_75))
       (not_occupied seg_n_a7a6c_0_75) (not (at-segment ?a seg_n_a7a6c_0_75))
       (occupied seg_n_a7a6b_0_75) (not (not_occupied seg_n_a7a6b_0_75))
       (blocked seg_n_a7a6b_0_75 ?a) (not (not_blocked seg_n_a7a6b_0_75 ?a))
       (at-segment ?a seg_n_a7a6b_0_75) (not (blocked seg_n_a7a6d_0_75 ?a))
       (not_blocked seg_n_a7a6d_0_75 ?a)))
 (:action
  ugly1770ugly19ugly26ugly922ugly500move_seg_o1_104c_0_60_seg_o1_104a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104c_0_60) (not_occupied seg_o1_104a_0_34)
       (not_blocked seg_o1_104a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_104a_0_34 airplane_daew7)
       (not_occupied seg_o1_104b_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_104c_0_60))
       (not_occupied seg_o1_104c_0_60) (not (at-segment ?a seg_o1_104c_0_60))
       (occupied seg_o1_104a_0_34) (not (not_occupied seg_o1_104a_0_34))
       (blocked seg_o1_104a_0_34 ?a) (not (not_blocked seg_o1_104a_0_34 ?a))
       (at-segment ?a seg_o1_104a_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_c2a_0_60 ?a))
       (not_blocked seg_o1_c2a_0_60 ?a) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action ugly1771ugly169ugly433ugly791ugly299park_seg_p102_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p102_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p102_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_102b_0_60 ?a)) (not_blocked seg_o1_102b_0_60 ?a)))
 (:action
  ugly1772ugly764ugly805ugly72ugly851move_seg_w1_154c_0_34_seg_w1_c3a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154c_0_34) (not_occupied seg_w1_c3a_0_34)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c3a_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_154c_0_34))
       (not_occupied seg_w1_154c_0_34) (not (at-segment ?a seg_w1_154c_0_34))
       (occupied seg_w1_c3a_0_34) (not (not_occupied seg_w1_c3a_0_34))
       (blocked seg_w1_c3a_0_34 ?a) (not (not_blocked seg_w1_c3a_0_34 ?a))
       (at-segment ?a seg_w1_c3a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_154a_0_34 ?a))
       (not_blocked seg_w1_154a_0_34 ?a) (not (blocked seg_w1_154b_0_45 ?a))
       (not_blocked seg_w1_154b_0_45 ?a)))
 (:action
  ugly1773ugly638ugly123ugly272ugly45startup_seg_n_n2a4a_0_70_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4a_0_70)
       (not_occupied seg_n_n2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a))))
 (:action
  ugly1774ugly380ugly948ugly350ugly135startup_seg_08l_a7b_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a7b_0_161_245)
       (not_occupied seg_08l_a7a_0_80) (not_occupied seg_08l_a7c_0_161_245)
       (not_occupied seg_08l_a7d_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a7a_0_80 ?a)
       (not (not_blocked seg_08l_a7a_0_80 ?a))
       (blocked seg_08l_a7c_0_161_245 ?a)
       (not (not_blocked seg_08l_a7c_0_161_245 ?a))
       (blocked seg_08l_a7d_0_80 ?a) (not (not_blocked seg_08l_a7d_0_80 ?a))))
 (:action
  ugly1775ugly553ugly273ugly666ugly166startup_seg_08l_a4c_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a4c_0_161_245)
       (not_occupied seg_a4_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_a_0_157_785 ?a)
       (not (not_blocked seg_a4_a_0_157_785 ?a))))
 (:action
  ugly1776ugly55ugly638ugly123ugly272move_seg_n_a6a8f_0_75_seg_n_a6a8e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8f_0_75) (not_occupied seg_n_a6a8e_0_75)
       (not_blocked seg_n_a6a8e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8f_0_75))
       (not_occupied seg_n_a6a8f_0_75) (not (at-segment ?a seg_n_a6a8f_0_75))
       (occupied seg_n_a6a8e_0_75) (not (not_occupied seg_n_a6a8e_0_75))
       (blocked seg_n_a6a8e_0_75 ?a) (not (not_blocked seg_n_a6a8e_0_75 ?a))
       (at-segment ?a seg_n_a6a8e_0_75) (not (blocked seg_n_a8c_0_60 ?a))
       (not_blocked seg_n_a8c_0_60 ?a)))
 (:action
  ugly1777ugly310ugly95ugly231ugly233startup_seg_w1_c4a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4a_0_34)
       (not_occupied seg_w1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a))))
 (:action
  ugly1778ugly600ugly437ugly380ugly948startup_seg_w1_143a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143a_0_34)
       (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action ugly1779ugly842ugly344ugly93ugly597park_seg_p110_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p110_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p110_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_110b_0_60 ?a)) (not_blocked seg_o1_110b_0_60 ?a)))
 (:action
  ugly1780ugly718ugly655ugly102ugly905move_seg_n_a7c_0_60_seg_n_a4a7f_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a7c_0_60) (not_occupied seg_n_a4a7f_0_75)
       (not_blocked seg_n_a4a7f_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7f_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a7c_0_60))
       (not_occupied seg_n_a7c_0_60) (not (at-segment ?a seg_n_a7c_0_60))
       (occupied seg_n_a4a7f_0_75) (not (not_occupied seg_n_a4a7f_0_75))
       (blocked seg_n_a4a7f_0_75 ?a) (not (not_blocked seg_n_a4a7f_0_75 ?a))
       (at-segment ?a seg_n_a4a7f_0_75) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_n_a7a_0_60 ?a))
       (not_blocked seg_n_a7a_0_60 ?a) (not (blocked seg_n_a7b_0_60 ?a))
       (not_blocked seg_n_a7b_0_60 ?a)))
 (:action
  ugly1781ugly375ugly579ugly679ugly872startup_seg_o1_110a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110a_0_34)
       (not_occupied seg_o1_109c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a))))
 (:action
  ugly1782ugly883ugly494ugly769ugly944move_seg_w1_152c_0_34_seg_w1_152a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152c_0_34) (not_occupied seg_w1_152a_0_34)
       (not_blocked seg_w1_152a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152a_0_34 airplane_daew7)
       (not_occupied seg_w1_152b_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_152c_0_34))
       (not_occupied seg_w1_152c_0_34) (not (at-segment ?a seg_w1_152c_0_34))
       (occupied seg_w1_152a_0_34) (not (not_occupied seg_w1_152a_0_34))
       (blocked seg_w1_152a_0_34 ?a) (not (not_blocked seg_w1_152a_0_34 ?a))
       (at-segment ?a seg_w1_152a_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_153a_0_34 ?a))
       (not_blocked seg_w1_153a_0_34 ?a) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action
  ugly1783ugly717ugly390ugly700ugly482startup_seg_n_a10a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10a_0_60)
       (not_occupied seg_n_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10b_0_60 ?a)
       (not (not_blocked seg_n_a10b_0_60 ?a))))
 (:action
  ugly1784ugly603ugly755ugly77ugly835startup_seg_o1_c2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2b_0_60)
       (not_occupied seg_p107_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p107_0_76 ?a)
       (not (not_blocked seg_p107_0_76 ?a))))
 (:action
  ugly1785ugly808ugly416ugly408ugly320startup_seg_n_a8a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a_0_60)
       (not_occupied seg_n_a8b_0_60) (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a)) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action
  ugly1786ugly49ugly405ugly706ugly953move_seg_o1_c2a_0_60_seg_o1_c2b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_daew7)
       (not_occupied seg_o1_c2c_0_34) (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c2a_0_60))
       (not_occupied seg_o1_c2a_0_60) (not (at-segment ?a seg_o1_c2a_0_60))
       (occupied seg_o1_c2b_0_60) (not (not_occupied seg_o1_c2b_0_60))
       (blocked seg_o1_c2b_0_60 ?a) (not (not_blocked seg_o1_c2b_0_60 ?a))
       (at-segment ?a seg_o1_c2b_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_104c_0_60 ?a))
       (not_blocked seg_o1_104c_0_60 ?a) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a)) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action
  ugly1787ugly554ugly285ugly345ugly443move_seg_o1_c3a_0_34_seg_o1_111c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c3a_0_34))
       (not_occupied seg_o1_c3a_0_34) (not (at-segment ?a seg_o1_c3a_0_34))
       (occupied seg_o1_111c_0_34) (not (not_occupied seg_o1_111c_0_34))
       (blocked seg_o1_111c_0_34 ?a) (not (not_blocked seg_o1_111c_0_34 ?a))
       (at-segment ?a seg_o1_111c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_c3b_0_60 ?a))
       (not_blocked seg_o1_c3b_0_60 ?a) (not (blocked seg_o1_c3c_0_48 ?a))
       (not_blocked seg_o1_c3c_0_48 ?a) (not (blocked seg_o1_c3d_0_60 ?a))
       (not_blocked seg_o1_c3d_0_60 ?a)))
 (:action
  ugly1788ugly568ugly468ugly155ugly294startup_seg_p131_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p131_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1789ugly44ugly686ugly512ugly353startup_seg_w1_161b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161b_0_45)
       (not_occupied seg_p161_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p161_0_75 ?a)
       (not (not_blocked seg_p161_0_75 ?a))))
 (:action
  ugly1790ugly232ugly477ugly822ugly52startup_seg_o1_c2c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2c_0_34)
       (not_occupied seg_o1_c2a_0_60) (not_occupied seg_o1_c2b_0_60)
       (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a)) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a)) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action
  ugly1791ugly96ugly803ugly879ugly154startup_seg_c1_n2b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2b_0_80)
       (not_occupied seg_c1_n2a_0_60) (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a)) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action
  ugly1792ugly942ugly557ugly153ugly117startup_seg_n_a7a6c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6c_0_75)
       (not_occupied seg_n_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6b_0_75 ?a)
       (not (not_blocked seg_n_a7a6b_0_75 ?a))))
 (:action ugly1793ugly806ugly657ugly873ugly99startup_seg_p109_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p109_0_76)
       (not_occupied seg_o1_109b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a))))
 (:action
  ugly1794ugly211ugly160ugly942ugly557move_seg_p163_0_75_seg_w1_163b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p163_0_75) (not_occupied seg_w1_163b_0_45)
       (not_blocked seg_w1_163b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_163b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p163_0_75))
       (not_occupied seg_p163_0_75) (not (at-segment ?a seg_p163_0_75))
       (occupied seg_w1_163b_0_45) (not (not_occupied seg_w1_163b_0_45))
       (blocked seg_w1_163b_0_45 ?a) (not (not_blocked seg_w1_163b_0_45 ?a))
       (at-segment ?a seg_w1_163b_0_45)))
 (:action
  ugly1795ugly152ugly392ugly814ugly218move_seg_o1_c3d_0_60_seg_c3_b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3d_0_60) (not_occupied seg_c3_b_0_80)
       (not_blocked seg_c3_b_0_80 airplane_cfbeg)
       (not_blocked seg_c3_b_0_80 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c3d_0_60))
       (not_occupied seg_o1_c3d_0_60) (not (at-segment ?a seg_o1_c3d_0_60))
       (occupied seg_c3_b_0_80) (not (not_occupied seg_c3_b_0_80))
       (blocked seg_c3_b_0_80 ?a) (not (not_blocked seg_c3_b_0_80 ?a))
       (at-segment ?a seg_c3_b_0_80) (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c3a_0_34 ?a)) (not_blocked seg_o1_c3a_0_34 ?a)
       (not (blocked seg_o1_c3b_0_60 ?a)) (not_blocked seg_o1_c3b_0_60 ?a)
       (not (blocked seg_o1_c3c_0_48 ?a)) (not_blocked seg_o1_c3c_0_48 ?a)))
 (:action
  ugly1796ugly503ugly394ugly902ugly283startup_seg_m_a4d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4d_0_60)
       (not_occupied seg_m_a3a4f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4f_0_115 ?a)
       (not (not_blocked seg_m_a3a4f_0_115 ?a))))
 (:action
  ugly1797ugly116ugly98ugly46ugly222move_seg_o1_115a_0_34_seg_o1_c3c_0_48_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_c3c_0_48)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_o1_c3c_0_48 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_115a_0_34))
       (not_occupied seg_o1_115a_0_34) (not (at-segment ?a seg_o1_115a_0_34))
       (occupied seg_o1_c3c_0_48) (not (not_occupied seg_o1_c3c_0_48))
       (blocked seg_o1_c3c_0_48 ?a) (not (not_blocked seg_o1_c3c_0_48 ?a))
       (at-segment ?a seg_o1_c3c_0_48) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_115b_0_60 ?a))
       (not_blocked seg_o1_115b_0_60 ?a) (not (blocked seg_o1_115c_0_34 ?a))
       (not_blocked seg_o1_115c_0_34 ?a)))
 (:action
  ugly1798ugly633ugly239ugly106ugly939startup_seg_w1_c3a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3a_0_34)
       (not_occupied seg_w1_c3b_0_60) (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a)) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action
  ugly1799ugly930ugly794ugly198ugly633move_seg_o1_109d_0_45_seg_p132_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109d_0_45) (not_occupied seg_p132_0_75)
       (not_blocked seg_p132_0_75 airplane_cfbeg)
       (not_blocked seg_p132_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_109d_0_45))
       (not_occupied seg_o1_109d_0_45) (not (at-segment ?a seg_o1_109d_0_45))
       (occupied seg_p132_0_75) (not (not_occupied seg_p132_0_75))
       (blocked seg_p132_0_75 ?a) (not (not_blocked seg_p132_0_75 ?a))
       (at-segment ?a seg_p132_0_75) (not (blocked seg_o1_109a_0_34 ?a))
       (not_blocked seg_o1_109a_0_34 ?a) (not (blocked seg_o1_109b_0_60 ?a))
       (not_blocked seg_o1_109b_0_60 ?a) (not (blocked seg_o1_109c_0_34 ?a))
       (not_blocked seg_o1_109c_0_34 ?a)))
 (:action
  ugly1800ugly529ugly708ugly69ugly772startup_seg_o1_116b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116b_0_60)
       (not_occupied seg_p116_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p116_0_76 ?a)
       (not (not_blocked seg_p116_0_76 ?a))))
 (:action
  ugly1801ugly67ugly332ugly253ugly119move_seg_o1_109c_0_34_seg_o1_110a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109c_0_34) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_109c_0_34))
       (not_occupied seg_o1_109c_0_34) (not (at-segment ?a seg_o1_109c_0_34))
       (occupied seg_o1_110a_0_34) (not (not_occupied seg_o1_110a_0_34))
       (blocked seg_o1_110a_0_34 ?a) (not (not_blocked seg_o1_110a_0_34 ?a))
       (at-segment ?a seg_o1_110a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_109a_0_34 ?a))
       (not_blocked seg_o1_109a_0_34 ?a) (not (blocked seg_o1_109b_0_60 ?a))
       (not_blocked seg_o1_109b_0_60 ?a) (not (blocked seg_o1_109d_0_45 ?a))
       (not_blocked seg_o1_109d_0_45 ?a)))
 (:action
  ugly1802ugly69ugly772ugly608ugly530startup_seg_w1_c1c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1c_0_34)
       (not_occupied seg_w1_c1a_0_60) (not_occupied seg_w1_c1b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a)) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a))))
 (:action
  ugly1803ugly65ugly845ugly548ugly42startup_seg_o1_103c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103c_0_34)
       (not_occupied seg_o1_104a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a))))
 (:action
  ugly1804ugly448ugly645ugly214ugly82move_seg_08l_a2b_0_80_seg_08l_a2a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a2b_0_80) (not_occupied seg_08l_a2a_0_80)
       (not_blocked seg_08l_a2a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a2a_0_80 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_08l_a2b_0_80))
       (not_occupied seg_08l_a2b_0_80) (not (at-segment ?a seg_08l_a2b_0_80))
       (occupied seg_08l_a2a_0_80) (not (not_occupied seg_08l_a2a_0_80))
       (blocked seg_08l_a2a_0_80 ?a) (not (not_blocked seg_08l_a2a_0_80 ?a))
       (at-segment ?a seg_08l_a2a_0_80) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_a2_a_0_90 ?a))
       (not_blocked seg_a2_a_0_90 ?a)))
 (:action
  ugly1805ugly40ugly435ugly343ugly688move_seg_n_a6a8d_0_75_seg_n_a6a8c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8d_0_75) (not_occupied seg_n_a6a8c_0_75)
       (not_blocked seg_n_a6a8c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8d_0_75))
       (not_occupied seg_n_a6a8d_0_75) (not (at-segment ?a seg_n_a6a8d_0_75))
       (occupied seg_n_a6a8c_0_75) (not (not_occupied seg_n_a6a8c_0_75))
       (blocked seg_n_a6a8c_0_75 ?a) (not (not_blocked seg_n_a6a8c_0_75 ?a))
       (at-segment ?a seg_n_a6a8c_0_75) (not (blocked seg_n_a6a8e_0_75 ?a))
       (not_blocked seg_n_a6a8e_0_75 ?a)))
 (:action ugly1806ugly684ugly802ugly821ugly766park_seg_p103_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p103_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p103_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_103b_0_60 ?a)) (not_blocked seg_o1_103b_0_60 ?a)))
 (:action
  ugly1807ugly403ugly338ugly507ugly453startup_seg_w1_141c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141c_0_34)
       (not_occupied seg_w1_142a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a))))
 (:action ugly1808ugly230ugly415ugly594ugly812park_seg_p164_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p164_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p164_0_75) (not (is-moving ?a))))
 (:action
  ugly1809ugly846ugly407ugly937ugly64move_seg_o1_109b_0_60_seg_p109_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109b_0_60) (not_occupied seg_p109_0_76)
       (not_blocked seg_p109_0_76 airplane_cfbeg)
       (not_blocked seg_p109_0_76 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_109b_0_60))
       (not_occupied seg_o1_109b_0_60) (not (at-segment ?a seg_o1_109b_0_60))
       (occupied seg_p109_0_76) (not (not_occupied seg_p109_0_76))
       (blocked seg_p109_0_76 ?a) (not (not_blocked seg_p109_0_76 ?a))
       (at-segment ?a seg_p109_0_76) (not (blocked seg_o1_109a_0_34 ?a))
       (not_blocked seg_o1_109a_0_34 ?a) (not (blocked seg_o1_109c_0_34 ?a))
       (not_blocked seg_o1_109c_0_34 ?a) (not (blocked seg_o1_109d_0_45 ?a))
       (not_blocked seg_o1_109d_0_45 ?a)))
 (:action
  ugly1810ugly165ugly826ugly538ugly585move_seg_p108_0_76_seg_o1_108b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p108_0_76) (not_occupied seg_o1_108b_0_60)
       (not_blocked seg_o1_108b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_108b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p108_0_76))
       (not_occupied seg_p108_0_76) (not (at-segment ?a seg_p108_0_76))
       (occupied seg_o1_108b_0_60) (not (not_occupied seg_o1_108b_0_60))
       (blocked seg_o1_108b_0_60 ?a) (not (not_blocked seg_o1_108b_0_60 ?a))
       (at-segment ?a seg_o1_108b_0_60)))
 (:action
  ugly1811ugly314ugly124ugly675ugly128move_seg_w1_161a_0_34_seg_w1_c3c_0_48_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_c3c_0_48)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_w1_c3c_0_48 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_161a_0_34))
       (not_occupied seg_w1_161a_0_34) (not (at-segment ?a seg_w1_161a_0_34))
       (occupied seg_w1_c3c_0_48) (not (not_occupied seg_w1_c3c_0_48))
       (blocked seg_w1_c3c_0_48 ?a) (not (not_blocked seg_w1_c3c_0_48 ?a))
       (at-segment ?a seg_w1_c3c_0_48) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_161b_0_45 ?a))
       (not_blocked seg_w1_161b_0_45 ?a) (not (blocked seg_w1_161c_0_34 ?a))
       (not_blocked seg_w1_161c_0_34 ?a)))
 (:action
  ugly1812ugly880ugly220ugly847ugly520startup_seg_p111_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p111_0_76)
       (not_occupied seg_o1_111b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a))))
 (:action
  ugly1813ugly268ugly797ugly420ugly684startup_seg_m_a9a10a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10a_0_75)
       (not_occupied seg_m_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10b_0_75 ?a)
       (not (not_blocked seg_m_a9a10b_0_75 ?a))))
 (:action
  ugly1814ugly223ugly96ugly803ugly879move_seg_w1_163b_0_45_seg_w1_163c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163b_0_45) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_daew7)
       (not_occupied seg_w1_163a_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_163b_0_45))
       (not_occupied seg_w1_163b_0_45) (not (at-segment ?a seg_w1_163b_0_45))
       (occupied seg_w1_163c_0_34) (not (not_occupied seg_w1_163c_0_34))
       (blocked seg_w1_163c_0_34 ?a) (not (not_blocked seg_w1_163c_0_34 ?a))
       (at-segment ?a seg_w1_163c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p163_0_75 ?a))
       (not_blocked seg_p163_0_75 ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a))))
 (:action
  ugly1815ugly678ugly280ugly860ugly324startup_seg_p112_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p112_0_76)
       (not_occupied seg_o1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a))))
 (:action
  ugly1816ugly879ugly154ugly475ugly908startup_seg_m_a4a7b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7b_0_75)
       (not_occupied seg_m_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7c_0_75 ?a)
       (not (not_blocked seg_m_a4a7c_0_75 ?a))))
 (:action ugly1817ugly70ugly590ugly75ugly330startup_seg_n_a7c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7c_0_60)
       (not_occupied seg_n_a7a_0_60) (not_occupied seg_n_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a)) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a))))
 (:action ugly1818ugly446ugly262ugly721ugly11park_seg_p116_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p116_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p116_0_76) (not (is-moving ?a))))
 (:action
  ugly1819ugly241ugly710ugly540ugly66move_seg_o1_c2b_0_60_seg_p107_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2b_0_60) (not_occupied seg_p107_0_76)
       (not_blocked seg_p107_0_76 airplane_cfbeg)
       (not_blocked seg_p107_0_76 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c2b_0_60))
       (not_occupied seg_o1_c2b_0_60) (not (at-segment ?a seg_o1_c2b_0_60))
       (occupied seg_p107_0_76) (not (not_occupied seg_p107_0_76))
       (blocked seg_p107_0_76 ?a) (not (not_blocked seg_p107_0_76 ?a))
       (at-segment ?a seg_p107_0_76) (not (blocked seg_o1_c2a_0_60 ?a))
       (not_blocked seg_o1_c2a_0_60 ?a) (not (blocked seg_o1_c2c_0_34 ?a))
       (not_blocked seg_o1_c2c_0_34 ?a) (not (blocked seg_o1_c2d_0_60 ?a))
       (not_blocked seg_o1_c2d_0_60 ?a)))
 (:action
  ugly1820ugly2ugly859ugly787ugly903startup_seg_w1_151b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151b_0_45)
       (not_occupied seg_p151_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p151_0_75 ?a)
       (not (not_blocked seg_p151_0_75 ?a))))
 (:action
  ugly1821ugly52ugly509ugly436ugly719startup_seg_m_a4a7c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7c_0_75)
       (not_occupied seg_m_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7d_0_75 ?a)
       (not (not_blocked seg_m_a4a7d_0_75 ?a))))
 (:action
  ugly1822ugly851ugly127ugly352ugly264move_seg_o1_c4a_0_34_seg_o1_118c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4a_0_34) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c4a_0_34))
       (not_occupied seg_o1_c4a_0_34) (not (at-segment ?a seg_o1_c4a_0_34))
       (occupied seg_o1_118c_0_34) (not (not_occupied seg_o1_118c_0_34))
       (blocked seg_o1_118c_0_34 ?a) (not (not_blocked seg_o1_118c_0_34 ?a))
       (at-segment ?a seg_o1_118c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_c4b_0_60 ?a))
       (not_blocked seg_o1_c4b_0_60 ?a) (not (blocked seg_o1_c4c_0_80 ?a))
       (not_blocked seg_o1_c4c_0_80 ?a)))
 (:action
  ugly1823ugly514ugly726ugly174ugly304startup_seg_n_a8b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8b_0_60)
       (not_occupied seg_n_a8a_0_60) (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a)) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action
  ugly1824ugly478ugly55ugly638ugly123move_seg_p115_0_76_seg_o1_115b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p115_0_76) (not_occupied seg_o1_115b_0_60)
       (not_blocked seg_o1_115b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_115b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p115_0_76))
       (not_occupied seg_p115_0_76) (not (at-segment ?a seg_p115_0_76))
       (occupied seg_o1_115b_0_60) (not (not_occupied seg_o1_115b_0_60))
       (blocked seg_o1_115b_0_60 ?a) (not (not_blocked seg_o1_115b_0_60 ?a))
       (at-segment ?a seg_o1_115b_0_60)))
 (:action
  ugly1825ugly667ugly221ugly747ugly188move_seg_p132_0_75_seg_o1_109d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p132_0_75) (not_occupied seg_o1_109d_0_45)
       (not_blocked seg_o1_109d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_109d_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p132_0_75))
       (not_occupied seg_p132_0_75) (not (at-segment ?a seg_p132_0_75))
       (occupied seg_o1_109d_0_45) (not (not_occupied seg_o1_109d_0_45))
       (blocked seg_o1_109d_0_45 ?a) (not (not_blocked seg_o1_109d_0_45 ?a))
       (at-segment ?a seg_o1_109d_0_45)))
 (:action
  ugly1826ugly504ugly199ugly900ugly622move_seg_o1_108d_0_45_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_daew7)
       (not_occupied seg_o1_108a_0_34) (not_occupied seg_o1_108b_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_108d_0_45))
       (not_occupied seg_o1_108d_0_45) (not (at-segment ?a seg_o1_108d_0_45))
       (occupied seg_o1_108c_0_34) (not (not_occupied seg_o1_108c_0_34))
       (blocked seg_o1_108c_0_34 ?a) (not (not_blocked seg_o1_108c_0_34 ?a))
       (at-segment ?a seg_o1_108c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p131_0_75 ?a))
       (not_blocked seg_p131_0_75 ?a) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a)) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a))))
 (:action
  ugly1827ugly549ugly865ugly364ugly629move_seg_m_a8d_0_120_934_seg_m_a8b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_m_a8d_0_120_934) (not_occupied seg_m_a8b_0_60)
       (not_blocked seg_m_a8b_0_60 airplane_cfbeg)
       (not_blocked seg_m_a8b_0_60 airplane_daew7)
       (not_occupied seg_m_a8a_0_60) (not_occupied seg_m_a8c_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_m_a8d_0_120_934))
       (not_occupied seg_m_a8d_0_120_934)
       (not (at-segment ?a seg_m_a8d_0_120_934)) (occupied seg_m_a8b_0_60)
       (not (not_occupied seg_m_a8b_0_60)) (blocked seg_m_a8b_0_60 ?a)
       (not (not_blocked seg_m_a8b_0_60 ?a)) (at-segment ?a seg_m_a8b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_a8_b_0_80_6226 ?a))
       (not_blocked seg_a8_b_0_80_6226 ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a)) (blocked seg_m_a8c_0_60 ?a)
       (not (not_blocked seg_m_a8c_0_60 ?a))))
 (:action ugly1828ugly304ugly915ugly890ugly237park_seg_p162_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p162_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p162_0_75) (not (is-moving ?a))))
 (:action
  ugly1829ugly700ugly482ugly829ugly342startup_seg_a6_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_b_0_159_512)
       (not_occupied seg_m_a6d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6d_0_120_934 ?a)
       (not (not_blocked seg_m_a6d_0_120_934 ?a))))
 (:action
  ugly1830ugly855ugly819ugly576ugly952move_seg_p110_0_76_seg_o1_110b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p110_0_76) (not_occupied seg_o1_110b_0_60)
       (not_blocked seg_o1_110b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_110b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p110_0_76))
       (not_occupied seg_p110_0_76) (not (at-segment ?a seg_p110_0_76))
       (occupied seg_o1_110b_0_60) (not (not_occupied seg_o1_110b_0_60))
       (blocked seg_o1_110b_0_60 ?a) (not (not_blocked seg_o1_110b_0_60 ?a))
       (at-segment ?a seg_o1_110b_0_60)))
 (:action
  ugly1831ugly662ugly588ugly90ugly397move_seg_o1_111b_0_60_seg_p111_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111b_0_60) (not_occupied seg_p111_0_76)
       (not_blocked seg_p111_0_76 airplane_cfbeg)
       (not_blocked seg_p111_0_76 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_111b_0_60))
       (not_occupied seg_o1_111b_0_60) (not (at-segment ?a seg_o1_111b_0_60))
       (occupied seg_p111_0_76) (not (not_occupied seg_p111_0_76))
       (blocked seg_p111_0_76 ?a) (not (not_blocked seg_p111_0_76 ?a))
       (at-segment ?a seg_p111_0_76) (not (blocked seg_o1_111a_0_34 ?a))
       (not_blocked seg_o1_111a_0_34 ?a) (not (blocked seg_o1_111c_0_34 ?a))
       (not_blocked seg_o1_111c_0_34 ?a) (not (blocked seg_o1_111d_0_45 ?a))
       (not_blocked seg_o1_111d_0_45 ?a)))
 (:action
  ugly1832ugly803ugly879ugly154ugly475startup_seg_n_a6a8d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8d_0_75)
       (not_occupied seg_n_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8e_0_75 ?a)
       (not (not_blocked seg_n_a6a8e_0_75 ?a))))
 (:action
  ugly1833ugly659ugly336ugly635ugly678move_seg_o1_c3c_0_48_seg_o1_115a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3c_0_48) (not_occupied seg_o1_115a_0_34)
       (not_blocked seg_o1_115a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115a_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c3c_0_48))
       (not_occupied seg_o1_c3c_0_48) (not (at-segment ?a seg_o1_c3c_0_48))
       (occupied seg_o1_115a_0_34) (not (not_occupied seg_o1_115a_0_34))
       (blocked seg_o1_115a_0_34 ?a) (not (not_blocked seg_o1_115a_0_34 ?a))
       (at-segment ?a seg_o1_115a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_c3a_0_34 ?a))
       (not_blocked seg_o1_c3a_0_34 ?a) (not (blocked seg_o1_c3b_0_60 ?a))
       (not_blocked seg_o1_c3b_0_60 ?a) (not (blocked seg_o1_c3d_0_60 ?a))
       (not_blocked seg_o1_c3d_0_60 ?a)))
 (:action
  ugly1834ugly81ugly170ugly478ugly55startup_seg_o1_c4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4b_0_60)
       (not_occupied seg_p119_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p119_0_76 ?a)
       (not (not_blocked seg_p119_0_76 ?a))))
 (:action
  ugly1835ugly135ugly669ugly731ugly465move_seg_n_a2b_0_60_seg_n_a2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2b_0_60) (not_occupied seg_n_a2a_0_60)
       (not_blocked seg_n_a2a_0_60 airplane_cfbeg)
       (not_blocked seg_n_a2a_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2b_0_60))
       (not_occupied seg_n_a2b_0_60) (not (at-segment ?a seg_n_a2b_0_60))
       (occupied seg_n_a2a_0_60) (not (not_occupied seg_n_a2a_0_60))
       (blocked seg_n_a2a_0_60 ?a) (not (not_blocked seg_n_a2a_0_60 ?a))
       (at-segment ?a seg_n_a2a_0_60) (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n_a2a3a_0_75 ?a)) (not_blocked seg_n_a2a3a_0_75 ?a)))
 (:action
  ugly1836ugly511ugly355ugly804ugly870startup_seg_m_a4a7a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7a_0_75)
       (not_occupied seg_m_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4b_0_60 ?a)
       (not (not_blocked seg_m_a4b_0_60 ?a))))
 (:action
  ugly1837ugly255ugly242ugly795ugly555startup_seg_p142_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p142_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1838ugly569ugly243ugly503ugly394startup_seg_n_a6a8a_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8a_0_115)
       (not_occupied seg_n_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8b_0_75 ?a)
       (not (not_blocked seg_n_a6a8b_0_75 ?a))))
 (:action
  ugly1839ugly260ugly702ugly424ugly774startup_seg_c2_b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_b_0_80)
       (not_occupied seg_c2_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_a_0_80 ?a)
       (not (not_blocked seg_c2_a_0_80 ?a))))
 (:action
  ugly1840ugly440ugly346ugly196ugly750move_seg_w1_141b_0_45_seg_p141_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141b_0_45) (not_occupied seg_p141_0_75)
       (not_blocked seg_p141_0_75 airplane_cfbeg)
       (not_blocked seg_p141_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_141b_0_45))
       (not_occupied seg_w1_141b_0_45) (not (at-segment ?a seg_w1_141b_0_45))
       (occupied seg_p141_0_75) (not (not_occupied seg_p141_0_75))
       (blocked seg_p141_0_75 ?a) (not (not_blocked seg_p141_0_75 ?a))
       (at-segment ?a seg_p141_0_75) (not (blocked seg_w1_141a_0_34 ?a))
       (not_blocked seg_w1_141a_0_34 ?a) (not (blocked seg_w1_141c_0_34 ?a))
       (not_blocked seg_w1_141c_0_34 ?a)))
 (:action
  ugly1841ugly340ugly532ugly689ugly137startup_seg_m_a8b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8b_0_60)
       (not_occupied seg_n_a8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a))))
 (:action ugly1842ugly908ugly720ugly618ugly31startup_seg_p118_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p118_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1843ugly382ugly284ugly745ugly730startup_seg_w1_143c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143c_0_60)
       (not_occupied seg_w1_c2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a))))
 (:action
  ugly1844ugly200ugly373ugly389ugly286move_seg_w1_c1a_0_60_seg_n1_0_108_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c1a_0_60) (not_occupied seg_n1_0_108)
       (not_blocked seg_n1_0_108 airplane_cfbeg)
       (not_blocked seg_n1_0_108 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_c1a_0_60))
       (not_occupied seg_w1_c1a_0_60) (not (at-segment ?a seg_w1_c1a_0_60))
       (occupied seg_n1_0_108) (not (not_occupied seg_n1_0_108))
       (blocked seg_n1_0_108 ?a) (not (not_blocked seg_n1_0_108 ?a))
       (at-segment ?a seg_n1_0_108) (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c1b_0_60 ?a)) (not_blocked seg_w1_c1b_0_60 ?a)
       (not (blocked seg_w1_c1c_0_34 ?a)) (not_blocked seg_w1_c1c_0_34 ?a)))
 (:action
  ugly1845ugly133ugly724ugly279ugly759move_seg_w1_163a_0_34_seg_w1_162c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_163a_0_34))
       (not_occupied seg_w1_163a_0_34) (not (at-segment ?a seg_w1_163a_0_34))
       (occupied seg_w1_162c_0_34) (not (not_occupied seg_w1_162c_0_34))
       (blocked seg_w1_162c_0_34 ?a) (not (not_blocked seg_w1_162c_0_34 ?a))
       (at-segment ?a seg_w1_162c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_163b_0_45 ?a))
       (not_blocked seg_w1_163b_0_45 ?a) (not (blocked seg_w1_163c_0_34 ?a))
       (not_blocked seg_w1_163c_0_34 ?a)))
 (:action
  ugly1846ugly606ugly92ugly818ugly946startup_seg_o1_c2d_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2d_0_60)
       (not_occupied seg_o1_c2a_0_60) (not_occupied seg_o1_c2b_0_60)
       (not_occupied seg_o1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a)) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a)) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a))))
 (:action
  ugly1847ugly62ugly292ugly664ugly627startup_seg_n_a10a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10a_0_60)
       (not_occupied seg_m_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a))))
 (:action
  ugly1848ugly692ugly869ugly486ugly933move_seg_p162_0_75_seg_w1_162b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p162_0_75) (not_occupied seg_w1_162b_0_45)
       (not_blocked seg_w1_162b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_162b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p162_0_75))
       (not_occupied seg_p162_0_75) (not (at-segment ?a seg_p162_0_75))
       (occupied seg_w1_162b_0_45) (not (not_occupied seg_w1_162b_0_45))
       (blocked seg_w1_162b_0_45 ?a) (not (not_blocked seg_w1_162b_0_45 ?a))
       (at-segment ?a seg_w1_162b_0_45)))
 (:action
  ugly1849ugly828ugly674ugly296ugly833startup_seg_m_a3a4b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4b_0_75)
       (not_occupied seg_m_a3a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4c_0_75 ?a)
       (not (not_blocked seg_m_a3a4c_0_75 ?a))))
 (:action
  ugly1850ugly550ugly413ugly949ugly379startup_seg_n_n2a4e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4e_0_75)
       (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action
  ugly1851ugly753ugly421ugly728ugly202move_seg_c4_s6a_0_80_seg_o1_c4c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_s6a_0_80) (not_occupied seg_o1_c4c_0_80)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c4c_0_80 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c4_s6a_0_80))
       (not_occupied seg_c4_s6a_0_80) (not (at-segment ?a seg_c4_s6a_0_80))
       (occupied seg_o1_c4c_0_80) (not (not_occupied seg_o1_c4c_0_80))
       (blocked seg_o1_c4c_0_80 ?a) (not (not_blocked seg_o1_c4c_0_80 ?a))
       (at-segment ?a seg_o1_c4c_0_80) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_c4_s6c_0_60 ?a))
       (not_blocked seg_c4_s6c_0_60 ?a)))
 (:action
  ugly1852ugly57ugly807ugly317ugly658move_seg_08l_a7d_0_80_seg_08l_a7a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a7d_0_80) (not_occupied seg_08l_a7a_0_80)
       (not_blocked seg_08l_a7a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a7a_0_80 airplane_daew7)
       (not_occupied seg_08l_a7b_0_161_245)
       (not_occupied seg_08l_a7c_0_161_245) (not_occupied seg_08l_a2a_0_80)
       (not_occupied seg_09l_0_80))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_08l_a7d_0_80))
       (not_occupied seg_08l_a7d_0_80) (not (at-segment ?a seg_08l_a7d_0_80))
       (occupied seg_08l_a7a_0_80) (not (not_occupied seg_08l_a7a_0_80))
       (blocked seg_08l_a7a_0_80 ?a) (not (not_blocked seg_08l_a7a_0_80 ?a))
       (at-segment ?a seg_08l_a7a_0_80) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_08l_a6a7_0_450 ?a))
       (not_blocked seg_08l_a6a7_0_450 ?a) (blocked seg_08l_a7b_0_161_245 ?a)
       (not (not_blocked seg_08l_a7b_0_161_245 ?a))
       (blocked seg_08l_a7c_0_161_245 ?a)
       (not (not_blocked seg_08l_a7c_0_161_245 ?a))
       (blocked seg_08l_a2a_0_80 ?a) (not (not_blocked seg_08l_a2a_0_80 ?a))
       (blocked seg_09l_0_80 ?a) (not (not_blocked seg_09l_0_80 ?a))))
 (:action
  ugly1853ugly661ugly556ugly831ugly249move_seg_o1_109a_0_34_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_daew7)
       (not_occupied seg_o1_109b_0_60) (not_occupied seg_o1_109d_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_109a_0_34))
       (not_occupied seg_o1_109a_0_34) (not (at-segment ?a seg_o1_109a_0_34))
       (occupied seg_o1_109c_0_34) (not (not_occupied seg_o1_109c_0_34))
       (blocked seg_o1_109c_0_34 ?a) (not (not_blocked seg_o1_109c_0_34 ?a))
       (at-segment ?a seg_o1_109c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_108c_0_34 ?a))
       (not_blocked seg_o1_108c_0_34 ?a) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a)) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action
  ugly1854ugly220ugly847ugly520ugly577startup_seg_p154_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p154_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1855ugly289ugly681ugly877ugly584startup_seg_m_a7d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7d_0_60)
       (not_occupied seg_m_a4a7f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7f_0_115 ?a)
       (not (not_blocked seg_m_a4a7f_0_115 ?a))))
 (:action
  ugly1856ugly608ugly530ugly325ugly848move_seg_08l_a2a3_0_970_seg_08l_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a2a3_0_970) (not_occupied seg_08l_0_80)
       (not_blocked seg_08l_0_80 airplane_cfbeg)
       (not_blocked seg_08l_0_80 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_08l_a2a3_0_970))
       (not_occupied seg_08l_a2a3_0_970)
       (not (at-segment ?a seg_08l_a2a3_0_970)) (occupied seg_08l_0_80)
       (not (not_occupied seg_08l_0_80)) (blocked seg_08l_0_80 ?a)
       (not (not_blocked seg_08l_0_80 ?a)) (at-segment ?a seg_08l_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_08l_a2a_0_80 ?a)) (not_blocked seg_08l_a2a_0_80 ?a)))
 (:action
  ugly1857ugly338ugly507ugly453ugly334startup_seg_n_a2a3d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3d_0_75)
       (not_occupied seg_n_a2a3e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3e_0_75 ?a)
       (not (not_blocked seg_n_a2a3e_0_75 ?a))))
 (:action
  ugly1858ugly291ugly368ugly423ugly241startup_seg_m_a4c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4c_0_60)
       (not_occupied seg_n_a4a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a))))
 (:action
  ugly1859ugly168ugly393ugly843ugly301startup_seg_n_a4a7f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7f_0_75)
       (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action
  ugly1860ugly840ugly849ugly132ugly91startup_seg_w1_162a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162a_0_34)
       (not_occupied seg_w1_162b_0_45) (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action
  ugly1861ugly687ugly749ugly371ugly642startup_seg_08l_a4b_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a4b_0_161_245)
       (not_occupied seg_08l_a4a_0_80) (not_occupied seg_08l_a4c_0_161_245)
       (not_occupied seg_08l_a4d_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a4a_0_80 ?a)
       (not (not_blocked seg_08l_a4a_0_80 ?a))
       (blocked seg_08l_a4c_0_161_245 ?a)
       (not (not_blocked seg_08l_a4c_0_161_245 ?a))
       (blocked seg_08l_a4d_0_80 ?a) (not (not_blocked seg_08l_a4d_0_80 ?a))))
 (:action
  ugly1862ugly682ugly705ugly101ugly554move_seg_o1_116c_0_34_seg_o1_117a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116c_0_34) (not_occupied seg_o1_117a_0_34)
       (not_blocked seg_o1_117a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117a_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_116c_0_34))
       (not_occupied seg_o1_116c_0_34) (not (at-segment ?a seg_o1_116c_0_34))
       (occupied seg_o1_117a_0_34) (not (not_occupied seg_o1_117a_0_34))
       (blocked seg_o1_117a_0_34 ?a) (not (not_blocked seg_o1_117a_0_34 ?a))
       (at-segment ?a seg_o1_117a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_116a_0_34 ?a))
       (not_blocked seg_o1_116a_0_34 ?a) (not (blocked seg_o1_116b_0_60 ?a))
       (not_blocked seg_o1_116b_0_60 ?a)))
 (:action
  ugly1863ugly498ugly200ugly373ugly389move_seg_o1_117a_0_34_seg_o1_116c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_117a_0_34))
       (not_occupied seg_o1_117a_0_34) (not (at-segment ?a seg_o1_117a_0_34))
       (occupied seg_o1_116c_0_34) (not (not_occupied seg_o1_116c_0_34))
       (blocked seg_o1_116c_0_34 ?a) (not (not_blocked seg_o1_116c_0_34 ?a))
       (at-segment ?a seg_o1_116c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_117b_0_60 ?a))
       (not_blocked seg_o1_117b_0_60 ?a) (not (blocked seg_o1_117c_0_34 ?a))
       (not_blocked seg_o1_117c_0_34 ?a)))
 (:action
  ugly1864ugly218ugly266ugly855ugly819startup_seg_p111_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p111_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1865ugly629ugly41ugly59ugly643startup_seg_o1_c3c_0_48_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3c_0_48)
       (not_occupied seg_o1_115a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a))))
 (:action
  ugly1866ugly452ugly398ugly504ugly199startup_seg_n_a6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6c_0_60)
       (not_occupied seg_n_a7a6d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6d_0_75 ?a)
       (not (not_blocked seg_n_a7a6d_0_75 ?a))))
 (:action
  ugly1867ugly472ugly410ugly866ugly16move_seg_n_a4b_0_60_seg_n_a4c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4b_0_60) (not_occupied seg_n_a4c_0_60)
       (not_blocked seg_n_a4c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a4c_0_60 airplane_daew7)
       (not_occupied seg_n_a4a_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4b_0_60))
       (not_occupied seg_n_a4b_0_60) (not (at-segment ?a seg_n_a4b_0_60))
       (occupied seg_n_a4c_0_60) (not (not_occupied seg_n_a4c_0_60))
       (blocked seg_n_a4c_0_60 ?a) (not (not_blocked seg_n_a4c_0_60 ?a))
       (at-segment ?a seg_n_a4c_0_60) (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n_a4a7a_0_115 ?a)) (not_blocked seg_n_a4a7a_0_115 ?a)
       (blocked seg_n_a4a_0_60 ?a) (not (not_blocked seg_n_a4a_0_60 ?a))))
 (:action
  ugly1868ugly156ugly144ugly844ugly924startup_seg_n_a6a8f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8f_0_75)
       (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action
  ugly1869ugly507ugly453ugly334ugly842startup_seg_w1_142c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142c_0_34)
       (not_occupied seg_w1_143a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a))))
 (:action
  ugly1870ugly551ugly463ugly308ugly601startup_seg_o1_116a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116a_0_34)
       (not_occupied seg_o1_116b_0_60) (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action
  ugly1871ugly213ugly498ugly200ugly373startup_seg_w1_153a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153a_0_34)
       (not_occupied seg_w1_153b_0_45) (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action
  ugly1872ugly355ugly804ugly870ugly717startup_seg_w1_153b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153b_0_45)
       (not_occupied seg_p153_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p153_0_75 ?a)
       (not (not_blocked seg_p153_0_75 ?a))))
 (:action
  ugly1873ugly696ugly462ugly114ugly628startup_seg_m_a9a10b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10b_0_75)
       (not_occupied seg_m_a9a10a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10a_0_75 ?a)
       (not (not_blocked seg_m_a9a10a_0_75 ?a))))
 (:action
  ugly1874ugly175ugly129ugly158ugly247startup_seg_o1_115c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115c_0_34)
       (not_occupied seg_o1_116a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a))))
 (:action
  ugly1875ugly539ugly945ugly533ugly62move_seg_o1_117b_0_60_seg_o1_117c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117b_0_60) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_daew7)
       (not_occupied seg_o1_117a_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_117b_0_60))
       (not_occupied seg_o1_117b_0_60) (not (at-segment ?a seg_o1_117b_0_60))
       (occupied seg_o1_117c_0_34) (not (not_occupied seg_o1_117c_0_34))
       (blocked seg_o1_117c_0_34 ?a) (not (not_blocked seg_o1_117c_0_34 ?a))
       (at-segment ?a seg_o1_117c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p117_0_76 ?a))
       (not_blocked seg_p117_0_76 ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a))))
 (:action
  ugly1876ugly376ugly171ugly685ugly525move_seg_o1_109a_0_34_seg_o1_109b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109b_0_60)
       (not_blocked seg_o1_109b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_109b_0_60 airplane_daew7)
       (not_occupied seg_o1_109c_0_34) (not_occupied seg_o1_109d_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_109a_0_34))
       (not_occupied seg_o1_109a_0_34) (not (at-segment ?a seg_o1_109a_0_34))
       (occupied seg_o1_109b_0_60) (not (not_occupied seg_o1_109b_0_60))
       (blocked seg_o1_109b_0_60 ?a) (not (not_blocked seg_o1_109b_0_60 ?a))
       (at-segment ?a seg_o1_109b_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_108c_0_34 ?a))
       (not_blocked seg_o1_108c_0_34 ?a) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a)) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action
  ugly1877ugly635ugly678ugly280ugly860startup_seg_w1_c1c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1c_0_34)
       (not_occupied seg_w1_141a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a))))
 (:action
  ugly1878ugly385ugly105ugly60ugly400startup_seg_o1_104a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104a_0_34)
       (not_occupied seg_o1_104b_0_60) (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action ugly1879ugly252ugly891ugly341ugly54startup_seg_p131_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p131_0_75)
       (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action
  ugly1880ugly784ugly737ugly527ugly164startup_seg_m_a7a6d_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6d_0_85)
       (not_occupied seg_m_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6c_0_60 ?a)
       (not (not_blocked seg_m_a6c_0_60 ?a))))
 (:action
  ugly1881ugly90ugly397ugly259ugly582move_seg_p119_0_76_seg_o1_c4b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p119_0_76) (not_occupied seg_o1_c4b_0_60)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c4b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p119_0_76))
       (not_occupied seg_p119_0_76) (not (at-segment ?a seg_p119_0_76))
       (occupied seg_o1_c4b_0_60) (not (not_occupied seg_o1_c4b_0_60))
       (blocked seg_o1_c4b_0_60 ?a) (not (not_blocked seg_o1_c4b_0_60 ?a))
       (at-segment ?a seg_o1_c4b_0_60)))
 (:action ugly1882ugly458ugly911ugly430ugly227park_seg_p151_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p151_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p151_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_151b_0_45 ?a)) (not_blocked seg_w1_151b_0_45 ?a)))
 (:action
  ugly1883ugly527ugly164ugly748ugly631move_seg_n_a7a6d_0_75_seg_n_a7a6c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6d_0_75) (not_occupied seg_n_a7a6c_0_75)
       (not_blocked seg_n_a7a6c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a7a6d_0_75))
       (not_occupied seg_n_a7a6d_0_75) (not (at-segment ?a seg_n_a7a6d_0_75))
       (occupied seg_n_a7a6c_0_75) (not (not_occupied seg_n_a7a6c_0_75))
       (blocked seg_n_a7a6c_0_75 ?a) (not (not_blocked seg_n_a7a6c_0_75 ?a))
       (at-segment ?a seg_n_a7a6c_0_75) (not (blocked seg_n_a6c_0_60 ?a))
       (not_blocked seg_n_a6c_0_60 ?a)))
 (:action
  ugly1884ugly829ugly342ugly762ugly323startup_seg_o1_c1c_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1c_0_80)
       (not_occupied seg_o1_c1a_0_60) (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action
  ugly1885ugly838ugly773ugly29ugly650move_seg_c1_n2a_0_60_seg_c1_n2b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2a_0_60) (not_occupied seg_c1_n2b_0_80)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbeg)
       (not_blocked seg_c1_n2b_0_80 airplane_daew7)
       (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c1_n2a_0_60))
       (not_occupied seg_c1_n2a_0_60) (not (at-segment ?a seg_c1_n2a_0_60))
       (occupied seg_c1_n2b_0_80) (not (not_occupied seg_c1_n2b_0_80))
       (blocked seg_c1_n2b_0_80 ?a) (not (not_blocked seg_c1_n2b_0_80 ?a))
       (at-segment ?a seg_c1_n2b_0_80) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_n2_0_108 ?a))
       (not_blocked seg_n2_0_108 ?a) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action
  ugly1886ugly33ugly483ugly578ugly668move_seg_o1_118a_0_34_seg_o1_118b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_118b_0_60)
       (not_blocked seg_o1_118b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_118b_0_60 airplane_daew7)
       (not_occupied seg_o1_118c_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_118a_0_34))
       (not_occupied seg_o1_118a_0_34) (not (at-segment ?a seg_o1_118a_0_34))
       (occupied seg_o1_118b_0_60) (not (not_occupied seg_o1_118b_0_60))
       (blocked seg_o1_118b_0_60 ?a) (not (not_blocked seg_o1_118b_0_60 ?a))
       (at-segment ?a seg_o1_118b_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_117c_0_34 ?a))
       (not_blocked seg_o1_117c_0_34 ?a) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action
  ugly1887ugly286ugly8ugly178ugly621startup_seg_o1_117c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117c_0_34)
       (not_occupied seg_o1_118a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a))))
 (:action
  ugly1888ugly580ugly447ugly143ugly690startup_seg_n_a3d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3d_0_60)
       (not_occupied seg_n_a2a3f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3f_0_115 ?a)
       (not (not_blocked seg_n_a2a3f_0_115 ?a))))
 (:action
  ugly1889ugly162ugly824ugly573ugly864startup_seg_w1_c2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2a_0_60)
       (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action
  ugly1890ugly927ugly175ugly129ugly158move_seg_o1_110b_0_60_seg_p110_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110b_0_60) (not_occupied seg_p110_0_76)
       (not_blocked seg_p110_0_76 airplane_cfbeg)
       (not_blocked seg_p110_0_76 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_110b_0_60))
       (not_occupied seg_o1_110b_0_60) (not (at-segment ?a seg_o1_110b_0_60))
       (occupied seg_p110_0_76) (not (not_occupied seg_p110_0_76))
       (blocked seg_p110_0_76 ?a) (not (not_blocked seg_p110_0_76 ?a))
       (at-segment ?a seg_p110_0_76) (not (blocked seg_o1_110a_0_34 ?a))
       (not_blocked seg_o1_110a_0_34 ?a) (not (blocked seg_o1_110c_0_34 ?a))
       (not_blocked seg_o1_110c_0_34 ?a) (not (blocked seg_o1_110d_0_45 ?a))
       (not_blocked seg_o1_110d_0_45 ?a)))
 (:action
  ugly1891ugly833ugly696ugly462ugly114startup_seg_o1_118b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118b_0_60)
       (not_occupied seg_p118_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p118_0_76 ?a)
       (not (not_blocked seg_p118_0_76 ?a))))
 (:action
  ugly1892ugly671ugly665ugly497ugly39move_seg_n1_0_108_seg_n_a3c_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n1_0_108) (not_occupied seg_n_a3c_0_60)
       (not_blocked seg_n_a3c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a3c_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n1_0_108))
       (not_occupied seg_n1_0_108) (not (at-segment ?a seg_n1_0_108))
       (occupied seg_n_a3c_0_60) (not (not_occupied seg_n_a3c_0_60))
       (blocked seg_n_a3c_0_60 ?a) (not (not_blocked seg_n_a3c_0_60 ?a))
       (at-segment ?a seg_n_a3c_0_60) (not (blocked seg_w1_c1a_0_60 ?a))
       (not_blocked seg_w1_c1a_0_60 ?a)))
 (:action
  ugly1893ugly330ugly889ugly537ugly883startup_seg_o1_104a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104a_0_34)
       (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action
  ugly1894ugly301ugly884ugly2ugly859startup_seg_a8_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_0_80_6226)
       (not_occupied seg_a8_b_1_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_1_0_79_7559 ?a)
       (not (not_blocked seg_a8_b_1_0_79_7559 ?a))))
 (:action
  ugly1895ugly297ugly799ugly63ugly834startup_seg_w1_152c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152c_0_34)
       (not_occupied seg_w1_153a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a))))
 (:action ugly1896ugly7ugly318ugly130ugly775startup_seg_p151_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p151_0_75)
       (not_occupied seg_w1_151b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action
  ugly1897ugly680ugly209ugly856ugly863move_seg_o1_104a_0_34_seg_o1_104b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_104b_0_60)
       (not_blocked seg_o1_104b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104b_0_60 airplane_daew7)
       (not_occupied seg_o1_104c_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_104a_0_34))
       (not_occupied seg_o1_104a_0_34) (not (at-segment ?a seg_o1_104a_0_34))
       (occupied seg_o1_104b_0_60) (not (not_occupied seg_o1_104b_0_60))
       (blocked seg_o1_104b_0_60 ?a) (not (not_blocked seg_o1_104b_0_60 ?a))
       (at-segment ?a seg_o1_104b_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_103c_0_34 ?a))
       (not_blocked seg_o1_103c_0_34 ?a) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action ugly1898ugly417ugly920ugly111ugly157park_seg_p107_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p107_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p107_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c2b_0_60 ?a)) (not_blocked seg_o1_c2b_0_60 ?a)))
 (:action
  ugly1899ugly850ugly623ugly79ugly439startup_seg_w1_151c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151c_0_34)
       (not_occupied seg_w1_152a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a))))
 (:action
  ugly1900ugly87ugly126ugly602ugly921startup_seg_n_a9a10d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10d_0_75)
       (not_occupied seg_n_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10e_0_75 ?a)
       (not (not_blocked seg_n_a9a10e_0_75 ?a))))
 (:action
  ugly1901ugly566ugly121ugly892ugly738startup_seg_o1_c3c_0_48_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3c_0_48)
       (not_occupied seg_o1_c3a_0_34) (not_occupied seg_o1_c3b_0_60)
       (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a)) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a)) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action
  ugly1902ugly107ugly193ugly173ugly553move_seg_o1_115b_0_60_seg_o1_115c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115b_0_60) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_daew7)
       (not_occupied seg_o1_115a_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_115b_0_60))
       (not_occupied seg_o1_115b_0_60) (not (at-segment ?a seg_o1_115b_0_60))
       (occupied seg_o1_115c_0_34) (not (not_occupied seg_o1_115c_0_34))
       (blocked seg_o1_115c_0_34 ?a) (not (not_blocked seg_o1_115c_0_34 ?a))
       (at-segment ?a seg_o1_115c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p115_0_76 ?a))
       (not_blocked seg_p115_0_76 ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a))))
 (:action ugly1903ugly465ugly18ugly192ugly349park_seg_p111_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p111_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p111_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_111b_0_60 ?a)) (not_blocked seg_o1_111b_0_60 ?a)))
 (:action
  ugly1904ugly41ugly59ugly643ugly586startup_seg_n_a4a7c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7c_0_75)
       (not_occupied seg_n_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7d_0_75 ?a)
       (not (not_blocked seg_n_a4a7d_0_75 ?a))))
 (:action
  ugly1905ugly356ugly562ugly580ugly447move_seg_w1_161a_0_34_seg_w1_161b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_161b_0_45)
       (not_blocked seg_w1_161b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_161b_0_45 airplane_daew7)
       (not_occupied seg_w1_161c_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_161a_0_34))
       (not_occupied seg_w1_161a_0_34) (not (at-segment ?a seg_w1_161a_0_34))
       (occupied seg_w1_161b_0_45) (not (not_occupied seg_w1_161b_0_45))
       (blocked seg_w1_161b_0_45 ?a) (not (not_blocked seg_w1_161b_0_45 ?a))
       (at-segment ?a seg_w1_161b_0_45) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_c3c_0_48 ?a))
       (not_blocked seg_w1_c3c_0_48 ?a) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action
  ugly1906ugly160ugly942ugly557ugly153move_seg_p153_0_75_seg_w1_153b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p153_0_75) (not_occupied seg_w1_153b_0_45)
       (not_blocked seg_w1_153b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_153b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p153_0_75))
       (not_occupied seg_p153_0_75) (not (at-segment ?a seg_p153_0_75))
       (occupied seg_w1_153b_0_45) (not (not_occupied seg_w1_153b_0_45))
       (blocked seg_w1_153b_0_45 ?a) (not (not_blocked seg_w1_153b_0_45 ?a))
       (at-segment ?a seg_w1_153b_0_45)))
 (:action
  ugly1907ugly782ugly827ugly186ugly636startup_seg_o1_117a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117a_0_34)
       (not_occupied seg_o1_117b_0_60) (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action ugly1908ugly543ugly871ugly784ugly737park_seg_p108_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p108_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p108_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_108b_0_60 ?a)) (not_blocked seg_o1_108b_0_60 ?a)))
 (:action
  ugly1909ugly576ugly952ugly240ugly516startup_seg_p161_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p161_0_75)
       (not_occupied seg_w1_161b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a))))
 (:action
  ugly1910ugly315ugly14ugly490ugly313startup_seg_m_a6a8b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8b_0_75)
       (not_occupied seg_m_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8c_0_75 ?a)
       (not (not_blocked seg_m_a6a8c_0_75 ?a))))
 (:action
  ugly1911ugly953ugly211ugly160ugly942startup_seg_o1_110d_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110d_0_45)
       (not_occupied seg_o1_110a_0_34) (not_occupied seg_o1_110b_0_60)
       (not_occupied seg_o1_110c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a)) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a)) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a))))
 (:action
  ugly1912ugly948ugly350ugly135ugly669startup_seg_m_a7a_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a_0_120_934)
       (not_occupied seg_m_a7b_0_60) (not_occupied seg_m_a7c_0_60)
       (not_occupied seg_m_a7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7b_0_60 ?a)
       (not (not_blocked seg_m_a7b_0_60 ?a)) (blocked seg_m_a7c_0_60 ?a)
       (not (not_blocked seg_m_a7c_0_60 ?a)) (blocked seg_m_a7d_0_60 ?a)
       (not (not_blocked seg_m_a7d_0_60 ?a))))
 (:action
  ugly1913ugly3ugly765ugly798ugly788move_seg_o1_c3b_0_60_seg_o1_c3d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3b_0_60) (not_occupied seg_o1_c3d_0_60)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3d_0_60 airplane_daew7)
       (not_occupied seg_o1_c3a_0_34) (not_occupied seg_o1_c3c_0_48))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c3b_0_60))
       (not_occupied seg_o1_c3b_0_60) (not (at-segment ?a seg_o1_c3b_0_60))
       (occupied seg_o1_c3d_0_60) (not (not_occupied seg_o1_c3d_0_60))
       (blocked seg_o1_c3d_0_60 ?a) (not (not_blocked seg_o1_c3d_0_60 ?a))
       (at-segment ?a seg_o1_c3d_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p112_0_76 ?a))
       (not_blocked seg_p112_0_76 ?a) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a)) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a))))
 (:action
  ugly1914ugly29ugly650ugly177ugly853move_seg_o1_116c_0_34_seg_o1_116a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116c_0_34) (not_occupied seg_o1_116a_0_34)
       (not_blocked seg_o1_116a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116a_0_34 airplane_daew7)
       (not_occupied seg_o1_116b_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_116c_0_34))
       (not_occupied seg_o1_116c_0_34) (not (at-segment ?a seg_o1_116c_0_34))
       (occupied seg_o1_116a_0_34) (not (not_occupied seg_o1_116a_0_34))
       (blocked seg_o1_116a_0_34 ?a) (not (not_blocked seg_o1_116a_0_34 ?a))
       (at-segment ?a seg_o1_116a_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_117a_0_34 ?a))
       (not_blocked seg_o1_117a_0_34 ?a) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action
  ugly1915ugly407ugly937ugly64ugly235startup_seg_m_a7b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7b_0_60)
       (not_occupied seg_m_a7a6a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6a_0_75 ?a)
       (not (not_blocked seg_m_a7a6a_0_75 ?a))))
 (:action
  ugly1916ugly947ugly792ugly78ugly917startup_seg_n_a9a10b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10b_0_75)
       (not_occupied seg_n_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10c_0_75 ?a)
       (not (not_blocked seg_n_a9a10c_0_75 ?a))))
 (:action
  ugly1917ugly865ugly364ugly629ugly41move_seg_n_a4a7f_0_75_seg_n_a4a7e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7f_0_75) (not_occupied seg_n_a4a7e_0_75)
       (not_blocked seg_n_a4a7e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7f_0_75))
       (not_occupied seg_n_a4a7f_0_75) (not (at-segment ?a seg_n_a4a7f_0_75))
       (occupied seg_n_a4a7e_0_75) (not (not_occupied seg_n_a4a7e_0_75))
       (blocked seg_n_a4a7e_0_75 ?a) (not (not_blocked seg_n_a4a7e_0_75 ?a))
       (at-segment ?a seg_n_a4a7e_0_75) (not (blocked seg_n_a7c_0_60 ?a))
       (not_blocked seg_n_a7c_0_60 ?a)))
 (:action
  ugly1918ugly290ugly276ugly288ugly591move_seg_w1_152a_0_34_seg_w1_152c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_daew7)
       (not_occupied seg_w1_152b_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_152a_0_34))
       (not_occupied seg_w1_152a_0_34) (not (at-segment ?a seg_w1_152a_0_34))
       (occupied seg_w1_152c_0_34) (not (not_occupied seg_w1_152c_0_34))
       (blocked seg_w1_152c_0_34 ?a) (not (not_blocked seg_w1_152c_0_34 ?a))
       (at-segment ?a seg_w1_152c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_151c_0_34 ?a))
       (not_blocked seg_w1_151c_0_34 ?a) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action
  ugly1919ugly582ugly307ugly815ugly190move_seg_p154_0_75_seg_w1_154b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p154_0_75) (not_occupied seg_w1_154b_0_45)
       (not_blocked seg_w1_154b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_154b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p154_0_75))
       (not_occupied seg_p154_0_75) (not (at-segment ?a seg_p154_0_75))
       (occupied seg_w1_154b_0_45) (not (not_occupied seg_w1_154b_0_45))
       (blocked seg_w1_154b_0_45 ?a) (not (not_blocked seg_w1_154b_0_45 ?a))
       (at-segment ?a seg_w1_154b_0_45)))
 (:action
  ugly1920ugly898ugly315ugly14ugly490move_seg_o1_c4a_0_34_seg_o1_c4b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4a_0_34) (not_occupied seg_o1_c4b_0_60)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c4b_0_60 airplane_daew7)
       (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c4a_0_34))
       (not_occupied seg_o1_c4a_0_34) (not (at-segment ?a seg_o1_c4a_0_34))
       (occupied seg_o1_c4b_0_60) (not (not_occupied seg_o1_c4b_0_60))
       (blocked seg_o1_c4b_0_60 ?a) (not (not_blocked seg_o1_c4b_0_60 ?a))
       (at-segment ?a seg_o1_c4b_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_118c_0_34 ?a))
       (not_blocked seg_o1_118c_0_34 ?a) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action
  ugly1921ugly493ugly108ugly50ugly251startup_seg_08l_a4c_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a4c_0_161_245)
       (not_occupied seg_08l_a4a_0_80) (not_occupied seg_08l_a4b_0_161_245)
       (not_occupied seg_08l_a4d_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a4a_0_80 ?a)
       (not (not_blocked seg_08l_a4a_0_80 ?a))
       (blocked seg_08l_a4b_0_161_245 ?a)
       (not (not_blocked seg_08l_a4b_0_161_245 ?a))
       (blocked seg_08l_a4d_0_80 ?a) (not (not_blocked seg_08l_a4d_0_80 ?a))))
 (:action ugly1922ugly735ugly583ugly882ugly565park_seg_p142_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p142_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p142_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_142b_0_45 ?a)) (not_blocked seg_w1_142b_0_45 ?a)))
 (:action
  ugly1923ugly294ugly534ugly572ugly817startup_seg_m_a3a4c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4c_0_75)
       (not_occupied seg_m_a3a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4d_0_75 ?a)
       (not (not_blocked seg_m_a3a4d_0_75 ?a))))
 (:action
  ugly1924ugly383ugly781ugly428ugly431startup_seg_n_a4a7a_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7a_0_115)
       (not_occupied seg_n_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7b_0_75 ?a)
       (not (not_blocked seg_n_a4a7b_0_75 ?a))))
 (:action ugly1925ugly71ugly832ugly734ugly793startup_seg_p110_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p110_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1926ugly848ugly25ugly680ugly209startup_seg_n_n2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a_0_60)
       (not_occupied seg_n_n2a4a_0_70))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4a_0_70 ?a)
       (not (not_blocked seg_n_n2a4a_0_70 ?a))))
 (:action
  ugly1927ugly141ugly461ugly445ugly322startup_seg_m_a8c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8c_0_60)
       (not_occupied seg_m_a8a_0_60) (not_occupied seg_m_a8b_0_60)
       (not_occupied seg_m_a8d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a)) (blocked seg_m_a8b_0_60 ?a)
       (not (not_blocked seg_m_a8b_0_60 ?a)) (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))))
 (:action
  ugly1928ugly118ugly282ugly703ugly647pushback_seg_o1_118b_0_60_seg_o1_118c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_118b_0_60) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_daew7))
  :effect
  (and (not (occupied seg_o1_118b_0_60)) (not_occupied seg_o1_118b_0_60)
       (not (blocked seg_o1_118b_0_60 ?a)) (not_blocked seg_o1_118b_0_60 ?a)
       (not (at-segment ?a seg_o1_118b_0_60)) (occupied seg_o1_118c_0_34)
       (not (not_occupied seg_o1_118c_0_34)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a)) (at-segment ?a seg_o1_118c_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly1929ugly418ugly383ugly781ugly428startup_seg_w1_162c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162c_0_34)
       (not_occupied seg_w1_162a_0_34) (not_occupied seg_w1_162b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action
  ugly1930ugly425ugly693ugly694ugly707move_seg_w1_162a_0_34_seg_w1_162b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_162b_0_45)
       (not_blocked seg_w1_162b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_162b_0_45 airplane_daew7)
       (not_occupied seg_w1_162c_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_162a_0_34))
       (not_occupied seg_w1_162a_0_34) (not (at-segment ?a seg_w1_162a_0_34))
       (occupied seg_w1_162b_0_45) (not (not_occupied seg_w1_162b_0_45))
       (blocked seg_w1_162b_0_45 ?a) (not (not_blocked seg_w1_162b_0_45 ?a))
       (at-segment ?a seg_w1_162b_0_45) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_161c_0_34 ?a))
       (not_blocked seg_w1_161c_0_34 ?a) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action
  ugly1931ugly45ugly861ugly639ugly733move_seg_w1_162c_0_34_seg_w1_163a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162c_0_34) (not_occupied seg_w1_163a_0_34)
       (not_blocked seg_w1_163a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163a_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_162c_0_34))
       (not_occupied seg_w1_162c_0_34) (not (at-segment ?a seg_w1_162c_0_34))
       (occupied seg_w1_163a_0_34) (not (not_occupied seg_w1_163a_0_34))
       (blocked seg_w1_163a_0_34 ?a) (not (not_blocked seg_w1_163a_0_34 ?a))
       (at-segment ?a seg_w1_163a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_162a_0_34 ?a))
       (not_blocked seg_w1_162a_0_34 ?a) (not (blocked seg_w1_162b_0_45 ?a))
       (not_blocked seg_w1_162b_0_45 ?a)))
 (:action
  ugly1932ugly796ugly770ugly189ugly385move_seg_w1_c2a_0_60_seg_w1_c2c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c2a_0_60) (not_occupied seg_w1_c2c_0_34)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c2c_0_34 airplane_daew7)
       (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_c2a_0_60))
       (not_occupied seg_w1_c2a_0_60) (not (at-segment ?a seg_w1_c2a_0_60))
       (occupied seg_w1_c2c_0_34) (not (not_occupied seg_w1_c2c_0_34))
       (blocked seg_w1_c2c_0_34 ?a) (not (not_blocked seg_w1_c2c_0_34 ?a))
       (at-segment ?a seg_w1_c2c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_143c_0_60 ?a))
       (not_blocked seg_w1_143c_0_60 ?a) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action ugly1933ugly506ugly796ugly770ugly189park_seg_p152_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p152_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p152_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_152b_0_45 ?a)) (not_blocked seg_w1_152b_0_45 ?a)))
 (:action
  ugly1934ugly799ugly63ugly834ugly382move_seg_o1_116b_0_60_seg_o1_116c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116b_0_60) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_daew7)
       (not_occupied seg_o1_116a_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_116b_0_60))
       (not_occupied seg_o1_116b_0_60) (not (at-segment ?a seg_o1_116b_0_60))
       (occupied seg_o1_116c_0_34) (not (not_occupied seg_o1_116c_0_34))
       (blocked seg_o1_116c_0_34 ?a) (not (not_blocked seg_o1_116c_0_34 ?a))
       (at-segment ?a seg_o1_116c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p116_0_76 ?a))
       (not_blocked seg_p116_0_76 ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a))))
 (:action
  ugly1935ugly496ugly714ugly830ugly725startup_seg_08l_a4b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a4b_0_161_245)
       (not_occupied seg_a6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_a_0_158_647 ?a)
       (not (not_blocked seg_a6_a_0_158_647 ?a))))
 (:action
  ugly1936ugly188ugly236ugly232ugly477startup_seg_m_a10b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10b_0_60)
       (not_occupied seg_n_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10a_0_60 ?a)
       (not (not_blocked seg_n_a10a_0_60 ?a))))
 (:action
  ugly1937ugly277ugly619ugly692ugly869startup_seg_o1_103b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103b_0_60)
       (not_occupied seg_p103_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p103_0_76 ?a)
       (not (not_blocked seg_p103_0_76 ?a))))
 (:action
  ugly1938ugly716ugly440ugly346ugly196startup_seg_m_a6a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a_0_60)
       (not_occupied seg_m_a6a8a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8a_0_75 ?a)
       (not (not_blocked seg_m_a6a8a_0_75 ?a))))
 (:action
  ugly1939ugly721ugly11ugly612ugly191startup_seg_m_a7c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7c_0_60)
       (not_occupied seg_m_a7a_0_120_934) (not_occupied seg_m_a7b_0_60)
       (not_occupied seg_m_a7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a_0_120_934 ?a)
       (not (not_blocked seg_m_a7a_0_120_934 ?a)) (blocked seg_m_a7b_0_60 ?a)
       (not (not_blocked seg_m_a7b_0_60 ?a)) (blocked seg_m_a7d_0_60 ?a)
       (not (not_blocked seg_m_a7d_0_60 ?a))))
 (:action
  ugly1940ugly145ugly740ugly768ugly181move_seg_n_a2a3f_0_115_seg_n_a2a3e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3f_0_115) (not_occupied seg_n_a2a3e_0_75)
       (not_blocked seg_n_a2a3e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3f_0_115))
       (not_occupied seg_n_a2a3f_0_115) (not (at-segment ?a seg_n_a2a3f_0_115))
       (occupied seg_n_a2a3e_0_75) (not (not_occupied seg_n_a2a3e_0_75))
       (blocked seg_n_a2a3e_0_75 ?a) (not (not_blocked seg_n_a2a3e_0_75 ?a))
       (at-segment ?a seg_n_a2a3e_0_75) (not (blocked seg_n_a3d_0_60 ?a))
       (not_blocked seg_n_a3d_0_60 ?a)))
 (:action
  ugly1941ugly253ugly119ugly230ugly415startup_seg_o1_115a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115a_0_34)
       (not_occupied seg_o1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a))))
 (:action ugly1942ugly577ugly406ugly649ugly528park_seg_p163_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p163_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p163_0_75) (not (is-moving ?a))))
 (:action
  ugly1943ugly882ugly565ugly347ugly314move_seg_w1_153b_0_45_seg_p153_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153b_0_45) (not_occupied seg_p153_0_75)
       (not_blocked seg_p153_0_75 airplane_cfbeg)
       (not_blocked seg_p153_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_153b_0_45))
       (not_occupied seg_w1_153b_0_45) (not (at-segment ?a seg_w1_153b_0_45))
       (occupied seg_p153_0_75) (not (not_occupied seg_p153_0_75))
       (blocked seg_p153_0_75 ?a) (not (not_blocked seg_p153_0_75 ?a))
       (at-segment ?a seg_p153_0_75) (not (blocked seg_w1_153a_0_34 ?a))
       (not_blocked seg_w1_153a_0_34 ?a) (not (blocked seg_w1_153c_0_34 ?a))
       (not_blocked seg_w1_153c_0_34 ?a)))
 (:action
  ugly1944ugly573ugly864ugly360ugly790startup_seg_o1_111b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111b_0_60)
       (not_occupied seg_o1_111a_0_34) (not_occupied seg_o1_111c_0_34)
       (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a)) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a)) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action
  ugly1945ugly891ugly341ugly54ugly535move_seg_w1_c1c_0_34_seg_w1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1c_0_34) (not_occupied seg_w1_c1a_0_60)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1a_0_60 airplane_daew7)
       (not_occupied seg_w1_c1b_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_c1c_0_34))
       (not_occupied seg_w1_c1c_0_34) (not (at-segment ?a seg_w1_c1c_0_34))
       (occupied seg_w1_c1a_0_60) (not (not_occupied seg_w1_c1a_0_60))
       (blocked seg_w1_c1a_0_60 ?a) (not (not_blocked seg_w1_c1a_0_60 ?a))
       (at-segment ?a seg_w1_c1a_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_141a_0_34 ?a))
       (not_blocked seg_w1_141a_0_34 ?a) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a))))
 (:action
  ugly1946ugly649ugly528ugly442ugly880move_seg_o1_c2a_0_60_seg_o1_c2c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_c2c_0_34)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c2c_0_34 airplane_daew7)
       (not_occupied seg_o1_c2b_0_60) (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c2a_0_60))
       (not_occupied seg_o1_c2a_0_60) (not (at-segment ?a seg_o1_c2a_0_60))
       (occupied seg_o1_c2c_0_34) (not (not_occupied seg_o1_c2c_0_34))
       (blocked seg_o1_c2c_0_34 ?a) (not (not_blocked seg_o1_c2c_0_34 ?a))
       (at-segment ?a seg_o1_c2c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_104c_0_60 ?a))
       (not_blocked seg_o1_104c_0_60 ?a) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a)) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action
  ugly1947ugly494ugly769ugly944ugly113startup_seg_o1_111c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111c_0_34)
       (not_occupied seg_o1_111a_0_34) (not_occupied seg_o1_111b_0_60)
       (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a)) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a)) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action
  ugly1948ugly370ugly471ugly677ugly168startup_seg_w1_153c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153c_0_34)
       (not_occupied seg_w1_153a_0_34) (not_occupied seg_w1_153b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action
  ugly1949ugly435ugly343ugly688ugly47startup_seg_m_a6b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6b_0_60)
       (not_occupied seg_m_a6a_0_60) (not_occupied seg_m_a6c_0_60)
       (not_occupied seg_m_a6d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a_0_60 ?a)
       (not (not_blocked seg_m_a6a_0_60 ?a)) (blocked seg_m_a6c_0_60 ?a)
       (not (not_blocked seg_m_a6c_0_60 ?a)) (blocked seg_m_a6d_0_120_934 ?a)
       (not (not_blocked seg_m_a6d_0_120_934 ?a))))
 (:action
  ugly1950ugly413ugly949ugly379ugly868startup_seg_n_a4a7a_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7a_0_115)
       (not_occupied seg_n_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a))))
 (:action
  ugly1951ugly588ugly90ugly397ugly259startup_seg_o1_c3a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3a_0_34)
       (not_occupied seg_o1_111c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a))))
 (:action
  ugly1952ugly432ugly362ugly479ugly951move_seg_w1_c3c_0_48_seg_w1_161a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c3c_0_48) (not_occupied seg_w1_161a_0_34)
       (not_blocked seg_w1_161a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161a_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_c3c_0_48))
       (not_occupied seg_w1_c3c_0_48) (not (at-segment ?a seg_w1_c3c_0_48))
       (occupied seg_w1_161a_0_34) (not (not_occupied seg_w1_161a_0_34))
       (blocked seg_w1_161a_0_34 ?a) (not (not_blocked seg_w1_161a_0_34 ?a))
       (at-segment ?a seg_w1_161a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_c3a_0_34 ?a))
       (not_blocked seg_w1_c3a_0_34 ?a) (not (blocked seg_w1_c3b_0_60 ?a))
       (not_blocked seg_w1_c3b_0_60 ?a)))
 (:action
  ugly1953ugly134ugly656ugly298ugly501startup_seg_c2_a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_a_0_80)
       (not_occupied seg_c2_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a))))
 (:action
  ugly1954ugly80ugly704ugly568ugly468move_seg_w1_163c_0_34_seg_w1_164a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163c_0_34) (not_occupied seg_w1_164a_0_34)
       (not_blocked seg_w1_164a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164a_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_163c_0_34))
       (not_occupied seg_w1_163c_0_34) (not (at-segment ?a seg_w1_163c_0_34))
       (occupied seg_w1_164a_0_34) (not (not_occupied seg_w1_164a_0_34))
       (blocked seg_w1_164a_0_34 ?a) (not (not_blocked seg_w1_164a_0_34 ?a))
       (at-segment ?a seg_w1_164a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_163a_0_34 ?a))
       (not_blocked seg_w1_163a_0_34 ?a) (not (blocked seg_w1_163b_0_45 ?a))
       (not_blocked seg_w1_163b_0_45 ?a)))
 (:action ugly1955ugly788ugly265ugly4ugly165startup_seg_a10_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_0_80)
       (not_occupied seg_m_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a))))
 (:action
  ugly1956ugly484ugly763ugly531ugly541startup_seg_p103_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p103_0_76)
       (not_occupied seg_o1_103b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action
  ugly1957ugly284ugly745ugly730ugly354startup_seg_p164_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p164_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1958ugly520ugly577ugly406ugly649startup_seg_p108_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p108_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly1959ugly449ugly881ugly100ugly84startup_seg_p164_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p164_0_75)
       (not_occupied seg_w1_164b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a))))
 (:action
  ugly1960ugly537ugly883ugly494ugly769startup_seg_n_a10b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10b_0_60)
       (not_occupied seg_n_a9a10g_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10g_0_75 ?a)
       (not (not_blocked seg_n_a9a10g_0_75 ?a))))
 (:action
  ugly1961ugly932ugly263ugly146ugly38move_seg_w1_142b_0_45_seg_p142_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142b_0_45) (not_occupied seg_p142_0_75)
       (not_blocked seg_p142_0_75 airplane_cfbeg)
       (not_blocked seg_p142_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_142b_0_45))
       (not_occupied seg_w1_142b_0_45) (not (at-segment ?a seg_w1_142b_0_45))
       (occupied seg_p142_0_75) (not (not_occupied seg_p142_0_75))
       (blocked seg_p142_0_75 ?a) (not (not_blocked seg_p142_0_75 ?a))
       (at-segment ?a seg_p142_0_75) (not (blocked seg_w1_142a_0_34 ?a))
       (not_blocked seg_w1_142a_0_34 ?a) (not (blocked seg_w1_142c_0_34 ?a))
       (not_blocked seg_w1_142c_0_34 ?a)))
 (:action
  ugly1962ugly895ugly646ugly838ugly773move_seg_08l_a4d_0_80_seg_08l_a4a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a4d_0_80) (not_occupied seg_08l_a4a_0_80)
       (not_blocked seg_08l_a4a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a4a_0_80 airplane_daew7)
       (not_occupied seg_08l_a4b_0_161_245)
       (not_occupied seg_08l_a4c_0_161_245) (not_occupied seg_08l_a2a_0_80)
       (not_occupied seg_09l_0_80) (not_occupied seg_08l_a7a_0_80))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_08l_a4d_0_80))
       (not_occupied seg_08l_a4d_0_80) (not (at-segment ?a seg_08l_a4d_0_80))
       (occupied seg_08l_a4a_0_80) (not (not_occupied seg_08l_a4a_0_80))
       (blocked seg_08l_a4a_0_80 ?a) (not (not_blocked seg_08l_a4a_0_80 ?a))
       (at-segment ?a seg_08l_a4a_0_80) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_08l_a3a4_0_450 ?a))
       (not_blocked seg_08l_a3a4_0_450 ?a) (blocked seg_08l_a4b_0_161_245 ?a)
       (not (not_blocked seg_08l_a4b_0_161_245 ?a))
       (blocked seg_08l_a4c_0_161_245 ?a)
       (not (not_blocked seg_08l_a4c_0_161_245 ?a))
       (blocked seg_08l_a2a_0_80 ?a) (not (not_blocked seg_08l_a2a_0_80 ?a))
       (blocked seg_09l_0_80 ?a) (not (not_blocked seg_09l_0_80 ?a))
       (blocked seg_08l_a7a_0_80 ?a) (not (not_blocked seg_08l_a7a_0_80 ?a))))
 (:action
  ugly1963ugly146ugly38ugly88ugly28move_seg_w1_143a_0_34_seg_w1_143c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_daew7)
       (not_occupied seg_w1_143b_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_143a_0_34))
       (not_occupied seg_w1_143a_0_34) (not (at-segment ?a seg_w1_143a_0_34))
       (occupied seg_w1_143c_0_60) (not (not_occupied seg_w1_143c_0_60))
       (blocked seg_w1_143c_0_60 ?a) (not (not_blocked seg_w1_143c_0_60 ?a))
       (at-segment ?a seg_w1_143c_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_142c_0_34 ?a))
       (not_blocked seg_w1_142c_0_34 ?a) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a))))
 (:action
  ugly1964ugly611ugly521ugly402ugly141startup_seg_c4_s6c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6c_0_60)
       (not_occupied seg_c4_s6a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a))))
 (:action
  ugly1965ugly365ugly208ugly923ugly10move_seg_08l_a7a9_0_270_seg_08l_a9c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7a9_0_270) (not_occupied seg_08l_a9c_0_80)
       (not_blocked seg_08l_a9c_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a9c_0_80 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_08l_a7a9_0_270))
       (not_occupied seg_08l_a7a9_0_270)
       (not (at-segment ?a seg_08l_a7a9_0_270)) (occupied seg_08l_a9c_0_80)
       (not (not_occupied seg_08l_a9c_0_80)) (blocked seg_08l_a9c_0_80 ?a)
       (not (not_blocked seg_08l_a9c_0_80 ?a)) (at-segment ?a seg_08l_a9c_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_08l_a7a_0_80 ?a)) (not_blocked seg_08l_a7a_0_80 ?a)
       (not (blocked seg_08l_a2a_0_80 ?a)) (not_blocked seg_08l_a2a_0_80 ?a)
       (not (blocked seg_09l_0_80 ?a)) (not_blocked seg_09l_0_80 ?a)
       (not (blocked seg_08l_a4a_0_80 ?a)) (not_blocked seg_08l_a4a_0_80 ?a)
       (not (blocked seg_08l_a3a_0_80 ?a)) (not_blocked seg_08l_a3a_0_80 ?a)
       (not (blocked seg_08l_0_80 ?a)) (not_blocked seg_08l_0_80 ?a)
       (not (blocked seg_08l_a3a4_0_450 ?a))
       (not_blocked seg_08l_a3a4_0_450 ?a) (not (blocked seg_08l_a4d_0_80 ?a))
       (not_blocked seg_08l_a4d_0_80 ?a) (not (blocked seg_08l_a6a7_0_450 ?a))
       (not_blocked seg_08l_a6a7_0_450 ?a) (not (blocked seg_08l_a7d_0_80 ?a))
       (not_blocked seg_08l_a7d_0_80 ?a)))
 (:action
  ugly1966ugly618ugly31ugly634ugly376move_seg_o1_c1b_0_34_seg_o1_102a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c1b_0_34))
       (not_occupied seg_o1_c1b_0_34) (not (at-segment ?a seg_o1_c1b_0_34))
       (occupied seg_o1_102a_0_34) (not (not_occupied seg_o1_102a_0_34))
       (blocked seg_o1_102a_0_34 ?a) (not (not_blocked seg_o1_102a_0_34 ?a))
       (at-segment ?a seg_o1_102a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_c1a_0_60 ?a))
       (not_blocked seg_o1_c1a_0_60 ?a) (not (blocked seg_o1_c1c_0_80 ?a))
       (not_blocked seg_o1_c1c_0_80 ?a)))
 (:action
  ugly1967ugly390ugly700ugly482ugly829startup_seg_w1_142b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142b_0_45)
       (not_occupied seg_p142_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p142_0_75 ?a)
       (not (not_blocked seg_p142_0_75 ?a))))
 (:action
  ugly1968ugly934ugly887ugly517ugly654move_seg_o1_c3b_0_60_seg_p112_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3b_0_60) (not_occupied seg_p112_0_76)
       (not_blocked seg_p112_0_76 airplane_cfbeg)
       (not_blocked seg_p112_0_76 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c3b_0_60))
       (not_occupied seg_o1_c3b_0_60) (not (at-segment ?a seg_o1_c3b_0_60))
       (occupied seg_p112_0_76) (not (not_occupied seg_p112_0_76))
       (blocked seg_p112_0_76 ?a) (not (not_blocked seg_p112_0_76 ?a))
       (at-segment ?a seg_p112_0_76) (not (blocked seg_o1_c3a_0_34 ?a))
       (not_blocked seg_o1_c3a_0_34 ?a) (not (blocked seg_o1_c3c_0_48 ?a))
       (not_blocked seg_o1_c3c_0_48 ?a) (not (blocked seg_o1_c3d_0_60 ?a))
       (not_blocked seg_o1_c3d_0_60 ?a)))
 (:action
  ugly1969ugly409ugly94ugly306ugly898pushback_seg_p118_0_76_seg_o1_118b_0_60_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p118_0_76) (not_occupied seg_o1_118b_0_60)
       (not_blocked seg_o1_118b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_118b_0_60 airplane_daew7))
  :effect
  (and (not (occupied seg_p118_0_76)) (not_occupied seg_p118_0_76)
       (not (blocked seg_p118_0_76 ?a)) (not_blocked seg_p118_0_76 ?a)
       (not (at-segment ?a seg_p118_0_76)) (occupied seg_o1_118b_0_60)
       (not (not_occupied seg_o1_118b_0_60)) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))
       (at-segment ?a seg_o1_118b_0_60)))
 (:action
  ugly1970ugly536ugly270ugly761ugly1startup_seg_m_a7a6a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6a_0_75)
       (not_occupied seg_m_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7b_0_60 ?a)
       (not (not_blocked seg_m_a7b_0_60 ?a))))
 (:action
  ugly1971ugly873ugly99ugly545ugly275startup_seg_n_a7b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7b_0_60)
       (not_occupied seg_n_a7a6a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6a_0_85 ?a)
       (not (not_blocked seg_n_a7a6a_0_85 ?a))))
 (:action ugly1972ugly731ugly465ugly18ugly192startup_seg_p142_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p142_0_75)
       (not_occupied seg_w1_142b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a))))
 (:action
  ugly1973ugly280ugly860ugly324ugly593startup_seg_o1_c2d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2d_0_60)
       (not_occupied seg_c2_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a))))
 (:action
  ugly1974ugly482ugly829ugly342ugly762startup_seg_w1_c1b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1b_0_60)
       (not_occupied seg_w1_c1a_0_60) (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a)) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action
  ugly1975ugly538ugly585ugly213ugly498move_seg_o1_c2a_0_60_seg_o1_104c_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c2a_0_60))
       (not_occupied seg_o1_c2a_0_60) (not (at-segment ?a seg_o1_c2a_0_60))
       (occupied seg_o1_104c_0_60) (not (not_occupied seg_o1_104c_0_60))
       (blocked seg_o1_104c_0_60 ?a) (not (not_blocked seg_o1_104c_0_60 ?a))
       (at-segment ?a seg_o1_104c_0_60) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_c2b_0_60 ?a))
       (not_blocked seg_o1_c2b_0_60 ?a) (not (blocked seg_o1_c2c_0_34 ?a))
       (not_blocked seg_o1_c2c_0_34 ?a) (not (blocked seg_o1_c2d_0_60 ?a))
       (not_blocked seg_o1_c2d_0_60 ?a)))
 (:action
  ugly1976ugly272ugly45ugly861ugly639startup_seg_m_a7b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7b_0_60)
       (not_occupied seg_m_a7a_0_120_934) (not_occupied seg_m_a7c_0_60)
       (not_occupied seg_m_a7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a_0_120_934 ?a)
       (not (not_blocked seg_m_a7a_0_120_934 ?a)) (blocked seg_m_a7c_0_60 ?a)
       (not (not_blocked seg_m_a7c_0_60 ?a)) (blocked seg_m_a7d_0_60 ?a)
       (not (not_blocked seg_m_a7d_0_60 ?a))))
 (:action
  ugly1977ugly542ugly789ugly252ugly891startup_seg_w1_142a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142a_0_34)
       (not_occupied seg_w1_142b_0_45) (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action ugly1978ugly428ugly431ugly874ugly70park_seg_p112_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p112_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p112_0_76) (not (is-moving ?a))))
 (:action ugly1979ugly59ugly643ugly586ugly878startup_seg_p143_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p143_0_75)
       (not_occupied seg_w1_143b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a))))
 (:action
  ugly1980ugly442ugly880ugly220ugly847startup_seg_o1_108b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108b_0_60)
       (not_occupied seg_p108_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p108_0_76 ?a)
       (not (not_blocked seg_p108_0_76 ?a))))
 (:action
  ugly1981ugly654ugly271ugly43ugly388startup_seg_o1_103a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103a_0_34)
       (not_occupied seg_o1_103b_0_60) (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action
  ugly1982ugly505ugly496ugly714ugly830startup_seg_m_a4a7d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7d_0_75)
       (not_occupied seg_m_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7c_0_75 ?a)
       (not (not_blocked seg_m_a4a7c_0_75 ?a))))
 (:action
  ugly1983ugly673ugly836ugly604ugly449startup_seg_n_a4a7d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7d_0_75)
       (not_occupied seg_n_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7c_0_75 ?a)
       (not (not_blocked seg_n_a4a7c_0_75 ?a))))
 (:action
  ugly1984ugly751ugly339ugly811ugly223move_seg_w1_143b_0_45_seg_p143_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143b_0_45) (not_occupied seg_p143_0_75)
       (not_blocked seg_p143_0_75 airplane_cfbeg)
       (not_blocked seg_p143_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_143b_0_45))
       (not_occupied seg_w1_143b_0_45) (not (at-segment ?a seg_w1_143b_0_45))
       (occupied seg_p143_0_75) (not (not_occupied seg_p143_0_75))
       (blocked seg_p143_0_75 ?a) (not (not_blocked seg_p143_0_75 ?a))
       (at-segment ?a seg_p143_0_75) (not (blocked seg_w1_143a_0_34 ?a))
       (not_blocked seg_w1_143a_0_34 ?a) (not (blocked seg_w1_143c_0_60 ?a))
       (not_blocked seg_w1_143c_0_60 ?a)))
 (:action
  ugly1985ugly476ugly224ugly624ugly691startup_seg_p112_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p112_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly1986ugly923ugly10ugly34ugly751startup_seg_p141_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p141_0_75)
       (not_occupied seg_w1_141b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action
  ugly1987ugly669ugly731ugly465ugly18move_seg_o1_104a_0_34_seg_o1_103c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_104a_0_34))
       (not_occupied seg_o1_104a_0_34) (not (at-segment ?a seg_o1_104a_0_34))
       (occupied seg_o1_103c_0_34) (not (not_occupied seg_o1_103c_0_34))
       (blocked seg_o1_103c_0_34 ?a) (not (not_blocked seg_o1_103c_0_34 ?a))
       (at-segment ?a seg_o1_103c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_104b_0_60 ?a))
       (not_blocked seg_o1_104b_0_60 ?a) (not (blocked seg_o1_104c_0_60 ?a))
       (not_blocked seg_o1_104c_0_60 ?a)))
 (:action
  ugly1988ugly660ugly5ugly278ugly250startup_seg_o1_111c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111c_0_34)
       (not_occupied seg_o1_c3a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a))))
 (:action ugly1989ugly419ugly367ugly598ugly61park_seg_p143_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p143_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p143_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_143b_0_45 ?a)) (not_blocked seg_w1_143b_0_45 ?a)))
 (:action
  ugly1990ugly593ugly510ugly228ugly328move_seg_o1_111c_0_34_seg_o1_111a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_daew7)
       (not_occupied seg_o1_111b_0_60) (not_occupied seg_o1_111d_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_111c_0_34))
       (not_occupied seg_o1_111c_0_34) (not (at-segment ?a seg_o1_111c_0_34))
       (occupied seg_o1_111a_0_34) (not (not_occupied seg_o1_111a_0_34))
       (blocked seg_o1_111a_0_34 ?a) (not (not_blocked seg_o1_111a_0_34 ?a))
       (at-segment ?a seg_o1_111a_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_c3a_0_34 ?a))
       (not_blocked seg_o1_c3a_0_34 ?a) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a)) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action
  ugly1991ugly275ugly886ugly899ugly460move_seg_w1_152a_0_34_seg_w1_152b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_152b_0_45)
       (not_blocked seg_w1_152b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_152b_0_45 airplane_daew7)
       (not_occupied seg_w1_152c_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_152a_0_34))
       (not_occupied seg_w1_152a_0_34) (not (at-segment ?a seg_w1_152a_0_34))
       (occupied seg_w1_152b_0_45) (not (not_occupied seg_w1_152b_0_45))
       (blocked seg_w1_152b_0_45 ?a) (not (not_blocked seg_w1_152b_0_45 ?a))
       (at-segment ?a seg_w1_152b_0_45) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_151c_0_34 ?a))
       (not_blocked seg_w1_151c_0_34 ?a) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action
  ugly1992ugly273ugly666ugly166ugly662startup_seg_o1_c3d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3d_0_60)
       (not_occupied seg_c3_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_b_0_80 ?a)
       (not (not_blocked seg_c3_b_0_80 ?a))))
 (:action
  ugly1993ugly237ugly432ugly362ugly479startup_seg_a7_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_1_0_80_6226)
       (not_occupied seg_a7_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_a_0_156_924 ?a)
       (not (not_blocked seg_a7_a_0_156_924 ?a))))
 (:action
  ugly1994ugly16ugly65ugly845ugly548move_seg_m_a8b_0_60_seg_n_a8a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_m_a8b_0_60) (not_occupied seg_n_a8a_0_60)
       (not_blocked seg_n_a8a_0_60 airplane_cfbeg)
       (not_blocked seg_n_a8a_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_m_a8b_0_60))
       (not_occupied seg_m_a8b_0_60) (not (at-segment ?a seg_m_a8b_0_60))
       (occupied seg_n_a8a_0_60) (not (not_occupied seg_n_a8a_0_60))
       (blocked seg_n_a8a_0_60 ?a) (not (not_blocked seg_n_a8a_0_60 ?a))
       (at-segment ?a seg_n_a8a_0_60) (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_m_a8a_0_60 ?a)) (not_blocked seg_m_a8a_0_60 ?a)
       (not (blocked seg_m_a8c_0_60 ?a)) (not_blocked seg_m_a8c_0_60 ?a)
       (not (blocked seg_m_a8d_0_120_934 ?a))
       (not_blocked seg_m_a8d_0_120_934 ?a)))
 (:action
  ugly1995ugly804ugly870ugly717ugly390startup_seg_m_a3a4d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4d_0_75)
       (not_occupied seg_m_a3a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4e_0_75 ?a)
       (not (not_blocked seg_m_a3a4e_0_75 ?a))))
 (:action ugly1996ugly306ugly898ugly315ugly14park_seg_p103_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p103_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p103_0_76) (not (is-moving ?a))))
 (:action
  ugly1997ugly887ugly517ugly654ugly271move_seg_n_a8a_0_60_seg_n_a8c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a8a_0_60) (not_occupied seg_n_a8c_0_60)
       (not_blocked seg_n_a8c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a8c_0_60 airplane_daew7)
       (not_occupied seg_n_a8b_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a8a_0_60))
       (not_occupied seg_n_a8a_0_60) (not (at-segment ?a seg_n_a8a_0_60))
       (occupied seg_n_a8c_0_60) (not (not_occupied seg_n_a8c_0_60))
       (blocked seg_n_a8c_0_60 ?a) (not (not_blocked seg_n_a8c_0_60 ?a))
       (at-segment ?a seg_n_a8c_0_60) (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_m_a8b_0_60 ?a)) (not_blocked seg_m_a8b_0_60 ?a)
       (blocked seg_n_a8b_0_60 ?a) (not (not_blocked seg_n_a8b_0_60 ?a))))
 (:action
  ugly1998ugly395ugly112ugly17ugly395move_seg_w1_153a_0_34_seg_w1_152c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_153a_0_34))
       (not_occupied seg_w1_153a_0_34) (not (at-segment ?a seg_w1_153a_0_34))
       (occupied seg_w1_152c_0_34) (not (not_occupied seg_w1_152c_0_34))
       (blocked seg_w1_152c_0_34 ?a) (not (not_blocked seg_w1_152c_0_34 ?a))
       (at-segment ?a seg_w1_152c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_153b_0_45 ?a))
       (not_blocked seg_w1_153b_0_45 ?a) (not (blocked seg_w1_153c_0_34 ?a))
       (not_blocked seg_w1_153c_0_34 ?a)))
 (:action
  ugly1999ugly464ugly536ugly270ugly761move_seg_p141_0_75_seg_w1_141b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p141_0_75) (not_occupied seg_w1_141b_0_45)
       (not_blocked seg_w1_141b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_141b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p141_0_75))
       (not_occupied seg_p141_0_75) (not (at-segment ?a seg_p141_0_75))
       (occupied seg_w1_141b_0_45) (not (not_occupied seg_w1_141b_0_45))
       (blocked seg_w1_141b_0_45 ?a) (not (not_blocked seg_w1_141b_0_45 ?a))
       (at-segment ?a seg_w1_141b_0_45)))
 (:action
  ugly2000ugly737ugly527ugly164ugly748startup_seg_o1_118c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118c_0_34)
       (not_occupied seg_o1_118a_0_34) (not_occupied seg_o1_118b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action
  ugly2001ugly345ugly443ugly255ugly242startup_seg_m_a9a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a_0_60)
       (not_occupied seg_m_a9b_0_60) (not_occupied seg_m_a9c_0_60)
       (not_occupied seg_m_a9d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9b_0_60 ?a)
       (not (not_blocked seg_m_a9b_0_60 ?a)) (blocked seg_m_a9c_0_60 ?a)
       (not (not_blocked seg_m_a9c_0_60 ?a)) (blocked seg_m_a9d_0_120_934 ?a)
       (not (not_blocked seg_m_a9d_0_120_934 ?a))))
 (:action
  ugly2002ugly754ugly378ugly760ugly466startup_seg_o1_c4a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4a_0_34)
       (not_occupied seg_o1_c4b_0_60) (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action
  ugly2003ugly952ugly240ugly516ugly425startup_seg_m_a3a4a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4a_0_75)
       (not_occupied seg_m_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a))))
 (:action
  ugly2004ugly844ugly924ugly912ugly910startup_seg_n_a8b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8b_0_60)
       (not_occupied seg_n_a8a9a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9a_0_85 ?a)
       (not (not_blocked seg_n_a8a9a_0_85 ?a))))
 (:action
  ugly2005ugly420ugly684ugly802ugly821startup_seg_m_a6a8c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8c_0_75)
       (not_occupied seg_m_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8d_0_75 ?a)
       (not (not_blocked seg_m_a6a8d_0_75 ?a))))
 (:action
  ugly2006ugly102ugly905ugly58ugly187startup_seg_o1_116c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116c_0_34)
       (not_occupied seg_o1_117a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a))))
 (:action
  ugly2007ugly377ugly539ugly945ugly533move_seg_n_a4a7c_0_75_seg_n_a4a7b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7c_0_75) (not_occupied seg_n_a4a7b_0_75)
       (not_blocked seg_n_a4a7b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7c_0_75))
       (not_occupied seg_n_a4a7c_0_75) (not (at-segment ?a seg_n_a4a7c_0_75))
       (occupied seg_n_a4a7b_0_75) (not (not_occupied seg_n_a4a7b_0_75))
       (blocked seg_n_a4a7b_0_75 ?a) (not (not_blocked seg_n_a4a7b_0_75 ?a))
       (at-segment ?a seg_n_a4a7b_0_75) (not (blocked seg_n_a4a7d_0_75 ?a))
       (not_blocked seg_n_a4a7d_0_75 ?a)))
 (:action
  ugly2008ugly331ugly474ugly15ugly412startup_seg_w1_143a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143a_0_34)
       (not_occupied seg_w1_143b_0_45) (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action
  ugly2009ugly161ugly260ugly702ugly424startup_seg_m_a8a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a_0_60)
       (not_occupied seg_m_a8a9a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9a_0_75 ?a)
       (not (not_blocked seg_m_a8a9a_0_75 ?a))))
 (:action
  ugly2010ugly925ugly327ugly907ugly163move_seg_w1_161b_0_45_seg_w1_161c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161b_0_45) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_daew7)
       (not_occupied seg_w1_161a_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_161b_0_45))
       (not_occupied seg_w1_161b_0_45) (not (at-segment ?a seg_w1_161b_0_45))
       (occupied seg_w1_161c_0_34) (not (not_occupied seg_w1_161c_0_34))
       (blocked seg_w1_161c_0_34 ?a) (not (not_blocked seg_w1_161c_0_34 ?a))
       (at-segment ?a seg_w1_161c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p161_0_75 ?a))
       (not_blocked seg_p161_0_75 ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a))))
 (:action
  ugly2011ugly75ugly330ugly889ugly537startup_seg_n_a4a7e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7e_0_75)
       (not_occupied seg_n_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7d_0_75 ?a)
       (not (not_blocked seg_n_a4a7d_0_75 ?a))))
 (:action
  ugly2012ugly862ugly422ugly574ugly248move_seg_p101_0_76_seg_o1_c1a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p101_0_76) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p101_0_76))
       (not_occupied seg_p101_0_76) (not (at-segment ?a seg_p101_0_76))
       (occupied seg_o1_c1a_0_60) (not (not_occupied seg_o1_c1a_0_60))
       (blocked seg_o1_c1a_0_60 ?a) (not (not_blocked seg_o1_c1a_0_60 ?a))
       (at-segment ?a seg_o1_c1a_0_60)))
 (:action
  ugly2013ugly214ugly82ugly23ugly867startup_seg_a8_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_0_80_6226)
       (not_occupied seg_m_a8d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))))
 (:action
  ugly2014ugly1ugly741ugly358ugly81move_seg_o1_c1a_0_60_seg_o1_c1b_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_daew7)
       (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c1a_0_60))
       (not_occupied seg_o1_c1a_0_60) (not (at-segment ?a seg_o1_c1a_0_60))
       (occupied seg_o1_c1b_0_34) (not (not_occupied seg_o1_c1b_0_34))
       (blocked seg_o1_c1b_0_34 ?a) (not (not_blocked seg_o1_c1b_0_34 ?a))
       (at-segment ?a seg_o1_c1b_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p101_0_76 ?a))
       (not_blocked seg_p101_0_76 ?a) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action
  ugly2015ugly668ugly305ugly487ugly337move_seg_w1_c1b_0_60_seg_w1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1b_0_60) (not_occupied seg_w1_c1a_0_60)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1a_0_60 airplane_daew7)
       (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_c1b_0_60))
       (not_occupied seg_w1_c1b_0_60) (not (at-segment ?a seg_w1_c1b_0_60))
       (occupied seg_w1_c1a_0_60) (not (not_occupied seg_w1_c1a_0_60))
       (blocked seg_w1_c1a_0_60 ?a) (not (not_blocked seg_w1_c1a_0_60 ?a))
       (at-segment ?a seg_w1_c1a_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_c1_n2c_0_60 ?a))
       (not_blocked seg_c1_n2c_0_60 ?a) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action ugly2016ugly288ugly591ugly122ugly340park_seg_p131_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p131_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p131_0_75) (not (is-moving ?a))))
 (:action
  ugly2017ugly112ugly17ugly395ugly112move_seg_n_a2a3a_0_75_seg_n_a2b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3a_0_75) (not_occupied seg_n_a2b_0_60)
       (not_blocked seg_n_a2b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a2b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3a_0_75))
       (not_occupied seg_n_a2a3a_0_75) (not (at-segment ?a seg_n_a2a3a_0_75))
       (occupied seg_n_a2b_0_60) (not (not_occupied seg_n_a2b_0_60))
       (blocked seg_n_a2b_0_60 ?a) (not (not_blocked seg_n_a2b_0_60 ?a))
       (at-segment ?a seg_n_a2b_0_60) (not (blocked seg_n_a2a3b_0_75 ?a))
       (not_blocked seg_n_a2a3b_0_75 ?a)))
 (:action
  ugly2018ugly189ugly385ugly105ugly60startup_seg_w1_154b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154b_0_45)
       (not_occupied seg_p154_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p154_0_75 ?a)
       (not (not_blocked seg_p154_0_75 ?a))))
 (:action
  ugly2019ugly445ugly322ugly779ugly589startup_seg_m_a8b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8b_0_60)
       (not_occupied seg_m_a8a_0_60) (not_occupied seg_m_a8c_0_60)
       (not_occupied seg_m_a8d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a)) (blocked seg_m_a8c_0_60 ?a)
       (not (not_blocked seg_m_a8c_0_60 ?a)) (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))))
 (:action
  ugly2020ugly907ugly163ugly134ugly656move_seg_o1_117b_0_60_seg_p117_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117b_0_60) (not_occupied seg_p117_0_76)
       (not_blocked seg_p117_0_76 airplane_cfbeg)
       (not_blocked seg_p117_0_76 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_117b_0_60))
       (not_occupied seg_o1_117b_0_60) (not (at-segment ?a seg_o1_117b_0_60))
       (occupied seg_p117_0_76) (not (not_occupied seg_p117_0_76))
       (blocked seg_p117_0_76 ?a) (not (not_blocked seg_p117_0_76 ?a))
       (at-segment ?a seg_p117_0_76) (not (blocked seg_o1_117a_0_34 ?a))
       (not_blocked seg_o1_117a_0_34 ?a) (not (blocked seg_o1_117c_0_34 ?a))
       (not_blocked seg_o1_117c_0_34 ?a)))
 (:action
  ugly2021ugly106ugly939ugly409ugly94move_seg_o1_118b_0_60_seg_p118_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118b_0_60) (not_occupied seg_p118_0_76)
       (not_blocked seg_p118_0_76 airplane_cfbeg)
       (not_blocked seg_p118_0_76 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_118b_0_60))
       (not_occupied seg_o1_118b_0_60) (not (at-segment ?a seg_o1_118b_0_60))
       (occupied seg_p118_0_76) (not (not_occupied seg_p118_0_76))
       (blocked seg_p118_0_76 ?a) (not (not_blocked seg_p118_0_76 ?a))
       (at-segment ?a seg_p118_0_76) (not (blocked seg_o1_118a_0_34 ?a))
       (not_blocked seg_o1_118a_0_34 ?a) (not (blocked seg_o1_118c_0_34 ?a))
       (not_blocked seg_o1_118c_0_34 ?a)))
 (:action
  ugly2022ugly151ugly729ugly551ugly463move_seg_o1_c4b_0_60_seg_o1_c4c_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4b_0_60) (not_occupied seg_o1_c4c_0_80)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c4c_0_80 airplane_daew7)
       (not_occupied seg_o1_c4a_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c4b_0_60))
       (not_occupied seg_o1_c4b_0_60) (not (at-segment ?a seg_o1_c4b_0_60))
       (occupied seg_o1_c4c_0_80) (not (not_occupied seg_o1_c4c_0_80))
       (blocked seg_o1_c4c_0_80 ?a) (not (not_blocked seg_o1_c4c_0_80 ?a))
       (at-segment ?a seg_o1_c4c_0_80) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p119_0_76 ?a))
       (not_blocked seg_p119_0_76 ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a))))
 (:action
  ugly2023ugly924ugly912ugly910ugly914move_seg_o1_109a_0_34_seg_o1_109d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109d_0_45)
       (not_blocked seg_o1_109d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_109d_0_45 airplane_daew7)
       (not_occupied seg_o1_109b_0_60) (not_occupied seg_o1_109c_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_109a_0_34))
       (not_occupied seg_o1_109a_0_34) (not (at-segment ?a seg_o1_109a_0_34))
       (occupied seg_o1_109d_0_45) (not (not_occupied seg_o1_109d_0_45))
       (blocked seg_o1_109d_0_45 ?a) (not (not_blocked seg_o1_109d_0_45 ?a))
       (at-segment ?a seg_o1_109d_0_45) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_108c_0_34 ?a))
       (not_blocked seg_o1_108c_0_34 ?a) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a)) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a))))
 (:action
  ugly2024ugly439ugly372ugly411ugly632move_seg_n_a8c_0_60_seg_n_a6a8f_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a8c_0_60) (not_occupied seg_n_a6a8f_0_75)
       (not_blocked seg_n_a6a8f_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8f_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a8c_0_60))
       (not_occupied seg_n_a8c_0_60) (not (at-segment ?a seg_n_a8c_0_60))
       (occupied seg_n_a6a8f_0_75) (not (not_occupied seg_n_a6a8f_0_75))
       (blocked seg_n_a6a8f_0_75 ?a) (not (not_blocked seg_n_a6a8f_0_75 ?a))
       (at-segment ?a seg_n_a6a8f_0_75) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_n_a8a_0_60 ?a))
       (not_blocked seg_n_a8a_0_60 ?a) (not (blocked seg_n_a8b_0_60 ?a))
       (not_blocked seg_n_a8b_0_60 ?a)))
 (:action
  ugly2025ugly251ugly663ugly139ugly205startup_seg_o1_c4c_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4c_0_80)
       (not_occupied seg_o1_c4a_0_34) (not_occupied seg_o1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a))))
 (:action
  ugly2026ugly447ugly143ugly690ugly852startup_seg_n_a6a8f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8f_0_75)
       (not_occupied seg_n_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8e_0_75 ?a)
       (not (not_blocked seg_n_a6a8e_0_75 ?a))))
 (:action
  ugly2027ugly248ugly169ugly433ugly791move_seg_p118_0_76_seg_o1_118b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p118_0_76) (not_occupied seg_o1_118b_0_60)
       (not_blocked seg_o1_118b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_118b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p118_0_76))
       (not_occupied seg_p118_0_76) (not (at-segment ?a seg_p118_0_76))
       (occupied seg_o1_118b_0_60) (not (not_occupied seg_o1_118b_0_60))
       (blocked seg_o1_118b_0_60 ?a) (not (not_blocked seg_o1_118b_0_60 ?a))
       (at-segment ?a seg_o1_118b_0_60)))
 (:action
  ugly2028ugly343ugly688ugly47ugly753startup_seg_w1_161c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161c_0_34)
       (not_occupied seg_w1_161a_0_34) (not_occupied seg_w1_161b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a))))
 (:action
  ugly2029ugly936ugly419ugly367ugly598move_seg_n_a4a7d_0_75_seg_n_a4a7c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7d_0_75) (not_occupied seg_n_a4a7c_0_75)
       (not_blocked seg_n_a4a7c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7d_0_75))
       (not_occupied seg_n_a4a7d_0_75) (not (at-segment ?a seg_n_a4a7d_0_75))
       (occupied seg_n_a4a7c_0_75) (not (not_occupied seg_n_a4a7c_0_75))
       (blocked seg_n_a4a7c_0_75 ?a) (not (not_blocked seg_n_a4a7c_0_75 ?a))
       (at-segment ?a seg_n_a4a7c_0_75) (not (blocked seg_n_a4a7e_0_75 ?a))
       (not_blocked seg_n_a4a7e_0_75 ?a)))
 (:action
  ugly2030ugly510ugly228ugly328ugly256startup_seg_m_a9d_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9d_0_120_934)
       (not_occupied seg_m_a9a_0_60) (not_occupied seg_m_a9b_0_60)
       (not_occupied seg_m_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a_0_60 ?a)
       (not (not_blocked seg_m_a9a_0_60 ?a)) (blocked seg_m_a9b_0_60 ?a)
       (not (not_blocked seg_m_a9b_0_60 ?a)) (blocked seg_m_a9c_0_60 ?a)
       (not (not_blocked seg_m_a9c_0_60 ?a))))
 (:action
  ugly2031ugly874ugly70ugly590ugly75startup_seg_w1_141a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141a_0_34)
       (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action
  ugly2032ugly741ugly358ugly81ugly170startup_seg_o1_102c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102c_0_34)
       (not_occupied seg_o1_103a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a))))
 (:action
  ugly2033ugly607ugly321ugly670ugly613startup_seg_n_a8a9a_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9a_0_85)
       (not_occupied seg_n_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a))))
 (:action
  ugly2034ugly292ugly664ugly627ugly828startup_seg_a7_a_0_156_924_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_a_0_156_924)
       (not_occupied seg_a7_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_1_0_80_6226 ?a))))
 (:action ugly2035ugly730ugly354ugly454ugly215park_seg_p132_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p132_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p132_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_109d_0_45 ?a)) (not_blocked seg_o1_109d_0_45 ?a)))
 (:action
  ugly2036ugly401ugly505ugly496ugly714startup_seg_n_a2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a_0_60)
       (not_occupied seg_a2_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_c_0_100 ?a)
       (not (not_blocked seg_a2_c_0_100 ?a))))
 (:action
  ugly2037ugly140ugly893ugly671ugly665startup_seg_o1_104b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104b_0_60)
       (not_occupied seg_o1_104a_0_34) (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action ugly2038ugly8ugly178ugly621ugly620startup_seg_m_a6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6c_0_60)
       (not_occupied seg_m_a7a6d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6d_0_85 ?a)
       (not (not_blocked seg_m_a7a6d_0_85 ?a))))
 (:action
  ugly2039ugly640ugly133ugly724ugly279startup_seg_m_a6a8a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8a_0_75)
       (not_occupied seg_m_a6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a_0_60 ?a)
       (not (not_blocked seg_m_a6a_0_60 ?a))))
 (:action
  ugly2040ugly98ugly46ugly222ugly277startup_seg_o1_117b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117b_0_60)
       (not_occupied seg_o1_117a_0_34) (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action
  ugly2041ugly83ugly3ugly765ugly798startup_seg_m_a8a9b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9b_0_75)
       (not_occupied seg_m_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9c_0_75 ?a)
       (not (not_blocked seg_m_a8a9c_0_75 ?a))))
 (:action
  ugly2042ugly63ugly834ugly382ugly284startup_seg_m_a7a6b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6b_0_75)
       (not_occupied seg_m_a7a6a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6a_0_75 ?a)
       (not (not_blocked seg_m_a7a6a_0_75 ?a))))
 (:action
  ugly2043ugly704ugly568ugly468ugly155move_seg_o1_118a_0_34_seg_o1_117c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_118a_0_34))
       (not_occupied seg_o1_118a_0_34) (not (at-segment ?a seg_o1_118a_0_34))
       (occupied seg_o1_117c_0_34) (not (not_occupied seg_o1_117c_0_34))
       (blocked seg_o1_117c_0_34 ?a) (not (not_blocked seg_o1_117c_0_34 ?a))
       (at-segment ?a seg_o1_117c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_118b_0_60 ?a))
       (not_blocked seg_o1_118b_0_60 ?a) (not (blocked seg_o1_118c_0_34 ?a))
       (not_blocked seg_o1_118c_0_34 ?a)))
 (:action ugly2044ugly422ugly574ugly248ugly169park_seg_p162_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p162_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p162_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_162b_0_45 ?a)) (not_blocked seg_w1_162b_0_45 ?a)))
 (:action
  ugly2045ugly25ugly680ugly209ugly856startup_seg_n_n2a4b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4b_0_75)
       (not_occupied seg_n_n2a4a_0_70))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4a_0_70 ?a)
       (not (not_blocked seg_n_n2a4a_0_70 ?a))))
 (:action
  ugly2046ugly672ugly615ugly149ugly947startup_seg_m_a8a9d_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9d_0_85)
       (not_occupied seg_m_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9c_0_60 ?a)
       (not (not_blocked seg_m_a9c_0_60 ?a))))
 (:action ugly2047ugly750ugly80ugly704ugly568park_seg_p101_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p101_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p101_0_76) (not (is-moving ?a))))
 (:action
  ugly2048ugly300ugly846ugly407ugly937move_seg_n_a4a7a_0_115_seg_n_a4b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7a_0_115) (not_occupied seg_n_a4b_0_60)
       (not_blocked seg_n_a4b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a4b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7a_0_115))
       (not_occupied seg_n_a4a7a_0_115) (not (at-segment ?a seg_n_a4a7a_0_115))
       (occupied seg_n_a4b_0_60) (not (not_occupied seg_n_a4b_0_60))
       (blocked seg_n_a4b_0_60 ?a) (not (not_blocked seg_n_a4b_0_60 ?a))
       (at-segment ?a seg_n_a4b_0_60) (not (blocked seg_n_a4a7b_0_75 ?a))
       (not_blocked seg_n_a4a7b_0_75 ?a)))
 (:action
  ugly2049ugly642ugly661ugly556ugly831move_seg_o1_110d_0_45_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110d_0_45) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_daew7)
       (not_occupied seg_o1_110a_0_34) (not_occupied seg_o1_110b_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_110d_0_45))
       (not_occupied seg_o1_110d_0_45) (not (at-segment ?a seg_o1_110d_0_45))
       (occupied seg_o1_110c_0_34) (not (not_occupied seg_o1_110c_0_34))
       (blocked seg_o1_110c_0_34 ?a) (not (not_blocked seg_o1_110c_0_34 ?a))
       (at-segment ?a seg_o1_110c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p133_0_75 ?a))
       (not_blocked seg_p133_0_75 ?a) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a)) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a))))
 (:action ugly2050ugly37ugly403ugly338ugly507park_seg_p164_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p164_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p164_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_164b_0_45 ?a)) (not_blocked seg_w1_164b_0_45 ?a)))
 (:action ugly2051ugly601ugly607ugly321ugly670park_seg_p116_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p116_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p116_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_116b_0_60 ?a)) (not_blocked seg_o1_116b_0_60 ?a)))
 (:action
  ugly2052ugly143ugly690ugly852ugly913startup_seg_m_a4d_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4d_0_60)
       (not_occupied seg_m_a4a_0_120_934) (not_occupied seg_m_a4b_0_60)
       (not_occupied seg_m_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a_0_120_934 ?a)
       (not (not_blocked seg_m_a4a_0_120_934 ?a)) (blocked seg_m_a4b_0_60 ?a)
       (not (not_blocked seg_m_a4b_0_60 ?a)) (blocked seg_m_a4c_0_60 ?a)
       (not (not_blocked seg_m_a4c_0_60 ?a))))
 (:action ugly2053ugly698ugly469ugly716ugly440park_seg_p142_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p142_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p142_0_75) (not (is-moving ?a))))
 (:action
  ugly2054ugly541ugly493ugly108ugly50move_seg_o1_110d_0_45_seg_p133_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110d_0_45) (not_occupied seg_p133_0_75)
       (not_blocked seg_p133_0_75 airplane_cfbeg)
       (not_blocked seg_p133_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_110d_0_45))
       (not_occupied seg_o1_110d_0_45) (not (at-segment ?a seg_o1_110d_0_45))
       (occupied seg_p133_0_75) (not (not_occupied seg_p133_0_75))
       (blocked seg_p133_0_75 ?a) (not (not_blocked seg_p133_0_75 ?a))
       (at-segment ?a seg_p133_0_75) (not (blocked seg_o1_110a_0_34 ?a))
       (not_blocked seg_o1_110a_0_34 ?a) (not (blocked seg_o1_110b_0_60 ?a))
       (not_blocked seg_o1_110b_0_60 ?a) (not (blocked seg_o1_110c_0_34 ?a))
       (not_blocked seg_o1_110c_0_34 ?a)))
 (:action
  ugly2055ugly757ugly219ugly695ugly386startup_seg_o1_111a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111a_0_34)
       (not_occupied seg_o1_111b_0_60) (not_occupied seg_o1_111c_0_34)
       (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a)) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a)) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action
  ugly2056ugly624ugly691ugly592ugly806startup_seg_08l_a3b_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a3b_0_161_245)
       (not_occupied seg_08l_a3a_0_80) (not_occupied seg_08l_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a3a_0_80 ?a)
       (not (not_blocked seg_08l_a3a_0_80 ?a)) (blocked seg_08l_0_80 ?a)
       (not (not_blocked seg_08l_0_80 ?a))))
 (:action
  ugly2057ugly944ugly113ugly571ugly446move_seg_o1_111a_0_34_seg_o1_111d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111d_0_45)
       (not_blocked seg_o1_111d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_111d_0_45 airplane_daew7)
       (not_occupied seg_o1_111b_0_60) (not_occupied seg_o1_111c_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_111a_0_34))
       (not_occupied seg_o1_111a_0_34) (not (at-segment ?a seg_o1_111a_0_34))
       (occupied seg_o1_111d_0_45) (not (not_occupied seg_o1_111d_0_45))
       (blocked seg_o1_111d_0_45 ?a) (not (not_blocked seg_o1_111d_0_45 ?a))
       (at-segment ?a seg_o1_111d_0_45) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_110c_0_34 ?a))
       (not_blocked seg_o1_110c_0_34 ?a) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a)) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a))))
 (:action
  ugly2058ugly408ugly320ugly785ugly567startup_seg_n_a7a6d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6d_0_75)
       (not_occupied seg_n_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6c_0_75 ?a)
       (not (not_blocked seg_n_a7a6c_0_75 ?a))))
 (:action
  ugly2059ugly702ugly424ugly774ugly519startup_seg_o1_102a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102a_0_34)
       (not_occupied seg_o1_102b_0_60) (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action
  ugly2060ugly515ugly625ugly86ugly21move_seg_o1_102a_0_34_seg_o1_102c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_daew7)
       (not_occupied seg_o1_102b_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_102a_0_34))
       (not_occupied seg_o1_102a_0_34) (not (at-segment ?a seg_o1_102a_0_34))
       (occupied seg_o1_102c_0_34) (not (not_occupied seg_o1_102c_0_34))
       (blocked seg_o1_102c_0_34 ?a) (not (not_blocked seg_o1_102c_0_34 ?a))
       (at-segment ?a seg_o1_102c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_c1b_0_34 ?a))
       (not_blocked seg_o1_c1b_0_34 ?a) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action
  ugly2061ugly585ugly213ugly498ugly200startup_seg_w1_151c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151c_0_34)
       (not_occupied seg_w1_151a_0_34) (not_occupied seg_w1_151b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action
  ugly2062ugly269ugly22ugly414ugly51startup_seg_o1_108d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108d_0_45)
       (not_occupied seg_p131_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p131_0_75 ?a)
       (not (not_blocked seg_p131_0_75 ?a))))
 (:action
  ugly2063ugly926ugly931ugly254ugly374move_seg_08l_a4a_0_80_seg_08l_a6a7_0_450_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a4a_0_80) (not_occupied seg_08l_a6a7_0_450)
       (not_blocked seg_08l_a6a7_0_450 airplane_cfbeg)
       (not_blocked seg_08l_a6a7_0_450 airplane_daew7)
       (not_occupied seg_08l_a2a_0_80) (not_occupied seg_09l_0_80)
       (not_occupied seg_08l_a7a_0_80) (not_occupied seg_08l_a3a_0_80)
       (not_occupied seg_08l_0_80) (not_occupied seg_08l_a3a4_0_450)
       (not_occupied seg_08l_a4d_0_80))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_08l_a4a_0_80))
       (not_occupied seg_08l_a4a_0_80) (not (at-segment ?a seg_08l_a4a_0_80))
       (occupied seg_08l_a6a7_0_450) (not (not_occupied seg_08l_a6a7_0_450))
       (blocked seg_08l_a6a7_0_450 ?a)
       (not (not_blocked seg_08l_a6a7_0_450 ?a))
       (at-segment ?a seg_08l_a6a7_0_450)
       (not (blocked seg_08l_a4b_0_161_245 ?a))
       (not_blocked seg_08l_a4b_0_161_245 ?a)
       (not (blocked seg_08l_a4c_0_161_245 ?a))
       (not_blocked seg_08l_a4c_0_161_245 ?a) (blocked seg_08l_a3a_0_80 ?a)
       (not (not_blocked seg_08l_a3a_0_80 ?a)) (blocked seg_08l_0_80 ?a)
       (not (not_blocked seg_08l_0_80 ?a)) (blocked seg_08l_a3a4_0_450 ?a)
       (not (not_blocked seg_08l_a3a4_0_450 ?a))))
 (:action
  ugly2064ugly715ugly950ugly57ugly807pushback_seg_o1_118c_0_34_seg_o1_c4a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_118c_0_34) (not_occupied seg_o1_c4a_0_34)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c4a_0_34 airplane_daew7))
  :effect
  (and (not (occupied seg_o1_118c_0_34)) (not_occupied seg_o1_118c_0_34)
       (not (blocked seg_o1_118c_0_34 ?a)) (not_blocked seg_o1_118c_0_34 ?a)
       (not (at-segment ?a seg_o1_118c_0_34)) (occupied seg_o1_c4a_0_34)
       (not (not_occupied seg_o1_c4a_0_34)) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (at-segment ?a seg_o1_c4a_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action
  ugly2065ugly100ugly84ugly455ugly841startup_seg_c1_n2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2a_0_60)
       (not_occupied seg_n2_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_0_108 ?a)
       (not (not_blocked seg_n2_0_108 ?a))))
 (:action
  ugly2066ugly316ugly159ugly107ugly193move_seg_o1_c1b_0_34_seg_o1_c1c_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_c1c_0_80)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c1c_0_80 airplane_daew7)
       (not_occupied seg_o1_c1a_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c1b_0_34))
       (not_occupied seg_o1_c1b_0_34) (not (at-segment ?a seg_o1_c1b_0_34))
       (occupied seg_o1_c1c_0_80) (not (not_occupied seg_o1_c1c_0_80))
       (blocked seg_o1_c1c_0_80 ?a) (not (not_blocked seg_o1_c1c_0_80 ?a))
       (at-segment ?a seg_o1_c1c_0_80) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_102a_0_34 ?a))
       (not_blocked seg_o1_102a_0_34 ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a))))
 (:action ugly2067ugly910ugly914ugly238ugly89park_seg_p109_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p109_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p109_0_76) (not (is-moving ?a))))
 (:action
  ugly2068ugly485ugly940ugly136ugly816startup_seg_w1_141c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141c_0_34)
       (not_occupied seg_w1_141a_0_34) (not_occupied seg_w1_141b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action
  ugly2069ugly903ugly370ugly471ugly677move_seg_w1_164b_0_45_seg_p164_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164b_0_45) (not_occupied seg_p164_0_75)
       (not_blocked seg_p164_0_75 airplane_cfbeg)
       (not_blocked seg_p164_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_164b_0_45))
       (not_occupied seg_w1_164b_0_45) (not (at-segment ?a seg_w1_164b_0_45))
       (occupied seg_p164_0_75) (not (not_occupied seg_p164_0_75))
       (blocked seg_p164_0_75 ?a) (not (not_blocked seg_p164_0_75 ?a))
       (at-segment ?a seg_p164_0_75) (not (blocked seg_w1_164a_0_34 ?a))
       (not_blocked seg_w1_164a_0_34 ?a) (not (blocked seg_w1_164c_0_34 ?a))
       (not_blocked seg_w1_164c_0_34 ?a)))
 (:action
  ugly2070ugly613ugly919ugly303ugly429move_seg_p164_0_75_seg_w1_164b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p164_0_75) (not_occupied seg_w1_164b_0_45)
       (not_blocked seg_w1_164b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_164b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p164_0_75))
       (not_occupied seg_p164_0_75) (not (at-segment ?a seg_p164_0_75))
       (occupied seg_w1_164b_0_45) (not (not_occupied seg_w1_164b_0_45))
       (blocked seg_w1_164b_0_45 ?a) (not (not_blocked seg_w1_164b_0_45 ?a))
       (at-segment ?a seg_w1_164b_0_45)))
 (:action
  ugly2071ugly650ugly177ugly853ugly287move_seg_p152_0_75_seg_w1_152b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p152_0_75) (not_occupied seg_w1_152b_0_45)
       (not_blocked seg_w1_152b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_152b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p152_0_75))
       (not_occupied seg_p152_0_75) (not (at-segment ?a seg_p152_0_75))
       (occupied seg_w1_152b_0_45) (not (not_occupied seg_w1_152b_0_45))
       (blocked seg_w1_152b_0_45 ?a) (not (not_blocked seg_w1_152b_0_45 ?a))
       (at-segment ?a seg_w1_152b_0_45)))
 (:action
  ugly2072ugly792ugly78ugly917ugly932move_seg_o1_111d_0_45_seg_p134_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111d_0_45) (not_occupied seg_p134_0_75)
       (not_blocked seg_p134_0_75 airplane_cfbeg)
       (not_blocked seg_p134_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_111d_0_45))
       (not_occupied seg_o1_111d_0_45) (not (at-segment ?a seg_o1_111d_0_45))
       (occupied seg_p134_0_75) (not (not_occupied seg_p134_0_75))
       (blocked seg_p134_0_75 ?a) (not (not_blocked seg_p134_0_75 ?a))
       (at-segment ?a seg_p134_0_75) (not (blocked seg_o1_111a_0_34 ?a))
       (not_blocked seg_o1_111a_0_34 ?a) (not (blocked seg_o1_111b_0_60 ?a))
       (not_blocked seg_o1_111b_0_60 ?a) (not (blocked seg_o1_111c_0_34 ?a))
       (not_blocked seg_o1_111c_0_34 ?a)))
 (:action
  ugly2073ugly820ugly876ugly943ugly472startup_seg_w1_c3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3b_0_60)
       (not_occupied seg_c3_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_a_0_80 ?a)
       (not (not_blocked seg_c3_a_0_80 ?a))))
 (:action
  ugly2074ugly486ugly933ugly145ugly740startup_seg_m_a6a8d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8d_0_75)
       (not_occupied seg_m_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8e_0_75 ?a)
       (not (not_blocked seg_m_a6a8e_0_75 ?a))))
 (:action
  ugly2075ugly54ugly535ugly7ugly318move_seg_w1_153a_0_34_seg_w1_153c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_daew7)
       (not_occupied seg_w1_153b_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_153a_0_34))
       (not_occupied seg_w1_153a_0_34) (not (at-segment ?a seg_w1_153a_0_34))
       (occupied seg_w1_153c_0_34) (not (not_occupied seg_w1_153c_0_34))
       (blocked seg_w1_153c_0_34 ?a) (not (not_blocked seg_w1_153c_0_34 ?a))
       (at-segment ?a seg_w1_153c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_152c_0_34 ?a))
       (not_blocked seg_w1_152c_0_34 ?a) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action
  ugly2076ugly834ugly382ugly284ugly745startup_seg_m_a7a_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a_0_120_934)
       (not_occupied seg_a7_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_0_80_6226 ?a))))
 (:action ugly2077ugly548ugly42ugly488ugly333startup_seg_n2_0_108_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_0_108)
       (not_occupied seg_n_n2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a))))
 (:action
  ugly2078ugly150ugly459ugly297ugly799move_seg_n_a4a7b_0_75_seg_n_a4a7a_0_115_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7b_0_75) (not_occupied seg_n_a4a7a_0_115)
       (not_blocked seg_n_a4a7a_0_115 airplane_cfbeg)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7b_0_75))
       (not_occupied seg_n_a4a7b_0_75) (not (at-segment ?a seg_n_a4a7b_0_75))
       (occupied seg_n_a4a7a_0_115) (not (not_occupied seg_n_a4a7a_0_115))
       (blocked seg_n_a4a7a_0_115 ?a) (not (not_blocked seg_n_a4a7a_0_115 ?a))
       (at-segment ?a seg_n_a4a7a_0_115) (not (blocked seg_n_a4a7c_0_75 ?a))
       (not_blocked seg_n_a4a7c_0_75 ?a)))
 (:action ugly2079ugly436ugly719ugly722ugly35park_seg_p109_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p109_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p109_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_109b_0_60 ?a)) (not_blocked seg_o1_109b_0_60 ?a)))
 (:action
  ugly2080ugly309ugly396ugly67ugly332move_seg_o1_111b_0_60_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111b_0_60) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_daew7)
       (not_occupied seg_o1_111a_0_34) (not_occupied seg_o1_111d_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_111b_0_60))
       (not_occupied seg_o1_111b_0_60) (not (at-segment ?a seg_o1_111b_0_60))
       (occupied seg_o1_111c_0_34) (not (not_occupied seg_o1_111c_0_34))
       (blocked seg_o1_111c_0_34 ?a) (not (not_blocked seg_o1_111c_0_34 ?a))
       (at-segment ?a seg_o1_111c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p111_0_76 ?a))
       (not_blocked seg_p111_0_76 ?a) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a)) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action
  ugly2081ugly167ugly326ugly48ugly916startup_seg_n_a6a8d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8d_0_75)
       (not_occupied seg_n_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8c_0_75 ?a)
       (not (not_blocked seg_n_a6a8c_0_75 ?a))))
 (:action
  ugly2082ugly742ugly319ugly757ugly219startup_seg_n_a3a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3a_0_60)
       (not_occupied seg_n_a3b_0_60) (not_occupied seg_n_a3c_0_60)
       (not_occupied seg_n_a3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3b_0_60 ?a)
       (not (not_blocked seg_n_a3b_0_60 ?a)) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a)) (blocked seg_n_a3d_0_60 ?a)
       (not (not_blocked seg_n_a3d_0_60 ?a))))
 (:action
  ugly2083ugly884ugly2ugly859ugly787startup_seg_n_a6a8a_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8a_0_115)
       (not_occupied seg_n_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a))))
 (:action
  ugly2084ugly109ugly417ugly920ugly111move_seg_w1_163c_0_34_seg_w1_163a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163c_0_34) (not_occupied seg_w1_163a_0_34)
       (not_blocked seg_w1_163a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163a_0_34 airplane_daew7)
       (not_occupied seg_w1_163b_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_163c_0_34))
       (not_occupied seg_w1_163c_0_34) (not (at-segment ?a seg_w1_163c_0_34))
       (occupied seg_w1_163a_0_34) (not (not_occupied seg_w1_163a_0_34))
       (blocked seg_w1_163a_0_34 ?a) (not (not_blocked seg_w1_163a_0_34 ?a))
       (at-segment ?a seg_w1_163a_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_164a_0_34 ?a))
       (not_blocked seg_w1_164a_0_34 ?a) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action ugly2085ugly905ugly58ugly187ugly610startup_seg_p133_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p133_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly2086ugly366ugly758ugly464ugly536move_seg_o1_c3a_0_34_seg_o1_c3b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_c3b_0_60)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3b_0_60 airplane_daew7)
       (not_occupied seg_o1_c3c_0_48) (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c3a_0_34))
       (not_occupied seg_o1_c3a_0_34) (not (at-segment ?a seg_o1_c3a_0_34))
       (occupied seg_o1_c3b_0_60) (not (not_occupied seg_o1_c3b_0_60))
       (blocked seg_o1_c3b_0_60 ?a) (not (not_blocked seg_o1_c3b_0_60 ?a))
       (at-segment ?a seg_o1_c3b_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_111c_0_34 ?a))
       (not_blocked seg_o1_111c_0_34 ?a) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a)) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action
  ugly2087ugly602ugly921ugly936ugly419startup_seg_c2_a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_a_0_80)
       (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action
  ugly2088ugly437ugly380ugly948ugly350move_seg_w1_161c_0_34_seg_w1_162a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161c_0_34) (not_occupied seg_w1_162a_0_34)
       (not_blocked seg_w1_162a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162a_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_161c_0_34))
       (not_occupied seg_w1_161c_0_34) (not (at-segment ?a seg_w1_161c_0_34))
       (occupied seg_w1_162a_0_34) (not (not_occupied seg_w1_162a_0_34))
       (blocked seg_w1_162a_0_34 ?a) (not (not_blocked seg_w1_162a_0_34 ?a))
       (at-segment ?a seg_w1_162a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_161a_0_34 ?a))
       (not_blocked seg_w1_161a_0_34 ?a) (not (blocked seg_w1_161b_0_45 ?a))
       (not_blocked seg_w1_161b_0_45 ?a)))
 (:action
  ugly2089ugly533ugly62ugly292ugly664startup_seg_o1_118a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118a_0_34)
       (not_occupied seg_o1_118b_0_60) (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action
  ugly2090ugly547ugly404ugly85ugly267startup_seg_n_a9b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9b_0_60)
       (not_occupied seg_n_a9a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10a_0_80 ?a)
       (not (not_blocked seg_n_a9a10a_0_80 ?a))))
 (:action
  ugly2091ugly204ugly701ugly611ugly521startup_seg_w1_154c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154c_0_34)
       (not_occupied seg_w1_c3a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a))))
 (:action
  ugly2092ugly739ugly183ugly595ugly76startup_seg_o1_103a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103a_0_34)
       (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action
  ugly2093ugly594ugly812ugly452ugly398startup_seg_o1_c2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2a_0_60)
       (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action
  ugly2094ugly415ugly594ugly812ugly452startup_seg_w1_154a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154a_0_34)
       (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action
  ugly2095ugly72ugly851ugly127ugly352move_seg_p112_0_76_seg_o1_c3b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p112_0_76) (not_occupied seg_o1_c3b_0_60)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p112_0_76))
       (not_occupied seg_p112_0_76) (not (at-segment ?a seg_p112_0_76))
       (occupied seg_o1_c3b_0_60) (not (not_occupied seg_o1_c3b_0_60))
       (blocked seg_o1_c3b_0_60 ?a) (not (not_blocked seg_o1_c3b_0_60 ?a))
       (at-segment ?a seg_o1_c3b_0_60)))
 (:action
  ugly2096ugly173ugly553ugly273ugly666move_seg_w1_163a_0_34_seg_w1_163c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_daew7)
       (not_occupied seg_w1_163b_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_163a_0_34))
       (not_occupied seg_w1_163a_0_34) (not (at-segment ?a seg_w1_163a_0_34))
       (occupied seg_w1_163c_0_34) (not (not_occupied seg_w1_163c_0_34))
       (blocked seg_w1_163c_0_34 ?a) (not (not_blocked seg_w1_163c_0_34 ?a))
       (at-segment ?a seg_w1_163c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_162c_0_34 ?a))
       (not_blocked seg_w1_162c_0_34 ?a) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action ugly2097ugly831ugly249ugly245ugly49park_seg_p154_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p154_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p154_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_154b_0_45 ?a)) (not_blocked seg_w1_154b_0_45 ?a)))
 (:action
  ugly2098ugly631ugly53ugly207ugly640move_seg_p161_0_75_seg_w1_161b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p161_0_75) (not_occupied seg_w1_161b_0_45)
       (not_blocked seg_w1_161b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_161b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p161_0_75))
       (not_occupied seg_p161_0_75) (not (at-segment ?a seg_p161_0_75))
       (occupied seg_w1_161b_0_45) (not (not_occupied seg_w1_161b_0_45))
       (blocked seg_w1_161b_0_45 ?a) (not (not_blocked seg_w1_161b_0_45 ?a))
       (at-segment ?a seg_w1_161b_0_45)))
 (:action
  ugly2099ugly389ugly286ugly8ugly178startup_seg_o1_117c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117c_0_34)
       (not_occupied seg_o1_117a_0_34) (not_occupied seg_o1_117b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a)) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a))))
 (:action
  ugly2100ugly732ugly928ugly739ugly183startup_seg_o1_115a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115a_0_34)
       (not_occupied seg_o1_115b_0_60) (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action
  ugly2101ugly798ugly788ugly265ugly4move_seg_w1_164c_0_34_seg_w1_164a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164c_0_34) (not_occupied seg_w1_164a_0_34)
       (not_blocked seg_w1_164a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164a_0_34 airplane_daew7)
       (not_occupied seg_w1_164b_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_164c_0_34))
       (not_occupied seg_w1_164c_0_34) (not (at-segment ?a seg_w1_164c_0_34))
       (occupied seg_w1_164a_0_34) (not (not_occupied seg_w1_164a_0_34))
       (blocked seg_w1_164a_0_34 ?a) (not (not_blocked seg_w1_164a_0_34 ?a))
       (at-segment ?a seg_w1_164a_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_c4a_0_34 ?a))
       (not_blocked seg_w1_c4a_0_34 ?a) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a))))
 (:action
  ugly2102ugly130ugly775ugly377ugly539startup_seg_n_a10b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10b_0_60)
       (not_occupied seg_n_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10a_0_60 ?a)
       (not (not_blocked seg_n_a10a_0_60 ?a))))
 (:action
  ugly2103ugly103ugly778ugly458ugly911startup_seg_w1_162c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162c_0_34)
       (not_occupied seg_w1_163a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a))))
 (:action
  ugly2104ugly197ugly74ugly20ugly381startup_seg_a8_a_0_157_785_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_a_0_157_785)
       (not_occupied seg_a8_b_1_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_1_0_79_7559 ?a)
       (not (not_blocked seg_a8_b_1_0_79_7559 ?a))))
 (:action
  ugly2105ugly595ugly76ugly484ugly763startup_seg_o1_109a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109a_0_34)
       (not_occupied seg_o1_109b_0_60) (not_occupied seg_o1_109c_0_34)
       (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a)) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a)) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action
  ugly2106ugly823ugly180ugly529ugly708move_seg_n_n2a4c_0_75_seg_n_n2a4b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4c_0_75) (not_occupied seg_n_n2a4b_0_75)
       (not_blocked seg_n_n2a4b_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2a4c_0_75))
       (not_occupied seg_n_n2a4c_0_75) (not (at-segment ?a seg_n_n2a4c_0_75))
       (occupied seg_n_n2a4b_0_75) (not (not_occupied seg_n_n2a4b_0_75))
       (blocked seg_n_n2a4b_0_75 ?a) (not (not_blocked seg_n_n2a4b_0_75 ?a))
       (at-segment ?a seg_n_n2a4b_0_75) (not (blocked seg_n_n2a4d_0_75 ?a))
       (not_blocked seg_n_n2a4d_0_75 ?a)))
 (:action ugly2107ugly790ugly569ugly243ugly503park_seg_p153_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p153_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p153_0_75) (not (is-moving ?a))))
 (:action
  ugly2108ugly384ugly268ugly797ugly420startup_seg_m_a3a_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a_0_120_934)
       (not_occupied seg_a3_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_b_0_159_512 ?a)
       (not (not_blocked seg_a3_b_0_159_512 ?a))))
 (:action
  ugly2109ugly132ugly91ugly427ugly508startup_seg_m_a9a10b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10b_0_75)
       (not_occupied seg_m_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10c_0_75 ?a)
       (not (not_blocked seg_m_a9a10c_0_75 ?a))))
 (:action
  ugly2110ugly394ugly902ugly283ugly712startup_seg_a8_a_0_157_785_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_a_0_157_785)
       (not_occupied seg_08l_a7b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a7b_0_161_245 ?a)
       (not (not_blocked seg_08l_a7b_0_161_245 ?a))))
 (:action
  ugly2111ugly282ugly703ugly647ugly316move_seg_w1_163a_0_34_seg_w1_163b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_163b_0_45)
       (not_blocked seg_w1_163b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_163b_0_45 airplane_daew7)
       (not_occupied seg_w1_163c_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_163a_0_34))
       (not_occupied seg_w1_163a_0_34) (not (at-segment ?a seg_w1_163a_0_34))
       (occupied seg_w1_163b_0_45) (not (not_occupied seg_w1_163b_0_45))
       (blocked seg_w1_163b_0_45 ?a) (not (not_blocked seg_w1_163b_0_45 ?a))
       (at-segment ?a seg_w1_163b_0_45) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_162c_0_34 ?a))
       (not_blocked seg_w1_162c_0_34 ?a) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action
  ugly2112ugly416ugly408ugly320ugly785startup_seg_p133_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p133_0_75)
       (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action
  ugly2113ugly124ugly675ugly128ugly138move_seg_o1_103a_0_34_seg_o1_103b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_103b_0_60)
       (not_blocked seg_o1_103b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_103b_0_60 airplane_daew7)
       (not_occupied seg_o1_103c_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_103a_0_34))
       (not_occupied seg_o1_103a_0_34) (not (at-segment ?a seg_o1_103a_0_34))
       (occupied seg_o1_103b_0_60) (not (not_occupied seg_o1_103b_0_60))
       (blocked seg_o1_103b_0_60 ?a) (not (not_blocked seg_o1_103b_0_60 ?a))
       (at-segment ?a seg_o1_103b_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_102c_0_34 ?a))
       (not_blocked seg_o1_102c_0_34 ?a) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action
  ugly2114ugly512ugly353ugly418ugly383startup_seg_m_a8d_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8d_0_120_934)
       (not_occupied seg_m_a8a_0_60) (not_occupied seg_m_a8b_0_60)
       (not_occupied seg_m_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a)) (blocked seg_m_a8b_0_60 ?a)
       (not (not_blocked seg_m_a8b_0_60 ?a)) (blocked seg_m_a8c_0_60 ?a)
       (not (not_blocked seg_m_a8c_0_60 ?a))))
 (:action ugly2115ugly79ugly439ugly372ugly411park_seg_p118_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p118_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p118_0_76) (not (is-moving ?a))))
 (:action
  ugly2116ugly690ugly852ugly913ugly713startup_seg_o1_104c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104c_0_60)
       (not_occupied seg_o1_104a_0_34) (not_occupied seg_o1_104b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action
  ugly2117ugly68ugly24ugly210ugly813move_seg_o1_c2b_0_60_seg_o1_c2d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2b_0_60) (not_occupied seg_o1_c2d_0_60)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2d_0_60 airplane_daew7)
       (not_occupied seg_o1_c2a_0_60) (not_occupied seg_o1_c2c_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c2b_0_60))
       (not_occupied seg_o1_c2b_0_60) (not (at-segment ?a seg_o1_c2b_0_60))
       (occupied seg_o1_c2d_0_60) (not (not_occupied seg_o1_c2d_0_60))
       (blocked seg_o1_c2d_0_60 ?a) (not (not_blocked seg_o1_c2d_0_60 ?a))
       (at-segment ?a seg_o1_c2d_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p107_0_76 ?a))
       (not_blocked seg_p107_0_76 ?a) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a)) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a))))
 (:action
  ugly2118ugly42ugly488ugly333ugly651move_seg_p117_0_76_seg_o1_117b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p117_0_76) (not_occupied seg_o1_117b_0_60)
       (not_blocked seg_o1_117b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_117b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p117_0_76))
       (not_occupied seg_p117_0_76) (not (at-segment ?a seg_p117_0_76))
       (occupied seg_o1_117b_0_60) (not (not_occupied seg_o1_117b_0_60))
       (blocked seg_o1_117b_0_60 ?a) (not (not_blocked seg_o1_117b_0_60 ?a))
       (at-segment ?a seg_o1_117b_0_60)))
 (:action
  ugly2119ugly47ugly753ugly421ugly728move_seg_o1_103a_0_34_seg_o1_103c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_daew7)
       (not_occupied seg_o1_103b_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_103a_0_34))
       (not_occupied seg_o1_103a_0_34) (not (at-segment ?a seg_o1_103a_0_34))
       (occupied seg_o1_103c_0_34) (not (not_occupied seg_o1_103c_0_34))
       (blocked seg_o1_103c_0_34 ?a) (not (not_blocked seg_o1_103c_0_34 ?a))
       (at-segment ?a seg_o1_103c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_102c_0_34 ?a))
       (not_blocked seg_o1_102c_0_34 ?a) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action
  ugly2120ugly679ugly872ugly546ugly162startup_seg_m_a10c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10c_0_60)
       (not_occupied seg_m_a9a10g_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10g_0_80 ?a)
       (not (not_blocked seg_m_a9a10g_0_80 ?a))))
 (:action
  ugly2121ugly240ugly516ugly425ugly693startup_seg_n_a3a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3a_0_60)
       (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action
  ugly2122ugly86ugly21ugly194ugly444startup_seg_w1_c2c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2c_0_34)
       (not_occupied seg_w1_c2a_0_60) (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a)) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action
  ugly2123ugly266ugly855ugly819ugly576startup_seg_a8_b_1_0_79_7559_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_1_0_79_7559)
       (not_occupied seg_a8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))))
 (:action
  ugly2124ugly443ugly255ugly242ugly795startup_seg_o1_110c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110c_0_34)
       (not_occupied seg_o1_110a_0_34) (not_occupied seg_o1_110b_0_60)
       (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a)) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a)) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action
  ugly2125ugly480ugly363ugly103ugly778startup_seg_w1_c4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4b_0_60)
       (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action
  ugly2126ugly346ugly196ugly750ugly80startup_seg_m_a3a4f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4f_0_115)
       (not_occupied seg_m_a4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4d_0_60 ?a)
       (not (not_blocked seg_m_a4d_0_60 ?a))))
 (:action
  ugly2127ugly756ugly858ugly216ugly718startup_seg_a2_a_0_90_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_a_0_90)
       (not_occupied seg_08l_a2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a2b_0_80 ?a)
       (not (not_blocked seg_08l_a2b_0_80 ?a))))
 (:action
  ugly2128ugly172ugly752ugly290ugly276move_seg_o1_115a_0_34_seg_o1_115c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_daew7)
       (not_occupied seg_o1_115b_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_115a_0_34))
       (not_occupied seg_o1_115a_0_34) (not (at-segment ?a seg_o1_115a_0_34))
       (occupied seg_o1_115c_0_34) (not (not_occupied seg_o1_115c_0_34))
       (blocked seg_o1_115c_0_34 ?a) (not (not_blocked seg_o1_115c_0_34 ?a))
       (at-segment ?a seg_o1_115c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_c3c_0_48 ?a))
       (not_blocked seg_o1_c3c_0_48 ?a) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action
  ugly2129ugly387ugly331ugly474ugly15startup_seg_w1_c3c_0_48_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3c_0_48)
       (not_occupied seg_w1_161a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a))))
 (:action
  ugly2130ugly733ugly147ugly561ugly71startup_seg_n_a2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2b_0_60)
       (not_occupied seg_n_a2a3a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3a_0_75 ?a)
       (not (not_blocked seg_n_a2a3a_0_75 ?a))))
 (:action ugly2131ugly256ugly801ugly269ugly22startup_seg_c3_a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_a_0_80)
       (not_occupied seg_c3_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_b_0_80 ?a)
       (not (not_blocked seg_c3_b_0_80 ?a))))
 (:action
  ugly2132ugly462ugly114ugly628ugly809startup_seg_w1_164b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164b_0_45)
       (not_occupied seg_p164_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p164_0_75 ?a)
       (not (not_blocked seg_p164_0_75 ?a))))
 (:action
  ugly2133ugly780ugly743ugly110ugly682startup_seg_m_a3a4f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4f_0_115)
       (not_occupied seg_m_a3a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4e_0_75 ?a)
       (not (not_blocked seg_m_a3a4e_0_75 ?a))))
 (:action
  ugly2134ugly727ugly184ugly746ugly456startup_seg_p152_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p152_0_75)
       (not_occupied seg_w1_152b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action
  ugly2135ugly283ugly712ugly673ugly836startup_seg_p115_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p115_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly2136ugly557ugly153ugly117ugly895startup_seg_c4_s6a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6a_0_80)
       (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action ugly2137ugly578ugly668ugly305ugly487park_seg_p141_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p141_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p141_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_141b_0_45 ?a)) (not_blocked seg_w1_141b_0_45 ?a)))
 (:action
  ugly2138ugly845ugly548ugly42ugly488startup_seg_w1_141b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141b_0_45)
       (not_occupied seg_w1_141a_0_34) (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly2139ugly864ugly360ugly790ugly569move_seg_o1_111a_0_34_seg_o1_110c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_111a_0_34))
       (not_occupied seg_o1_111a_0_34) (not (at-segment ?a seg_o1_111a_0_34))
       (occupied seg_o1_110c_0_34) (not (not_occupied seg_o1_110c_0_34))
       (blocked seg_o1_110c_0_34 ?a) (not (not_blocked seg_o1_110c_0_34 ?a))
       (at-segment ?a seg_o1_110c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_111b_0_60 ?a))
       (not_blocked seg_o1_111b_0_60 ?a) (not (blocked seg_o1_111c_0_34 ?a))
       (not_blocked seg_o1_111c_0_34 ?a) (not (blocked seg_o1_111d_0_45 ?a))
       (not_blocked seg_o1_111d_0_45 ?a)))
 (:action
  ugly2140ugly347ugly314ugly124ugly675move_seg_w1_c3a_0_34_seg_w1_154c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c3a_0_34) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_c3a_0_34))
       (not_occupied seg_w1_c3a_0_34) (not (at-segment ?a seg_w1_c3a_0_34))
       (occupied seg_w1_154c_0_34) (not (not_occupied seg_w1_154c_0_34))
       (blocked seg_w1_154c_0_34 ?a) (not (not_blocked seg_w1_154c_0_34 ?a))
       (at-segment ?a seg_w1_154c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_c3b_0_60 ?a))
       (not_blocked seg_w1_c3b_0_60 ?a) (not (blocked seg_w1_c3c_0_48 ?a))
       (not_blocked seg_w1_c3c_0_48 ?a)))
 (:action ugly2141ugly411ugly632ugly44ugly686park_seg_p107_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p107_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p107_0_76) (not (is-moving ?a))))
 (:action
  ugly2142ugly367ugly598ugly61ugly357move_seg_o1_111d_0_45_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111d_0_45) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_daew7)
       (not_occupied seg_o1_111a_0_34) (not_occupied seg_o1_111b_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_111d_0_45))
       (not_occupied seg_o1_111d_0_45) (not (at-segment ?a seg_o1_111d_0_45))
       (occupied seg_o1_111c_0_34) (not (not_occupied seg_o1_111c_0_34))
       (blocked seg_o1_111c_0_34 ?a) (not (not_blocked seg_o1_111c_0_34 ?a))
       (at-segment ?a seg_o1_111c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p134_0_75 ?a))
       (not_blocked seg_p134_0_75 ?a) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a)) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a))))
 (:action
  ugly2143ugly892ugly738ugly587ugly780startup_seg_n_a7a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a_0_60)
       (not_occupied seg_n_a7b_0_60) (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a)) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action
  ugly2144ugly839ugly667ugly221ugly747move_seg_o1_102b_0_60_seg_p102_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102b_0_60) (not_occupied seg_p102_0_76)
       (not_blocked seg_p102_0_76 airplane_cfbeg)
       (not_blocked seg_p102_0_76 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_102b_0_60))
       (not_occupied seg_o1_102b_0_60) (not (at-segment ?a seg_o1_102b_0_60))
       (occupied seg_p102_0_76) (not (not_occupied seg_p102_0_76))
       (blocked seg_p102_0_76 ?a) (not (not_blocked seg_p102_0_76 ?a))
       (at-segment ?a seg_p102_0_76) (not (blocked seg_o1_102a_0_34 ?a))
       (not_blocked seg_o1_102a_0_34 ?a) (not (blocked seg_o1_102c_0_34 ?a))
       (not_blocked seg_o1_102c_0_34 ?a)))
 (:action
  ugly2145ugly227ugly375ugly579ugly679startup_seg_n_a4c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4c_0_60)
       (not_occupied seg_n_n2a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4e_0_75 ?a)
       (not (not_blocked seg_n_n2a4e_0_75 ?a))))
 (:action
  ugly2146ugly455ugly841ugly648ugly152startup_seg_w1_153c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153c_0_34)
       (not_occupied seg_w1_154a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a))))
 (:action
  ugly2147ugly433ugly791ugly299ugly481startup_seg_n_n2a4b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4b_0_75)
       (not_occupied seg_n_n2a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4c_0_75 ?a)
       (not (not_blocked seg_n_n2a4c_0_75 ?a))))
 (:action
  ugly2148ugly285ugly345ugly443ugly255move_seg_o1_110c_0_34_seg_o1_111a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_110c_0_34))
       (not_occupied seg_o1_110c_0_34) (not (at-segment ?a seg_o1_110c_0_34))
       (occupied seg_o1_111a_0_34) (not (not_occupied seg_o1_111a_0_34))
       (blocked seg_o1_111a_0_34 ?a) (not (not_blocked seg_o1_111a_0_34 ?a))
       (at-segment ?a seg_o1_111a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_110a_0_34 ?a))
       (not_blocked seg_o1_110a_0_34 ?a) (not (blocked seg_o1_110b_0_60 ?a))
       (not_blocked seg_o1_110b_0_60 ?a) (not (blocked seg_o1_110d_0_45 ?a))
       (not_blocked seg_o1_110d_0_45 ?a)))
 (:action
  ugly2149ugly92ugly818ugly946ugly511startup_seg_w1_143c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143c_0_60)
       (not_occupied seg_w1_143a_0_34) (not_occupied seg_w1_143b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a))))
 (:action
  ugly2150ugly236ugly232ugly477ugly822move_seg_n_a6c_0_60_seg_n_a7a6d_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a6c_0_60) (not_occupied seg_n_a7a6d_0_75)
       (not_blocked seg_n_a7a6d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6d_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6c_0_60))
       (not_occupied seg_n_a6c_0_60) (not (at-segment ?a seg_n_a6c_0_60))
       (occupied seg_n_a7a6d_0_75) (not (not_occupied seg_n_a7a6d_0_75))
       (blocked seg_n_a7a6d_0_75 ?a) (not (not_blocked seg_n_a7a6d_0_75 ?a))
       (at-segment ?a seg_n_a7a6d_0_75) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_n_a6a_0_60 ?a))
       (not_blocked seg_n_a6a_0_60 ?a) (not (blocked seg_n_a6b_0_60 ?a))
       (not_blocked seg_n_a6b_0_60 ?a)))
 (:action
  ugly2151ugly906ugly156ugly144ugly844startup_seg_n_a8a9d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9d_0_75)
       (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action
  ugly2152ugly847ugly520ugly577ugly406startup_seg_c1_n2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2a_0_60)
       (not_occupied seg_c1_n2b_0_80) (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a)) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action
  ugly2153ugly451ugly522ugly514ugly726move_seg_o1_c1c_0_80_seg_c1_n2b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_c1_n2b_0_80)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbeg)
       (not_blocked seg_c1_n2b_0_80 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c1c_0_80))
       (not_occupied seg_o1_c1c_0_80) (not (at-segment ?a seg_o1_c1c_0_80))
       (occupied seg_c1_n2b_0_80) (not (not_occupied seg_c1_n2b_0_80))
       (blocked seg_c1_n2b_0_80 ?a) (not (not_blocked seg_c1_n2b_0_80 ?a))
       (at-segment ?a seg_c1_n2b_0_80) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_c1a_0_60 ?a))
       (not_blocked seg_o1_c1a_0_60 ?a) (not (blocked seg_o1_c1b_0_34 ?a))
       (not_blocked seg_o1_c1b_0_34 ?a)))
 (:action
  ugly2154ugly359ugly476ugly224ugly624startup_seg_a3_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_b_0_159_512)
       (not_occupied seg_a3_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_a_0_158_647 ?a)
       (not (not_blocked seg_a3_a_0_158_647 ?a))))
 (:action
  ugly2155ugly404ugly85ugly267ugly926startup_seg_n_a9a10a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10a_0_80)
       (not_occupied seg_n_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a))))
 (:action
  ugly2156ugly787ugly903ugly370ugly471startup_seg_08l_a9b_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a9b_0_161_245)
       (not_occupied seg_09l_0_80) (not_occupied seg_08l_a9c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_09l_0_80 ?a)
       (not (not_blocked seg_09l_0_80 ?a)) (blocked seg_08l_a9c_0_80 ?a)
       (not (not_blocked seg_08l_a9c_0_80 ?a))))
 (:action
  ugly2157ugly201ugly839ugly667ugly221startup_seg_m_a7a6c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6c_0_75)
       (not_occupied seg_m_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6b_0_75 ?a)
       (not (not_blocked seg_m_a7a6b_0_75 ?a))))
 (:action
  ugly2158ugly123ugly272ugly45ugly861startup_seg_o1_c4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4b_0_60)
       (not_occupied seg_o1_c4a_0_34) (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action
  ugly2159ugly693ugly694ugly707ugly151startup_seg_m_a4a7f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7f_0_115)
       (not_occupied seg_m_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7e_0_75 ?a)
       (not (not_blocked seg_m_a4a7e_0_75 ?a))))
 (:action
  ugly2160ugly620ugly754ugly378ugly760startup_seg_o1_c1c_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1c_0_80)
       (not_occupied seg_c1_n2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a))))
 (:action
  ugly2161ugly427ugly508ugly808ugly416startup_seg_w1_c3a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3a_0_34)
       (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action
  ugly2162ugly371ugly642ugly661ugly556startup_seg_n_a2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a_0_60)
       (not_occupied seg_n_a2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2b_0_60 ?a)
       (not (not_blocked seg_n_a2b_0_60 ?a))))
 (:action
  ugly2163ugly117ugly895ugly646ugly838startup_seg_m_a6a8f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8f_0_115)
       (not_occupied seg_m_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8e_0_75 ?a)
       (not (not_blocked seg_m_a6a8e_0_75 ?a))))
 (:action
  ugly2164ugly772ugly608ugly530ugly325startup_seg_n_a3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3b_0_60)
       (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action
  ugly2165ugly701ugly611ugly521ugly402move_seg_w1_c3a_0_34_seg_w1_c3c_0_48_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c3a_0_34) (not_occupied seg_w1_c3c_0_48)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_w1_c3c_0_48 airplane_daew7)
       (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_c3a_0_34))
       (not_occupied seg_w1_c3a_0_34) (not (at-segment ?a seg_w1_c3a_0_34))
       (occupied seg_w1_c3c_0_48) (not (not_occupied seg_w1_c3c_0_48))
       (blocked seg_w1_c3c_0_48 ?a) (not (not_blocked seg_w1_c3c_0_48 ?a))
       (at-segment ?a seg_w1_c3c_0_48) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_154c_0_34 ?a))
       (not_blocked seg_w1_154c_0_34 ?a) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action
  ugly2166ugly584ugly736ugly558ugly246move_seg_w1_154a_0_34_seg_w1_153c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_154a_0_34))
       (not_occupied seg_w1_154a_0_34) (not (at-segment ?a seg_w1_154a_0_34))
       (occupied seg_w1_153c_0_34) (not (not_occupied seg_w1_153c_0_34))
       (blocked seg_w1_153c_0_34 ?a) (not (not_blocked seg_w1_153c_0_34 ?a))
       (at-segment ?a seg_w1_153c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_154b_0_45 ?a))
       (not_blocked seg_w1_154b_0_45 ?a) (not (blocked seg_w1_154c_0_34 ?a))
       (not_blocked seg_w1_154c_0_34 ?a)))
 (:action
  ugly2167ugly900ugly622ugly225ugly885startup_seg_m_a10a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10a_0_60)
       (not_occupied seg_a10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_0_80 ?a)
       (not (not_blocked seg_a10_0_80 ?a))))
 (:action
  ugly2168ugly722ugly35ugly543ugly871startup_seg_n_a8a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a_0_60)
       (not_occupied seg_m_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8b_0_60 ?a)
       (not (not_blocked seg_m_a8b_0_60 ?a))))
 (:action ugly2169ugly9ugly603ugly755ugly77startup_seg_a2_c_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_c_0_100)
       (not_occupied seg_a2_b_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_b_0_90 ?a)
       (not (not_blocked seg_a2_b_0_90 ?a))))
 (:action
  ugly2170ugly473ugly904ugly289ugly681startup_seg_n_a4a7b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7b_0_75)
       (not_occupied seg_n_a4a7a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7a_0_115 ?a)
       (not (not_blocked seg_n_a4a7a_0_115 ?a))))
 (:action
  ugly2171ugly540ugly66ugly212ugly564startup_seg_m_a8a9a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9a_0_75)
       (not_occupied seg_m_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9b_0_75 ?a)
       (not (not_blocked seg_m_a8a9b_0_75 ?a))))
 (:action
  ugly2172ugly194ugly444ugly365ugly208startup_seg_n_a8a9c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9c_0_75)
       (not_occupied seg_n_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9b_0_75 ?a)
       (not (not_blocked seg_n_a8a9b_0_75 ?a))))
 (:action
  ugly2173ugly951ugly142ugly783ugly56startup_seg_a10_1_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_1_0_80)
       (not_occupied seg_08l_a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a10a_0_80 ?a)
       (not (not_blocked seg_08l_a10a_0_80 ?a))))
 (:action
  ugly2174ugly374ugly30ugly68ugly24move_seg_o1_104a_0_34_seg_o1_104c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_daew7)
       (not_occupied seg_o1_104b_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_104a_0_34))
       (not_occupied seg_o1_104a_0_34) (not (at-segment ?a seg_o1_104a_0_34))
       (occupied seg_o1_104c_0_60) (not (not_occupied seg_o1_104c_0_60))
       (blocked seg_o1_104c_0_60 ?a) (not (not_blocked seg_o1_104c_0_60 ?a))
       (at-segment ?a seg_o1_104c_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_103c_0_34 ?a))
       (not_blocked seg_o1_103c_0_34 ?a) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action
  ugly2175ugly683ugly609ugly19ugly26startup_seg_n_a8a9c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9c_0_75)
       (not_occupied seg_n_a8a9d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9d_0_75 ?a)
       (not (not_blocked seg_n_a8a9d_0_75 ?a))))
 (:action
  ugly2176ugly651ugly291ugly368ugly423move_seg_o1_110b_0_60_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110b_0_60) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_daew7)
       (not_occupied seg_o1_110a_0_34) (not_occupied seg_o1_110d_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_110b_0_60))
       (not_occupied seg_o1_110b_0_60) (not (at-segment ?a seg_o1_110b_0_60))
       (occupied seg_o1_110c_0_34) (not (not_occupied seg_o1_110c_0_34))
       (blocked seg_o1_110c_0_34 ?a) (not (not_blocked seg_o1_110c_0_34 ?a))
       (at-segment ?a seg_o1_110c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p110_0_76 ?a))
       (not_blocked seg_p110_0_76 ?a) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a)) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action
  ugly2177ugly349ugly575ugly244ugly744startup_seg_w1_c2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2a_0_60)
       (not_occupied seg_w1_c2b_0_60) (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a)) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action
  ugly2178ugly771ugly918ugly131ugly930startup_seg_m_a9a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a_0_60)
       (not_occupied seg_m_a9a10a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10a_0_75 ?a)
       (not (not_blocked seg_m_a9a10a_0_75 ?a))))
 (:action
  ugly2179ugly202ugly310ugly95ugly231move_seg_o1_108a_0_34_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_daew7)
       (not_occupied seg_o1_108b_0_60) (not_occupied seg_o1_108d_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_108a_0_34))
       (not_occupied seg_o1_108a_0_34) (not (at-segment ?a seg_o1_108a_0_34))
       (occupied seg_o1_108c_0_34) (not (not_occupied seg_o1_108c_0_34))
       (blocked seg_o1_108c_0_34 ?a) (not (not_blocked seg_o1_108c_0_34 ?a))
       (at-segment ?a seg_o1_108c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_c2c_0_34 ?a))
       (not_blocked seg_o1_c2c_0_34 ?a) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action
  ugly2180ugly181ugly12ugly616ugly311move_seg_w1_164a_0_34_seg_w1_164b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164a_0_34) (not_occupied seg_w1_164b_0_45)
       (not_blocked seg_w1_164b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_164b_0_45 airplane_daew7)
       (not_occupied seg_w1_164c_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_164a_0_34))
       (not_occupied seg_w1_164a_0_34) (not (at-segment ?a seg_w1_164a_0_34))
       (occupied seg_w1_164b_0_45) (not (not_occupied seg_w1_164b_0_45))
       (blocked seg_w1_164b_0_45 ?a) (not (not_blocked seg_w1_164b_0_45 ?a))
       (at-segment ?a seg_w1_164b_0_45) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_163c_0_34 ?a))
       (not_blocked seg_w1_163c_0_34 ?a) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action
  ugly2181ugly254ugly374ugly30ugly68move_seg_08l_a2a_0_80_seg_08l_a2a3_0_970_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a2a_0_80) (not_occupied seg_08l_a2a3_0_970)
       (not_blocked seg_08l_a2a3_0_970 airplane_cfbeg)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_08l_a2a_0_80))
       (not_occupied seg_08l_a2a_0_80) (not (at-segment ?a seg_08l_a2a_0_80))
       (occupied seg_08l_a2a3_0_970) (not (not_occupied seg_08l_a2a3_0_970))
       (blocked seg_08l_a2a3_0_970 ?a)
       (not (not_blocked seg_08l_a2a3_0_970 ?a))
       (at-segment ?a seg_08l_a2a3_0_970) (not (blocked seg_08l_a2b_0_80 ?a))
       (not_blocked seg_08l_a2b_0_80 ?a)))
 (:action
  ugly2182ugly809ugly448ugly645ugly214move_seg_w1_142b_0_45_seg_w1_142c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142b_0_45) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_daew7)
       (not_occupied seg_w1_142a_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_142b_0_45))
       (not_occupied seg_w1_142b_0_45) (not (at-segment ?a seg_w1_142b_0_45))
       (occupied seg_w1_142c_0_34) (not (not_occupied seg_w1_142c_0_34))
       (blocked seg_w1_142c_0_34 ?a) (not (not_blocked seg_w1_142c_0_34 ?a))
       (at-segment ?a seg_w1_142c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p142_0_75 ?a))
       (not_blocked seg_p142_0_75 ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a))))
 (:action
  ugly2183ugly841ugly648ugly152ugly392startup_seg_m_a9a10e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10e_0_75)
       (not_occupied seg_m_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10f_0_75 ?a)
       (not (not_blocked seg_m_a9a10f_0_75 ?a))))
 (:action
  ugly2184ugly393ugly843ugly301ugly884move_seg_w1_141b_0_45_seg_w1_141c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141b_0_45) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_daew7)
       (not_occupied seg_w1_141a_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_141b_0_45))
       (not_occupied seg_w1_141b_0_45) (not (at-segment ?a seg_w1_141b_0_45))
       (occupied seg_w1_141c_0_34) (not (not_occupied seg_w1_141c_0_34))
       (blocked seg_w1_141c_0_34 ?a) (not (not_blocked seg_w1_141c_0_34 ?a))
       (at-segment ?a seg_w1_141c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p141_0_75 ?a))
       (not_blocked seg_p141_0_75 ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a))))
 (:action ugly2185ugly775ugly377ugly539ugly945park_seg_p131_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p131_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p131_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_108d_0_45 ?a)) (not_blocked seg_o1_108d_0_45 ?a)))
 (:action
  ugly2186ugly11ugly612ugly191ugly735startup_seg_o1_c3a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3a_0_34)
       (not_occupied seg_o1_c3b_0_60) (not_occupied seg_o1_c3c_0_48)
       (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a)) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a)) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action
  ugly2187ugly61ugly357ugly261ugly300startup_seg_n_a2a3f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3f_0_115)
       (not_occupied seg_n_a3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3d_0_60 ?a)
       (not (not_blocked seg_n_a3d_0_60 ?a))))
 (:action
  ugly2188ugly691ugly592ugly806ugly657startup_seg_n_a4c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4c_0_60)
       (not_occupied seg_n_a4a_0_60) (not_occupied seg_n_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a)) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a))))
 (:action
  ugly2189ugly441ugly426ugly906ugly156move_seg_w1_161b_0_45_seg_p161_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161b_0_45) (not_occupied seg_p161_0_75)
       (not_blocked seg_p161_0_75 airplane_cfbeg)
       (not_blocked seg_p161_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_161b_0_45))
       (not_occupied seg_w1_161b_0_45) (not (at-segment ?a seg_w1_161b_0_45))
       (occupied seg_p161_0_75) (not (not_occupied seg_p161_0_75))
       (blocked seg_p161_0_75 ?a) (not (not_blocked seg_p161_0_75 ?a))
       (at-segment ?a seg_p161_0_75) (not (blocked seg_w1_161a_0_34 ?a))
       (not_blocked seg_w1_161a_0_34 ?a) (not (blocked seg_w1_161c_0_34 ?a))
       (not_blocked seg_w1_161c_0_34 ?a)))
 (:action
  ugly2190ugly914ugly238ugly89ugly542startup_seg_m_a8a9b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9b_0_75)
       (not_occupied seg_m_a8a9a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9a_0_75 ?a)
       (not (not_blocked seg_m_a8a9a_0_75 ?a))))
 (:action
  ugly2191ugly786ugly295ugly894ugly226startup_seg_o1_108c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108c_0_34)
       (not_occupied seg_o1_108a_0_34) (not_occupied seg_o1_108b_0_60)
       (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a)) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action
  ugly2192ugly805ugly72ugly851ugly127startup_seg_w1_143b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143b_0_45)
       (not_occupied seg_p143_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p143_0_75 ?a)
       (not (not_blocked seg_p143_0_75 ?a))))
 (:action
  ugly2193ugly470ugly441ugly426ugly906move_seg_w1_164a_0_34_seg_w1_163c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164a_0_34) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_164a_0_34))
       (not_occupied seg_w1_164a_0_34) (not (at-segment ?a seg_w1_164a_0_34))
       (occupied seg_w1_163c_0_34) (not (not_occupied seg_w1_163c_0_34))
       (blocked seg_w1_163c_0_34 ?a) (not (not_blocked seg_w1_163c_0_34 ?a))
       (at-segment ?a seg_w1_163c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_164b_0_45 ?a))
       (not_blocked seg_w1_164b_0_45 ?a) (not (blocked seg_w1_164c_0_34 ?a))
       (not_blocked seg_w1_164c_0_34 ?a)))
 (:action
  ugly2194ugly402ugly141ugly461ugly445startup_seg_w1_c1b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1b_0_60)
       (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action ugly2195ugly131ugly930ugly794ugly198park_seg_p118_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p118_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p118_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_118b_0_60 ?a)) (not_blocked seg_o1_118b_0_60 ?a)))
 (:action
  ugly2196ugly708ugly69ugly772ugly608startup_seg_o1_109a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109a_0_34)
       (not_occupied seg_o1_108c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a))))
 (:action
  ugly2197ugly552ugly451ugly522ugly514startup_seg_m_a4a7e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7e_0_75)
       (not_occupied seg_m_a4a7f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7f_0_115 ?a)
       (not (not_blocked seg_m_a4a7f_0_115 ?a))))
 (:action ugly2198ugly589ugly777ugly97ugly40startup_seg_p162_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p162_0_75)
       (not_occupied seg_w1_162b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action
  ugly2199ugly113ugly571ugly446ugly262startup_seg_m_a4a7b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7b_0_75)
       (not_occupied seg_m_a4a7a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7a_0_75 ?a)
       (not (not_blocked seg_m_a4a7a_0_75 ?a))))
 (:action
  ugly2200ugly709ugly36ugly274ugly73startup_seg_n_a2a3a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3a_0_75)
       (not_occupied seg_n_a2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2b_0_60 ?a)
       (not (not_blocked seg_n_a2b_0_60 ?a))))
 (:action
  ugly2201ugly519ugly473ugly904ugly289startup_seg_08l_a10a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a10a_0_80)
       (not_occupied seg_08l_a10b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a10b_0_80 ?a)
       (not (not_blocked seg_08l_a10b_0_80 ?a))))
 (:action
  ugly2202ugly545ugly275ugly886ugly899startup_seg_c4_s6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6c_0_60)
       (not_occupied seg_w1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a))))
 (:action
  ugly2203ugly78ugly917ugly932ugly263move_seg_w1_162b_0_45_seg_w1_162c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162b_0_45) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_daew7)
       (not_occupied seg_w1_162a_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_162b_0_45))
       (not_occupied seg_w1_162b_0_45) (not (at-segment ?a seg_w1_162b_0_45))
       (occupied seg_w1_162c_0_34) (not (not_occupied seg_w1_162c_0_34))
       (blocked seg_w1_162c_0_34 ?a) (not (not_blocked seg_w1_162c_0_34 ?a))
       (at-segment ?a seg_w1_162c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p162_0_75 ?a))
       (not_blocked seg_p162_0_75 ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a))))
 (:action
  ugly2204ugly388ugly485ugly940ugly136startup_seg_m_a9a10f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10f_0_75)
       (not_occupied seg_m_a9a10g_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10g_0_80 ?a)
       (not (not_blocked seg_m_a9a10g_0_80 ?a))))
 (:action
  ugly2205ugly22ugly414ugly51ugly524startup_seg_n_a7a6d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6d_0_75)
       (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action
  ugly2206ugly893ugly671ugly665ugly497move_seg_a8_b_1_0_79_7559_seg_a8_b_0_80_6226_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_b_1_0_79_7559) (not_occupied seg_a8_b_0_80_6226)
       (not_blocked seg_a8_b_0_80_6226 airplane_cfbeg)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a8_b_1_0_79_7559))
       (not_occupied seg_a8_b_1_0_79_7559)
       (not (at-segment ?a seg_a8_b_1_0_79_7559)) (occupied seg_a8_b_0_80_6226)
       (not (not_occupied seg_a8_b_0_80_6226)) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))
       (at-segment ?a seg_a8_b_0_80_6226) (not (blocked seg_a8_a_0_157_785 ?a))
       (not_blocked seg_a8_a_0_157_785 ?a)))
 (:action
  ugly2207ugly360ugly790ugly569ugly243startup_seg_p104_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p104_0_76)
       (not_occupied seg_o1_104b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action
  ugly2208ugly231ugly233ugly457ugly934startup_seg_n_a7b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7b_0_60)
       (not_occupied seg_n_a7a_0_60) (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a)) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action
  ugly2209ugly321ugly670ugly613ugly919move_seg_o1_118c_0_34_seg_o1_118a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118c_0_34) (not_occupied seg_o1_118a_0_34)
       (not_blocked seg_o1_118a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118a_0_34 airplane_daew7)
       (not_occupied seg_o1_118b_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_118c_0_34))
       (not_occupied seg_o1_118c_0_34) (not (at-segment ?a seg_o1_118c_0_34))
       (occupied seg_o1_118a_0_34) (not (not_occupied seg_o1_118a_0_34))
       (blocked seg_o1_118a_0_34 ?a) (not (not_blocked seg_o1_118a_0_34 ?a))
       (at-segment ?a seg_o1_118a_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_c4a_0_34 ?a))
       (not_blocked seg_o1_c4a_0_34 ?a) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action
  ugly2210ugly821ugly766ugly491ugly676startup_seg_n_a7a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a_0_60)
       (not_occupied seg_m_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7c_0_60 ?a)
       (not (not_blocked seg_m_a7c_0_60 ?a))))
 (:action
  ugly2211ugly4ugly165ugly826ugly538startup_seg_o1_c3b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3b_0_60)
       (not_occupied seg_o1_c3a_0_34) (not_occupied seg_o1_c3c_0_48)
       (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a)) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a)) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action
  ugly2212ugly546ugly162ugly824ugly573startup_seg_n_n2a4c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4c_0_75)
       (not_occupied seg_n_n2a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4d_0_75 ?a)
       (not (not_blocked seg_n_n2a4d_0_75 ?a))))
 (:action
  ugly2213ugly694ugly707ugly151ugly729startup_seg_p132_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p132_0_75)
       (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action
  ugly2214ugly153ugly117ugly895ugly646startup_seg_n_a2a3b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3b_0_75)
       (not_occupied seg_n_a2a3c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3c_0_75 ?a)
       (not (not_blocked seg_n_a2a3c_0_75 ?a))))
 (:action
  ugly2215ugly467ugly515ugly625ugly86move_seg_a2_b_0_90_seg_a2_a_0_90_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_b_0_90) (not_occupied seg_a2_a_0_90)
       (not_blocked seg_a2_a_0_90 airplane_cfbeg)
       (not_blocked seg_a2_a_0_90 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a2_b_0_90))
       (not_occupied seg_a2_b_0_90) (not (at-segment ?a seg_a2_b_0_90))
       (occupied seg_a2_a_0_90) (not (not_occupied seg_a2_a_0_90))
       (blocked seg_a2_a_0_90 ?a) (not (not_blocked seg_a2_a_0_90 ?a))
       (at-segment ?a seg_a2_a_0_90) (not (blocked seg_a2_c_0_100 ?a))
       (not_blocked seg_a2_c_0_100 ?a)))
 (:action
  ugly2216ugly901ugly599ugly182ugly197move_seg_n2_0_108_seg_c1_n2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n2_0_108) (not_occupied seg_c1_n2a_0_60)
       (not_blocked seg_c1_n2a_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2a_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_0_108))
       (not_occupied seg_n2_0_108) (not (at-segment ?a seg_n2_0_108))
       (occupied seg_c1_n2a_0_60) (not (not_occupied seg_c1_n2a_0_60))
       (blocked seg_c1_n2a_0_60 ?a) (not (not_blocked seg_c1_n2a_0_60 ?a))
       (at-segment ?a seg_c1_n2a_0_60) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_n_n2b_0_60 ?a))
       (not_blocked seg_n_n2b_0_60 ?a)))
 (:action
  ugly2217ugly127ugly352ugly264ugly302startup_seg_08l_a2b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a2b_0_80)
       (not_occupied seg_a2_a_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_a_0_90 ?a)
       (not (not_blocked seg_a2_a_0_90 ?a))))
 (:action
  ugly2218ugly644ugly116ugly98ugly46move_seg_o1_108a_0_34_seg_o1_108b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108b_0_60)
       (not_blocked seg_o1_108b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_108b_0_60 airplane_daew7)
       (not_occupied seg_o1_108c_0_34) (not_occupied seg_o1_108d_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_108a_0_34))
       (not_occupied seg_o1_108a_0_34) (not (at-segment ?a seg_o1_108a_0_34))
       (occupied seg_o1_108b_0_60) (not (not_occupied seg_o1_108b_0_60))
       (blocked seg_o1_108b_0_60 ?a) (not (not_blocked seg_o1_108b_0_60 ?a))
       (at-segment ?a seg_o1_108b_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_c2c_0_34 ?a))
       (not_blocked seg_o1_c2c_0_34 ?a) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action
  ugly2219ugly712ugly673ugly836ugly604startup_seg_w1_164b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164b_0_45)
       (not_occupied seg_w1_164a_0_34) (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action
  ugly2220ugly740ugly768ugly181ugly12startup_seg_o1_117a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117a_0_34)
       (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action
  ugly2221ugly298ugly501ugly366ugly758startup_seg_o1_c1b_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1b_0_34)
       (not_occupied seg_o1_102a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a))))
 (:action
  ugly2222ugly943ugly472ugly410ugly866move_seg_n_a2a3b_0_75_seg_n_a2a3a_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3b_0_75) (not_occupied seg_n_a2a3a_0_75)
       (not_blocked seg_n_a2a3a_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3b_0_75))
       (not_occupied seg_n_a2a3b_0_75) (not (at-segment ?a seg_n_a2a3b_0_75))
       (occupied seg_n_a2a3a_0_75) (not (not_occupied seg_n_a2a3a_0_75))
       (blocked seg_n_a2a3a_0_75 ?a) (not (not_blocked seg_n_a2a3a_0_75 ?a))
       (at-segment ?a seg_n_a2a3a_0_75) (not (blocked seg_n_a2a3c_0_75 ?a))
       (not_blocked seg_n_a2a3c_0_75 ?a)))
 (:action
  ugly2223ugly744ugly361ugly281ugly470startup_seg_w1_163c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163c_0_34)
       (not_occupied seg_w1_163a_0_34) (not_occupied seg_w1_163b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action
  ugly2224ugly125ugly438ugly526ugly401startup_seg_o1_c2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2a_0_60)
       (not_occupied seg_o1_c2b_0_60) (not_occupied seg_o1_c2c_0_34)
       (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a)) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a)) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action
  ugly2225ugly85ugly267ugly926ugly931move_seg_o1_111c_0_34_seg_o1_c3a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_111c_0_34))
       (not_occupied seg_o1_111c_0_34) (not (at-segment ?a seg_o1_111c_0_34))
       (occupied seg_o1_c3a_0_34) (not (not_occupied seg_o1_c3a_0_34))
       (blocked seg_o1_c3a_0_34 ?a) (not (not_blocked seg_o1_c3a_0_34 ?a))
       (at-segment ?a seg_o1_c3a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_111a_0_34 ?a))
       (not_blocked seg_o1_111a_0_34 ?a) (not (blocked seg_o1_111b_0_60 ?a))
       (not_blocked seg_o1_111b_0_60 ?a) (not (blocked seg_o1_111d_0_45 ?a))
       (not_blocked seg_o1_111d_0_45 ?a)))
 (:action
  ugly2226ugly126ugly602ugly921ugly936startup_seg_w1_161b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161b_0_45)
       (not_occupied seg_w1_161a_0_34) (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action
  ugly2227ugly614ugly150ugly459ugly297startup_seg_m_a9c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9c_0_60)
       (not_occupied seg_m_a9a_0_60) (not_occupied seg_m_a9b_0_60)
       (not_occupied seg_m_a9d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a_0_60 ?a)
       (not (not_blocked seg_m_a9a_0_60 ?a)) (blocked seg_m_a9b_0_60 ?a)
       (not (not_blocked seg_m_a9b_0_60 ?a)) (blocked seg_m_a9d_0_120_934 ?a)
       (not (not_blocked seg_m_a9d_0_120_934 ?a))))
 (:action
  ugly2228ugly826ugly538ugly585ugly213startup_seg_o1_104c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104c_0_60)
       (not_occupied seg_o1_c2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a))))
 (:action
  ugly2229ugly295ugly894ugly226ugly523move_seg_o1_110a_0_34_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_daew7)
       (not_occupied seg_o1_110b_0_60) (not_occupied seg_o1_110d_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_110a_0_34))
       (not_occupied seg_o1_110a_0_34) (not (at-segment ?a seg_o1_110a_0_34))
       (occupied seg_o1_110c_0_34) (not (not_occupied seg_o1_110c_0_34))
       (blocked seg_o1_110c_0_34 ?a) (not (not_blocked seg_o1_110c_0_34 ?a))
       (at-segment ?a seg_o1_110c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_109c_0_34 ?a))
       (not_blocked seg_o1_109c_0_34 ?a) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a)) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action
  ugly2230ugly920ugly111ugly157ugly513startup_seg_n_a9a10c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10c_0_75)
       (not_occupied seg_n_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10b_0_75 ?a)
       (not (not_blocked seg_n_a9a10b_0_75 ?a))))
 (:action ugly2231ugly752ugly290ugly276ugly288park_seg_p112_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p112_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p112_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c3b_0_60 ?a)) (not_blocked seg_o1_c3b_0_60 ?a)))
 (:action
  ugly2232ugly307ugly815ugly190ugly125startup_seg_w1_163b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163b_0_45)
       (not_occupied seg_p163_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p163_0_75 ?a)
       (not (not_blocked seg_p163_0_75 ?a))))
 (:action
  ugly2233ugly776ugly850ugly623ugly79startup_seg_w1_163b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163b_0_45)
       (not_occupied seg_w1_163a_0_34) (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action
  ugly2234ugly781ugly428ugly431ugly874move_seg_n_n2a4b_0_75_seg_n_n2a4a_0_70_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4b_0_75) (not_occupied seg_n_n2a4a_0_70)
       (not_blocked seg_n_n2a4a_0_70 airplane_cfbeg)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2a4b_0_75))
       (not_occupied seg_n_n2a4b_0_75) (not (at-segment ?a seg_n_n2a4b_0_75))
       (occupied seg_n_n2a4a_0_70) (not (not_occupied seg_n_n2a4a_0_70))
       (blocked seg_n_n2a4a_0_70 ?a) (not (not_blocked seg_n_n2a4a_0_70 ?a))
       (at-segment ?a seg_n_n2a4a_0_70) (not (blocked seg_n_n2a4c_0_75 ?a))
       (not_blocked seg_n_n2a4c_0_75 ?a)))
 (:action
  ugly2235ugly342ugly762ugly323ugly467startup_seg_p107_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p107_0_76)
       (not_occupied seg_o1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a))))
 (:action
  ugly2236ugly225ugly885ugly820ugly876startup_seg_n_a9a10g_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10g_0_75)
       (not_occupied seg_n_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10f_0_75 ?a)
       (not (not_blocked seg_n_a9a10f_0_75 ?a))))
 (:action
  ugly2237ugly351ugly630ugly204ugly701startup_seg_o1_116c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116c_0_34)
       (not_occupied seg_o1_116a_0_34) (not_occupied seg_o1_116b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action ugly2238ugly267ugly926ugly931ugly254park_seg_p151_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p151_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p151_0_75) (not (is-moving ?a))))
 (:action ugly2239ugly48ugly916ugly909ugly217startup_seg_p132_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p132_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly2240ugly825ugly27ugly480ugly363move_seg_w1_c2c_0_34_seg_w1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c2c_0_34) (not_occupied seg_w1_c2a_0_60)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c2a_0_60 airplane_daew7)
       (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_c2c_0_34))
       (not_occupied seg_w1_c2c_0_34) (not (at-segment ?a seg_w1_c2c_0_34))
       (occupied seg_w1_c2a_0_60) (not (not_occupied seg_w1_c2a_0_60))
       (blocked seg_w1_c2a_0_60 ?a) (not (not_blocked seg_w1_c2a_0_60 ?a))
       (at-segment ?a seg_w1_c2a_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_151a_0_34 ?a))
       (not_blocked seg_w1_151a_0_34 ?a) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action
  ugly2241ugly196ugly750ugly80ugly704startup_seg_o1_111b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111b_0_60)
       (not_occupied seg_p111_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p111_0_76 ?a)
       (not (not_blocked seg_p111_0_76 ?a))))
 (:action
  ugly2242ugly453ugly334ugly842ugly344move_seg_w1_143c_0_60_seg_w1_143a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143c_0_60) (not_occupied seg_w1_143a_0_34)
       (not_blocked seg_w1_143a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_143a_0_34 airplane_daew7)
       (not_occupied seg_w1_143b_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_143c_0_60))
       (not_occupied seg_w1_143c_0_60) (not (at-segment ?a seg_w1_143c_0_60))
       (occupied seg_w1_143a_0_34) (not (not_occupied seg_w1_143a_0_34))
       (blocked seg_w1_143a_0_34 ?a) (not (not_blocked seg_w1_143a_0_34 ?a))
       (at-segment ?a seg_w1_143a_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_c2a_0_60 ?a))
       (not_blocked seg_w1_c2a_0_60 ?a) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a))))
 (:action
  ugly2243ugly598ugly61ugly357ugly261move_seg_o1_118b_0_60_seg_o1_118c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118b_0_60) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_daew7)
       (not_occupied seg_o1_118a_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_118b_0_60))
       (not_occupied seg_o1_118b_0_60) (not (at-segment ?a seg_o1_118b_0_60))
       (occupied seg_o1_118c_0_34) (not (not_occupied seg_o1_118c_0_34))
       (blocked seg_o1_118c_0_34 ?a) (not (not_blocked seg_o1_118c_0_34 ?a))
       (at-segment ?a seg_o1_118c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p118_0_76 ?a))
       (not_blocked seg_p118_0_76 ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a))))
 (:action
  ugly2244ugly104ugly369ugly309ugly396move_seg_n_n2a4e_0_75_seg_n_n2a4d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4e_0_75) (not_occupied seg_n_n2a4d_0_75)
       (not_blocked seg_n_n2a4d_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2a4e_0_75))
       (not_occupied seg_n_n2a4e_0_75) (not (at-segment ?a seg_n_n2a4e_0_75))
       (occupied seg_n_n2a4d_0_75) (not (not_occupied seg_n_n2a4d_0_75))
       (blocked seg_n_n2a4d_0_75 ?a) (not (not_blocked seg_n_n2a4d_0_75 ?a))
       (at-segment ?a seg_n_n2a4d_0_75) (not (blocked seg_n_a4c_0_60 ?a))
       (not_blocked seg_n_a4c_0_60 ?a)))
 (:action
  ugly2245ugly171ugly685ugly525ugly234startup_seg_p134_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p134_0_75)
       (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action
  ugly2246ugly916ugly909ugly217ugly550startup_seg_w1_c3c_0_48_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3c_0_48)
       (not_occupied seg_w1_c3a_0_34) (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action
  ugly2247ugly777ugly97ugly40ugly435startup_seg_w1_142b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142b_0_45)
       (not_occupied seg_w1_142a_0_34) (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action
  ugly2248ugly674ugly296ugly833ugly696startup_seg_o1_c1a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1a_0_60)
       (not_occupied seg_p101_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p101_0_76 ?a)
       (not (not_blocked seg_p101_0_76 ?a))))
 (:action
  ugly2249ugly46ugly222ugly277ugly619startup_seg_m_a3a4a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4a_0_75)
       (not_occupied seg_m_a3a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4b_0_75 ?a)
       (not (not_blocked seg_m_a3a4b_0_75 ?a))))
 (:action
  ugly2250ugly811ugly223ugly96ugly803startup_seg_n_a4a7c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7c_0_75)
       (not_occupied seg_n_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7b_0_75 ?a)
       (not (not_blocked seg_n_a4a7b_0_75 ?a))))
 (:action
  ugly2251ugly832ugly734ugly793ugly560startup_seg_m_a4a7e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7e_0_75)
       (not_occupied seg_m_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7d_0_75 ?a)
       (not (not_blocked seg_m_a4a7d_0_75 ?a))))
 (:action
  ugly2252ugly522ugly514ugly726ugly174move_seg_o1_117a_0_34_seg_o1_117c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_daew7)
       (not_occupied seg_o1_117b_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_117a_0_34))
       (not_occupied seg_o1_117a_0_34) (not (at-segment ?a seg_o1_117a_0_34))
       (occupied seg_o1_117c_0_34) (not (not_occupied seg_o1_117c_0_34))
       (blocked seg_o1_117c_0_34 ?a) (not (not_blocked seg_o1_117c_0_34 ?a))
       (at-segment ?a seg_o1_117c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_116c_0_34 ?a))
       (not_blocked seg_o1_116c_0_34 ?a) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a))))
 (:action ugly2253ugly866ugly16ugly65ugly845park_seg_p132_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p132_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p132_0_75) (not (is-moving ?a))))
 (:action
  ugly2254ugly372ugly411ugly632ugly44startup_seg_m_a3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3b_0_60)
       (not_occupied seg_m_a3a4a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4a_0_75 ?a)
       (not (not_blocked seg_m_a3a4a_0_75 ?a))))
 (:action
  ugly2255ugly695ugly386ugly563ugly87move_seg_w1_154b_0_45_seg_w1_154c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154b_0_45) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_daew7)
       (not_occupied seg_w1_154a_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_154b_0_45))
       (not_occupied seg_w1_154b_0_45) (not (at-segment ?a seg_w1_154b_0_45))
       (occupied seg_w1_154c_0_34) (not (not_occupied seg_w1_154c_0_34))
       (blocked seg_w1_154c_0_34 ?a) (not (not_blocked seg_w1_154c_0_34 ?a))
       (at-segment ?a seg_w1_154c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p154_0_75 ?a))
       (not_blocked seg_p154_0_75 ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a))))
 (:action
  ugly2256ugly639ugly733ugly147ugly561move_seg_n_n2a4a_0_70_seg_n_n2a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4a_0_70) (not_occupied seg_n_n2a_0_60)
       (not_blocked seg_n_n2a_0_60 airplane_cfbeg)
       (not_blocked seg_n_n2a_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2a4a_0_70))
       (not_occupied seg_n_n2a4a_0_70) (not (at-segment ?a seg_n_n2a4a_0_70))
       (occupied seg_n_n2a_0_60) (not (not_occupied seg_n_n2a_0_60))
       (blocked seg_n_n2a_0_60 ?a) (not (not_blocked seg_n_n2a_0_60 ?a))
       (at-segment ?a seg_n_n2a_0_60) (not (blocked seg_n_n2a4b_0_75 ?a))
       (not_blocked seg_n_n2a4b_0_75 ?a)))
 (:action
  ugly2257ugly817ugly698ugly469ugly716startup_seg_w1_163c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163c_0_34)
       (not_occupied seg_w1_164a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a))))
 (:action
  ugly2258ugly222ugly277ugly619ugly692startup_seg_n_n2a4e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4e_0_75)
       (not_occupied seg_n_n2a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4d_0_75 ?a)
       (not (not_blocked seg_n_n2a4d_0_75 ?a))))
 (:action
  ugly2259ugly867ugly786ugly295ugly894move_seg_o1_108a_0_34_seg_o1_108d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_daew7)
       (not_occupied seg_o1_108b_0_60) (not_occupied seg_o1_108c_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_108a_0_34))
       (not_occupied seg_o1_108a_0_34) (not (at-segment ?a seg_o1_108a_0_34))
       (occupied seg_o1_108d_0_45) (not (not_occupied seg_o1_108d_0_45))
       (blocked seg_o1_108d_0_45 ?a) (not (not_blocked seg_o1_108d_0_45 ?a))
       (at-segment ?a seg_o1_108d_0_45) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_c2c_0_34 ?a))
       (not_blocked seg_o1_c2c_0_34 ?a) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a)) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a))))
 (:action
  ugly2260ugly477ugly822ugly52ugly509startup_seg_w1_163a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163a_0_34)
       (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action
  ugly2261ugly706ugly953ugly211ugly160startup_seg_n_a9a10g_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10g_0_75)
       (not_occupied seg_n_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10b_0_60 ?a)
       (not (not_blocked seg_n_a10b_0_60 ?a))))
 (:action
  ugly2262ugly597ugly559ugly927ugly175move_seg_w1_154c_0_34_seg_w1_154a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154c_0_34) (not_occupied seg_w1_154a_0_34)
       (not_blocked seg_w1_154a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154a_0_34 airplane_daew7)
       (not_occupied seg_w1_154b_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_154c_0_34))
       (not_occupied seg_w1_154c_0_34) (not (at-segment ?a seg_w1_154c_0_34))
       (occupied seg_w1_154a_0_34) (not (not_occupied seg_w1_154a_0_34))
       (blocked seg_w1_154a_0_34 ?a) (not (not_blocked seg_w1_154a_0_34 ?a))
       (at-segment ?a seg_w1_154a_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_c3a_0_34 ?a))
       (not_blocked seg_w1_c3a_0_34 ?a) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action
  ugly2263ugly857ugly653ugly547ugly404move_seg_w1_142c_0_34_seg_w1_142a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142c_0_34) (not_occupied seg_w1_142a_0_34)
       (not_blocked seg_w1_142a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142a_0_34 airplane_daew7)
       (not_occupied seg_w1_142b_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_142c_0_34))
       (not_occupied seg_w1_142c_0_34) (not (at-segment ?a seg_w1_142c_0_34))
       (occupied seg_w1_142a_0_34) (not (not_occupied seg_w1_142a_0_34))
       (blocked seg_w1_142a_0_34 ?a) (not (not_blocked seg_w1_142a_0_34 ?a))
       (at-segment ?a seg_w1_142a_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_143a_0_34 ?a))
       (not_blocked seg_w1_143a_0_34 ?a) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a))))
 (:action
  ugly2264ugly469ugly716ugly440ugly346move_seg_o1_103b_0_60_seg_p103_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103b_0_60) (not_occupied seg_p103_0_76)
       (not_blocked seg_p103_0_76 airplane_cfbeg)
       (not_blocked seg_p103_0_76 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_103b_0_60))
       (not_occupied seg_o1_103b_0_60) (not (at-segment ?a seg_o1_103b_0_60))
       (occupied seg_p103_0_76) (not (not_occupied seg_p103_0_76))
       (blocked seg_p103_0_76 ?a) (not (not_blocked seg_p103_0_76 ?a))
       (at-segment ?a seg_p103_0_76) (not (blocked seg_o1_103a_0_34 ?a))
       (not_blocked seg_o1_103a_0_34 ?a) (not (blocked seg_o1_103c_0_34 ?a))
       (not_blocked seg_o1_103c_0_34 ?a)))
 (:action
  ugly2265ugly137ugly776ugly850ugly623move_seg_w1_141a_0_34_seg_w1_141b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_141b_0_45)
       (not_blocked seg_w1_141b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_141b_0_45 airplane_daew7)
       (not_occupied seg_w1_141c_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_141a_0_34))
       (not_occupied seg_w1_141a_0_34) (not (at-segment ?a seg_w1_141a_0_34))
       (occupied seg_w1_141b_0_45) (not (not_occupied seg_w1_141b_0_45))
       (blocked seg_w1_141b_0_45 ?a) (not (not_blocked seg_w1_141b_0_45 ?a))
       (at-segment ?a seg_w1_141b_0_45) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_c1c_0_34 ?a))
       (not_blocked seg_w1_c1c_0_34 ?a) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly2266ugly517ugly654ugly271ugly43startup_seg_w1_153a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153a_0_34)
       (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action
  ugly2267ugly508ugly808ugly416ugly408startup_seg_w1_c1a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1a_0_60)
       (not_occupied seg_n1_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_0_108 ?a)
       (not (not_blocked seg_n1_0_108 ?a))))
 (:action
  ugly2268ugly849ugly132ugly91ugly427startup_seg_o1_c2c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2c_0_34)
       (not_occupied seg_o1_108a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a))))
 (:action
  ugly2269ugly643ugly586ugly878ugly359startup_seg_o1_102b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102b_0_60)
       (not_occupied seg_p102_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p102_0_76 ?a)
       (not (not_blocked seg_p102_0_76 ?a))))
 (:action ugly2270ugly535ugly7ugly318ugly130startup_seg_m_a8a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a_0_60)
       (not_occupied seg_m_a8b_0_60) (not_occupied seg_m_a8c_0_60)
       (not_occupied seg_m_a8d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8b_0_60 ?a)
       (not (not_blocked seg_m_a8b_0_60 ?a)) (blocked seg_m_a8c_0_60 ?a)
       (not (not_blocked seg_m_a8c_0_60 ?a)) (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))))
 (:action
  ugly2271ugly6ugly185ugly929ugly699startup_seg_w1_154a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154a_0_34)
       (not_occupied seg_w1_154b_0_45) (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action
  ugly2272ugly24ugly210ugly813ugly206startup_seg_o1_118a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118a_0_34)
       (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action
  ugly2273ugly327ugly907ugly163ugly134startup_seg_08l_a3b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a3b_0_161_245)
       (not_occupied seg_a3_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_a_0_158_647 ?a)
       (not (not_blocked seg_a3_a_0_158_647 ?a))))
 (:action
  ugly2274ugly853ugly287ugly109ugly417startup_seg_n_a8a9b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9b_0_75)
       (not_occupied seg_n_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9c_0_75 ?a)
       (not (not_blocked seg_n_a8a9c_0_75 ?a))))
 (:action
  ugly2275ugly444ugly365ugly208ugly923move_seg_n_a3c_0_60_seg_n_a3d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a3c_0_60) (not_occupied seg_n_a3d_0_60)
       (not_blocked seg_n_a3d_0_60 airplane_cfbeg)
       (not_blocked seg_n_a3d_0_60 airplane_daew7)
       (not_occupied seg_n_a3a_0_60) (not_occupied seg_n_a3b_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a3c_0_60))
       (not_occupied seg_n_a3c_0_60) (not (at-segment ?a seg_n_a3c_0_60))
       (occupied seg_n_a3d_0_60) (not (not_occupied seg_n_a3d_0_60))
       (blocked seg_n_a3d_0_60 ?a) (not (not_blocked seg_n_a3d_0_60 ?a))
       (at-segment ?a seg_n_a3d_0_60) (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n1_0_108 ?a)) (not_blocked seg_n1_0_108 ?a)
       (blocked seg_n_a3a_0_60 ?a) (not (not_blocked seg_n_a3a_0_60 ?a))
       (blocked seg_n_a3b_0_60 ?a) (not (not_blocked seg_n_a3b_0_60 ?a))))
 (:action
  ugly2276ugly875ugly518ugly810ugly938startup_seg_n_a9a10f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10f_0_75)
       (not_occupied seg_n_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10e_0_75 ?a)
       (not (not_blocked seg_n_a9a10e_0_75 ?a))))
 (:action ugly2277ugly791ugly299ugly481ugly862park_seg_p161_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p161_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p161_0_75) (not (is-moving ?a))))
 (:action
  ugly2278ugly111ugly157ugly513ugly935startup_seg_p104_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p104_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly2279ugly259ugly582ugly307ugly815move_seg_o1_103b_0_60_seg_o1_103c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103b_0_60) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_daew7)
       (not_occupied seg_o1_103a_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_103b_0_60))
       (not_occupied seg_o1_103b_0_60) (not (at-segment ?a seg_o1_103b_0_60))
       (occupied seg_o1_103c_0_34) (not (not_occupied seg_o1_103c_0_34))
       (blocked seg_o1_103c_0_34 ?a) (not (not_blocked seg_o1_103c_0_34 ?a))
       (at-segment ?a seg_o1_103c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p103_0_76 ?a))
       (not_blocked seg_p103_0_76 ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a))))
 (:action ugly2280ugly115ugly857ugly653ugly547park_seg_p154_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p154_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p154_0_75) (not (is-moving ?a))))
 (:action
  ugly2281ugly249ugly245ugly49ugly405startup_seg_m_a4a_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a_0_120_934)
       (not_occupied seg_a4_b_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_0_79_7559 ?a)
       (not (not_blocked seg_a4_b_0_79_7559 ?a))))
 (:action
  ugly2282ugly303ugly429ugly161ugly260startup_seg_m_a3a4e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4e_0_75)
       (not_occupied seg_m_a3a4f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4f_0_115 ?a)
       (not (not_blocked seg_m_a3a4f_0_115 ?a))))
 (:action
  ugly2283ugly492ugly293ugly711ugly888startup_seg_p109_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p109_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly2284ugly226ugly523ugly257ugly179startup_seg_m_a9d_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9d_0_120_934)
       (not_occupied seg_a9_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_b_0_159_512 ?a)
       (not (not_blocked seg_a9_b_0_159_512 ?a))))
 (:action
  ugly2285ugly579ugly679ugly872ugly546move_seg_w1_164b_0_45_seg_w1_164c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164b_0_45) (not_occupied seg_w1_164c_0_34)
       (not_blocked seg_w1_164c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164c_0_34 airplane_daew7)
       (not_occupied seg_w1_164a_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_164b_0_45))
       (not_occupied seg_w1_164b_0_45) (not (at-segment ?a seg_w1_164b_0_45))
       (occupied seg_w1_164c_0_34) (not (not_occupied seg_w1_164c_0_34))
       (blocked seg_w1_164c_0_34 ?a) (not (not_blocked seg_w1_164c_0_34 ?a))
       (at-segment ?a seg_w1_164c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p164_0_75 ?a))
       (not_blocked seg_p164_0_75 ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a))))
 (:action
  ugly2286ugly158ugly247ugly600ugly437startup_seg_w1_152b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152b_0_45)
       (not_occupied seg_p152_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p152_0_75 ?a)
       (not (not_blocked seg_p152_0_75 ?a))))
 (:action
  ugly2287ugly755ugly77ugly835ugly506startup_seg_m_a9b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9b_0_60)
       (not_occupied seg_n_a9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a))))
 (:action
  ugly2288ugly677ugly168ugly393ugly843move_seg_o1_118c_0_34_seg_o1_c4a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118c_0_34) (not_occupied seg_o1_c4a_0_34)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c4a_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_118c_0_34))
       (not_occupied seg_o1_118c_0_34) (not (at-segment ?a seg_o1_118c_0_34))
       (occupied seg_o1_c4a_0_34) (not (not_occupied seg_o1_c4a_0_34))
       (blocked seg_o1_c4a_0_34 ?a) (not (not_blocked seg_o1_c4a_0_34 ?a))
       (at-segment ?a seg_o1_c4a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_118a_0_34 ?a))
       (not_blocked seg_o1_118a_0_34 ?a) (not (blocked seg_o1_118b_0_60 ?a))
       (not_blocked seg_o1_118b_0_60 ?a)))
 (:action
  ugly2289ugly129ugly158ugly247ugly600startup_seg_w1_163a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163a_0_34)
       (not_occupied seg_w1_163b_0_45) (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action
  ugly2290ugly778ugly458ugly911ugly430move_seg_o1_108d_0_45_seg_p131_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_p131_0_75)
       (not_blocked seg_p131_0_75 airplane_cfbeg)
       (not_blocked seg_p131_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_108d_0_45))
       (not_occupied seg_o1_108d_0_45) (not (at-segment ?a seg_o1_108d_0_45))
       (occupied seg_p131_0_75) (not (not_occupied seg_p131_0_75))
       (blocked seg_p131_0_75 ?a) (not (not_blocked seg_p131_0_75 ?a))
       (at-segment ?a seg_p131_0_75) (not (blocked seg_o1_108a_0_34 ?a))
       (not_blocked seg_o1_108a_0_34 ?a) (not (blocked seg_o1_108b_0_60 ?a))
       (not_blocked seg_o1_108b_0_60 ?a) (not (blocked seg_o1_108c_0_34 ?a))
       (not_blocked seg_o1_108c_0_34 ?a)))
 (:action
  ugly2291ugly950ugly57ugly807ugly317startup_seg_a3_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_a_0_158_647)
       (not_occupied seg_a3_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_b_0_159_512 ?a)
       (not (not_blocked seg_a3_b_0_159_512 ?a))))
 (:action
  ugly2292ugly406ugly649ugly528ugly442startup_seg_n_a4a7d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7d_0_75)
       (not_occupied seg_n_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7e_0_75 ?a)
       (not (not_blocked seg_n_a4a7e_0_75 ?a))))
 (:action
  ugly2293ugly703ugly647ugly316ugly159move_seg_w1_151a_0_34_seg_w1_151b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_151b_0_45)
       (not_blocked seg_w1_151b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_151b_0_45 airplane_daew7)
       (not_occupied seg_w1_151c_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_151a_0_34))
       (not_occupied seg_w1_151a_0_34) (not (at-segment ?a seg_w1_151a_0_34))
       (occupied seg_w1_151b_0_45) (not (not_occupied seg_w1_151b_0_45))
       (blocked seg_w1_151b_0_45 ?a) (not (not_blocked seg_w1_151b_0_45 ?a))
       (at-segment ?a seg_w1_151b_0_45) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_c2c_0_34 ?a))
       (not_blocked seg_w1_c2c_0_34 ?a) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action ugly2294ugly66ugly212ugly564ugly782startup_seg_a10_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_0_80)
       (not_occupied seg_a10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_1_0_80 ?a)
       (not (not_blocked seg_a10_1_0_80 ?a))))
 (:action
  ugly2295ugly459ugly297ugly799ugly63startup_seg_a2_c_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_c_0_100)
       (not_occupied seg_n_a2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a_0_60 ?a)
       (not (not_blocked seg_n_a2a_0_60 ?a))))
 (:action
  ugly2296ugly335ugly492ugly293ugly711startup_seg_n_a7c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7c_0_60)
       (not_occupied seg_n_a4a7f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7f_0_75 ?a)
       (not (not_blocked seg_n_a4a7f_0_75 ?a))))
 (:action
  ugly2297ugly271ugly43ugly388ugly485startup_seg_n_a9a10f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10f_0_75)
       (not_occupied seg_n_a9a10g_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10g_0_75 ?a)
       (not (not_blocked seg_n_a9a10g_0_75 ?a))))
 (:action
  ugly2298ugly27ugly480ugly363ugly103startup_seg_m_a8c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8c_0_60)
       (not_occupied seg_m_a6a8f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8f_0_115 ?a)
       (not (not_blocked seg_m_a6a8f_0_115 ?a))))
 (:action
  ugly2299ugly369ugly309ugly396ugly67startup_seg_w1_141b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141b_0_45)
       (not_occupied seg_p141_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p141_0_75 ?a)
       (not (not_blocked seg_p141_0_75 ?a))))
 (:action
  ugly2300ugly466ugly637ugly659ugly336startup_seg_p118_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p118_0_76)
       (not_occupied seg_o1_118b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action
  ugly2301ugly302ugly652ugly925ugly327startup_seg_n_a6a8c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8c_0_75)
       (not_occupied seg_n_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8b_0_75 ?a)
       (not (not_blocked seg_n_a6a8b_0_75 ?a))))
 (:action
  ugly2302ugly863ugly203ugly723ugly767startup_seg_p119_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p119_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly2303ugly336ugly635ugly678ugly280startup_seg_n_n2a4a_0_70_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4a_0_70)
       (not_occupied seg_n_n2a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4b_0_75 ?a)
       (not (not_blocked seg_n_n2a4b_0_75 ?a))))
 (:action
  ugly2304ugly531ugly541ugly493ugly108move_seg_n_a6a8a_0_115_seg_n_a6b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8a_0_115) (not_occupied seg_n_a6b_0_60)
       (not_blocked seg_n_a6b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a6b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8a_0_115))
       (not_occupied seg_n_a6a8a_0_115) (not (at-segment ?a seg_n_a6a8a_0_115))
       (occupied seg_n_a6b_0_60) (not (not_occupied seg_n_a6b_0_60))
       (blocked seg_n_a6b_0_60 ?a) (not (not_blocked seg_n_a6b_0_60 ?a))
       (at-segment ?a seg_n_a6b_0_60) (not (blocked seg_n_a6a8b_0_75 ?a))
       (not_blocked seg_n_a6a8b_0_75 ?a)))
 (:action
  ugly2305ugly110ugly682ugly705ugly101startup_seg_o1_110c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110c_0_34)
       (not_occupied seg_o1_111a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a))))
 (:action
  ugly2306ugly921ugly936ugly419ugly367startup_seg_o1_115b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115b_0_60)
       (not_occupied seg_p115_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p115_0_76 ?a)
       (not (not_blocked seg_p115_0_76 ?a))))
 (:action
  ugly2307ugly471ugly677ugly168ugly393startup_seg_n_a2a3d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3d_0_75)
       (not_occupied seg_n_a2a3c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3c_0_75 ?a)
       (not (not_blocked seg_n_a2a3c_0_75 ?a))))
 (:action
  ugly2308ugly94ugly306ugly898ugly315move_seg_n_a2a3d_0_75_seg_n_a2a3c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3d_0_75) (not_occupied seg_n_a2a3c_0_75)
       (not_blocked seg_n_a2a3c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3d_0_75))
       (not_occupied seg_n_a2a3d_0_75) (not (at-segment ?a seg_n_a2a3d_0_75))
       (occupied seg_n_a2a3c_0_75) (not (not_occupied seg_n_a2a3c_0_75))
       (blocked seg_n_a2a3c_0_75 ?a) (not (not_blocked seg_n_a2a3c_0_75 ?a))
       (at-segment ?a seg_n_a2a3c_0_75) (not (blocked seg_n_a2a3e_0_75 ?a))
       (not_blocked seg_n_a2a3e_0_75 ?a)))
 (:action
  ugly2309ugly450ugly229ugly489ugly823move_seg_o1_c1a_0_60_seg_p101_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_p101_0_76)
       (not_blocked seg_p101_0_76 airplane_cfbeg)
       (not_blocked seg_p101_0_76 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c1a_0_60))
       (not_occupied seg_o1_c1a_0_60) (not (at-segment ?a seg_o1_c1a_0_60))
       (occupied seg_p101_0_76) (not (not_occupied seg_p101_0_76))
       (blocked seg_p101_0_76 ?a) (not (not_blocked seg_p101_0_76 ?a))
       (at-segment ?a seg_p101_0_76) (not (blocked seg_o1_c1b_0_34 ?a))
       (not_blocked seg_o1_c1b_0_34 ?a) (not (blocked seg_o1_c1c_0_80 ?a))
       (not_blocked seg_o1_c1c_0_80 ?a)))
 (:action
  ugly2310ugly544ugly605ugly140ugly893startup_seg_08l_a7c_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a7c_0_161_245)
       (not_occupied seg_08l_a7a_0_80) (not_occupied seg_08l_a7b_0_161_245)
       (not_occupied seg_08l_a7d_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a7a_0_80 ?a)
       (not (not_blocked seg_08l_a7a_0_80 ?a))
       (blocked seg_08l_a7b_0_161_245 ?a)
       (not (not_blocked seg_08l_a7b_0_161_245 ?a))
       (blocked seg_08l_a7d_0_80 ?a) (not (not_blocked seg_08l_a7d_0_80 ?a))))
 (:action
  ugly2311ugly51ugly524ugly896ugly901startup_seg_o1_115b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115b_0_60)
       (not_occupied seg_o1_115a_0_34) (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action
  ugly2312ugly653ugly547ugly404ugly85move_seg_c3_b_0_80_seg_o1_c3d_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c3_b_0_80) (not_occupied seg_o1_c3d_0_60)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3d_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c3_b_0_80))
       (not_occupied seg_c3_b_0_80) (not (at-segment ?a seg_c3_b_0_80))
       (occupied seg_o1_c3d_0_60) (not (not_occupied seg_o1_c3d_0_60))
       (blocked seg_o1_c3d_0_60 ?a) (not (not_blocked seg_o1_c3d_0_60 ?a))
       (at-segment ?a seg_o1_c3d_0_60) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_c3_a_0_80 ?a))
       (not_blocked seg_c3_a_0_80 ?a)))
 (:action
  ugly2313ugly939ugly409ugly94ugly306startup_seg_n_a6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6b_0_60)
       (not_occupied seg_n_a6a8a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8a_0_115 ?a)
       (not (not_blocked seg_n_a6a8a_0_115 ?a))))
 (:action
  ugly2314ugly858ugly216ugly718ugly655move_seg_w1_151a_0_34_seg_w1_c2c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_c2c_0_34)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c2c_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_151a_0_34))
       (not_occupied seg_w1_151a_0_34) (not (at-segment ?a seg_w1_151a_0_34))
       (occupied seg_w1_c2c_0_34) (not (not_occupied seg_w1_c2c_0_34))
       (blocked seg_w1_c2c_0_34 ?a) (not (not_blocked seg_w1_c2c_0_34 ?a))
       (at-segment ?a seg_w1_c2c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_151b_0_45 ?a))
       (not_blocked seg_w1_151b_0_45 ?a) (not (blocked seg_w1_151c_0_34 ?a))
       (not_blocked seg_w1_151c_0_34 ?a)))
 (:action ugly2315ugly609ugly19ugly26ugly922park_seg_p104_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p104_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p104_0_76) (not (is-moving ?a))))
 (:action
  ugly2316ugly228ugly328ugly256ugly801move_seg_o1_111a_0_34_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_daew7)
       (not_occupied seg_o1_111b_0_60) (not_occupied seg_o1_111d_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_111a_0_34))
       (not_occupied seg_o1_111a_0_34) (not (at-segment ?a seg_o1_111a_0_34))
       (occupied seg_o1_111c_0_34) (not (not_occupied seg_o1_111c_0_34))
       (blocked seg_o1_111c_0_34 ?a) (not (not_blocked seg_o1_111c_0_34 ?a))
       (at-segment ?a seg_o1_111c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_110c_0_34 ?a))
       (not_blocked seg_o1_110c_0_34 ?a) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a)) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action
  ugly2317ugly575ugly244ugly744ugly361move_seg_o1_115a_0_34_seg_o1_115b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_115b_0_60)
       (not_blocked seg_o1_115b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_115b_0_60 airplane_daew7)
       (not_occupied seg_o1_115c_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_115a_0_34))
       (not_occupied seg_o1_115a_0_34) (not (at-segment ?a seg_o1_115a_0_34))
       (occupied seg_o1_115b_0_60) (not (not_occupied seg_o1_115b_0_60))
       (blocked seg_o1_115b_0_60 ?a) (not (not_blocked seg_o1_115b_0_60 ?a))
       (at-segment ?a seg_o1_115b_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_c3c_0_48 ?a))
       (not_blocked seg_o1_c3c_0_48 ?a) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action
  ugly2318ugly76ugly484ugly763ugly531startup_seg_o1_109d_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109d_0_45)
       (not_occupied seg_o1_109a_0_34) (not_occupied seg_o1_109b_0_60)
       (not_occupied seg_o1_109c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a)) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a)) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a))))
 (:action ugly2319ugly242ugly795ugly555ugly348park_seg_p152_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p152_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p152_0_75) (not (is-moving ?a))))
 (:action
  ugly2320ugly564ugly782ugly827ugly186startup_seg_o1_c4a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4a_0_34)
       (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action
  ugly2321ugly210ugly813ugly206ugly626startup_seg_o1_116a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116a_0_34)
       (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action ugly2322ugly497ugly39ugly9ugly603startup_seg_m_a6c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6c_0_60)
       (not_occupied seg_m_a6a_0_60) (not_occupied seg_m_a6b_0_60)
       (not_occupied seg_m_a6d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a_0_60 ?a)
       (not (not_blocked seg_m_a6a_0_60 ?a)) (blocked seg_m_a6b_0_60 ?a)
       (not (not_blocked seg_m_a6b_0_60 ?a)) (blocked seg_m_a6d_0_120_934 ?a)
       (not (not_blocked seg_m_a6d_0_120_934 ?a))))
 (:action
  ugly2323ugly155ugly294ugly534ugly572startup_seg_m_a9a10f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10f_0_75)
       (not_occupied seg_m_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10e_0_75 ?a)
       (not (not_blocked seg_m_a9a10e_0_75 ?a))))
 (:action
  ugly2324ugly869ugly486ugly933ugly145startup_seg_m_a7a6a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6a_0_75)
       (not_occupied seg_m_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6b_0_75 ?a)
       (not (not_blocked seg_m_a7a6b_0_75 ?a))))
 (:action
  ugly2325ugly628ugly809ugly448ugly645move_seg_o1_108b_0_60_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108b_0_60) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_daew7)
       (not_occupied seg_o1_108a_0_34) (not_occupied seg_o1_108d_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_108b_0_60))
       (not_occupied seg_o1_108b_0_60) (not (at-segment ?a seg_o1_108b_0_60))
       (occupied seg_o1_108c_0_34) (not (not_occupied seg_o1_108c_0_34))
       (blocked seg_o1_108c_0_34 ?a) (not (not_blocked seg_o1_108c_0_34 ?a))
       (at-segment ?a seg_o1_108c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_p108_0_76 ?a))
       (not_blocked seg_p108_0_76 ?a) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action
  ugly2326ugly501ugly366ugly758ugly464startup_seg_o1_109b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109b_0_60)
       (not_occupied seg_p109_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p109_0_76 ?a)
       (not (not_blocked seg_p109_0_76 ?a))))
 (:action ugly2327ugly626ugly606ugly92ugly818startup_seg_a2_b_0_90_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_b_0_90)
       (not_occupied seg_a2_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_c_0_100 ?a)
       (not (not_blocked seg_a2_c_0_100 ?a))))
 (:action
  ugly2328ugly323ugly467ugly515ugly625move_seg_w1_141a_0_34_seg_w1_141c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_daew7)
       (not_occupied seg_w1_141b_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_141a_0_34))
       (not_occupied seg_w1_141a_0_34) (not (at-segment ?a seg_w1_141a_0_34))
       (occupied seg_w1_141c_0_34) (not (not_occupied seg_w1_141c_0_34))
       (blocked seg_w1_141c_0_34 ?a) (not (not_blocked seg_w1_141c_0_34 ?a))
       (at-segment ?a seg_w1_141c_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_c1c_0_34 ?a))
       (not_blocked seg_w1_c1c_0_34 ?a) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action
  ugly2329ugly121ugly892ugly738ugly587startup_seg_m_a8d_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8d_0_120_934)
       (not_occupied seg_a8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))))
 (:action
  ugly2330ugly391ugly312ugly13ugly840startup_seg_n_a3b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3b_0_60)
       (not_occupied seg_n_a3a_0_60) (not_occupied seg_n_a3c_0_60)
       (not_occupied seg_n_a3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3a_0_60 ?a)
       (not (not_blocked seg_n_a3a_0_60 ?a)) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a)) (blocked seg_n_a3d_0_60 ?a)
       (not (not_blocked seg_n_a3d_0_60 ?a))))
 (:action ugly2331ugly101ugly554ugly285ugly345park_seg_p163_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p163_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p163_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_163b_0_45 ?a)) (not_blocked seg_w1_163b_0_45 ?a)))
 (:action
  ugly2332ugly949ugly379ugly868ugly875startup_seg_c2_b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_b_0_80)
       (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action
  ugly2333ugly528ugly442ugly880ugly220startup_seg_n_a2a3f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3f_0_115)
       (not_occupied seg_n_a2a3e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3e_0_75 ?a)
       (not (not_blocked seg_n_a2a3e_0_75 ?a))))
 (:action ugly2334ugly208ugly923ugly10ugly34startup_seg_m_a6a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a_0_60)
       (not_occupied seg_m_a6b_0_60) (not_occupied seg_m_a6c_0_60)
       (not_occupied seg_m_a6d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6b_0_60 ?a)
       (not (not_blocked seg_m_a6b_0_60 ?a)) (blocked seg_m_a6c_0_60 ?a)
       (not (not_blocked seg_m_a6c_0_60 ?a)) (blocked seg_m_a6d_0_120_934 ?a)
       (not (not_blocked seg_m_a6d_0_120_934 ?a))))
 (:action ugly2335ugly166ugly662ugly588ugly90startup_seg_p153_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p153_0_75)
       (not_occupied seg_w1_153b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action
  ugly2336ugly563ugly87ugly126ugly602startup_seg_n_a8a9b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9b_0_75)
       (not_occupied seg_n_a8a9a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9a_0_85 ?a)
       (not (not_blocked seg_n_a8a9a_0_85 ?a))))
 (:action
  ugly2337ugly120ugly450ugly229ugly489startup_seg_m_a10b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10b_0_60)
       (not_occupied seg_m_a10a_0_60) (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a)) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action
  ugly2338ugly18ugly192ugly349ugly575move_seg_o1_110c_0_34_seg_o1_110a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_daew7)
       (not_occupied seg_o1_110b_0_60) (not_occupied seg_o1_110d_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_110c_0_34))
       (not_occupied seg_o1_110c_0_34) (not (at-segment ?a seg_o1_110c_0_34))
       (occupied seg_o1_110a_0_34) (not (not_occupied seg_o1_110a_0_34))
       (blocked seg_o1_110a_0_34 ?a) (not (not_blocked seg_o1_110a_0_34 ?a))
       (at-segment ?a seg_o1_110a_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_111a_0_34 ?a))
       (not_blocked seg_o1_111a_0_34 ?a) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a)) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action
  ugly2339ugly714ugly830ugly725ugly660move_seg_w1_141c_0_34_seg_w1_141a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141c_0_34) (not_occupied seg_w1_141a_0_34)
       (not_blocked seg_w1_141a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141a_0_34 airplane_daew7)
       (not_occupied seg_w1_141b_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_141c_0_34))
       (not_occupied seg_w1_141c_0_34) (not (at-segment ?a seg_w1_141c_0_34))
       (occupied seg_w1_141a_0_34) (not (not_occupied seg_w1_141a_0_34))
       (blocked seg_w1_141a_0_34 ?a) (not (not_blocked seg_w1_141a_0_34 ?a))
       (at-segment ?a seg_w1_141a_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_w1_142a_0_34 ?a))
       (not_blocked seg_w1_142a_0_34 ?a) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action ugly2340ugly724ugly279ugly759ugly148park_seg_p143_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p143_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p143_0_75) (not (is-moving ?a))))
 (:action
  ugly2341ugly311ugly167ugly326ugly48startup_seg_n_a8c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8c_0_60)
       (not_occupied seg_n_a6a8f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8f_0_75 ?a)
       (not (not_blocked seg_n_a6a8f_0_75 ?a))))
 (:action
  ugly2342ugly21ugly194ugly444ugly365move_seg_c2_b_0_80_seg_o1_c2d_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c2_b_0_80) (not_occupied seg_o1_c2d_0_60)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2d_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c2_b_0_80))
       (not_occupied seg_c2_b_0_80) (not (at-segment ?a seg_c2_b_0_80))
       (occupied seg_o1_c2d_0_60) (not (not_occupied seg_o1_c2d_0_60))
       (blocked seg_o1_c2d_0_60 ?a) (not (not_blocked seg_o1_c2d_0_60 ?a))
       (at-segment ?a seg_o1_c2d_0_60) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_c2_a_0_80 ?a))
       (not_blocked seg_c2_a_0_80 ?a)))
 (:action
  ugly2343ugly337ugly176ugly391ugly312move_seg_n_a2a3e_0_75_seg_n_a2a3d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3e_0_75) (not_occupied seg_n_a2a3d_0_75)
       (not_blocked seg_n_a2a3d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3e_0_75))
       (not_occupied seg_n_a2a3e_0_75) (not (at-segment ?a seg_n_a2a3e_0_75))
       (occupied seg_n_a2a3d_0_75) (not (not_occupied seg_n_a2a3d_0_75))
       (blocked seg_n_a2a3d_0_75 ?a) (not (not_blocked seg_n_a2a3d_0_75 ?a))
       (at-segment ?a seg_n_a2a3d_0_75) (not (blocked seg_n_a2a3f_0_115 ?a))
       (not_blocked seg_n_a2a3f_0_115 ?a)))
 (:action
  ugly2344ugly43ugly388ugly485ugly940move_seg_w1_162a_0_34_seg_w1_161c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_162a_0_34))
       (not_occupied seg_w1_162a_0_34) (not (at-segment ?a seg_w1_162a_0_34))
       (occupied seg_w1_161c_0_34) (not (not_occupied seg_w1_161c_0_34))
       (blocked seg_w1_161c_0_34 ?a) (not (not_blocked seg_w1_161c_0_34 ?a))
       (at-segment ?a seg_w1_161c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_162b_0_45 ?a))
       (not_blocked seg_w1_162b_0_45 ?a) (not (blocked seg_w1_162c_0_34 ?a))
       (not_blocked seg_w1_162c_0_34 ?a)))
 (:action
  ugly2345ugly746ugly456ugly387ugly331startup_seg_c1_n2b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2b_0_80)
       (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action
  ugly2346ugly518ugly810ugly938ugly941startup_seg_m_a10c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10c_0_60)
       (not_occupied seg_m_a10a_0_60) (not_occupied seg_m_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a)) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a))))
 (:action
  ugly2347ugly332ugly253ugly119ugly230startup_seg_c3_a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_a_0_80)
       (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action
  ugly2348ugly561ugly71ugly832ugly734startup_seg_m_a8a9d_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9d_0_85)
       (not_occupied seg_m_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9c_0_75 ?a)
       (not (not_blocked seg_m_a8a9c_0_75 ?a))))
 (:action
  ugly2349ugly368ugly423ugly241ugly710startup_seg_o1_109d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109d_0_45)
       (not_occupied seg_p132_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p132_0_75 ?a)
       (not (not_blocked seg_p132_0_75 ?a))))
 (:action
  ugly2350ugly686ugly512ugly353ugly418startup_seg_w1_152c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152c_0_34)
       (not_occupied seg_w1_152a_0_34) (not_occupied seg_w1_152b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action
  ugly2351ugly619ugly692ugly869ugly486startup_seg_n_a9a10b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10b_0_75)
       (not_occupied seg_n_a9a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10a_0_80 ?a)
       (not (not_blocked seg_n_a9a10a_0_80 ?a))))
 (:action
  ugly2352ugly139ugly205ugly641ugly709move_seg_08l_a7d_0_80_seg_08l_a7b_0_161_245_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a7d_0_80) (not_occupied seg_08l_a7b_0_161_245)
       (not_blocked seg_08l_a7b_0_161_245 airplane_cfbeg)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daew7)
       (not_occupied seg_08l_a7a_0_80) (not_occupied seg_08l_a7c_0_161_245))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_08l_a7d_0_80))
       (not_occupied seg_08l_a7d_0_80) (not (at-segment ?a seg_08l_a7d_0_80))
       (occupied seg_08l_a7b_0_161_245)
       (not (not_occupied seg_08l_a7b_0_161_245))
       (blocked seg_08l_a7b_0_161_245 ?a)
       (not (not_blocked seg_08l_a7b_0_161_245 ?a))
       (at-segment ?a seg_08l_a7b_0_161_245) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_08l_a6a7_0_450 ?a))
       (not_blocked seg_08l_a6a7_0_450 ?a) (blocked seg_08l_a7a_0_80 ?a)
       (not (not_blocked seg_08l_a7a_0_80 ?a))
       (blocked seg_08l_a7c_0_161_245 ?a)
       (not (not_blocked seg_08l_a7c_0_161_245 ?a))))
 (:action ugly2353ugly74ugly20ugly381ugly672startup_seg_p116_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p116_0_76)
       (not_occupied seg_o1_116b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action
  ugly2354ugly400ugly495ugly596ugly771startup_seg_n_a8a9a_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9a_0_85)
       (not_occupied seg_n_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9b_0_75 ?a)
       (not (not_blocked seg_n_a8a9b_0_75 ?a))))
 (:action ugly2355ugly97ugly40ugly435ugly343startup_seg_m_a3c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3c_0_60)
       (not_occupied seg_n_a3a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3a_0_60 ?a)
       (not (not_blocked seg_n_a3a_0_60 ?a))))
 (:action
  ugly2356ugly179ugly800ugly83ugly3startup_seg_m_a6a8b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8b_0_75)
       (not_occupied seg_m_a6a8a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8a_0_75 ?a)
       (not (not_blocked seg_m_a6a8a_0_75 ?a))))
 (:action
  ugly2357ugly871ugly784ugly737ugly527move_seg_w1_c4a_0_34_seg_w1_164c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c4a_0_34) (not_occupied seg_w1_164c_0_34)
       (not_blocked seg_w1_164c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164c_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_c4a_0_34))
       (not_occupied seg_w1_c4a_0_34) (not (at-segment ?a seg_w1_c4a_0_34))
       (occupied seg_w1_164c_0_34) (not (not_occupied seg_w1_164c_0_34))
       (blocked seg_w1_164c_0_34 ?a) (not (not_blocked seg_w1_164c_0_34 ?a))
       (at-segment ?a seg_w1_164c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_c4b_0_60 ?a))
       (not_blocked seg_w1_c4b_0_60 ?a)))
 (:action
  ugly2358ugly935ugly502ugly434ugly118move_seg_o1_115b_0_60_seg_p115_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115b_0_60) (not_occupied seg_p115_0_76)
       (not_blocked seg_p115_0_76 airplane_cfbeg)
       (not_blocked seg_p115_0_76 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_115b_0_60))
       (not_occupied seg_o1_115b_0_60) (not (at-segment ?a seg_o1_115b_0_60))
       (occupied seg_p115_0_76) (not (not_occupied seg_p115_0_76))
       (blocked seg_p115_0_76 ?a) (not (not_blocked seg_p115_0_76 ?a))
       (at-segment ?a seg_p115_0_76) (not (blocked seg_o1_115a_0_34 ?a))
       (not_blocked seg_o1_115a_0_34 ?a) (not (blocked seg_o1_115c_0_34 ?a))
       (not_blocked seg_o1_115c_0_34 ?a)))
 (:action ugly2359ugly163ugly134ugly656ugly298park_seg_p104_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p104_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p104_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_104b_0_60 ?a)) (not_blocked seg_o1_104b_0_60 ?a)))
 (:action
  ugly2360ugly837ugly552ugly451ugly522startup_seg_p107_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p107_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly2361ugly481ugly862ugly422ugly574move_seg_p133_0_75_seg_o1_110d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p133_0_75) (not_occupied seg_o1_110d_0_45)
       (not_blocked seg_o1_110d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_110d_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p133_0_75))
       (not_occupied seg_p133_0_75) (not (at-segment ?a seg_p133_0_75))
       (occupied seg_o1_110d_0_45) (not (not_occupied seg_o1_110d_0_45))
       (blocked seg_o1_110d_0_45 ?a) (not (not_blocked seg_o1_110d_0_45 ?a))
       (at-segment ?a seg_o1_110d_0_45)))
 (:action
  ugly2362ugly591ugly122ugly340ugly532startup_seg_m_a3c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3c_0_60)
       (not_occupied seg_m_a3a_0_120_934) (not_occupied seg_m_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a)) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a))))
 (:action
  ugly2363ugly483ugly578ugly668ugly305startup_seg_o1_103b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103b_0_60)
       (not_occupied seg_o1_103a_0_34) (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action
  ugly2364ugly526ugly401ugly505ugly496startup_seg_a4_b_0_79_7559_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_0_79_7559)
       (not_occupied seg_m_a4a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a_0_120_934 ?a)
       (not (not_blocked seg_m_a4a_0_120_934 ?a))))
 (:action
  ugly2365ugly32ugly614ugly150ugly459move_seg_o1_117a_0_34_seg_o1_117b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_117b_0_60)
       (not_blocked seg_o1_117b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_117b_0_60 airplane_daew7)
       (not_occupied seg_o1_117c_0_34))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_117a_0_34))
       (not_occupied seg_o1_117a_0_34) (not (at-segment ?a seg_o1_117a_0_34))
       (occupied seg_o1_117b_0_60) (not (not_occupied seg_o1_117b_0_60))
       (blocked seg_o1_117b_0_60 ?a) (not (not_blocked seg_o1_117b_0_60 ?a))
       (at-segment ?a seg_o1_117b_0_60) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_116c_0_34 ?a))
       (not_blocked seg_o1_116c_0_34 ?a) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action
  ugly2366ugly656ugly298ugly501ugly366startup_seg_m_a6a8a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8a_0_75)
       (not_occupied seg_m_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8b_0_75 ?a)
       (not (not_blocked seg_m_a6a8b_0_75 ?a))))
 (:action
  ugly2367ugly801ugly269ugly22ugly414move_seg_n_a6b_0_60_seg_n_a6c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6b_0_60) (not_occupied seg_n_a6c_0_60)
       (not_blocked seg_n_a6c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a6c_0_60 airplane_daew7)
       (not_occupied seg_n_a6a_0_60))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6b_0_60))
       (not_occupied seg_n_a6b_0_60) (not (at-segment ?a seg_n_a6b_0_60))
       (occupied seg_n_a6c_0_60) (not (not_occupied seg_n_a6c_0_60))
       (blocked seg_n_a6c_0_60 ?a) (not (not_blocked seg_n_a6c_0_60 ?a))
       (at-segment ?a seg_n_a6c_0_60) (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n_a6a8a_0_115 ?a)) (not_blocked seg_n_a6a8a_0_115 ?a)
       (blocked seg_n_a6a_0_60 ?a) (not (not_blocked seg_n_a6a_0_60 ?a))))
 (:action
  ugly2368ugly941ugly825ugly27ugly480startup_seg_w1_c2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2b_0_60)
       (not_occupied seg_w1_c2a_0_60) (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a)) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action
  ugly2369ugly933ugly145ugly740ugly768move_seg_p102_0_76_seg_o1_102b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p102_0_76) (not_occupied seg_o1_102b_0_60)
       (not_blocked seg_o1_102b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_102b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p102_0_76))
       (not_occupied seg_p102_0_76) (not (at-segment ?a seg_p102_0_76))
       (occupied seg_o1_102b_0_60) (not (not_occupied seg_o1_102b_0_60))
       (blocked seg_o1_102b_0_60 ?a) (not (not_blocked seg_o1_102b_0_60 ?a))
       (at-segment ?a seg_o1_102b_0_60)))
 (:action
  ugly2370ugly246ugly120ugly450ugly229startup_seg_o1_103c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103c_0_34)
       (not_occupied seg_o1_103a_0_34) (not_occupied seg_o1_103b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action
  ugly2371ugly405ugly706ugly953ugly211move_seg_w1_163b_0_45_seg_p163_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163b_0_45) (not_occupied seg_p163_0_75)
       (not_blocked seg_p163_0_75 airplane_cfbeg)
       (not_blocked seg_p163_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_163b_0_45))
       (not_occupied seg_w1_163b_0_45) (not (at-segment ?a seg_w1_163b_0_45))
       (occupied seg_p163_0_75) (not (not_occupied seg_p163_0_75))
       (blocked seg_p163_0_75 ?a) (not (not_blocked seg_p163_0_75 ?a))
       (at-segment ?a seg_p163_0_75) (not (blocked seg_w1_163a_0_34 ?a))
       (not_blocked seg_w1_163a_0_34 ?a) (not (blocked seg_w1_163c_0_34 ?a))
       (not_blocked seg_w1_163c_0_34 ?a)))
 (:action
  ugly2372ugly324ugly593ugly510ugly228startup_seg_c1_n2c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2c_0_60)
       (not_occupied seg_w1_c1b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a))))
 (:action
  ugly2373ugly198ugly633ugly239ugly106startup_seg_n_a9a10e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10e_0_75)
       (not_occupied seg_n_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10d_0_75 ?a)
       (not (not_blocked seg_n_a9a10d_0_75 ?a))))
 (:action
  ugly2374ugly243ugly503ugly394ugly902move_seg_p116_0_76_seg_o1_116b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p116_0_76) (not_occupied seg_o1_116b_0_60)
       (not_blocked seg_o1_116b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_116b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p116_0_76))
       (not_occupied seg_p116_0_76) (not (at-segment ?a seg_p116_0_76))
       (occupied seg_o1_116b_0_60) (not (not_occupied seg_o1_116b_0_60))
       (blocked seg_o1_116b_0_60 ?a) (not (not_blocked seg_o1_116b_0_60 ?a))
       (at-segment ?a seg_o1_116b_0_60)))
 (:action
  ugly2375ugly326ugly48ugly916ugly909move_seg_o1_108c_0_34_seg_o1_108a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_daew7)
       (not_occupied seg_o1_108b_0_60) (not_occupied seg_o1_108d_0_45))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_108c_0_34))
       (not_occupied seg_o1_108c_0_34) (not (at-segment ?a seg_o1_108c_0_34))
       (occupied seg_o1_108a_0_34) (not (not_occupied seg_o1_108a_0_34))
       (blocked seg_o1_108a_0_34 ?a) (not (not_blocked seg_o1_108a_0_34 ?a))
       (at-segment ?a seg_o1_108a_0_34) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_o1_109a_0_34 ?a))
       (not_blocked seg_o1_109a_0_34 ?a) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action
  ugly2376ugly88ugly28ugly104ugly369move_seg_o1_c4c_0_80_seg_c4_s6a_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4c_0_80) (not_occupied seg_c4_s6a_0_80)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbeg)
       (not_blocked seg_c4_s6a_0_80 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c4c_0_80))
       (not_occupied seg_o1_c4c_0_80) (not (at-segment ?a seg_o1_c4c_0_80))
       (occupied seg_c4_s6a_0_80) (not (not_occupied seg_c4_s6a_0_80))
       (blocked seg_c4_s6a_0_80 ?a) (not (not_blocked seg_c4_s6a_0_80 ?a))
       (at-segment ?a seg_c4_s6a_0_80) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_c4a_0_34 ?a))
       (not_blocked seg_o1_c4a_0_34 ?a) (not (blocked seg_o1_c4b_0_60 ?a))
       (not_blocked seg_o1_c4b_0_60 ?a)))
 (:action
  ugly2377ugly502ugly434ugly118ugly282startup_seg_m_a3a4e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4e_0_75)
       (not_occupied seg_m_a3a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4d_0_75 ?a)
       (not (not_blocked seg_m_a3a4d_0_75 ?a))))
 (:action
  ugly2378ugly322ugly779ugly589ugly777move_seg_p151_0_75_seg_w1_151b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p151_0_75) (not_occupied seg_w1_151b_0_45)
       (not_blocked seg_w1_151b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_151b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p151_0_75))
       (not_occupied seg_p151_0_75) (not (at-segment ?a seg_p151_0_75))
       (occupied seg_w1_151b_0_45) (not (not_occupied seg_w1_151b_0_45))
       (blocked seg_w1_151b_0_45 ?a) (not (not_blocked seg_w1_151b_0_45 ?a))
       (at-segment ?a seg_w1_151b_0_45)))
 (:action
  ugly2379ugly615ugly149ugly947ugly792move_seg_w1_c1c_0_34_seg_w1_141a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c1c_0_34) (not_occupied seg_w1_141a_0_34)
       (not_blocked seg_w1_141a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141a_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_c1c_0_34))
       (not_occupied seg_w1_c1c_0_34) (not (at-segment ?a seg_w1_c1c_0_34))
       (occupied seg_w1_141a_0_34) (not (not_occupied seg_w1_141a_0_34))
       (blocked seg_w1_141a_0_34 ?a) (not (not_blocked seg_w1_141a_0_34 ?a))
       (at-segment ?a seg_w1_141a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_c1a_0_60 ?a))
       (not_blocked seg_w1_c1a_0_60 ?a) (not (blocked seg_w1_c1b_0_60 ?a))
       (not_blocked seg_w1_c1b_0_60 ?a)))
 (:action
  ugly2380ugly627ugly828ugly674ugly296startup_seg_n_a2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2b_0_60)
       (not_occupied seg_n_a2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a_0_60 ?a)
       (not (not_blocked seg_n_a2a_0_60 ?a))))
 (:action ugly2381ugly665ugly497ugly39ugly9park_seg_p115_0_76_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p115_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p115_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_115b_0_60 ?a)) (not_blocked seg_o1_115b_0_60 ?a)))
 (:action
  ugly2382ugly350ugly135ugly669ugly731startup_seg_o1_c1b_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1b_0_34)
       (not_occupied seg_o1_c1a_0_60) (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action
  ugly2383ugly896ugly901ugly599ugly182move_seg_p104_0_76_seg_o1_104b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p104_0_76) (not_occupied seg_o1_104b_0_60)
       (not_blocked seg_o1_104b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p104_0_76))
       (not_occupied seg_p104_0_76) (not (at-segment ?a seg_p104_0_76))
       (occupied seg_o1_104b_0_60) (not (not_occupied seg_o1_104b_0_60))
       (blocked seg_o1_104b_0_60 ?a) (not (not_blocked seg_o1_104b_0_60 ?a))
       (at-segment ?a seg_o1_104b_0_60)))
 (:action
  ugly2384ugly357ugly261ugly300ugly846startup_seg_p154_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p154_0_75)
       (not_occupied seg_w1_154b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))))) 