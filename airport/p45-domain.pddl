
(define (domain airport_fixed_structure) (:requirements :typing)
 (:predicates (not_occupied ?s - segment)
  (is-parked ?a - airplane ?s - segment) (airborne ?a - airplane ?s - segment)
  (blocked ?s - segment ?a - airplane) (occupied ?s - segment)
  (has-type ?a - airplane ?t - airplanetype)
  (not_blocked ?s - segment ?a - airplane)
  (at-segment ?a - airplane ?s - segment)
  (is-start-runway ?s - segment ?d - direction)
  (facing ?a - airplane ?d - direction) (is-moving ?a - airplane)
  (is-pushing ?a - airplane))
 (:types airplane segment direction airplanetype)
 (:constants north south - direction light medium heavy - airplanetype
  seg_08r_b2a_0_80 seg_08r_b2b_0_80 seg_b2_1_0_80 seg_08r_b2b3_0_900
  seg_08r_0_80 seg_08r_b3a_0_80 seg_08r_b3c_0_161_245 seg_08r_b3b4_0_520
  seg_b3_a_0_156_924 seg_08r_b4a_0_161_245 seg_08r_b4c_0_80 seg_08r_b4b_0_80
  seg_08r_b4d_0_161_245 seg_b5_a_0_158_647 seg_08r_b4b6_0_360
  seg_b4_a_0_156_924 seg_08r_b6a_0_161_245 seg_08r_b6c_0_80 seg_08r_b6b_0_80
  seg_08r_b6d_0_161_245 seg_b8_a_0_156_924 seg_08r_b6b9_0_420
  seg_b6_a_0_158_647 seg_08r_b9a_0_161_245 seg_08r_b9c_0_80 seg_09r_0_80
  seg_b9_a_0_156_924 seg_08r_b9b10_0_980 seg_08r_b10a_0_80 seg_08r_b10b_0_80
  seg_b10_1_0_80 seg_t_b2a_0_60 seg_t_b2b_0_60 seg_t_b2c_0_60 seg_s_b2b_0_60
  seg_t_b2b3a_0_140 seg_b2_0_80 seg_t_b2b3b_0_140 seg_t_b2b3c_0_140
  seg_t_b3a_0_60 seg_t_b3b_0_60 seg_t_b3c_0_120_934 seg_t_b3d_0_60
  seg_s_b3b_0_60 seg_t_b3b4a_0_140 seg_b3_b_0_80_6226 seg_t_b3b4b_0_140
  seg_t_b3b4c_0_140 seg_t_b3b4d_0_140 seg_t_b4a_0_60 seg_t_b4b_0_60
  seg_t_b4c_0_120_934 seg_t_b4d_0_60 seg_s_b4b_0_60 seg_t_b4b6a_0_135
  seg_b4_b_0_80_6226 seg_t_b4b6b_0_135 seg_t_b4b6c_0_130 seg_t_b6a_0_60
  seg_t_b6b_0_60 seg_t_b6c_0_120_934 seg_t_b6d_0_60 seg_s_b6b_0_60
  seg_t_b6b7a_0_140 seg_b6_b_0_159_512 seg_t_b6b7b_0_140 seg_t_b7a_0_60
  seg_t_b7b_0_60 seg_t_b7c_0_60 seg_s_b7c_0_60 seg_t_b5d_0_60 seg_t_b5a_0_60
  seg_t_b5b_0_60 seg_t_b5c_0_120_934 seg_s_b5c_0_60 seg_t_b5b8a_0_135
  seg_b5_b_0_159_512 seg_t_b5b8b_0_135 seg_t_b5b8c_0_130 seg_t_b8a_0_60
  seg_t_b8b_0_60 seg_t_b8c_0_120_934 seg_t_b8d_0_60 seg_s_b8b_0_60
  seg_t_b8b9a_0_115 seg_b8_b_0_80_6226 seg_t_b8b9b_0_115 seg_t_b8b9c_1_0_115
  seg_t_b9a_0_60 seg_t_b9b_0_60 seg_t_b9c_0_120_934 seg_t_b9d_0_60
  seg_s_b9b_0_60 seg_t_b9b10a_0_125 seg_b9_b_0_80_6226 seg_t_b8b9c_0_115
  seg_t_b9b10b_0_125 seg_t_b9b10c_1_0_83 seg_t_b10a_0_60 seg_t_b10b_0_60
  seg_t_b10c_0_60 seg_s_b10a_0_60 seg_b10_0_80 seg_t_b9b10c_0_84 seg_s_b2a_0_60
  seg_s_b2b3a_0_140 seg_s_b2b3b_0_140 seg_s_b2b3c_0_140 seg_s_b3a_0_60
  seg_s_b3c_0_60 seg_s_b3b4a_0_140 seg_s_b3b4b_0_140 seg_s_b3b4c_0_140
  seg_s_b3b4d_0_140 seg_s_b4a_0_60 seg_s_b4c_0_60 seg_s_b4b6a_0_135
  seg_s_b4b6b_0_135 seg_s_b4b6c_0_130 seg_s_b6a_0_60 seg_s_b6c_0_60
  seg_s_b6b7a_0_140 seg_s_b6b7b_0_140 seg_s_b7a_0_60 seg_s_b7b_0_60
  seg_s_b7d_0_60 seg_s5_0_94 seg_s_b5d_0_60 seg_s_b5a_0_60 seg_s_b5b_0_60
  seg_s6_0_94 seg_s_b5b8a_0_135 seg_s_b5b8b_0_135 seg_s_b5b8c_0_130
  seg_s_b8a_0_60 seg_s_b8c_0_60 seg_s_b8b9a_0_115 seg_s_b8b9b_0_115
  seg_s_b8b9c_1_0_115 seg_s_b9a_0_60 seg_s_b9c_0_60 seg_s_b9b10a_0_125
  seg_s_b8b9c_0_115 seg_s_b9b10b_0_125 seg_s_b9b10c_1_0_83 seg_s_b10b_0_60
  seg_s_b9b10c_0_84 seg_b3_b_1_0_80_6226 seg_b4_b_1_0_80_6226
  seg_b8_b_1_0_80_6226 seg_b9_b_1_0_80_6226 seg_w1_c1a_0_60 seg_w1_c1b_0_60
  seg_w1_c1c_0_34 seg_n1_0_108 seg_c1_n2c_0_60 seg_w1_141a_0_34
  seg_w1_141b_0_45 seg_w1_141c_0_34 seg_p141_0_75 seg_w1_142a_0_34
  seg_w1_142b_0_45 seg_w1_142c_0_34 seg_p142_0_75 seg_w1_143a_0_34
  seg_w1_143b_0_45 seg_w1_143c_0_60 seg_p143_0_75 seg_w1_c2a_0_60
  seg_w1_c2b_0_60 seg_w1_c2c_0_34 seg_c2_a_0_80 seg_w1_151a_0_34
  seg_w1_151b_0_45 seg_w1_151c_0_34 seg_p151_0_75 seg_w1_152a_0_34
  seg_w1_152b_0_45 seg_w1_152c_0_34 seg_p152_0_75 seg_w1_153a_0_34
  seg_w1_153b_0_45 seg_w1_153c_0_34 seg_p153_0_75 seg_w1_154a_0_34
  seg_w1_154b_0_45 seg_w1_154c_0_34 seg_p154_0_75 seg_w1_c3a_0_34
  seg_w1_c3b_0_60 seg_w1_c3c_0_48 seg_c3_a_0_80 seg_w1_161a_0_34
  seg_w1_161b_0_45 seg_w1_161c_0_34 seg_p161_0_75 seg_w1_162a_0_34
  seg_w1_162b_0_45 seg_w1_162c_0_34 seg_p162_0_75 seg_w1_163a_0_34
  seg_w1_163b_0_45 seg_w1_163c_0_34 seg_p163_0_75 seg_w1_164a_0_34
  seg_w1_164b_0_45 seg_w1_164c_0_34 seg_p164_0_75 seg_w1_c4a_0_34
  seg_w1_c4b_0_60 seg_w1_c4c_0_60 seg_c4_s6c_0_60 seg_o1_c1a_0_60
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
  seg_c4_s6b_0_60 seg_08l_a2a_0_80 seg_08l_a2b_0_80 seg_08l_a2a3_0_970
  seg_a2_a_0_90 seg_08l_a3a_0_80 seg_08l_a3b_0_161_245 seg_08l_0_80
  seg_08l_a3a4_0_450 seg_a3_a_0_158_647 seg_08l_a4a_0_80 seg_08l_a4b_0_161_245
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
  seg_a7_b_1_0_80_6226 seg_a8_b_1_0_79_7559 seg_t_b9b10c_2_0_83
  seg_s_b9b10c_2_0_83 - segment airplane_cfbeg airplane_cfbe1 airplane_cfbe3
  airplane_daew8 airplane_daew3 airplane_cfbe2 - airplane)
 (:action
  ugly29184ugly29742ugly29457ugly30370ugly30008ugly1019ugly541ugly1028ugly633startup_seg_m_a7c_0_60_south_medium
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
  ugly29185ugly30155ugly29773ugly29521ugly30429ugly29ugly671ugly833ugly31startup_seg_m_a10a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10a_0_60)
       (not_occupied seg_m_a10b_0_60) (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a)) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action
  ugly29186ugly29731ugly30081ugly29256ugly30383ugly600ugly282ugly1361ugly614move_seg_w1_164b_0_45_seg_w1_164a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164b_0_45) (not_occupied seg_w1_164a_0_34)
       (not_blocked seg_w1_164a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_164a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_164a_0_34 airplane_daew8)
       (not_blocked seg_w1_164a_0_34 airplane_daew3)
       (not_blocked seg_w1_164a_0_34 airplane_cfbe2)
       (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (occupied seg_w1_164b_0_45)) (not_occupied seg_w1_164b_0_45)
       (not (at-segment ?a seg_w1_164b_0_45)) (occupied seg_w1_164a_0_34)
       (not (not_occupied seg_w1_164a_0_34)) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (at-segment ?a seg_w1_164a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p164_0_75 ?a)) (not_blocked seg_p164_0_75 ?a)
       (blocked seg_w1_164c_0_34 ?a) (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action
  ugly29187ugly30200ugly29356ugly30517ugly29600ugly558ugly1092ugly452ugly952move_seg_s_b8b_0_60_seg_s_b8c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b8b_0_60) (not_occupied seg_s_b8c_0_60)
       (not_blocked seg_s_b8c_0_60 airplane_cfbeg)
       (not_blocked seg_s_b8c_0_60 airplane_cfbe1)
       (not_blocked seg_s_b8c_0_60 airplane_cfbe3)
       (not_blocked seg_s_b8c_0_60 airplane_daew8)
       (not_blocked seg_s_b8c_0_60 airplane_daew3)
       (not_blocked seg_s_b8c_0_60 airplane_cfbe2)
       (not_occupied seg_s_b8a_0_60))
  :effect
  (and (not (occupied seg_s_b8b_0_60)) (not_occupied seg_s_b8b_0_60)
       (not (at-segment ?a seg_s_b8b_0_60)) (occupied seg_s_b8c_0_60)
       (not (not_occupied seg_s_b8c_0_60)) (blocked seg_s_b8c_0_60 ?a)
       (not (not_blocked seg_s_b8c_0_60 ?a)) (at-segment ?a seg_s_b8c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_t_b8a_0_60 ?a)) (not_blocked seg_t_b8a_0_60 ?a)
       (blocked seg_s_b8a_0_60 ?a) (not (not_blocked seg_s_b8a_0_60 ?a))))
 (:action
  ugly29188ugly29906ugly30386ugly30247ugly30331ugly1090ugly871ugly1043ugly622startup_seg_s_b8b9c_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9c_0_115)
       (not_occupied seg_s_b8b9c_1_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9c_1_0_115 ?a)
       (not (not_blocked seg_s_b8b9c_1_0_115 ?a))))
 (:action
  ugly29189ugly30398ugly30535ugly29395ugly30228ugly462ugly923ugly1042ugly880startup_seg_a3_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_b_0_159_512)
       (not_occupied seg_m_a3a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a))))
 (:action
  ugly29190ugly30272ugly29310ugly29332ugly30032ugly284ugly103ugly1335ugly575move_seg_o1_102c_0_34_seg_o1_102b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102c_0_34) (not_occupied seg_o1_102b_0_60)
       (not_blocked seg_o1_102b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_102b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_102b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_102b_0_60 airplane_daew8)
       (not_blocked seg_o1_102b_0_60 airplane_daew3)
       (not_blocked seg_o1_102b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_102a_0_34))
  :effect
  (and (not (occupied seg_o1_102c_0_34)) (not_occupied seg_o1_102c_0_34)
       (not (at-segment ?a seg_o1_102c_0_34)) (occupied seg_o1_102b_0_60)
       (not (not_occupied seg_o1_102b_0_60)) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a)) (at-segment ?a seg_o1_102b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_103a_0_34 ?a)) (not_blocked seg_o1_103a_0_34 ?a)
       (blocked seg_o1_102a_0_34 ?a) (not (not_blocked seg_o1_102a_0_34 ?a))))
 (:action
  ugly29191ugly30526ugly29194ugly30181ugly29875ugly620ugly435ugly682ugly762startup_seg_w1_142a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142a_0_34)
       (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly29192ugly29859ugly30306ugly29671ugly30338ugly504ugly302ugly752ugly1170move_seg_a8_b_0_80_6226_seg_m_a8d_0_120_934_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_b_0_80_6226) (not_occupied seg_m_a8d_0_120_934)
       (not_blocked seg_m_a8d_0_120_934 airplane_cfbeg)
       (not_blocked seg_m_a8d_0_120_934 airplane_cfbe1)
       (not_blocked seg_m_a8d_0_120_934 airplane_cfbe3)
       (not_blocked seg_m_a8d_0_120_934 airplane_daew8)
       (not_blocked seg_m_a8d_0_120_934 airplane_daew3)
       (not_blocked seg_m_a8d_0_120_934 airplane_cfbe2))
  :effect
  (and (not (occupied seg_a8_b_0_80_6226)) (not_occupied seg_a8_b_0_80_6226)
       (not (at-segment ?a seg_a8_b_0_80_6226)) (occupied seg_m_a8d_0_120_934)
       (not (not_occupied seg_m_a8d_0_120_934))
       (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))
       (at-segment ?a seg_m_a8d_0_120_934) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_a8_b_1_0_79_7559 ?a))
       (not_blocked seg_a8_b_1_0_79_7559 ?a)))
 (:action
  ugly29193ugly29528ugly30520ugly29316ugly30006ugly501ugly969ugly1273ugly159startup_seg_s_b4b6c_0_130_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6c_0_130)
       (not_occupied seg_s_b4b6b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6b_0_135 ?a)
       (not (not_blocked seg_s_b4b6b_0_135 ?a))))
 (:action
  ugly29194ugly30181ugly29875ugly29803ugly29516ugly594ugly590ugly1255ugly362startup_seg_w1_164c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164c_0_34)
       (not_occupied seg_w1_164a_0_34) (not_occupied seg_w1_164b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a))))
 (:action
  ugly29195ugly30189ugly30486ugly29885ugly29863ugly352ugly974ugly665ugly628startup_seg_o1_109d_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109d_0_45)
       (not_occupied seg_o1_109a_0_34) (not_occupied seg_o1_109b_0_60)
       (not_occupied seg_o1_109c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a)) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a)) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a))))
 (:action
  ugly29196ugly30177ugly29954ugly30466ugly29892ugly796ugly1315ugly1053ugly249move_seg_w1_163b_0_45_seg_p163_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163b_0_45) (not_occupied seg_p163_0_75)
       (not_blocked seg_p163_0_75 airplane_cfbeg)
       (not_blocked seg_p163_0_75 airplane_cfbe1)
       (not_blocked seg_p163_0_75 airplane_cfbe3)
       (not_blocked seg_p163_0_75 airplane_daew8)
       (not_blocked seg_p163_0_75 airplane_daew3)
       (not_blocked seg_p163_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_163b_0_45)) (not_occupied seg_w1_163b_0_45)
       (not (at-segment ?a seg_w1_163b_0_45)) (occupied seg_p163_0_75)
       (not (not_occupied seg_p163_0_75)) (blocked seg_p163_0_75 ?a)
       (not (not_blocked seg_p163_0_75 ?a)) (at-segment ?a seg_p163_0_75)
       (not (blocked seg_w1_163a_0_34 ?a)) (not_blocked seg_w1_163a_0_34 ?a)
       (not (blocked seg_w1_163c_0_34 ?a)) (not_blocked seg_w1_163c_0_34 ?a)))
 (:action
  ugly29197ugly30387ugly29444ugly30378ugly29872ugly1177ugly483ugly654ugly1190move_seg_o1_115b_0_60_seg_o1_115c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115b_0_60) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_115c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_115c_0_34 airplane_daew8)
       (not_blocked seg_o1_115c_0_34 airplane_daew3)
       (not_blocked seg_o1_115c_0_34 airplane_cfbe2)
       (not_occupied seg_o1_115a_0_34))
  :effect
  (and (not (occupied seg_o1_115b_0_60)) (not_occupied seg_o1_115b_0_60)
       (not (at-segment ?a seg_o1_115b_0_60)) (occupied seg_o1_115c_0_34)
       (not (not_occupied seg_o1_115c_0_34)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a)) (at-segment ?a seg_o1_115c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p115_0_76 ?a)) (not_blocked seg_p115_0_76 ?a)
       (blocked seg_o1_115a_0_34 ?a) (not (not_blocked seg_o1_115a_0_34 ?a))))
 (:action
  ugly29198ugly30499ugly29636ugly29726ugly29639ugly675ugly255ugly1262ugly639move_seg_o1_109a_0_34_seg_o1_109d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109d_0_45)
       (not_blocked seg_o1_109d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_109d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_109d_0_45 airplane_cfbe3)
       (not_blocked seg_o1_109d_0_45 airplane_daew8)
       (not_blocked seg_o1_109d_0_45 airplane_daew3)
       (not_blocked seg_o1_109d_0_45 airplane_cfbe2)
       (not_occupied seg_o1_109b_0_60) (not_occupied seg_o1_109c_0_34))
  :effect
  (and (not (occupied seg_o1_109a_0_34)) (not_occupied seg_o1_109a_0_34)
       (not (at-segment ?a seg_o1_109a_0_34)) (occupied seg_o1_109d_0_45)
       (not (not_occupied seg_o1_109d_0_45)) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a)) (at-segment ?a seg_o1_109d_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_108c_0_34 ?a)) (not_blocked seg_o1_108c_0_34 ?a)
       (blocked seg_o1_109b_0_60 ?a) (not (not_blocked seg_o1_109b_0_60 ?a))
       (blocked seg_o1_109c_0_34 ?a) (not (not_blocked seg_o1_109c_0_34 ?a))))
 (:action
  ugly29199ugly30026ugly30275ugly29757ugly29919ugly1341ugly679ugly995ugly378startup_seg_s_b9b10c_1_0_83_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_1_0_83)
       (not_occupied seg_s_b9b10c_2_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_2_0_83 ?a)
       (not (not_blocked seg_s_b9b10c_2_0_83 ?a))))
 (:action
  ugly29200ugly29196ugly30177ugly29954ugly30466ugly709ugly825ugly1185ugly1325startup_seg_08l_a10a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a10a_0_80)
       (not_occupied seg_a10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_1_0_80 ?a)
       (not (not_blocked seg_a10_1_0_80 ?a))))
 (:action
  ugly29201ugly29547ugly29591ugly29690ugly29464ugly335ugly1199ugly1029ugly1158park_seg_p132_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p132_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p132_0_75) (not (is-moving ?a))))
 (:action
  ugly29202ugly29634ugly30492ugly29876ugly30414ugly710ugly822ugly881ugly1152pushback_seg_o1_108c_0_34_seg_o1_109a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_109a_0_34 airplane_daew8)
       (not_blocked seg_o1_109a_0_34 airplane_daew3)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_108c_0_34)) (not_occupied seg_o1_108c_0_34)
       (not (blocked seg_o1_108c_0_34 ?a)) (not_blocked seg_o1_108c_0_34 ?a)
       (not (at-segment ?a seg_o1_108c_0_34)) (occupied seg_o1_109a_0_34)
       (not (not_occupied seg_o1_109a_0_34)) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a)) (at-segment ?a seg_o1_109a_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action
  ugly29203ugly30491ugly30098ugly29453ugly29831ugly911ugly359ugly1077ugly1314startup_seg_b6_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b6_b_0_159_512)
       (not_occupied seg_t_b6c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6c_0_120_934 ?a)
       (not (not_blocked seg_t_b6c_0_120_934 ?a))))
 (:action
  ugly29204ugly29329ugly29334ugly29558ugly30289ugly82ugly860ugly657ugly1103startup_seg_m_a3c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3c_0_60)
       (not_occupied seg_m_a3a_0_120_934) (not_occupied seg_m_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a)) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a))))
 (:action
  ugly29205ugly29555ugly30258ugly29860ugly29545ugly635ugly948ugly913ugly116startup_seg_a6_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_a_0_158_647)
       (not_occupied seg_a6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_b_0_159_512 ?a)
       (not (not_blocked seg_a6_b_0_159_512 ?a))))
 (:action
  ugly29206ugly30349ugly29378ugly29302ugly30122ugly315ugly616ugly1246ugly340startup_seg_o1_109c_0_34_south_medium
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
  ugly29207ugly29826ugly29982ugly29364ugly29327ugly1210ugly981ugly281ugly512move_seg_08l_a6a7_0_450_seg_08l_a7d_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a6a7_0_450) (not_occupied seg_08l_a7d_0_80)
       (not_blocked seg_08l_a7d_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a7d_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a7d_0_80 airplane_cfbe3)
       (not_blocked seg_08l_a7d_0_80 airplane_daew8)
       (not_blocked seg_08l_a7d_0_80 airplane_daew3)
       (not_blocked seg_08l_a7d_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_08l_a6a7_0_450)) (not_occupied seg_08l_a6a7_0_450)
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
  ugly29208ugly30325ugly29355ugly29861ugly29394ugly962ugly1322ugly1118ugly30startup_seg_w1_163c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163c_0_34)
       (not_occupied seg_w1_164a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a))))
 (:action
  ugly29209ugly29380ugly30248ugly29799ugly30287ugly202ugly347ugly744ugly115startup_seg_p112_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p112_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly29210ugly29556ugly29530ugly30217ugly30440ugly110ugly1223ugly953ugly1189startup_seg_08r_b3c_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b3c_0_161_245)
       (not_occupied seg_b3_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_a_0_156_924 ?a)
       (not (not_blocked seg_b3_a_0_156_924 ?a))))
 (:action
  ugly29211ugly30285ugly29478ugly30384ugly29807ugly268ugly1025ugly1208ugly384move_seg_w1_143a_0_34_seg_w1_143c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_cfbe1)
       (not_blocked seg_w1_143c_0_60 airplane_cfbe3)
       (not_blocked seg_w1_143c_0_60 airplane_daew8)
       (not_blocked seg_w1_143c_0_60 airplane_daew3)
       (not_blocked seg_w1_143c_0_60 airplane_cfbe2)
       (not_occupied seg_w1_143b_0_45))
  :effect
  (and (not (occupied seg_w1_143a_0_34)) (not_occupied seg_w1_143a_0_34)
       (not (at-segment ?a seg_w1_143a_0_34)) (occupied seg_w1_143c_0_60)
       (not (not_occupied seg_w1_143c_0_60)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a)) (at-segment ?a seg_w1_143c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_142c_0_34 ?a)) (not_blocked seg_w1_142c_0_34 ?a)
       (blocked seg_w1_143b_0_45 ?a) (not (not_blocked seg_w1_143b_0_45 ?a))))
 (:action
  ugly29212ugly30489ugly29285ugly29585ugly29197ugly1204ugly90ugly119ugly703startup_seg_w1_163a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163a_0_34)
       (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action
  ugly29213ugly29500ugly30501ugly29330ugly30539ugly791ugly465ugly791ugly465park_seg_p152_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p152_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p152_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_152b_0_45 ?a)) (not_blocked seg_w1_152b_0_45 ?a)))
 (:action
  ugly29214ugly30280ugly30140ugly29543ugly29778ugly218ugly817ugly174ugly68startup_seg_t_b3b4d_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4d_0_140)
       (not_occupied seg_t_b3b4c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4c_0_140 ?a)
       (not (not_blocked seg_t_b3b4c_0_140 ?a))))
 (:action
  ugly29215ugly30227ugly30204ugly29188ugly29906ugly1203ugly702ugly1003ugly1309startup_seg_o1_115b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115b_0_60)
       (not_occupied seg_p115_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p115_0_76 ?a)
       (not (not_blocked seg_p115_0_76 ?a))))
 (:action
  ugly29216ugly30371ugly30443ugly30497ugly29193ugly345ugly798ugly505ugly578startup_seg_a8_b_1_0_79_7559_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_1_0_79_7559)
       (not_occupied seg_a8_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_a_0_157_785 ?a)
       (not (not_blocked seg_a8_a_0_157_785 ?a))))
 (:action
  ugly29217ugly29963ugly30339ugly29827ugly29583ugly475ugly450ugly1204ugly90move_seg_s6_0_94_seg_c4_s6b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s6_0_94) (not_occupied seg_c4_s6b_0_60)
       (not_blocked seg_c4_s6b_0_60 airplane_cfbeg)
       (not_blocked seg_c4_s6b_0_60 airplane_cfbe1)
       (not_blocked seg_c4_s6b_0_60 airplane_cfbe3)
       (not_blocked seg_c4_s6b_0_60 airplane_daew8)
       (not_blocked seg_c4_s6b_0_60 airplane_daew3)
       (not_blocked seg_c4_s6b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s6_0_94)) (not_occupied seg_s6_0_94)
       (not (at-segment ?a seg_s6_0_94)) (occupied seg_c4_s6b_0_60)
       (not (not_occupied seg_c4_s6b_0_60)) (blocked seg_c4_s6b_0_60 ?a)
       (not (not_blocked seg_c4_s6b_0_60 ?a)) (at-segment ?a seg_c4_s6b_0_60)
       (not (blocked seg_s_b5a_0_60 ?a)) (not_blocked seg_s_b5a_0_60 ?a)))
 (:action
  ugly29218ugly30396ugly29723ugly30350ugly30402ugly472ugly973ugly546ugly1072startup_seg_w1_c4a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4a_0_34)
       (not_occupied seg_w1_c4b_0_60) (not_occupied seg_w1_c4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a)) (blocked seg_w1_c4c_0_60 ?a)
       (not (not_blocked seg_w1_c4c_0_60 ?a))))
 (:action
  ugly29219ugly29747ugly30068ugly29661ugly30479ugly135ugly1033ugly32ugly900move_seg_08l_a4d_0_80_seg_08l_a4a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a4d_0_80) (not_occupied seg_08l_a4a_0_80)
       (not_blocked seg_08l_a4a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a4a_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a4a_0_80 airplane_cfbe3)
       (not_blocked seg_08l_a4a_0_80 airplane_daew8)
       (not_blocked seg_08l_a4a_0_80 airplane_daew3)
       (not_blocked seg_08l_a4a_0_80 airplane_cfbe2)
       (not_occupied seg_08l_a4b_0_161_245)
       (not_occupied seg_08l_a4c_0_161_245) (not_occupied seg_08l_a2a_0_80)
       (not_occupied seg_09l_0_80) (not_occupied seg_08l_a7a_0_80))
  :effect
  (and (not (occupied seg_08l_a4d_0_80)) (not_occupied seg_08l_a4d_0_80)
       (not (at-segment ?a seg_08l_a4d_0_80)) (occupied seg_08l_a4a_0_80)
       (not (not_occupied seg_08l_a4a_0_80)) (blocked seg_08l_a4a_0_80 ?a)
       (not (not_blocked seg_08l_a4a_0_80 ?a)) (at-segment ?a seg_08l_a4a_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_08l_a3a4_0_450 ?a))
       (not_blocked seg_08l_a3a4_0_450 ?a) (blocked seg_08l_a4b_0_161_245 ?a)
       (not (not_blocked seg_08l_a4b_0_161_245 ?a))
       (blocked seg_08l_a4c_0_161_245 ?a)
       (not (not_blocked seg_08l_a4c_0_161_245 ?a))
       (blocked seg_08l_a2a_0_80 ?a) (not (not_blocked seg_08l_a2a_0_80 ?a))
       (blocked seg_09l_0_80 ?a) (not (not_blocked seg_09l_0_80 ?a))
       (blocked seg_08l_a7a_0_80 ?a) (not (not_blocked seg_08l_a7a_0_80 ?a))))
 (:action
  ugly29220ugly30311ugly29405ugly30404ugly30377ugly1293ugly1147ugly655ugly1160startup_seg_s_b7c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7c_0_60)
       (not_occupied seg_s_b7a_0_60) (not_occupied seg_s_b7b_0_60)
       (not_occupied seg_s_b7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7a_0_60 ?a)
       (not (not_blocked seg_s_b7a_0_60 ?a)) (blocked seg_s_b7b_0_60 ?a)
       (not (not_blocked seg_s_b7b_0_60 ?a)) (blocked seg_s_b7d_0_60 ?a)
       (not (not_blocked seg_s_b7d_0_60 ?a))))
 (:action
  ugly29221ugly29261ugly30467ugly30519ugly29339ugly1310ugly43ugly823ugly1353move_seg_n_a4a7c_0_75_seg_n_a4a7b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7c_0_75) (not_occupied seg_n_a4a7b_0_75)
       (not_blocked seg_n_a4a7b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7b_0_75 airplane_cfbe1)
       (not_blocked seg_n_a4a7b_0_75 airplane_cfbe3)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew8)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew3)
       (not_blocked seg_n_a4a7b_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a4a7c_0_75)) (not_occupied seg_n_a4a7c_0_75)
       (not (at-segment ?a seg_n_a4a7c_0_75)) (occupied seg_n_a4a7b_0_75)
       (not (not_occupied seg_n_a4a7b_0_75)) (blocked seg_n_a4a7b_0_75 ?a)
       (not (not_blocked seg_n_a4a7b_0_75 ?a)) (at-segment ?a seg_n_a4a7b_0_75)
       (not (blocked seg_n_a4a7d_0_75 ?a)) (not_blocked seg_n_a4a7d_0_75 ?a)))
 (:action
  ugly29222ugly29424ugly29810ugly29990ugly29802ugly457ugly1136ugly1344ugly420startup_seg_w1_141b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141b_0_45)
       (not_occupied seg_p141_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p141_0_75 ?a)
       (not (not_blocked seg_p141_0_75 ?a))))
 (:action
  ugly29223ugly29965ugly29408ugly29290ugly30471ugly563ugly96ugly162ugly210startup_seg_t_b9b10c_0_84_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_0_84)
       (not_occupied seg_t_b9b10c_2_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_2_0_83 ?a)
       (not (not_blocked seg_t_b9b10c_2_0_83 ?a))))
 (:action
  ugly29224ugly30455ugly30129ugly30066ugly30516ugly1227ugly269ugly69ugly334startup_seg_s_b3b4a_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4a_0_140)
       (not_occupied seg_s_b3b4b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4b_0_140 ?a)
       (not (not_blocked seg_s_b3b4b_0_140 ?a))))
 (:action
  ugly29225ugly29647ugly30201ugly30102ugly29691ugly821ugly181ugly341ugly850move_seg_w1_163a_0_34_seg_w1_163c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_163c_0_34 airplane_daew8)
       (not_blocked seg_w1_163c_0_34 airplane_daew3)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe2)
       (not_occupied seg_w1_163b_0_45))
  :effect
  (and (not (occupied seg_w1_163a_0_34)) (not_occupied seg_w1_163a_0_34)
       (not (at-segment ?a seg_w1_163a_0_34)) (occupied seg_w1_163c_0_34)
       (not (not_occupied seg_w1_163c_0_34)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a)) (at-segment ?a seg_w1_163c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_162c_0_34 ?a)) (not_blocked seg_w1_162c_0_34 ?a)
       (blocked seg_w1_163b_0_45 ?a) (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action
  ugly29226ugly29559ugly30159ugly29577ugly29918ugly552ugly858ugly1041ugly1319startup_seg_o1_110a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110a_0_34)
       (not_occupied seg_o1_109c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a))))
 (:action
  ugly29227ugly30259ugly29278ugly30028ugly30045ugly1216ugly768ugly562ugly350startup_seg_t_b2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b_0_60)
       (not_occupied seg_t_b2b3a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3a_0_140 ?a)
       (not (not_blocked seg_t_b2b3a_0_140 ?a))))
 (:action
  ugly29228ugly29749ugly29722ugly29711ugly29257ugly747ugly1215ugly496ugly594startup_seg_s_b8b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b_0_60)
       (not_occupied seg_t_b8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8a_0_60 ?a)
       (not (not_blocked seg_t_b8a_0_60 ?a))))
 (:action
  ugly29229ugly30324ugly29935ugly29239ugly30220ugly79ugly593ugly481ugly581startup_seg_n_a8a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a_0_60)
       (not_occupied seg_n_a8b_0_60) (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a)) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action
  ugly29230ugly29410ugly29258ugly29443ugly29612ugly421ugly171ugly123ugly431startup_seg_08r_b9a_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b9a_0_161_245)
       (not_occupied seg_b9_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_a_0_156_924 ?a)
       (not (not_blocked seg_b9_a_0_156_924 ?a))))
 (:action
  ugly29231ugly29850ugly29786ugly29680ugly29721ugly1165ugly1174ugly845ugly1272startup_seg_08l_a7c_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a7c_0_161_245)
       (not_occupied seg_a7_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_a_0_156_924 ?a)
       (not (not_blocked seg_a7_a_0_156_924 ?a))))
 (:action
  ugly29232ugly29187ugly30200ugly29356ugly30517ugly417ugly638ugly445ugly1007startup_seg_w1_c3a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3a_0_34)
       (not_occupied seg_w1_c3b_0_60) (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a)) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action
  ugly29233ugly30065ugly30121ugly30372ugly29495ugly960ugly320ugly430ugly1288startup_seg_t_b5b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b_0_60)
       (not_occupied seg_t_b5a_0_60) (not_occupied seg_t_b5c_0_120_934)
       (not_occupied seg_t_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5a_0_60 ?a)
       (not (not_blocked seg_t_b5a_0_60 ?a)) (blocked seg_t_b5c_0_120_934 ?a)
       (not (not_blocked seg_t_b5c_0_120_934 ?a)) (blocked seg_t_b5d_0_60 ?a)
       (not (not_blocked seg_t_b5d_0_60 ?a))))
 (:action
  ugly29234ugly30271ugly30089ugly29299ugly30514ugly280ugly110ugly1223ugly953startup_seg_m_a8c_0_60_south_medium
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
  ugly29235ugly29505ugly29277ugly29855ugly29938ugly1131ugly16ugly955ugly996startup_seg_t_b10a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10a_0_60)
       (not_occupied seg_t_b10b_0_60) (not_occupied seg_t_b10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10b_0_60 ?a)
       (not (not_blocked seg_t_b10b_0_60 ?a)) (blocked seg_t_b10c_0_60 ?a)
       (not (not_blocked seg_t_b10c_0_60 ?a))))
 (:action
  ugly29236ugly29781ugly30374ugly30447ugly30046ugly623ugly419ugly1110ugly816startup_seg_b3_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_b_0_80_6226)
       (not_occupied seg_b3_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b3_b_1_0_80_6226 ?a))))
 (:action
  ugly29237ugly29704ugly29756ugly29934ugly29455ugly1364ugly1054ugly385ugly603startup_seg_s_b5c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5c_0_60)
       (not_occupied seg_s_b5a_0_60) (not_occupied seg_s_b5b_0_60)
       (not_occupied seg_s_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5a_0_60 ?a)
       (not (not_blocked seg_s_b5a_0_60 ?a)) (blocked seg_s_b5b_0_60 ?a)
       (not (not_blocked seg_s_b5b_0_60 ?a)) (blocked seg_s_b5d_0_60 ?a)
       (not (not_blocked seg_s_b5d_0_60 ?a))))
 (:action
  ugly29238ugly29392ugly29621ugly30166ugly30313ugly612ugly788ugly1286ugly1073startup_seg_t_b8c_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8c_0_120_934)
       (not_occupied seg_b8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_b_0_80_6226 ?a)
       (not (not_blocked seg_b8_b_0_80_6226 ?a))))
 (:action
  ugly29239ugly30220ugly29262ugly29347ugly30337ugly895ugly1089ugly290ugly149startup_seg_p103_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p103_0_76)
       (not_occupied seg_o1_103b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action
  ugly29240ugly30430ugly29669ugly30224ugly29471ugly550ugly223ugly1116ugly713startup_seg_w1_164b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164b_0_45)
       (not_occupied seg_p164_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p164_0_75 ?a)
       (not (not_blocked seg_p164_0_75 ?a))))
 (:action
  ugly29241ugly29416ugly30083ugly29886ugly30176ugly914ugly1148ugly1051ugly1113startup_seg_n_a8b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8b_0_60)
       (not_occupied seg_n_a8a9a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9a_0_85 ?a)
       (not (not_blocked seg_n_a8a9a_0_85 ?a))))
 (:action
  ugly29242ugly29215ugly30227ugly30204ugly29188ugly723ugly1045ugly1264ugly296move_seg_o1_115a_0_34_seg_o1_115c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_115c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_115c_0_34 airplane_daew8)
       (not_blocked seg_o1_115c_0_34 airplane_daew3)
       (not_blocked seg_o1_115c_0_34 airplane_cfbe2)
       (not_occupied seg_o1_115b_0_60))
  :effect
  (and (not (occupied seg_o1_115a_0_34)) (not_occupied seg_o1_115a_0_34)
       (not (at-segment ?a seg_o1_115a_0_34)) (occupied seg_o1_115c_0_34)
       (not (not_occupied seg_o1_115c_0_34)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a)) (at-segment ?a seg_o1_115c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c3c_0_48 ?a)) (not_blocked seg_o1_c3c_0_48 ?a)
       (blocked seg_o1_115b_0_60 ?a) (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action
  ugly29243ugly29830ugly29294ugly29796ugly29905ugly1050ugly851ugly504ugly302park_seg_p142_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p142_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p142_0_75) (not (is-moving ?a))))
 (:action
  ugly29244ugly30320ugly29479ugly29927ugly30017ugly954ugly1177ugly483ugly654startup_seg_m_a8d_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8d_0_120_934)
       (not_occupied seg_a8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))))
 (:action
  ugly29245ugly29714ugly29791ugly30241ugly30428ugly166ugly1245ugly643ugly820startup_seg_p151_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p151_0_75)
       (not_occupied seg_w1_151b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action
  ugly29246ugly30263ugly30255ugly29206ugly30349ugly195ugly637ugly300ugly749startup_seg_p132_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p132_0_75)
       (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action
  ugly29247ugly29217ugly29963ugly30339ugly29827ugly400ugly246ugly231ugly1205startup_seg_s_b8c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8c_0_60)
       (not_occupied seg_s_b5b8c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8c_0_130 ?a)
       (not (not_blocked seg_s_b5b8c_0_130 ?a))))
 (:action
  ugly29248ugly29769ugly30523ugly30541ugly30127ugly132ugly1171ugly642ugly970startup_seg_m_a4a7d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7d_0_75)
       (not_occupied seg_m_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7e_0_75 ?a)
       (not (not_blocked seg_m_a4a7e_0_75 ?a))))
 (:action
  ugly29249ugly30151ugly30243ugly29797ugly29838ugly730ugly819ugly58ugly21startup_seg_m_a4c_0_60_south_medium
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
  ugly29250ugly29234ugly30271ugly30089ugly29299ugly1331ugly1279ugly1342ugly184startup_seg_o1_108a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108a_0_34)
       (not_occupied seg_o1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a))))
 (:action
  ugly29251ugly30500ugly29242ugly29215ugly30227ugly1021ugly22ugly1084ugly737startup_seg_w1_154a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154a_0_34)
       (not_occupied seg_w1_154b_0_45) (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action
  ugly29252ugly30368ugly30103ugly29391ugly30446ugly1223ugly953ugly1189ugly458startup_seg_n_a2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a_0_60)
       (not_occupied seg_n_a2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2b_0_60 ?a)
       (not (not_blocked seg_n_a2b_0_60 ?a))))
 (:action
  ugly29253ugly29699ugly30167ugly29308ugly29701ugly414ugly786ugly607ugly673move_seg_b2_1_0_80_seg_08r_b2a_0_80_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b2_1_0_80) (not_occupied seg_08r_b2a_0_80)
       (not_blocked seg_08r_b2a_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b2a_0_80 airplane_cfbe1)
       (not_blocked seg_08r_b2a_0_80 airplane_cfbe3)
       (not_blocked seg_08r_b2a_0_80 airplane_daew8)
       (not_blocked seg_08r_b2a_0_80 airplane_daew3)
       (not_blocked seg_08r_b2a_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_b2_1_0_80)) (not_occupied seg_b2_1_0_80)
       (not (at-segment ?a seg_b2_1_0_80)) (occupied seg_08r_b2a_0_80)
       (not (not_occupied seg_08r_b2a_0_80)) (blocked seg_08r_b2a_0_80 ?a)
       (not (not_blocked seg_08r_b2a_0_80 ?a)) (at-segment ?a seg_08r_b2a_0_80)
       (not (blocked seg_b2_0_80 ?a)) (not_blocked seg_b2_0_80 ?a)))
 (:action
  ugly29254ugly29891ugly30108ugly30340ugly29737ugly876ugly612ugly788ugly1286startup_seg_08l_a4c_0_161_245_south_medium
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
 (:action
  ugly29255ugly30168ugly29867ugly29959ugly29517ugly794ugly887ugly556ugly599startup_seg_a6_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_b_0_159_512)
       (not_occupied seg_a6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_a_0_158_647 ?a)
       (not (not_blocked seg_a6_a_0_158_647 ?a))))
 (:action
  ugly29256ugly30383ugly29783ugly29676ugly30173ugly860ugly657ugly1103ugly1099move_seg_o1_c2b_0_60_seg_p107_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2b_0_60) (not_occupied seg_p107_0_76)
       (not_blocked seg_p107_0_76 airplane_cfbeg)
       (not_blocked seg_p107_0_76 airplane_cfbe1)
       (not_blocked seg_p107_0_76 airplane_cfbe3)
       (not_blocked seg_p107_0_76 airplane_daew8)
       (not_blocked seg_p107_0_76 airplane_daew3)
       (not_blocked seg_p107_0_76 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_c2b_0_60)) (not_occupied seg_o1_c2b_0_60)
       (not (at-segment ?a seg_o1_c2b_0_60)) (occupied seg_p107_0_76)
       (not (not_occupied seg_p107_0_76)) (blocked seg_p107_0_76 ?a)
       (not (not_blocked seg_p107_0_76 ?a)) (at-segment ?a seg_p107_0_76)
       (not (blocked seg_o1_c2a_0_60 ?a)) (not_blocked seg_o1_c2a_0_60 ?a)
       (not (blocked seg_o1_c2c_0_34 ?a)) (not_blocked seg_o1_c2c_0_34 ?a)
       (not (blocked seg_o1_c2d_0_60 ?a)) (not_blocked seg_o1_c2d_0_60 ?a)))
 (:action
  ugly29257ugly29930ugly29945ugly30394ugly29536ugly767ugly1310ugly43ugly823startup_seg_n_a9a10g_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10g_0_75)
       (not_occupied seg_n_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10f_0_75 ?a)
       (not (not_blocked seg_n_a9a10f_0_75 ?a))))
 (:action
  ugly29258ugly29443ugly29612ugly29604ugly30256ugly1290ugly1346ugly540ugly910move_seg_o1_117a_0_34_seg_o1_117b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_117b_0_60)
       (not_blocked seg_o1_117b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_117b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_117b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_117b_0_60 airplane_daew8)
       (not_blocked seg_o1_117b_0_60 airplane_daew3)
       (not_blocked seg_o1_117b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (occupied seg_o1_117a_0_34)) (not_occupied seg_o1_117a_0_34)
       (not (at-segment ?a seg_o1_117a_0_34)) (occupied seg_o1_117b_0_60)
       (not (not_occupied seg_o1_117b_0_60)) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a)) (at-segment ?a seg_o1_117b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_116c_0_34 ?a)) (not_blocked seg_o1_116c_0_34 ?a)
       (blocked seg_o1_117c_0_34 ?a) (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action
  ugly29259ugly29592ugly30477ugly29881ugly29186ugly548ugly557ugly636ugly24startup_seg_b8_a_0_156_924_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_a_0_156_924)
       (not_occupied seg_b8_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b8_b_1_0_80_6226 ?a))))
 (:action
  ugly29260ugly29953ugly29508ugly29879ugly30069ugly967ugly862ugly785ugly1010move_seg_a2_a_0_90_seg_08l_a2b_0_80_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_a_0_90) (not_occupied seg_08l_a2b_0_80)
       (not_blocked seg_08l_a2b_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a2b_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a2b_0_80 airplane_cfbe3)
       (not_blocked seg_08l_a2b_0_80 airplane_daew8)
       (not_blocked seg_08l_a2b_0_80 airplane_daew3)
       (not_blocked seg_08l_a2b_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_a2_a_0_90)) (not_occupied seg_a2_a_0_90)
       (not (at-segment ?a seg_a2_a_0_90)) (occupied seg_08l_a2b_0_80)
       (not (not_occupied seg_08l_a2b_0_80)) (blocked seg_08l_a2b_0_80 ?a)
       (not (not_blocked seg_08l_a2b_0_80 ?a)) (at-segment ?a seg_08l_a2b_0_80)
       (not (blocked seg_a2_b_0_90 ?a)) (not_blocked seg_a2_b_0_90 ?a)))
 (:action
  ugly29261ugly30467ugly30519ugly29339ugly30493ugly80ugly957ugly1203ugly702startup_seg_o1_115a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115a_0_34)
       (not_occupied seg_o1_115b_0_60) (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action
  ugly29262ugly29347ugly30337ugly30078ugly30533ugly291ugly1235ugly1184ugly425startup_seg_08r_b4a_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b4a_0_161_245)
       (not_occupied seg_08r_b4c_0_80) (not_occupied seg_08r_b4b_0_80)
       (not_occupied seg_08r_b4d_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b4c_0_80 ?a)
       (not (not_blocked seg_08r_b4c_0_80 ?a)) (blocked seg_08r_b4b_0_80 ?a)
       (not (not_blocked seg_08r_b4b_0_80 ?a))
       (blocked seg_08r_b4d_0_161_245 ?a)
       (not (not_blocked seg_08r_b4d_0_161_245 ?a))))
 (:action
  ugly29263ugly29856ugly30545ugly29270ugly29538ugly301ugly3ugly1300ugly1352move_seg_o1_103a_0_34_seg_o1_103c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_103c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_103c_0_34 airplane_daew8)
       (not_blocked seg_o1_103c_0_34 airplane_daew3)
       (not_blocked seg_o1_103c_0_34 airplane_cfbe2)
       (not_occupied seg_o1_103b_0_60))
  :effect
  (and (not (occupied seg_o1_103a_0_34)) (not_occupied seg_o1_103a_0_34)
       (not (at-segment ?a seg_o1_103a_0_34)) (occupied seg_o1_103c_0_34)
       (not (not_occupied seg_o1_103c_0_34)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a)) (at-segment ?a seg_o1_103c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_102c_0_34 ?a)) (not_blocked seg_o1_102c_0_34 ?a)
       (blocked seg_o1_103b_0_60 ?a) (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action
  ugly29264ugly30283ugly29202ugly29634ugly30492ugly693ugly337ugly127ugly1281move_seg_n_a2b_0_60_seg_n_a2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2b_0_60) (not_occupied seg_n_a2a_0_60)
       (not_blocked seg_n_a2a_0_60 airplane_cfbeg)
       (not_blocked seg_n_a2a_0_60 airplane_cfbe1)
       (not_blocked seg_n_a2a_0_60 airplane_cfbe3)
       (not_blocked seg_n_a2a_0_60 airplane_daew8)
       (not_blocked seg_n_a2a_0_60 airplane_daew3)
       (not_blocked seg_n_a2a_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a2b_0_60)) (not_occupied seg_n_a2b_0_60)
       (not (at-segment ?a seg_n_a2b_0_60)) (occupied seg_n_a2a_0_60)
       (not (not_occupied seg_n_a2a_0_60)) (blocked seg_n_a2a_0_60 ?a)
       (not (not_blocked seg_n_a2a_0_60 ?a)) (at-segment ?a seg_n_a2a_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n_a2a3a_0_75 ?a)) (not_blocked seg_n_a2a3a_0_75 ?a)))
 (:action
  ugly29265ugly29387ugly30025ugly29390ugly30203ugly523ugly988ugly77ugly360startup_seg_n_n2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a_0_60)
       (not_occupied seg_n_n2a4a_0_70))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4a_0_70 ?a)
       (not (not_blocked seg_n_n2a4a_0_70 ?a))))
 (:action
  ugly29266ugly30072ugly29448ugly29383ugly29854ugly62ugly398ugly1120ugly727startup_seg_s_b9b10c_0_84_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_0_84)
       (not_occupied seg_s_b10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b10b_0_60 ?a)
       (not (not_blocked seg_s_b10b_0_60 ?a))))
 (:action
  ugly29267ugly29925ugly29805ugly29774ugly30279ugly1178ugly7ugly1055ugly202move_seg_c2_b_0_80_seg_o1_c2d_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c2_b_0_80) (not_occupied seg_o1_c2d_0_60)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c2d_0_60 airplane_daew8)
       (not_blocked seg_o1_c2d_0_60 airplane_daew3)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_c2_b_0_80)) (not_occupied seg_c2_b_0_80)
       (not (at-segment ?a seg_c2_b_0_80)) (occupied seg_o1_c2d_0_60)
       (not (not_occupied seg_o1_c2d_0_60)) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a)) (at-segment ?a seg_o1_c2d_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_c2_a_0_80 ?a)) (not_blocked seg_c2_a_0_80 ?a)))
 (:action
  ugly29268ugly30354ugly30502ugly30411ugly29946ugly756ugly466ugly796ugly1315startup_seg_p119_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p119_0_76)
       (not_occupied seg_o1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a))))
 (:action
  ugly29269ugly30092ugly30442ugly30063ugly30147ugly996ugly621ugly106ugly346move_seg_o1_c1a_0_60_seg_p101_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_p101_0_76)
       (not_blocked seg_p101_0_76 airplane_cfbeg)
       (not_blocked seg_p101_0_76 airplane_cfbe1)
       (not_blocked seg_p101_0_76 airplane_cfbe3)
       (not_blocked seg_p101_0_76 airplane_daew8)
       (not_blocked seg_p101_0_76 airplane_daew3)
       (not_blocked seg_p101_0_76 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_c1a_0_60)) (not_occupied seg_o1_c1a_0_60)
       (not (at-segment ?a seg_o1_c1a_0_60)) (occupied seg_p101_0_76)
       (not (not_occupied seg_p101_0_76)) (blocked seg_p101_0_76 ?a)
       (not (not_blocked seg_p101_0_76 ?a)) (at-segment ?a seg_p101_0_76)
       (not (blocked seg_o1_c1b_0_34 ?a)) (not_blocked seg_o1_c1b_0_34 ?a)
       (not (blocked seg_o1_c1c_0_80 ?a)) (not_blocked seg_o1_c1c_0_80 ?a)))
 (:action
  ugly29270ugly29538ugly29484ugly29629ugly29961ugly148ugly568ugly790ugly721startup_seg_08r_b4d_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b4d_0_161_245)
       (not_occupied seg_b4_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_a_0_156_924 ?a)
       (not (not_blocked seg_b4_a_0_156_924 ?a))))
 (:action
  ugly29271ugly29440ugly29689ugly29740ugly29609ugly276ugly393ugly789ugly1337move_seg_s_b5a_0_60_seg_s6_0_94_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b5a_0_60) (not_occupied seg_s6_0_94)
       (not_blocked seg_s6_0_94 airplane_cfbeg)
       (not_blocked seg_s6_0_94 airplane_cfbe1)
       (not_blocked seg_s6_0_94 airplane_cfbe3)
       (not_blocked seg_s6_0_94 airplane_daew8)
       (not_blocked seg_s6_0_94 airplane_daew3)
       (not_blocked seg_s6_0_94 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b5a_0_60)) (not_occupied seg_s_b5a_0_60)
       (not (at-segment ?a seg_s_b5a_0_60)) (occupied seg_s6_0_94)
       (not (not_occupied seg_s6_0_94)) (blocked seg_s6_0_94 ?a)
       (not (not_blocked seg_s6_0_94 ?a)) (at-segment ?a seg_s6_0_94)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_s_b5b_0_60 ?a)) (not_blocked seg_s_b5b_0_60 ?a)
       (not (blocked seg_s_b5c_0_60 ?a)) (not_blocked seg_s_b5c_0_60 ?a)
       (not (blocked seg_s_b5d_0_60 ?a)) (not_blocked seg_s_b5d_0_60 ?a)))
 (:action
  ugly29272ugly29943ugly29724ugly30244ugly29815ugly1335ugly575ugly329ugly1318startup_seg_n_a8a9c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9c_0_75)
       (not_occupied seg_n_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9b_0_75 ?a)
       (not (not_blocked seg_n_a8a9b_0_75 ?a))))
 (:action
  ugly29273ugly29659ugly30261ugly30327ugly29430ugly519ugly801ugly1015ugly355startup_seg_n_a10b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10b_0_60)
       (not_occupied seg_n_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10a_0_60 ?a)
       (not (not_blocked seg_n_a10a_0_60 ?a))))
 (:action
  ugly29274ugly30481ugly30292ugly29992ugly30221ugly930ugly555ugly283ugly961startup_seg_n_a9a10a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10a_0_80)
       (not_occupied seg_n_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a))))
 (:action
  ugly29275ugly29235ugly29505ugly29277ugly29855ugly755ugly1161ugly748ugly1183move_seg_o1_111a_0_34_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_111c_0_34 airplane_daew8)
       (not_blocked seg_o1_111c_0_34 airplane_daew3)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe2)
       (not_occupied seg_o1_111b_0_60) (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (occupied seg_o1_111a_0_34)) (not_occupied seg_o1_111a_0_34)
       (not (at-segment ?a seg_o1_111a_0_34)) (occupied seg_o1_111c_0_34)
       (not (not_occupied seg_o1_111c_0_34)) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a)) (at-segment ?a seg_o1_111c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_110c_0_34 ?a)) (not_blocked seg_o1_110c_0_34 ?a)
       (blocked seg_o1_111b_0_60 ?a) (not (not_blocked seg_o1_111b_0_60 ?a))
       (blocked seg_o1_111d_0_45 ?a) (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action
  ugly29276ugly29775ugly30359ugly30106ugly30076ugly568ugly790ugly721ugly464startup_seg_t_b5b8a_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8a_0_135)
       (not_occupied seg_t_b5b8b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8b_0_135 ?a)
       (not (not_blocked seg_t_b5b8b_0_135 ?a))))
 (:action
  ugly29277ugly29855ugly29938ugly30314ugly29317ugly918ugly719ugly632ugly1257startup_seg_s_b4b6b_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6b_0_135)
       (not_occupied seg_s_b4b6a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6a_0_135 ?a)
       (not (not_blocked seg_s_b4b6a_0_135 ?a))))
 (:action
  ugly29278ugly30028ugly30045ugly30399ugly30091ugly618ugly377ugly155ugly1052startup_seg_p164_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p164_0_75)
       (not_occupied seg_w1_164b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a))))
 (:action
  ugly29279ugly30055ugly29804ugly29407ugly29216ugly1188ugly1316ugly627ugly939move_seg_n_a3d_0_60_seg_n_a2a3f_0_115_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a3d_0_60) (not_occupied seg_n_a2a3f_0_115)
       (not_blocked seg_n_a2a3f_0_115 airplane_cfbeg)
       (not_blocked seg_n_a2a3f_0_115 airplane_cfbe1)
       (not_blocked seg_n_a2a3f_0_115 airplane_cfbe3)
       (not_blocked seg_n_a2a3f_0_115 airplane_daew8)
       (not_blocked seg_n_a2a3f_0_115 airplane_daew3)
       (not_blocked seg_n_a2a3f_0_115 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a3d_0_60)) (not_occupied seg_n_a3d_0_60)
       (not (at-segment ?a seg_n_a3d_0_60)) (occupied seg_n_a2a3f_0_115)
       (not (not_occupied seg_n_a2a3f_0_115)) (blocked seg_n_a2a3f_0_115 ?a)
       (not (not_blocked seg_n_a2a3f_0_115 ?a))
       (at-segment ?a seg_n_a2a3f_0_115) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_n_a3a_0_60 ?a))
       (not_blocked seg_n_a3a_0_60 ?a) (not (blocked seg_n_a3b_0_60 ?a))
       (not_blocked seg_n_a3b_0_60 ?a) (not (blocked seg_n_a3c_0_60 ?a))
       (not_blocked seg_n_a3c_0_60 ?a)))
 (:action
  ugly29280ugly30118ugly30441ugly30260ugly29477ugly432ugly838ugly456ugly354move_seg_o1_c3b_0_60_seg_o1_c3d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3b_0_60) (not_occupied seg_o1_c3d_0_60)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c3d_0_60 airplane_daew8)
       (not_blocked seg_o1_c3d_0_60 airplane_daew3)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbe2)
       (not_occupied seg_o1_c3a_0_34) (not_occupied seg_o1_c3c_0_48))
  :effect
  (and (not (occupied seg_o1_c3b_0_60)) (not_occupied seg_o1_c3b_0_60)
       (not (at-segment ?a seg_o1_c3b_0_60)) (occupied seg_o1_c3d_0_60)
       (not (not_occupied seg_o1_c3d_0_60)) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a)) (at-segment ?a seg_o1_c3d_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p112_0_76 ?a)) (not_blocked seg_p112_0_76 ?a)
       (blocked seg_o1_c3a_0_34 ?a) (not (not_blocked seg_o1_c3a_0_34 ?a))
       (blocked seg_o1_c3c_0_48 ?a) (not (not_blocked seg_o1_c3c_0_48 ?a))))
 (:action
  ugly29281ugly29703ugly30504ugly29598ugly30303ugly330ugly613ugly1321ugly1191startup_seg_p117_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p117_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly29282ugly29445ugly29365ugly29338ugly30304ugly319ugly855ugly1078ugly380startup_seg_t_b5d_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5d_0_60)
       (not_occupied seg_t_b5a_0_60) (not_occupied seg_t_b5b_0_60)
       (not_occupied seg_t_b5c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5a_0_60 ?a)
       (not (not_blocked seg_t_b5a_0_60 ?a)) (blocked seg_t_b5b_0_60 ?a)
       (not (not_blocked seg_t_b5b_0_60 ?a)) (blocked seg_t_b5c_0_120_934 ?a)
       (not (not_blocked seg_t_b5c_0_120_934 ?a))))
 (:action
  ugly29283ugly29866ugly29988ugly29630ugly29821ugly57ugly165ugly792ugly416move_seg_s_b3c_0_60_seg_s_b2b3c_0_140_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b3c_0_60) (not_occupied seg_s_b2b3c_0_140)
       (not_blocked seg_s_b2b3c_0_140 airplane_cfbeg)
       (not_blocked seg_s_b2b3c_0_140 airplane_cfbe1)
       (not_blocked seg_s_b2b3c_0_140 airplane_cfbe3)
       (not_blocked seg_s_b2b3c_0_140 airplane_daew8)
       (not_blocked seg_s_b2b3c_0_140 airplane_daew3)
       (not_blocked seg_s_b2b3c_0_140 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b3c_0_60)) (not_occupied seg_s_b3c_0_60)
       (not (at-segment ?a seg_s_b3c_0_60)) (occupied seg_s_b2b3c_0_140)
       (not (not_occupied seg_s_b2b3c_0_140)) (blocked seg_s_b2b3c_0_140 ?a)
       (not (not_blocked seg_s_b2b3c_0_140 ?a))
       (at-segment ?a seg_s_b2b3c_0_140) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_s_b3a_0_60 ?a))
       (not_blocked seg_s_b3a_0_60 ?a) (not (blocked seg_s_b3b_0_60 ?a))
       (not_blocked seg_s_b3b_0_60 ?a)))
 (:action
  ugly29284ugly29465ugly29393ugly29434ugly30009ugly1005ugly67ugly60ugly513startup_seg_b9_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_b_1_0_80_6226)
       (not_occupied seg_b9_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_a_0_156_924 ?a)
       (not (not_blocked seg_b9_a_0_156_924 ?a))))
 (:action
  ugly29285ugly29585ugly29197ugly30387ugly29444ugly1195ugly1225ugly742ugly64startup_seg_m_a9a10e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10e_0_75)
       (not_occupied seg_m_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10f_0_75 ?a)
       (not (not_blocked seg_m_a9a10f_0_75 ?a))))
 (:action
  ugly29286ugly29596ugly29672ugly29221ugly29261ugly1284ugly739ugly1036ugly497move_seg_o1_109b_0_60_seg_o1_109a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109b_0_60) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_109a_0_34 airplane_daew8)
       (not_blocked seg_o1_109a_0_34 airplane_daew3)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_109c_0_34) (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (occupied seg_o1_109b_0_60)) (not_occupied seg_o1_109b_0_60)
       (not (at-segment ?a seg_o1_109b_0_60)) (occupied seg_o1_109a_0_34)
       (not (not_occupied seg_o1_109a_0_34)) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a)) (at-segment ?a seg_o1_109a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p109_0_76 ?a)) (not_blocked seg_p109_0_76 ?a)
       (blocked seg_o1_109c_0_34 ?a) (not (not_blocked seg_o1_109c_0_34 ?a))
       (blocked seg_o1_109d_0_45 ?a) (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action
  ugly29287ugly29915ugly30212ugly29359ugly29843ugly1062ugly241ugly240ugly71startup_seg_o1_104b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104b_0_60)
       (not_occupied seg_p104_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p104_0_76 ?a)
       (not (not_blocked seg_p104_0_76 ?a))))
 (:action
  ugly29288ugly30344ugly30240ugly29812ugly30056ugly1307ugly138ugly1358ugly229move_seg_n_n2a4e_0_75_seg_n_n2a4d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4e_0_75) (not_occupied seg_n_n2a4d_0_75)
       (not_blocked seg_n_n2a4d_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4d_0_75 airplane_cfbe1)
       (not_blocked seg_n_n2a4d_0_75 airplane_cfbe3)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew8)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew3)
       (not_blocked seg_n_n2a4d_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_n2a4e_0_75)) (not_occupied seg_n_n2a4e_0_75)
       (not (at-segment ?a seg_n_n2a4e_0_75)) (occupied seg_n_n2a4d_0_75)
       (not (not_occupied seg_n_n2a4d_0_75)) (blocked seg_n_n2a4d_0_75 ?a)
       (not (not_blocked seg_n_n2a4d_0_75 ?a)) (at-segment ?a seg_n_n2a4d_0_75)
       (not (blocked seg_n_a4c_0_60 ?a)) (not_blocked seg_n_a4c_0_60 ?a)))
 (:action
  ugly29289ugly29631ugly30528ugly30112ugly29626ugly411ugly1181ugly760ugly92park_seg_p115_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p115_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p115_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_115b_0_60 ?a)) (not_blocked seg_o1_115b_0_60 ?a)))
 (:action
  ugly29290ugly30471ugly29746ugly29675ugly29287ugly732ugly965ugly516ugly870startup_seg_n_a4a7c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7c_0_75)
       (not_occupied seg_n_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7b_0_75 ?a)
       (not (not_blocked seg_n_a4a7b_0_75 ?a))))
 (:action
  ugly29291ugly29350ugly29870ugly29828ugly29579ugly1236ugly1125ugly353ugly524park_seg_p108_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p108_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p108_0_76) (not (is-moving ?a))))
 (:action
  ugly29292ugly30021ugly29531ugly29832ugly30095ugly419ugly1110ugly816ugly515startup_seg_p142_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p142_0_75)
       (not_occupied seg_w1_142b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a))))
 (:action
  ugly29293ugly29483ugly29400ugly29490ugly29223ugly782ugly107ugly849ugly1360startup_seg_n_a2a3b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3b_0_75)
       (not_occupied seg_n_a2a3c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3c_0_75 ?a)
       (not (not_blocked seg_n_a2a3c_0_75 ?a))))
 (:action
  ugly29294ugly29796ugly29905ugly30233ugly30390ugly582ugly345ugly798ugly505startup_seg_t_b5b8b_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8b_0_135)
       (not_occupied seg_t_b5b8c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8c_0_130 ?a)
       (not (not_blocked seg_t_b5b8c_0_130 ?a))))
 (:action
  ugly29295ugly29248ugly29769ugly30523ugly30541ugly944ugly674ugly201ugly963startup_seg_w1_163c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163c_0_34)
       (not_occupied seg_w1_163a_0_34) (not_occupied seg_w1_163b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action
  ugly29296ugly29993ugly29323ugly30382ugly30395ugly1091ugly437ugly498ugly1218startup_seg_s_b7a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7a_0_60)
       (not_occupied seg_s5_0_94))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s5_0_94 ?a)
       (not (not_blocked seg_s5_0_94 ?a))))
 (:action
  ugly29297ugly29789ugly29286ugly29596ugly29672ugly38ugly167ugly747ugly1215startup_seg_b2_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b2_0_80)
       (not_occupied seg_t_b2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2c_0_60 ?a)
       (not (not_blocked seg_t_b2c_0_60 ?a))))
 (:action
  ugly29298ugly29311ugly29409ugly29433ugly30369ugly888ugly1061ugly1301ugly38move_seg_n_a7a6c_0_75_seg_n_a7a6b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6c_0_75) (not_occupied seg_n_a7a6b_0_75)
       (not_blocked seg_n_a7a6b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6b_0_75 airplane_cfbe1)
       (not_blocked seg_n_a7a6b_0_75 airplane_cfbe3)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew8)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew3)
       (not_blocked seg_n_a7a6b_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a7a6c_0_75)) (not_occupied seg_n_a7a6c_0_75)
       (not (at-segment ?a seg_n_a7a6c_0_75)) (occupied seg_n_a7a6b_0_75)
       (not (not_occupied seg_n_a7a6b_0_75)) (blocked seg_n_a7a6b_0_75 ?a)
       (not (not_blocked seg_n_a7a6b_0_75 ?a)) (at-segment ?a seg_n_a7a6b_0_75)
       (not (blocked seg_n_a7a6d_0_75 ?a)) (not_blocked seg_n_a7a6d_0_75 ?a)))
 (:action
  ugly29299ugly30514ugly29463ugly29825ugly29441ugly534ugly321ugly208ugly500startup_seg_s_b6b7b_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b7b_0_140)
       (not_occupied seg_s_b7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7d_0_60 ?a)
       (not (not_blocked seg_s_b7d_0_60 ?a))))
 (:action
  ugly29300ugly29728ugly29219ugly29747ugly30068ugly478ugly1366ugly364ugly797move_seg_n_a7a6d_0_75_seg_n_a7a6c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6d_0_75) (not_occupied seg_n_a7a6c_0_75)
       (not_blocked seg_n_a7a6c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6c_0_75 airplane_cfbe1)
       (not_blocked seg_n_a7a6c_0_75 airplane_cfbe3)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew8)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew3)
       (not_blocked seg_n_a7a6c_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a7a6d_0_75)) (not_occupied seg_n_a7a6d_0_75)
       (not (at-segment ?a seg_n_a7a6d_0_75)) (occupied seg_n_a7a6c_0_75)
       (not (not_occupied seg_n_a7a6c_0_75)) (blocked seg_n_a7a6c_0_75 ?a)
       (not (not_blocked seg_n_a7a6c_0_75 ?a)) (at-segment ?a seg_n_a7a6c_0_75)
       (not (blocked seg_n_a6c_0_60 ?a)) (not_blocked seg_n_a6c_0_60 ?a)))
 (:action
  ugly29301ugly29719ugly29574ugly30048ugly29816ugly196ugly86ugly235ugly576move_seg_o1_c4b_0_60_seg_p119_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4b_0_60) (not_occupied seg_p119_0_76)
       (not_blocked seg_p119_0_76 airplane_cfbeg)
       (not_blocked seg_p119_0_76 airplane_cfbe1)
       (not_blocked seg_p119_0_76 airplane_cfbe3)
       (not_blocked seg_p119_0_76 airplane_daew8)
       (not_blocked seg_p119_0_76 airplane_daew3)
       (not_blocked seg_p119_0_76 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_c4b_0_60)) (not_occupied seg_o1_c4b_0_60)
       (not (at-segment ?a seg_o1_c4b_0_60)) (occupied seg_p119_0_76)
       (not (not_occupied seg_p119_0_76)) (blocked seg_p119_0_76 ?a)
       (not (not_blocked seg_p119_0_76 ?a)) (at-segment ?a seg_p119_0_76)
       (not (blocked seg_o1_c4a_0_34 ?a)) (not_blocked seg_o1_c4a_0_34 ?a)
       (not (blocked seg_o1_c4c_0_80 ?a)) (not_blocked seg_o1_c4c_0_80 ?a)))
 (:action
  ugly29302ugly30122ugly29498ugly29868ugly29673ugly93ugly773ugly447ugly560startup_seg_m_a6d_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6d_0_120_934)
       (not_occupied seg_a6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_b_0_159_512 ?a)
       (not (not_blocked seg_a6_b_0_159_512 ?a))))
 (:action
  ugly29303ugly29841ugly29845ugly29377ugly29811ugly331ugly183ugly163ugly72startup_seg_m_a6a8f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8f_0_115)
       (not_occupied seg_m_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8c_0_60 ?a)
       (not (not_blocked seg_m_a8c_0_60 ?a))))
 (:action
  ugly29304ugly29431ugly29561ugly30330ugly29414ugly734ugly964ugly701ugly794startup_seg_o1_102c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102c_0_34)
       (not_occupied seg_o1_102a_0_34) (not_occupied seg_o1_102b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action
  ugly29305ugly29877ugly30218ugly30405ugly29386ugly1027ugly42ugly213ugly343startup_seg_o1_c1b_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1b_0_34)
       (not_occupied seg_o1_c1a_0_60) (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action
  ugly29306ugly30373ugly29695ugly30328ugly29437ugly454ugly361ugly57ugly165startup_seg_p152_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p152_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly29307ugly30156ugly29458ugly30346ugly29975ugly839ugly203ugly1004ugly224startup_seg_n1_0_108_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_0_108)
       (not_occupied seg_w1_c1a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a))))
 (:action
  ugly29308ugly29701ugly29597ugly30315ugly29417ugly349ugly1027ugly42ugly213move_seg_o1_104a_0_34_seg_o1_104b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_104b_0_60)
       (not_blocked seg_o1_104b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_104b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_104b_0_60 airplane_daew8)
       (not_blocked seg_o1_104b_0_60 airplane_daew3)
       (not_blocked seg_o1_104b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (occupied seg_o1_104a_0_34)) (not_occupied seg_o1_104a_0_34)
       (not (at-segment ?a seg_o1_104a_0_34)) (occupied seg_o1_104b_0_60)
       (not (not_occupied seg_o1_104b_0_60)) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a)) (at-segment ?a seg_o1_104b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_103c_0_34 ?a)) (not_blocked seg_o1_103c_0_34 ?a)
       (blocked seg_o1_104c_0_60 ?a) (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action
  ugly29309ugly29952ugly29897ugly29700ugly29607ugly604ugly767ugly1310ugly43startup_seg_w1_161a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161a_0_34)
       (not_occupied seg_w1_161b_0_45) (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action
  ugly29310ugly29332ugly30032ugly29467ugly30498ugly524ugly934ugly958ugly1153startup_seg_c1_n2c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2c_0_60)
       (not_occupied seg_w1_c1b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a))))
 (:action
  ugly29311ugly29409ugly29433ugly30369ugly30071ugly299ugly8ugly609ugly950startup_seg_p143_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p143_0_75)
       (not_occupied seg_w1_143b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a))))
 (:action
  ugly29312ugly29833ugly29578ugly29976ugly29754ugly1267ugly18ugly1228ugly411startup_seg_m_a6a8e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8e_0_75)
       (not_occupied seg_m_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8d_0_75 ?a)
       (not (not_blocked seg_m_a6a8d_0_75 ?a))))
 (:action
  ugly29313ugly30334ugly29611ugly30249ugly30464ugly324ugly503ugly204ugly1345move_seg_w1_c2c_0_34_seg_w1_151a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c2c_0_34) (not_occupied seg_w1_151a_0_34)
       (not_blocked seg_w1_151a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_151a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_151a_0_34 airplane_daew8)
       (not_blocked seg_w1_151a_0_34 airplane_daew3)
       (not_blocked seg_w1_151a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_c2c_0_34)) (not_occupied seg_w1_c2c_0_34)
       (not (at-segment ?a seg_w1_c2c_0_34)) (occupied seg_w1_151a_0_34)
       (not (not_occupied seg_w1_151a_0_34)) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (at-segment ?a seg_w1_151a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c2a_0_60 ?a)) (not_blocked seg_w1_c2a_0_60 ?a)
       (not (blocked seg_w1_c2b_0_60 ?a)) (not_blocked seg_w1_c2b_0_60 ?a)))
 (:action
  ugly29314ugly29987ugly29759ugly29402ugly29489ugly942ugly352ugly974ugly665startup_seg_b10_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b10_0_80)
       (not_occupied seg_t_b10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10b_0_60 ?a)
       (not (not_blocked seg_t_b10b_0_60 ?a))))
 (:action
  ugly29315ugly29910ugly29633ugly30182ugly29376ugly441ugly1056ugly754ugly1291startup_seg_n_a2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2b_0_60)
       (not_occupied seg_n_a2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a_0_60 ?a)
       (not (not_blocked seg_n_a2a_0_60 ?a))))
 (:action
  ugly29316ugly30006ugly29684ugly30345ugly29341ugly177ugly372ugly979ugly132startup_seg_n_a6a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a_0_60)
       (not_occupied seg_n_a6b_0_60) (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a)) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action
  ugly29317ugly30101ugly29610ugly30119ugly30114ugly1342ugly184ugly924ugly1320startup_seg_s_b8b9c_1_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9c_1_0_115)
       (not_occupied seg_s_b8b9c_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9c_0_115 ?a)
       (not (not_blocked seg_s_b8b9c_0_115 ?a))))
 (:action
  ugly29318ugly29199ugly30026ugly30275ugly29757ugly736ugly895ugly1089ugly290move_seg_08l_a7d_0_80_seg_08l_a7b_0_161_245_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a7d_0_80) (not_occupied seg_08l_a7b_0_161_245)
       (not_blocked seg_08l_a7b_0_161_245 airplane_cfbeg)
       (not_blocked seg_08l_a7b_0_161_245 airplane_cfbe1)
       (not_blocked seg_08l_a7b_0_161_245 airplane_cfbe3)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daew8)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daew3)
       (not_blocked seg_08l_a7b_0_161_245 airplane_cfbe2)
       (not_occupied seg_08l_a7a_0_80) (not_occupied seg_08l_a7c_0_161_245))
  :effect
  (and (not (occupied seg_08l_a7d_0_80)) (not_occupied seg_08l_a7d_0_80)
       (not (at-segment ?a seg_08l_a7d_0_80)) (occupied seg_08l_a7b_0_161_245)
       (not (not_occupied seg_08l_a7b_0_161_245))
       (blocked seg_08l_a7b_0_161_245 ?a)
       (not (not_blocked seg_08l_a7b_0_161_245 ?a))
       (at-segment ?a seg_08l_a7b_0_161_245) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_08l_a6a7_0_450 ?a))
       (not_blocked seg_08l_a6a7_0_450 ?a) (blocked seg_08l_a7a_0_80 ?a)
       (not (not_blocked seg_08l_a7a_0_80 ?a))
       (blocked seg_08l_a7c_0_161_245 ?a)
       (not (not_blocked seg_08l_a7c_0_161_245 ?a))))
 (:action
  ugly29319ugly29734ugly30035ugly29305ugly29877ugly1035ugly1292ugly256ugly1108move_seg_w1_164b_0_45_seg_p164_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164b_0_45) (not_occupied seg_p164_0_75)
       (not_blocked seg_p164_0_75 airplane_cfbeg)
       (not_blocked seg_p164_0_75 airplane_cfbe1)
       (not_blocked seg_p164_0_75 airplane_cfbe3)
       (not_blocked seg_p164_0_75 airplane_daew8)
       (not_blocked seg_p164_0_75 airplane_daew3)
       (not_blocked seg_p164_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_164b_0_45)) (not_occupied seg_w1_164b_0_45)
       (not (at-segment ?a seg_w1_164b_0_45)) (occupied seg_p164_0_75)
       (not (not_occupied seg_p164_0_75)) (blocked seg_p164_0_75 ?a)
       (not (not_blocked seg_p164_0_75 ?a)) (at-segment ?a seg_p164_0_75)
       (not (blocked seg_w1_164a_0_34 ?a)) (not_blocked seg_w1_164a_0_34 ?a)
       (not (blocked seg_w1_164c_0_34 ?a)) (not_blocked seg_w1_164c_0_34 ?a)))
 (:action
  ugly29320ugly29252ugly30368ugly30103ugly29391ugly1263ugly1244ugly1285ugly273park_seg_p133_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p133_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p133_0_75) (not (is-moving ?a))))
 (:action
  ugly29321ugly30494ugly29382ugly29358ugly29208ugly1142ugly390ugly1159ugly441startup_seg_c1_n2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2a_0_60)
       (not_occupied seg_n2_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_0_108 ?a)
       (not (not_blocked seg_n2_0_108 ?a))))
 (:action
  ugly29322ugly30375ugly30366ugly30254ugly30184ugly77ugly360ugly1266ugly1350startup_seg_08l_a3b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a3b_0_161_245)
       (not_occupied seg_a3_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_a_0_158_647 ?a)
       (not (not_blocked seg_a3_a_0_158_647 ?a))))
 (:action
  ugly29323ugly30382ugly30395ugly30274ugly29284ugly282ugly1361ugly614ugly247startup_seg_a7_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_0_80_6226)
       (not_occupied seg_a7_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_1_0_80_6226 ?a))))
 (:action
  ugly29324ugly30040ugly29949ugly29835ugly29730ugly481ugly581ugly1195ugly1225park_seg_p141_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p141_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p141_0_75) (not (is-moving ?a))))
 (:action
  ugly29325ugly29618ugly29326ugly29427ugly29415ugly380ugly565ugly1096ugly1122startup_seg_o1_111a_0_34_south_medium
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
  ugly29326ugly29427ugly29415ugly29563ugly29418ugly1197ugly370ugly130ugly751startup_seg_m_a3a4b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4b_0_75)
       (not_occupied seg_m_a3a4a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4a_0_75 ?a)
       (not (not_blocked seg_m_a3a4a_0_75 ?a))))
 (:action
  ugly29327ugly30393ugly30154ugly29472ugly29200ugly13ugly20ugly473ugly271move_seg_p132_0_75_seg_o1_109d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p132_0_75) (not_occupied seg_o1_109d_0_45)
       (not_blocked seg_o1_109d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_109d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_109d_0_45 airplane_cfbe3)
       (not_blocked seg_o1_109d_0_45 airplane_daew8)
       (not_blocked seg_o1_109d_0_45 airplane_daew3)
       (not_blocked seg_o1_109d_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p132_0_75)) (not_occupied seg_p132_0_75)
       (not (at-segment ?a seg_p132_0_75)) (occupied seg_o1_109d_0_45)
       (not (not_occupied seg_o1_109d_0_45)) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))
       (at-segment ?a seg_o1_109d_0_45)))
 (:action
  ugly29328ugly30087ugly30463ugly30226ugly30379ugly588ugly267ugly47ugly567move_seg_o1_c3d_0_60_seg_c3_b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3d_0_60) (not_occupied seg_c3_b_0_80)
       (not_blocked seg_c3_b_0_80 airplane_cfbeg)
       (not_blocked seg_c3_b_0_80 airplane_cfbe1)
       (not_blocked seg_c3_b_0_80 airplane_cfbe3)
       (not_blocked seg_c3_b_0_80 airplane_daew8)
       (not_blocked seg_c3_b_0_80 airplane_daew3)
       (not_blocked seg_c3_b_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_c3d_0_60)) (not_occupied seg_o1_c3d_0_60)
       (not (at-segment ?a seg_o1_c3d_0_60)) (occupied seg_c3_b_0_80)
       (not (not_occupied seg_c3_b_0_80)) (blocked seg_c3_b_0_80 ?a)
       (not (not_blocked seg_c3_b_0_80 ?a)) (at-segment ?a seg_c3_b_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c3a_0_34 ?a)) (not_blocked seg_o1_c3a_0_34 ?a)
       (not (blocked seg_o1_c3b_0_60 ?a)) (not_blocked seg_o1_c3b_0_60 ?a)
       (not (blocked seg_o1_c3c_0_48 ?a)) (not_blocked seg_o1_c3c_0_48 ?a)))
 (:action
  ugly29329ugly29334ugly29558ugly30289ugly29265ugly204ugly1345ugly12ugly1210startup_seg_o1_111d_0_45_south_medium
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
  ugly29330ugly30539ugly29974ugly29745ugly29955ugly719ugly632ugly1257ugly659startup_seg_n_n2a4a_0_70_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4a_0_70)
       (not_occupied seg_n_n2a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4b_0_75 ?a)
       (not (not_blocked seg_n_n2a4b_0_75 ?a))))
 (:action
  ugly29331ugly30175ugly29851ugly29619ugly30536ugly1351ugly841ugly197ugly303park_seg_p154_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p154_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p154_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_154b_0_45 ?a)) (not_blocked seg_w1_154b_0_45 ?a)))
 (:action
  ugly29332ugly30032ugly29467ugly30498ugly29707ugly979ugly132ugly1171ugly642startup_seg_o1_111a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111a_0_34)
       (not_occupied seg_o1_110c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a))))
 (:action
  ugly29333ugly29195ugly30189ugly30486ugly29885ugly680ugly554ugly1117ugly114startup_seg_a10_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_0_80)
       (not_occupied seg_a10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_1_0_80 ?a)
       (not (not_blocked seg_a10_1_0_80 ?a))))
 (:action
  ugly29334ugly29558ugly30289ugly29265ugly29387ugly842ugly827ugly814ugly1124move_seg_w1_163a_0_34_seg_w1_163b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_163b_0_45)
       (not_blocked seg_w1_163b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_163b_0_45 airplane_daew8)
       (not_blocked seg_w1_163b_0_45 airplane_daew3)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe2)
       (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (occupied seg_w1_163a_0_34)) (not_occupied seg_w1_163a_0_34)
       (not (at-segment ?a seg_w1_163a_0_34)) (occupied seg_w1_163b_0_45)
       (not (not_occupied seg_w1_163b_0_45)) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a)) (at-segment ?a seg_w1_163b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_162c_0_34 ?a)) (not_blocked seg_w1_162c_0_34 ?a)
       (blocked seg_w1_163c_0_34 ?a) (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action
  ugly29335ugly29485ugly29519ugly29534ugly29743ugly1158ugly956ugly770ugly848startup_seg_m_a4a7e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7e_0_75)
       (not_occupied seg_m_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7d_0_75 ?a)
       (not (not_blocked seg_m_a4a7d_0_75 ?a))))
 (:action
  ugly29336ugly30235ugly29343ugly29268ugly30354ugly1319ugly954ugly1177ugly483startup_seg_s_b4c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4c_0_60)
       (not_occupied seg_s_b3b4d_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4d_0_140 ?a)
       (not (not_blocked seg_s_b3b4d_0_140 ?a))))
 (:action
  ugly29337ugly29198ugly30499ugly29636ugly29726ugly456ugly354ugly402ugly824startup_seg_t_b2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2a_0_60)
       (not_occupied seg_s_b2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b_0_60 ?a)
       (not (not_blocked seg_s_b2b_0_60 ?a))))
 (:action
  ugly29338ugly30304ugly29502ugly29681ugly30051ugly916ugly1256ugly874ugly876startup_seg_b9_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_b_0_80_6226)
       (not_occupied seg_t_b9c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9c_0_120_934 ?a)
       (not (not_blocked seg_t_b9c_0_120_934 ?a))))
 (:action
  ugly29339ugly30493ugly29263ugly29856ugly30545ugly87ugly400ugly246ugly231startup_seg_m_a9a_0_60_south_medium
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
  ugly29340ugly30190ugly30039ugly30461ugly30086ugly114ugly1237ugly706ugly51startup_seg_n_a8a9b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9b_0_75)
       (not_occupied seg_n_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9c_0_75 ?a)
       (not (not_blocked seg_n_a8a9c_0_75 ?a))))
 (:action
  ugly29341ugly29360ugly29966ugly29231ugly29850ugly603ugly573ugly154ugly918startup_seg_b3_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_b_1_0_80_6226)
       (not_occupied seg_b3_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_a_0_156_924 ?a)
       (not (not_blocked seg_b3_a_0_156_924 ?a))))
 (:action
  ugly29342ugly29967ugly29829ugly30317ugly29435ugly1300ugly1352ugly260ugly216startup_seg_t_b8d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8d_0_60)
       (not_occupied seg_t_b5b8c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8c_0_130 ?a)
       (not (not_blocked seg_t_b5b8c_0_130 ?a))))
 (:action
  ugly29343ugly29268ugly30354ugly30502ugly30411ugly763ugly538ugly23ugly605move_seg_o1_c4b_0_60_seg_o1_c4c_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4b_0_60) (not_occupied seg_o1_c4c_0_80)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbe1)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbe3)
       (not_blocked seg_o1_c4c_0_80 airplane_daew8)
       (not_blocked seg_o1_c4c_0_80 airplane_daew3)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbe2)
       (not_occupied seg_o1_c4a_0_34))
  :effect
  (and (not (occupied seg_o1_c4b_0_60)) (not_occupied seg_o1_c4b_0_60)
       (not (at-segment ?a seg_o1_c4b_0_60)) (occupied seg_o1_c4c_0_80)
       (not (not_occupied seg_o1_c4c_0_80)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a)) (at-segment ?a seg_o1_c4c_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p119_0_76 ?a)) (not_blocked seg_p119_0_76 ?a)
       (blocked seg_o1_c4a_0_34 ?a) (not (not_blocked seg_o1_c4a_0_34 ?a))))
 (:action
  ugly29344ugly30431ugly30358ugly30546ugly29269ugly909ugly185ugly1365ugly1278move_seg_o1_103c_0_34_seg_o1_104a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103c_0_34) (not_occupied seg_o1_104a_0_34)
       (not_blocked seg_o1_104a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_104a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_104a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_104a_0_34 airplane_daew8)
       (not_blocked seg_o1_104a_0_34 airplane_daew3)
       (not_blocked seg_o1_104a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_103c_0_34)) (not_occupied seg_o1_103c_0_34)
       (not (at-segment ?a seg_o1_103c_0_34)) (occupied seg_o1_104a_0_34)
       (not (not_occupied seg_o1_104a_0_34)) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (at-segment ?a seg_o1_104a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_103a_0_34 ?a)) (not_blocked seg_o1_103a_0_34 ?a)
       (not (blocked seg_o1_103b_0_60 ?a)) (not_blocked seg_o1_103b_0_60 ?a)))
 (:action
  ugly29345ugly29957ugly29273ugly29659ugly30261ugly1144ugly715ugly717ugly1095move_seg_p107_0_76_seg_o1_c2b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p107_0_76) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c2b_0_60 airplane_daew8)
       (not_blocked seg_o1_c2b_0_60 airplane_daew3)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p107_0_76)) (not_occupied seg_p107_0_76)
       (not (at-segment ?a seg_p107_0_76)) (occupied seg_o1_c2b_0_60)
       (not (not_occupied seg_o1_c2b_0_60)) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a)) (at-segment ?a seg_o1_c2b_0_60)))
 (:action
  ugly29346ugly29663ugly29793ugly29328ugly30087ugly1280ugly691ugly635ugly948startup_seg_o1_c2a_0_60_south_medium
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
  ugly29347ugly30337ugly30078ugly30533ugly29474ugly815ugly634ugly1164ugly1192startup_seg_m_a8c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8c_0_60)
       (not_occupied seg_m_a6a8f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8f_0_115 ?a)
       (not (not_blocked seg_m_a6a8f_0_115 ?a))))
 (:action
  ugly29348ugly29874ugly30011ugly30515ugly29280ugly935ugly239ugly151ugly1023move_seg_w1_153b_0_45_seg_p153_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153b_0_45) (not_occupied seg_p153_0_75)
       (not_blocked seg_p153_0_75 airplane_cfbeg)
       (not_blocked seg_p153_0_75 airplane_cfbe1)
       (not_blocked seg_p153_0_75 airplane_cfbe3)
       (not_blocked seg_p153_0_75 airplane_daew8)
       (not_blocked seg_p153_0_75 airplane_daew3)
       (not_blocked seg_p153_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_153b_0_45)) (not_occupied seg_w1_153b_0_45)
       (not (at-segment ?a seg_w1_153b_0_45)) (occupied seg_p153_0_75)
       (not (not_occupied seg_p153_0_75)) (blocked seg_p153_0_75 ?a)
       (not (not_blocked seg_p153_0_75 ?a)) (at-segment ?a seg_p153_0_75)
       (not (blocked seg_w1_153a_0_34 ?a)) (not_blocked seg_w1_153a_0_34 ?a)
       (not (blocked seg_w1_153c_0_34 ?a)) (not_blocked seg_w1_153c_0_34 ?a)))
 (:action
  ugly29349ugly29525ugly30420ugly30307ugly29342ugly784ugly207ugly987ugly868startup_seg_t_b9b10c_1_0_83_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_1_0_83)
       (not_occupied seg_t_b9b10c_2_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_2_0_83 ?a)
       (not (not_blocked seg_t_b9b10c_2_0_83 ?a))))
 (:action
  ugly29350ugly29870ugly29828ugly29579ugly30419ugly26ugly76ugly1146ugly1001startup_seg_n_a2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2b_0_60)
       (not_occupied seg_n_a2a3a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3a_0_75 ?a)
       (not (not_blocked seg_n_a2a3a_0_75 ?a))))
 (:action
  ugly29351ugly29996ugly30223ugly29662ugly30031ugly808ugly266ugly1111ugly561startup_seg_s_b3b4a_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4a_0_140)
       (not_occupied seg_s_b3a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3a_0_60 ?a)
       (not (not_blocked seg_s_b3a_0_60 ?a))))
 (:action
  ugly29352ugly29354ugly29972ugly29487ugly30336ugly641ugly1175ugly212ugly1296startup_seg_08r_b2a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b2a_0_80)
       (not_occupied seg_08r_b2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b2b_0_80 ?a)
       (not (not_blocked seg_08r_b2b_0_80 ?a))))
 (:action
  ugly29353ugly30157ugly29727ugly30133ugly30160ugly369ugly1179ugly55ugly1168move_seg_s_b2a_0_60_seg_s_b2b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b2a_0_60) (not_occupied seg_s_b2b_0_60)
       (not_blocked seg_s_b2b_0_60 airplane_cfbeg)
       (not_blocked seg_s_b2b_0_60 airplane_cfbe1)
       (not_blocked seg_s_b2b_0_60 airplane_cfbe3)
       (not_blocked seg_s_b2b_0_60 airplane_daew8)
       (not_blocked seg_s_b2b_0_60 airplane_daew3)
       (not_blocked seg_s_b2b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b2a_0_60)) (not_occupied seg_s_b2a_0_60)
       (not (at-segment ?a seg_s_b2a_0_60)) (occupied seg_s_b2b_0_60)
       (not (not_occupied seg_s_b2b_0_60)) (blocked seg_s_b2b_0_60 ?a)
       (not (not_blocked seg_s_b2b_0_60 ?a)) (at-segment ?a seg_s_b2b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_s_b2b3a_0_140 ?a))
       (not_blocked seg_s_b2b3a_0_140 ?a)))
 (:action
  ugly29354ugly29972ugly29487ugly30336ugly29824ugly81ugly187ugly307ugly158startup_seg_s_b2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b_0_60)
       (not_occupied seg_t_b2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2a_0_60 ?a)
       (not (not_blocked seg_t_b2a_0_60 ?a))))
 (:action
  ugly29355ugly29861ugly29394ugly30145ugly29232ugly4ugly1207ugly284ugly103startup_seg_n_a8a9d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9d_0_75)
       (not_occupied seg_n_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9c_0_75 ?a)
       (not (not_blocked seg_n_a8a9c_0_75 ?a))))
 (:action
  ugly29356ugly30517ugly29600ugly29741ugly30231ugly570ugly942ugly352ugly974startup_seg_s_b6c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6c_0_60)
       (not_occupied seg_s_b6a_0_60) (not_occupied seg_s_b6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6a_0_60 ?a)
       (not (not_blocked seg_s_b6a_0_60 ?a)) (blocked seg_s_b6b_0_60 ?a)
       (not (not_blocked seg_s_b6b_0_60 ?a))))
 (:action
  ugly29357ugly30451ugly30475ugly29301ugly29719ugly391ugly1104ugly408ugly852startup_seg_t_b2b3a_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3a_0_140)
       (not_occupied seg_t_b2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b_0_60 ?a)
       (not (not_blocked seg_t_b2b_0_60 ?a))))
 (:action
  ugly29358ugly29208ugly30325ugly29355ugly29861ugly211ugly164ugly640ugly630startup_seg_m_a7b_0_60_south_medium
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
  ugly29359ugly29843ugly30245ugly29370ugly30195ugly1252ugly326ugly676ugly943startup_seg_o1_c2c_0_34_south_medium
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
  ugly29360ugly29966ugly29231ugly29850ugly29786ugly497ugly366ugly711ugly1038startup_seg_t_b4a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4a_0_60)
       (not_occupied seg_s_b4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b_0_60 ?a)
       (not (not_blocked seg_s_b4b_0_60 ?a))))
 (:action
  ugly29361ugly29320ugly29252ugly30368ugly30103ugly208ugly500ugly668ugly79startup_seg_t_b8b9a_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9a_0_115)
       (not_occupied seg_t_b8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b_0_60 ?a)
       (not (not_blocked seg_t_b8b_0_60 ?a))))
 (:action
  ugly29362ugly29255ugly30168ugly29867ugly29959ugly334ugly644ugly1280ugly691startup_seg_s_b2b3a_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3a_0_140)
       (not_occupied seg_s_b2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2a_0_60 ?a)
       (not (not_blocked seg_s_b2a_0_60 ?a))))
 (:action
  ugly29363ugly29814ugly30205ugly29421ugly29646ugly981ugly281ugly512ugly100park_seg_p153_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p153_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p153_0_75) (not (is-moving ?a))))
 (:action
  ugly29364ugly29327ugly30393ugly30154ugly29472ugly17ugly409ugly358ugly312startup_seg_n_a7a6d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6d_0_75)
       (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action
  ugly29365ugly29338ugly30304ugly29502ugly29681ugly868ugly618ugly377ugly155startup_seg_p119_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p119_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly29366ugly29708ugly30468ugly29668ugly29981ugly927ugly584ugly1085ugly844startup_seg_t_b2b3c_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3c_0_140)
       (not_occupied seg_t_b2b3b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3b_0_140 ?a)
       (not (not_blocked seg_t_b2b3b_0_140 ?a))))
 (:action
  ugly29367ugly29606ugly30392ugly30508ugly29748ugly1266ugly1350ugly1066ugly1290startup_seg_n_a9a10d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10d_0_75)
       (not_occupied seg_n_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10e_0_75 ?a)
       (not (not_blocked seg_n_a9a10e_0_75 ?a))))
 (:action
  ugly29368ugly30425ugly29964ugly30130ugly29819ugly358ugly312ugly1306ugly182startup_seg_b4_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_b_0_80_6226)
       (not_occupied seg_b4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b4_b_1_0_80_6226 ?a))))
 (:action
  ugly29369ugly30391ugly29281ugly29703ugly30504ugly415ugly983ugly330ugly613startup_seg_n_a6a8e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8e_0_75)
       (not_occupied seg_n_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8d_0_75 ?a)
       (not (not_blocked seg_n_a6a8d_0_75 ?a))))
 (:action
  ugly29370ugly30195ugly30435ugly30080ugly29911ugly99ugly740ugly886ugly564startup_seg_o1_111b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111b_0_60)
       (not_occupied seg_p111_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p111_0_76 ?a)
       (not (not_blocked seg_p111_0_76 ?a))))
 (:action
  ugly29371ugly29275ugly29235ugly29505ugly29277ugly672ugly401ugly328ugly331move_seg_n_n2a4b_0_75_seg_n_n2a4a_0_70_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4b_0_75) (not_occupied seg_n_n2a4a_0_70)
       (not_blocked seg_n_n2a4a_0_70 airplane_cfbeg)
       (not_blocked seg_n_n2a4a_0_70 airplane_cfbe1)
       (not_blocked seg_n_n2a4a_0_70 airplane_cfbe3)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew8)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew3)
       (not_blocked seg_n_n2a4a_0_70 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_n2a4b_0_75)) (not_occupied seg_n_n2a4b_0_75)
       (not (at-segment ?a seg_n_n2a4b_0_75)) (occupied seg_n_n2a4a_0_70)
       (not (not_occupied seg_n_n2a4a_0_70)) (blocked seg_n_n2a4a_0_70 ?a)
       (not (not_blocked seg_n_n2a4a_0_70 ?a)) (at-segment ?a seg_n_n2a4a_0_70)
       (not (blocked seg_n_n2a4c_0_75 ?a)) (not_blocked seg_n_n2a4c_0_75 ?a)))
 (:action
  ugly29372ugly29638ugly29298ugly29311ugly29409ugly250ugly156ugly48ugly809move_seg_n_a4a7e_0_75_seg_n_a4a7d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7e_0_75) (not_occupied seg_n_a4a7d_0_75)
       (not_blocked seg_n_a4a7d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7d_0_75 airplane_cfbe1)
       (not_blocked seg_n_a4a7d_0_75 airplane_cfbe3)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew8)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew3)
       (not_blocked seg_n_a4a7d_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a4a7e_0_75)) (not_occupied seg_n_a4a7e_0_75)
       (not (at-segment ?a seg_n_a4a7e_0_75)) (occupied seg_n_a4a7d_0_75)
       (not (not_occupied seg_n_a4a7d_0_75)) (blocked seg_n_a4a7d_0_75 ?a)
       (not (not_blocked seg_n_a4a7d_0_75 ?a)) (at-segment ?a seg_n_a4a7d_0_75)
       (not (blocked seg_n_a4a7f_0_75 ?a)) (not_blocked seg_n_a4a7f_0_75 ?a)))
 (:action
  ugly29373ugly30234ugly29839ugly29213ugly29500ugly1318ugly1333ugly553ugly539move_seg_o1_109b_0_60_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109b_0_60) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_109c_0_34 airplane_daew8)
       (not_blocked seg_o1_109c_0_34 airplane_daew3)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe2)
       (not_occupied seg_o1_109a_0_34) (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (occupied seg_o1_109b_0_60)) (not_occupied seg_o1_109b_0_60)
       (not (at-segment ?a seg_o1_109b_0_60)) (occupied seg_o1_109c_0_34)
       (not (not_occupied seg_o1_109c_0_34)) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a)) (at-segment ?a seg_o1_109c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p109_0_76 ?a)) (not_blocked seg_p109_0_76 ?a)
       (blocked seg_o1_109a_0_34 ?a) (not (not_blocked seg_o1_109a_0_34 ?a))
       (blocked seg_o1_109d_0_45 ?a) (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action
  ugly29374ugly29283ugly29866ugly29988ugly29630ugly638ugly445ugly1007ugly815startup_seg_s_b2b3a_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3a_0_140)
       (not_occupied seg_s_b2b3b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3b_0_140 ?a)
       (not (not_blocked seg_s_b2b3b_0_140 ?a))))
 (:action
  ugly29375ugly30242ugly29313ugly30334ugly29611ugly1066ugly1290ugly1346ugly540startup_seg_p104_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p104_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly29376ugly29624ugly30381ugly30061ugly30460ugly53ugly892ugly46ugly188move_seg_08l_a2a3_0_970_seg_08l_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a2a3_0_970) (not_occupied seg_08l_0_80)
       (not_blocked seg_08l_0_80 airplane_cfbeg)
       (not_blocked seg_08l_0_80 airplane_cfbe1)
       (not_blocked seg_08l_0_80 airplane_cfbe3)
       (not_blocked seg_08l_0_80 airplane_daew8)
       (not_blocked seg_08l_0_80 airplane_daew3)
       (not_blocked seg_08l_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_08l_a2a3_0_970)) (not_occupied seg_08l_a2a3_0_970)
       (not (at-segment ?a seg_08l_a2a3_0_970)) (occupied seg_08l_0_80)
       (not (not_occupied seg_08l_0_80)) (blocked seg_08l_0_80 ?a)
       (not (not_blocked seg_08l_0_80 ?a)) (at-segment ?a seg_08l_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_08l_a2a_0_80 ?a)) (not_blocked seg_08l_a2a_0_80 ?a)))
 (:action
  ugly29377ugly29811ugly29514ugly29271ugly29440ugly506ugly421ugly171ugly123move_seg_o1_118c_0_34_seg_o1_118b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118c_0_34) (not_occupied seg_o1_118b_0_60)
       (not_blocked seg_o1_118b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_118b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_118b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_118b_0_60 airplane_daew8)
       (not_blocked seg_o1_118b_0_60 airplane_daew3)
       (not_blocked seg_o1_118b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_118a_0_34))
  :effect
  (and (not (occupied seg_o1_118c_0_34)) (not_occupied seg_o1_118c_0_34)
       (not (at-segment ?a seg_o1_118c_0_34)) (occupied seg_o1_118b_0_60)
       (not (not_occupied seg_o1_118b_0_60)) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a)) (at-segment ?a seg_o1_118b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c4a_0_34 ?a)) (not_blocked seg_o1_c4a_0_34 ?a)
       (blocked seg_o1_118a_0_34 ?a) (not (not_blocked seg_o1_118a_0_34 ?a))))
 (:action
  ugly29378ugly29302ugly30122ugly29498ugly29868ugly490ugly139ugly683ugly274move_seg_w1_161a_0_34_seg_w1_c3c_0_48_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_c3c_0_48)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbe1)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbe3)
       (not_blocked seg_w1_c3c_0_48 airplane_daew8)
       (not_blocked seg_w1_c3c_0_48 airplane_daew3)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_161a_0_34)) (not_occupied seg_w1_161a_0_34)
       (not (at-segment ?a seg_w1_161a_0_34)) (occupied seg_w1_c3c_0_48)
       (not (not_occupied seg_w1_c3c_0_48)) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a)) (at-segment ?a seg_w1_c3c_0_48)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_161b_0_45 ?a)) (not_blocked seg_w1_161b_0_45 ?a)
       (not (blocked seg_w1_161c_0_34 ?a)) (not_blocked seg_w1_161c_0_34 ?a)))
 (:action
  ugly29379ugly29635ugly29705ugly30365ugly29210ugly373ugly652ugly426ugly1178move_seg_w1_142a_0_34_seg_w1_142c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_142c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_142c_0_34 airplane_daew8)
       (not_blocked seg_w1_142c_0_34 airplane_daew3)
       (not_blocked seg_w1_142c_0_34 airplane_cfbe2)
       (not_occupied seg_w1_142b_0_45))
  :effect
  (and (not (occupied seg_w1_142a_0_34)) (not_occupied seg_w1_142a_0_34)
       (not (at-segment ?a seg_w1_142a_0_34)) (occupied seg_w1_142c_0_34)
       (not (not_occupied seg_w1_142c_0_34)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a)) (at-segment ?a seg_w1_142c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_141c_0_34 ?a)) (not_blocked seg_w1_141c_0_34 ?a)
       (blocked seg_w1_142b_0_45 ?a) (not (not_blocked seg_w1_142b_0_45 ?a))))
 (:action
  ugly29380ugly30248ugly29799ugly30287ugly29385ugly829ugly222ugly348ugly666startup_seg_t_b10c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10c_0_60)
       (not_occupied seg_t_b9b10c_0_84))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_0_84 ?a)
       (not (not_blocked seg_t_b9b10c_0_84 ?a))))
 (:action
  ugly29381ugly30510ugly30530ugly29725ugly29368ugly1242ugly885ugly542ugly61move_seg_o1_109c_0_34_seg_o1_109b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109c_0_34) (not_occupied seg_o1_109b_0_60)
       (not_blocked seg_o1_109b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_109b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_109b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_109b_0_60 airplane_daew8)
       (not_blocked seg_o1_109b_0_60 airplane_daew3)
       (not_blocked seg_o1_109b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_109a_0_34) (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (occupied seg_o1_109c_0_34)) (not_occupied seg_o1_109c_0_34)
       (not (at-segment ?a seg_o1_109c_0_34)) (occupied seg_o1_109b_0_60)
       (not (not_occupied seg_o1_109b_0_60)) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a)) (at-segment ?a seg_o1_109b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_110a_0_34 ?a)) (not_blocked seg_o1_110a_0_34 ?a)
       (blocked seg_o1_109a_0_34 ?a) (not (not_blocked seg_o1_109a_0_34 ?a))
       (blocked seg_o1_109d_0_45 ?a) (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action
  ugly29382ugly29358ugly29208ugly30325ugly29355ugly678ugly265ugly544ugly745move_seg_s_b4c_0_60_seg_s_b3b4d_0_140_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b4c_0_60) (not_occupied seg_s_b3b4d_0_140)
       (not_blocked seg_s_b3b4d_0_140 airplane_cfbeg)
       (not_blocked seg_s_b3b4d_0_140 airplane_cfbe1)
       (not_blocked seg_s_b3b4d_0_140 airplane_cfbe3)
       (not_blocked seg_s_b3b4d_0_140 airplane_daew8)
       (not_blocked seg_s_b3b4d_0_140 airplane_daew3)
       (not_blocked seg_s_b3b4d_0_140 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b4c_0_60)) (not_occupied seg_s_b4c_0_60)
       (not (at-segment ?a seg_s_b4c_0_60)) (occupied seg_s_b3b4d_0_140)
       (not (not_occupied seg_s_b3b4d_0_140)) (blocked seg_s_b3b4d_0_140 ?a)
       (not (not_blocked seg_s_b3b4d_0_140 ?a))
       (at-segment ?a seg_s_b3b4d_0_140) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_s_b4a_0_60 ?a))
       (not_blocked seg_s_b4a_0_60 ?a) (not (blocked seg_s_b4b_0_60 ?a))
       (not_blocked seg_s_b4b_0_60 ?a)))
 (:action
  ugly29383ugly29854ugly29245ugly29714ugly29791ugly1058ugly669ugly451ugly911move_seg_p131_0_75_seg_o1_108d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p131_0_75) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe3)
       (not_blocked seg_o1_108d_0_45 airplane_daew8)
       (not_blocked seg_o1_108d_0_45 airplane_daew3)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p131_0_75)) (not_occupied seg_p131_0_75)
       (not (at-segment ?a seg_p131_0_75)) (occupied seg_o1_108d_0_45)
       (not (not_occupied seg_o1_108d_0_45)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))
       (at-segment ?a seg_o1_108d_0_45)))
 (:action
  ugly29384ugly29304ugly29431ugly29561ugly30330ugly231ugly1205ugly694ugly883move_seg_08l_0_80_seg_08l_a3a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_0_80) (not_occupied seg_08l_a3a_0_80)
       (not_blocked seg_08l_a3a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a3a_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a3a_0_80 airplane_cfbe3)
       (not_blocked seg_08l_a3a_0_80 airplane_daew8)
       (not_blocked seg_08l_a3a_0_80 airplane_daew3)
       (not_blocked seg_08l_a3a_0_80 airplane_cfbe2)
       (not_occupied seg_08l_a3b_0_161_245))
  :effect
  (and (not (occupied seg_08l_0_80)) (not_occupied seg_08l_0_80)
       (not (at-segment ?a seg_08l_0_80)) (occupied seg_08l_a3a_0_80)
       (not (not_occupied seg_08l_a3a_0_80)) (blocked seg_08l_a3a_0_80 ?a)
       (not (not_blocked seg_08l_a3a_0_80 ?a)) (at-segment ?a seg_08l_a3a_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_08l_a2a3_0_970 ?a))
       (not_blocked seg_08l_a2a3_0_970 ?a) (blocked seg_08l_a3b_0_161_245 ?a)
       (not (not_blocked seg_08l_a3b_0_161_245 ?a))))
 (:action
  ugly29385ugly30012ugly29929ugly29571ugly29420ugly286ugly1157ugly1367ugly1076startup_seg_w1_162a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162a_0_34)
       (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action
  ugly29386ugly30210ugly30053ugly30417ugly29651ugly311ugly415ugly983ugly330startup_seg_b9_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_b_0_80_6226)
       (not_occupied seg_b9_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b9_b_1_0_80_6226 ?a))))
 (:action
  ugly29387ugly30025ugly29390ugly30203ugly29706ugly713ugly854ugly1323ugly807startup_seg_b8_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_b_0_80_6226)
       (not_occupied seg_b8_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b8_b_1_0_80_6226 ?a))))
 (:action
  ugly29388ugly29426ugly30037ugly29652ugly29203ugly1308ugly547ugly1130ugly196move_seg_n_a2a3a_0_75_seg_n_a2b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3a_0_75) (not_occupied seg_n_a2b_0_60)
       (not_blocked seg_n_a2b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a2b_0_60 airplane_cfbe1)
       (not_blocked seg_n_a2b_0_60 airplane_cfbe3)
       (not_blocked seg_n_a2b_0_60 airplane_daew8)
       (not_blocked seg_n_a2b_0_60 airplane_daew3)
       (not_blocked seg_n_a2b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a2a3a_0_75)) (not_occupied seg_n_a2a3a_0_75)
       (not (at-segment ?a seg_n_a2a3a_0_75)) (occupied seg_n_a2b_0_60)
       (not (not_occupied seg_n_a2b_0_60)) (blocked seg_n_a2b_0_60 ?a)
       (not (not_blocked seg_n_a2b_0_60 ?a)) (at-segment ?a seg_n_a2b_0_60)
       (not (blocked seg_n_a2a3b_0_75 ?a)) (not_blocked seg_n_a2a3b_0_75 ?a)))
 (:action
  ugly29389ugly29554ugly30111ugly30187ugly29698ugly1302ugly1046ugly113ugly1034startup_seg_b3_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_b_0_80_6226)
       (not_occupied seg_t_b3c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3c_0_120_934 ?a)
       (not (not_blocked seg_t_b3c_0_120_934 ?a))))
 (:action
  ugly29390ugly30203ugly29706ugly29896ugly29732ugly112ugly894ugly623ugly419startup_seg_m_a3a4d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4d_0_75)
       (not_occupied seg_m_a3a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4e_0_75 ?a)
       (not (not_blocked seg_m_a3a4e_0_75 ?a))))
 (:action
  ugly29391ugly30446ugly30406ugly29632ugly29762ugly514ugly577ugly532ugly206startup_seg_s_b6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b_0_60)
       (not_occupied seg_t_b6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6a_0_60 ?a)
       (not (not_blocked seg_t_b6a_0_60 ?a))))
 (:action
  ugly29392ugly29621ugly30166ugly30313ugly29795ugly585ugly338ugly889ugly893startup_seg_s_b4b6a_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6a_0_135)
       (not_occupied seg_s_b4b6b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6b_0_135 ?a)
       (not (not_blocked seg_s_b4b6b_0_135 ?a))))
 (:action
  ugly29393ugly29434ugly30009ugly30188ugly30222ugly969ugly1273ugly159ugly661startup_seg_w1_154c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154c_0_34)
       (not_occupied seg_w1_c3a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a))))
 (:action
  ugly29394ugly30145ugly29232ugly29187ugly30200ugly173ugly1123ugly1135ugly1138startup_seg_s_b7b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7b_0_60)
       (not_occupied seg_s_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5d_0_60 ?a)
       (not (not_blocked seg_s_b5d_0_60 ?a))))
 (:action
  ugly29395ugly30228ugly29645ugly29388ugly29426ugly854ugly1323ugly807ugly595startup_seg_s_b7d_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7d_0_60)
       (not_occupied seg_s_b7a_0_60) (not_occupied seg_s_b7b_0_60)
       (not_occupied seg_s_b7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7a_0_60 ?a)
       (not (not_blocked seg_s_b7a_0_60 ?a)) (blocked seg_s_b7b_0_60 ?a)
       (not (not_blocked seg_s_b7b_0_60 ?a)) (blocked seg_s_b7c_0_60 ?a)
       (not (not_blocked seg_s_b7c_0_60 ?a))))
 (:action
  ugly29396ugly29755ugly29220ugly30311ugly29405ugly1221ugly440ugly1331ugly1279startup_seg_n_a9a10b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10b_0_75)
       (not_occupied seg_n_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10c_0_75 ?a)
       (not (not_blocked seg_n_a9a10c_0_75 ?a))))
 (:action
  ugly29397ugly29446ugly29249ugly30151ugly30243ugly614ugly247ugly1149ugly1163move_seg_w1_153a_0_34_seg_w1_153c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_153c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_153c_0_34 airplane_daew8)
       (not_blocked seg_w1_153c_0_34 airplane_daew3)
       (not_blocked seg_w1_153c_0_34 airplane_cfbe2)
       (not_occupied seg_w1_153b_0_45))
  :effect
  (and (not (occupied seg_w1_153a_0_34)) (not_occupied seg_w1_153a_0_34)
       (not (at-segment ?a seg_w1_153a_0_34)) (occupied seg_w1_153c_0_34)
       (not (not_occupied seg_w1_153c_0_34)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a)) (at-segment ?a seg_w1_153c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_152c_0_34 ?a)) (not_blocked seg_w1_152c_0_34 ?a)
       (blocked seg_w1_153b_0_45 ?a) (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action
  ugly29398ugly29909ugly29406ugly30512ugly30052ugly354ugly402ugly824ugly486move_seg_o1_116b_0_60_seg_o1_116a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116b_0_60) (not_occupied seg_o1_116a_0_34)
       (not_blocked seg_o1_116a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_116a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_116a_0_34 airplane_daew8)
       (not_blocked seg_o1_116a_0_34 airplane_daew3)
       (not_blocked seg_o1_116a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (occupied seg_o1_116b_0_60)) (not_occupied seg_o1_116b_0_60)
       (not (at-segment ?a seg_o1_116b_0_60)) (occupied seg_o1_116a_0_34)
       (not (not_occupied seg_o1_116a_0_34)) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (at-segment ?a seg_o1_116a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p116_0_76 ?a)) (not_blocked seg_p116_0_76 ?a)
       (blocked seg_o1_116c_0_34 ?a) (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action
  ugly29399ugly30033ugly29926ugly30470ugly29205ugly372ugly979ugly132ugly1171startup_seg_s_b3c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3c_0_60)
       (not_occupied seg_s_b2b3c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3c_0_140 ?a)
       (not (not_blocked seg_s_b2b3c_0_140 ?a))))
 (:action
  ugly29400ugly29490ugly29223ugly29965ugly29408ugly107ugly849ugly1360ugly1248startup_seg_08r_b9a_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b9a_0_161_245)
       (not_occupied seg_08r_b9c_0_80) (not_occupied seg_09r_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b9c_0_80 ?a)
       (not (not_blocked seg_08r_b9c_0_80 ?a)) (blocked seg_09r_0_80 ?a)
       (not (not_blocked seg_09r_0_80 ?a))))
 (:action
  ugly29401ugly29678ugly30109ugly30282ugly29693ugly54ugly678ugly265ugly544startup_seg_p141_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p141_0_75)
       (not_occupied seg_w1_141b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action
  ugly29402ugly29489ugly30125ugly29452ugly29436ugly580ugly830ugly1186ugly369startup_seg_m_a6a8d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8d_0_75)
       (not_occupied seg_m_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8c_0_75 ?a)
       (not (not_blocked seg_m_a6a8c_0_75 ?a))))
 (:action
  ugly29403ugly30482ugly30296ugly29718ugly30321ugly587ugly533ugly606ugly1297move_seg_t_b8a_0_60_seg_s_b8b_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_t_b8a_0_60) (not_occupied seg_s_b8b_0_60)
       (not_blocked seg_s_b8b_0_60 airplane_cfbeg)
       (not_blocked seg_s_b8b_0_60 airplane_cfbe1)
       (not_blocked seg_s_b8b_0_60 airplane_cfbe3)
       (not_blocked seg_s_b8b_0_60 airplane_daew8)
       (not_blocked seg_s_b8b_0_60 airplane_daew3)
       (not_blocked seg_s_b8b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_t_b8a_0_60)) (not_occupied seg_t_b8a_0_60)
       (not (at-segment ?a seg_t_b8a_0_60)) (occupied seg_s_b8b_0_60)
       (not (not_occupied seg_s_b8b_0_60)) (blocked seg_s_b8b_0_60 ?a)
       (not (not_blocked seg_s_b8b_0_60 ?a)) (at-segment ?a seg_s_b8b_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_t_b8b_0_60 ?a)) (not_blocked seg_t_b8b_0_60 ?a)
       (not (blocked seg_t_b8c_0_120_934 ?a))
       (not_blocked seg_t_b8c_0_120_934 ?a) (not (blocked seg_t_b8d_0_60 ?a))
       (not_blocked seg_t_b8d_0_60 ?a)))
 (:action
  ugly29404ugly29274ugly30481ugly30292ugly29992ugly1038ugly522ugly476ugly286startup_seg_m_a7a6c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6c_0_75)
       (not_occupied seg_m_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6b_0_75 ?a)
       (not (not_blocked seg_m_a7a6b_0_75 ?a))))
 (:action
  ugly29405ugly30404ugly30377ugly30476ugly29371ugly92ugly1011ugly508ugly404startup_seg_o1_117b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117b_0_60)
       (not_occupied seg_p117_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p117_0_76 ?a)
       (not (not_blocked seg_p117_0_76 ?a))))
 (:action
  ugly29406ugly30512ugly30052ugly29537ugly29246ugly1080ugly906ugly446ugly1132startup_seg_t_b4c_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4c_0_120_934)
       (not_occupied seg_b4_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_b_0_80_6226 ?a)
       (not (not_blocked seg_b4_b_0_80_6226 ?a))))
 (:action
  ugly29407ugly29216ugly30371ugly30443ugly30497ugly10ugly1083ugly19ugly915move_seg_o1_109c_0_34_seg_o1_109a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109c_0_34) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_109a_0_34 airplane_daew8)
       (not_blocked seg_o1_109a_0_34 airplane_daew3)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_109b_0_60) (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (occupied seg_o1_109c_0_34)) (not_occupied seg_o1_109c_0_34)
       (not (at-segment ?a seg_o1_109c_0_34)) (occupied seg_o1_109a_0_34)
       (not (not_occupied seg_o1_109a_0_34)) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a)) (at-segment ?a seg_o1_109a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_110a_0_34 ?a)) (not_blocked seg_o1_110a_0_34 ?a)
       (blocked seg_o1_109b_0_60 ?a) (not (not_blocked seg_o1_109b_0_60 ?a))
       (blocked seg_o1_109d_0_45 ?a) (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action
  ugly29408ugly29290ugly30471ugly29746ugly29675ugly104ugly902ugly140ugly297startup_seg_m_a9a10d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10d_0_75)
       (not_occupied seg_m_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10e_0_75 ?a)
       (not (not_blocked seg_m_a9a10e_0_75 ?a))))
 (:action
  ugly29409ugly29433ugly30369ugly30071ugly29482ugly611ugly221ugly804ugly1060startup_seg_t_b8b9b_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9b_0_115)
       (not_occupied seg_t_b8b9a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9a_0_115 ?a)
       (not (not_blocked seg_t_b8b9a_0_115 ?a))))
 (:action
  ugly29410ugly29258ugly29443ugly29612ugly29604ugly1073ugly586ugly1048ugly1park_seg_p143_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p143_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p143_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_143b_0_45 ?a)) (not_blocked seg_w1_143b_0_45 ?a)))
 (:action
  ugly29411ugly30010ugly29758ugly29942ugly30015ugly1304ugly698ugly772ugly787startup_seg_p111_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p111_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly29412ugly29750ugly29752ugly30293ugly30388ugly264ugly150ugly583ugly724move_seg_c1_n2b_0_80_seg_c1_n2c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2b_0_80) (not_occupied seg_c1_n2c_0_60)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbe1)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbe3)
       (not_blocked seg_c1_n2c_0_60 airplane_daew8)
       (not_blocked seg_c1_n2c_0_60 airplane_daew3)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbe2)
       (not_occupied seg_c1_n2a_0_60))
  :effect
  (and (not (occupied seg_c1_n2b_0_80)) (not_occupied seg_c1_n2b_0_80)
       (not (at-segment ?a seg_c1_n2b_0_80)) (occupied seg_c1_n2c_0_60)
       (not (not_occupied seg_c1_n2c_0_60)) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a)) (at-segment ?a seg_c1_n2c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c1c_0_80 ?a)) (not_blocked seg_o1_c1c_0_80 ?a)
       (blocked seg_c1_n2a_0_60 ?a) (not (not_blocked seg_c1_n2a_0_60 ?a))))
 (:action
  ugly29413ugly29251ugly30500ugly29242ugly29215ugly1044ugly994ugly726ugly601startup_seg_a8_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_0_80_6226)
       (not_occupied seg_a8_b_1_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_1_0_79_7559 ?a)
       (not (not_blocked seg_a8_b_1_0_79_7559 ?a))))
 (:action
  ugly29414ugly29917ugly30126ugly29566ugly30024ugly1330ugly1349ugly1269ugly999startup_seg_n_a6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6b_0_60)
       (not_occupied seg_n_a6a8a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8a_0_115 ?a)
       (not (not_blocked seg_n_a6a8a_0_115 ?a))))
 (:action
  ugly29415ugly29563ugly29418ugly30380ugly29844ugly1150ugly1109ugly626ugly487startup_seg_t_b4a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4a_0_60)
       (not_occupied seg_t_b4b_0_60) (not_occupied seg_t_b4c_0_120_934)
       (not_occupied seg_t_b4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b_0_60 ?a)
       (not (not_blocked seg_t_b4b_0_60 ?a)) (blocked seg_t_b4c_0_120_934 ?a)
       (not (not_blocked seg_t_b4c_0_120_934 ?a)) (blocked seg_t_b4d_0_60 ?a)
       (not (not_blocked seg_t_b4d_0_60 ?a))))
 (:action
  ugly29416ugly30083ugly29886ugly30176ugly30097ugly1217ugly888ugly1061ugly1301move_seg_s_b6a_0_60_seg_s_b6c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b6a_0_60) (not_occupied seg_s_b6c_0_60)
       (not_blocked seg_s_b6c_0_60 airplane_cfbeg)
       (not_blocked seg_s_b6c_0_60 airplane_cfbe1)
       (not_blocked seg_s_b6c_0_60 airplane_cfbe3)
       (not_blocked seg_s_b6c_0_60 airplane_daew8)
       (not_blocked seg_s_b6c_0_60 airplane_daew3)
       (not_blocked seg_s_b6c_0_60 airplane_cfbe2)
       (not_occupied seg_s_b6b_0_60))
  :effect
  (and (not (occupied seg_s_b6a_0_60)) (not_occupied seg_s_b6a_0_60)
       (not (at-segment ?a seg_s_b6a_0_60)) (occupied seg_s_b6c_0_60)
       (not (not_occupied seg_s_b6c_0_60)) (blocked seg_s_b6c_0_60 ?a)
       (not (not_blocked seg_s_b6c_0_60 ?a)) (at-segment ?a seg_s_b6c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_s_b6b7a_0_140 ?a)) (not_blocked seg_s_b6b7a_0_140 ?a)
       (blocked seg_s_b6b_0_60 ?a) (not (not_blocked seg_s_b6b_0_60 ?a))))
 (:action
  ugly29417ugly29532ugly29744ugly29798ugly29462ugly688ugly977ugly199ugly1261startup_seg_n_a9a10d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10d_0_75)
       (not_occupied seg_n_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10c_0_75 ?a)
       (not (not_blocked seg_n_a9a10c_0_75 ?a))))
 (:action
  ugly29418ugly30380ugly29844ugly30333ugly30326ugly170ugly40ugly1294ugly1293startup_seg_m_a7d_0_60_south_medium
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
  ugly29419ugly30412ugly29491ugly29238ugly29392ugly438ugly779ugly803ugly1047move_seg_w1_143c_0_60_seg_w1_143a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143c_0_60) (not_occupied seg_w1_143a_0_34)
       (not_blocked seg_w1_143a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_143a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_143a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_143a_0_34 airplane_daew8)
       (not_blocked seg_w1_143a_0_34 airplane_daew3)
       (not_blocked seg_w1_143a_0_34 airplane_cfbe2)
       (not_occupied seg_w1_143b_0_45))
  :effect
  (and (not (occupied seg_w1_143c_0_60)) (not_occupied seg_w1_143c_0_60)
       (not (at-segment ?a seg_w1_143c_0_60)) (occupied seg_w1_143a_0_34)
       (not (not_occupied seg_w1_143a_0_34)) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (at-segment ?a seg_w1_143a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c2a_0_60 ?a)) (not_blocked seg_w1_c2a_0_60 ?a)
       (blocked seg_w1_143b_0_45 ?a) (not (not_blocked seg_w1_143b_0_45 ?a))))
 (:action
  ugly29420ugly29469ugly29862ugly29307ugly30156ugly275ugly395ugly685ugly587startup_seg_t_b4b6a_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6a_0_135)
       (not_occupied seg_t_b4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b_0_60 ?a)
       (not (not_blocked seg_t_b4b_0_60 ?a))))
 (:action
  ugly29421ugly29646ugly30164ugly30146ugly29969ugly664ugly944ugly674ugly201startup_seg_o1_110c_0_34_south_medium
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
  ugly29422ugly29779ugly29817ugly29367ugly29606ugly1209ugly381ugly600ugly282startup_seg_a7_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_1_0_80_6226)
       (not_occupied seg_a7_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_a_0_156_924 ?a)
       (not (not_blocked seg_a7_a_0_156_924 ?a))))
 (:action
  ugly29423ugly29250ugly29234ugly30271ugly30089ugly116ugly1074ugly1081ugly28move_seg_o1_109d_0_45_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109d_0_45) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_109c_0_34 airplane_daew8)
       (not_blocked seg_o1_109c_0_34 airplane_daew3)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe2)
       (not_occupied seg_o1_109a_0_34) (not_occupied seg_o1_109b_0_60))
  :effect
  (and (not (occupied seg_o1_109d_0_45)) (not_occupied seg_o1_109d_0_45)
       (not (at-segment ?a seg_o1_109d_0_45)) (occupied seg_o1_109c_0_34)
       (not (not_occupied seg_o1_109c_0_34)) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a)) (at-segment ?a seg_o1_109c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p132_0_75 ?a)) (not_blocked seg_p132_0_75 ?a)
       (blocked seg_o1_109a_0_34 ?a) (not (not_blocked seg_o1_109a_0_34 ?a))
       (blocked seg_o1_109b_0_60 ?a) (not (not_blocked seg_o1_109b_0_60 ?a))))
 (:action
  ugly29424ugly29810ugly29990ugly29802ugly29640ugly704ugly147ugly667ugly897startup_seg_o1_c2d_0_60_south_medium
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
  ugly29425ugly30549ugly30505ugly30257ugly30262ugly214ugly35ugly189ugly1022startup_seg_t_b9b10a_0_125_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10a_0_125)
       (not_occupied seg_t_b9b10b_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10b_0_125 ?a)
       (not (not_blocked seg_t_b9b10b_0_125 ?a))))
 (:action
  ugly29426ugly30037ugly29652ugly29203ugly30491ugly915ugly311ugly415ugly983move_seg_o1_102b_0_60_seg_p102_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102b_0_60) (not_occupied seg_p102_0_76)
       (not_blocked seg_p102_0_76 airplane_cfbeg)
       (not_blocked seg_p102_0_76 airplane_cfbe1)
       (not_blocked seg_p102_0_76 airplane_cfbe3)
       (not_blocked seg_p102_0_76 airplane_daew8)
       (not_blocked seg_p102_0_76 airplane_daew3)
       (not_blocked seg_p102_0_76 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_102b_0_60)) (not_occupied seg_o1_102b_0_60)
       (not (at-segment ?a seg_o1_102b_0_60)) (occupied seg_p102_0_76)
       (not (not_occupied seg_p102_0_76)) (blocked seg_p102_0_76 ?a)
       (not (not_blocked seg_p102_0_76 ?a)) (at-segment ?a seg_p102_0_76)
       (not (blocked seg_o1_102a_0_34 ?a)) (not_blocked seg_o1_102a_0_34 ?a)
       (not (blocked seg_o1_102c_0_34 ?a)) (not_blocked seg_o1_102c_0_34 ?a)))
 (:action
  ugly29427ugly29415ugly29563ugly29418ugly30380ugly661ugly808ugly266ugly1111startup_seg_t_b7c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7c_0_60)
       (not_occupied seg_t_b7a_0_60) (not_occupied seg_t_b7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7a_0_60 ?a)
       (not (not_blocked seg_t_b7a_0_60 ?a)) (blocked seg_t_b7b_0_60 ?a)
       (not (not_blocked seg_t_b7b_0_60 ?a))))
 (:action
  ugly29428ugly30253ugly30484ugly29994ugly29677ugly891ugly391ugly1104ugly408startup_seg_w1_164a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164a_0_34)
       (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action
  ugly29429ugly29562ugly30363ugly29244ugly30320ugly296ugly276ugly393ugly789startup_seg_n_a9b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9b_0_60)
       (not_occupied seg_n_a9a_0_60) (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a)) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action
  ugly29430ugly29702ugly29362ugly29255ugly30168ugly684ugly157ugly135ugly1033move_seg_w1_c4c_0_60_seg_s5_0_94_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c4c_0_60) (not_occupied seg_s5_0_94)
       (not_blocked seg_s5_0_94 airplane_cfbeg)
       (not_blocked seg_s5_0_94 airplane_cfbe1)
       (not_blocked seg_s5_0_94 airplane_cfbe3)
       (not_blocked seg_s5_0_94 airplane_daew8)
       (not_blocked seg_s5_0_94 airplane_daew3)
       (not_blocked seg_s5_0_94 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_c4c_0_60)) (not_occupied seg_w1_c4c_0_60)
       (not (at-segment ?a seg_w1_c4c_0_60)) (occupied seg_s5_0_94)
       (not (not_occupied seg_s5_0_94)) (blocked seg_s5_0_94 ?a)
       (not (not_blocked seg_s5_0_94 ?a)) (at-segment ?a seg_s5_0_94)
       (not (blocked seg_w1_c4a_0_34 ?a)) (not_blocked seg_w1_c4a_0_34 ?a)
       (not (blocked seg_w1_c4b_0_60 ?a)) (not_blocked seg_w1_c4b_0_60 ?a)))
 (:action
  ugly29431ugly29561ugly30330ugly29414ugly29917ugly943ugly917ugly509ugly1340move_seg_a8_b_1_0_79_7559_seg_a8_b_0_80_6226_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_b_1_0_79_7559) (not_occupied seg_a8_b_0_80_6226)
       (not_blocked seg_a8_b_0_80_6226 airplane_cfbeg)
       (not_blocked seg_a8_b_0_80_6226 airplane_cfbe1)
       (not_blocked seg_a8_b_0_80_6226 airplane_cfbe3)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew8)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew3)
       (not_blocked seg_a8_b_0_80_6226 airplane_cfbe2))
  :effect
  (and (not (occupied seg_a8_b_1_0_79_7559))
       (not_occupied seg_a8_b_1_0_79_7559)
       (not (at-segment ?a seg_a8_b_1_0_79_7559)) (occupied seg_a8_b_0_80_6226)
       (not (not_occupied seg_a8_b_0_80_6226)) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))
       (at-segment ?a seg_a8_b_0_80_6226) (not (blocked seg_a8_a_0_157_785 ?a))
       (not_blocked seg_a8_a_0_157_785 ?a)))
 (:action
  ugly29432ugly30199ugly29764ugly30426ugly29348ugly691ugly635ugly948ugly913move_seg_s_b5b8a_0_135_seg_s_b5b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b5b8a_0_135) (not_occupied seg_s_b5b_0_60)
       (not_blocked seg_s_b5b_0_60 airplane_cfbeg)
       (not_blocked seg_s_b5b_0_60 airplane_cfbe1)
       (not_blocked seg_s_b5b_0_60 airplane_cfbe3)
       (not_blocked seg_s_b5b_0_60 airplane_daew8)
       (not_blocked seg_s_b5b_0_60 airplane_daew3)
       (not_blocked seg_s_b5b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b5b8a_0_135)) (not_occupied seg_s_b5b8a_0_135)
       (not (at-segment ?a seg_s_b5b8a_0_135)) (occupied seg_s_b5b_0_60)
       (not (not_occupied seg_s_b5b_0_60)) (blocked seg_s_b5b_0_60 ?a)
       (not (not_blocked seg_s_b5b_0_60 ?a)) (at-segment ?a seg_s_b5b_0_60)
       (not (blocked seg_s_b5b8b_0_135 ?a))
       (not_blocked seg_s_b5b8b_0_135 ?a)))
 (:action
  ugly29433ugly30369ugly30071ugly29482ugly29794ugly701ugly794ugly887ugly556startup_seg_t_b8b9c_1_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9c_1_0_115)
       (not_occupied seg_t_b8b9b_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9b_0_115 ?a)
       (not (not_blocked seg_t_b8b9b_0_115 ?a))))
 (:action
  ugly29434ugly30009ugly30188ugly30222ugly30152ugly169ugly317ugly93ugly773pushback_seg_o1_108a_0_34_seg_o1_c2c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_c2c_0_34)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c2c_0_34 airplane_daew8)
       (not_blocked seg_o1_c2c_0_34 airplane_daew3)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_108a_0_34)) (not_occupied seg_o1_108a_0_34)
       (not (blocked seg_o1_108a_0_34 ?a)) (not_blocked seg_o1_108a_0_34 ?a)
       (not (at-segment ?a seg_o1_108a_0_34)) (occupied seg_o1_c2c_0_34)
       (not (not_occupied seg_o1_c2c_0_34)) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a)) (at-segment ?a seg_o1_c2c_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action
  ugly29435ugly30483ugly30013ugly30197ugly29599ugly123ugly431ugly478ugly1366move_seg_o1_108a_0_34_seg_o1_108d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe3)
       (not_blocked seg_o1_108d_0_45 airplane_daew8)
       (not_blocked seg_o1_108d_0_45 airplane_daew3)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe2)
       (not_occupied seg_o1_108b_0_60) (not_occupied seg_o1_108c_0_34))
  :effect
  (and (not (occupied seg_o1_108a_0_34)) (not_occupied seg_o1_108a_0_34)
       (not (at-segment ?a seg_o1_108a_0_34)) (occupied seg_o1_108d_0_45)
       (not (not_occupied seg_o1_108d_0_45)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a)) (at-segment ?a seg_o1_108d_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c2c_0_34 ?a)) (not_blocked seg_o1_c2c_0_34 ?a)
       (blocked seg_o1_108b_0_60 ?a) (not (not_blocked seg_o1_108b_0_60 ?a))
       (blocked seg_o1_108c_0_34 ?a) (not (not_blocked seg_o1_108c_0_34 ?a))))
 (:action
  ugly29436ugly29763ugly29936ugly30000ugly30413ugly833ugly31ugly1231ugly454move_seg_o1_108d_0_45_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_108c_0_34 airplane_daew8)
       (not_blocked seg_o1_108c_0_34 airplane_daew3)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe2)
       (not_occupied seg_o1_108a_0_34) (not_occupied seg_o1_108b_0_60))
  :effect
  (and (not (occupied seg_o1_108d_0_45)) (not_occupied seg_o1_108d_0_45)
       (not (at-segment ?a seg_o1_108d_0_45)) (occupied seg_o1_108c_0_34)
       (not (not_occupied seg_o1_108c_0_34)) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a)) (at-segment ?a seg_o1_108c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p131_0_75 ?a)) (not_blocked seg_p131_0_75 ?a)
       (blocked seg_o1_108a_0_34 ?a) (not (not_blocked seg_o1_108a_0_34 ?a))
       (blocked seg_o1_108b_0_60 ?a) (not (not_blocked seg_o1_108b_0_60 ?a))))
 (:action
  ugly29437ugly29637ugly29908ugly29366ugly29708ugly1285ugly273ugly972ugly776move_seg_w1_153b_0_45_seg_w1_153c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153b_0_45) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_153c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_153c_0_34 airplane_daew8)
       (not_blocked seg_w1_153c_0_34 airplane_daew3)
       (not_blocked seg_w1_153c_0_34 airplane_cfbe2)
       (not_occupied seg_w1_153a_0_34))
  :effect
  (and (not (occupied seg_w1_153b_0_45)) (not_occupied seg_w1_153b_0_45)
       (not (at-segment ?a seg_w1_153b_0_45)) (occupied seg_w1_153c_0_34)
       (not (not_occupied seg_w1_153c_0_34)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a)) (at-segment ?a seg_w1_153c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p153_0_75 ?a)) (not_blocked seg_p153_0_75 ?a)
       (blocked seg_w1_153a_0_34 ?a) (not (not_blocked seg_w1_153a_0_34 ?a))))
 (:action
  ugly29438ugly29296ugly29993ugly29323ugly30382ugly1212ugly1339ugly1201ugly259startup_seg_s_b6a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6a_0_60)
       (not_occupied seg_s_b6b_0_60) (not_occupied seg_s_b6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b_0_60 ?a)
       (not (not_blocked seg_s_b6b_0_60 ?a)) (blocked seg_s_b6c_0_60 ?a)
       (not (not_blocked seg_s_b6c_0_60 ?a))))
 (:action
  ugly29439ugly30454ugly30060ugly30135ugly29403ugly1299ugly109ugly248ugly168move_seg_s_b3a_0_60_seg_s_b3c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b3a_0_60) (not_occupied seg_s_b3c_0_60)
       (not_blocked seg_s_b3c_0_60 airplane_cfbeg)
       (not_blocked seg_s_b3c_0_60 airplane_cfbe1)
       (not_blocked seg_s_b3c_0_60 airplane_cfbe3)
       (not_blocked seg_s_b3c_0_60 airplane_daew8)
       (not_blocked seg_s_b3c_0_60 airplane_daew3)
       (not_blocked seg_s_b3c_0_60 airplane_cfbe2)
       (not_occupied seg_s_b3b_0_60))
  :effect
  (and (not (occupied seg_s_b3a_0_60)) (not_occupied seg_s_b3a_0_60)
       (not (at-segment ?a seg_s_b3a_0_60)) (occupied seg_s_b3c_0_60)
       (not (not_occupied seg_s_b3c_0_60)) (blocked seg_s_b3c_0_60 ?a)
       (not (not_blocked seg_s_b3c_0_60 ?a)) (at-segment ?a seg_s_b3c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_s_b3b4a_0_140 ?a)) (not_blocked seg_s_b3b4a_0_140 ?a)
       (blocked seg_s_b3b_0_60 ?a) (not (not_blocked seg_s_b3b_0_60 ?a))))
 (:action
  ugly29440ugly29689ugly29740ugly29609ugly29459ugly18ugly1228ugly411ugly1181startup_seg_w1_143c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143c_0_60)
       (not_occupied seg_w1_c2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a))))
 (:action
  ugly29441ugly29717ugly29593ugly30316ugly30268ugly816ugly515ugly755ugly1161startup_seg_w1_142b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142b_0_45)
       (not_occupied seg_p142_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p142_0_75 ?a)
       (not (not_blocked seg_p142_0_75 ?a))))
 (:action
  ugly29442ugly29761ugly29933ugly30050ugly29540ugly1093ugly14ugly375ugly45startup_seg_n_a8a9d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9d_0_75)
       (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action
  ugly29443ugly29612ugly29604ugly30256ugly30473ugly273ugly972ugly776ugly218startup_seg_w1_c3b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3b_0_60)
       (not_occupied seg_w1_c3a_0_34) (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action
  ugly29444ugly30378ugly29872ugly30360ugly30192ugly1220ugly550ugly223ugly1116startup_seg_s_b9b10c_1_0_83_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_1_0_83)
       (not_occupied seg_s_b9b10b_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10b_0_125 ?a)
       (not (not_blocked seg_s_b9b10b_0_125 ?a))))
 (:action
  ugly29445ugly29365ugly29338ugly30304ugly29502ugly498ugly1218ugly670ugly1234startup_seg_b8_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_b_1_0_80_6226)
       (not_occupied seg_b8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_b_0_80_6226 ?a)
       (not (not_blocked seg_b8_b_0_80_6226 ?a))))
 (:action
  ugly29446ugly29249ugly30151ugly30243ugly29797ugly655ugly1160ugly563ugly96move_seg_n_a6a8b_0_75_seg_n_a6a8a_0_115_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8b_0_75) (not_occupied seg_n_a6a8a_0_115)
       (not_blocked seg_n_a6a8a_0_115 airplane_cfbeg)
       (not_blocked seg_n_a6a8a_0_115 airplane_cfbe1)
       (not_blocked seg_n_a6a8a_0_115 airplane_cfbe3)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew8)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew3)
       (not_blocked seg_n_a6a8a_0_115 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a6a8b_0_75)) (not_occupied seg_n_a6a8b_0_75)
       (not (at-segment ?a seg_n_a6a8b_0_75)) (occupied seg_n_a6a8a_0_115)
       (not (not_occupied seg_n_a6a8a_0_115)) (blocked seg_n_a6a8a_0_115 ?a)
       (not (not_blocked seg_n_a6a8a_0_115 ?a))
       (at-segment ?a seg_n_a6a8a_0_115) (not (blocked seg_n_a6a8c_0_75 ?a))
       (not_blocked seg_n_a6a8c_0_75 ?a)))
 (:action
  ugly29447ugly29340ugly30190ugly30039ugly30461ugly903ugly225ugly518ugly831move_seg_p161_0_75_seg_w1_161b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p161_0_75) (not_occupied seg_w1_161b_0_45)
       (not_blocked seg_w1_161b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_161b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_161b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_161b_0_45 airplane_daew8)
       (not_blocked seg_w1_161b_0_45 airplane_daew3)
       (not_blocked seg_w1_161b_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p161_0_75)) (not_occupied seg_p161_0_75)
       (not (at-segment ?a seg_p161_0_75)) (occupied seg_w1_161b_0_45)
       (not (not_occupied seg_w1_161b_0_45)) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a))
       (at-segment ?a seg_w1_161b_0_45)))
 (:action
  ugly29448ugly29383ugly29854ugly29245ugly29714ugly608ugly774ugly916ugly1256startup_seg_o1_c1c_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1c_0_80)
       (not_occupied seg_c1_n2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a))))
 (:action
  ugly29449ugly29191ugly30526ugly29194ugly30181ugly692ugly288ugly1351ugly841move_seg_w1_142a_0_34_seg_w1_142b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_142b_0_45)
       (not_blocked seg_w1_142b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_142b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_142b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_142b_0_45 airplane_daew8)
       (not_blocked seg_w1_142b_0_45 airplane_daew3)
       (not_blocked seg_w1_142b_0_45 airplane_cfbe2)
       (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (occupied seg_w1_142a_0_34)) (not_occupied seg_w1_142a_0_34)
       (not (at-segment ?a seg_w1_142a_0_34)) (occupied seg_w1_142b_0_45)
       (not (not_occupied seg_w1_142b_0_45)) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a)) (at-segment ?a seg_w1_142b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_141c_0_34 ?a)) (not_blocked seg_w1_141c_0_34 ?a)
       (blocked seg_w1_142c_0_34 ?a) (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action
  ugly29450ugly30107ugly30250ugly29878ugly29225ugly464ugly574ugly89ugly99startup_seg_w1_141c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141c_0_34)
       (not_occupied seg_w1_142a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a))))
 (:action
  ugly29451ugly29247ugly29217ugly29963ugly30339ugly644ugly1280ugly691ugly635startup_seg_o1_109d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109d_0_45)
       (not_occupied seg_p132_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p132_0_75 ?a)
       (not (not_blocked seg_p132_0_75 ?a))))
 (:action
  ugly29452ugly29436ugly29763ugly29936ugly30000ugly1230ugly1075ugly424ugly1067startup_seg_b10_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b10_0_80)
       (not_occupied seg_b10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b10_1_0_80 ?a)
       (not (not_blocked seg_b10_1_0_80 ?a))))
 (:action
  ugly29453ugly29831ugly30094ugly30088ugly29580ugly266ugly1111ugly561ugly645startup_seg_s_b9b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b_0_60)
       (not_occupied seg_t_b9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9a_0_60 ?a)
       (not (not_blocked seg_t_b9a_0_60 ?a))))
 (:action
  ugly29454ugly29901ugly29888ugly30416ugly29617ugly1238ugly1250ugly750ugly941startup_seg_p143_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p143_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly29455ugly30547ugly30439ugly29736ugly29840ugly917ugly509ugly1340ugly152startup_seg_o1_116a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116a_0_34)
       (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action
  ugly29456ugly29588ugly29551ugly29548ugly29374ugly100ugly800ugly813ugly1002startup_seg_n_a6c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6c_0_60)
       (not_occupied seg_n_a6a_0_60) (not_occupied seg_n_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a)) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a))))
 (:action
  ugly29457ugly30370ugly30008ugly30202ugly30453ugly350ugly488ugly177ugly372startup_seg_o1_111c_0_34_south_medium
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
  ugly29458ugly30346ugly29975ugly30022ugly30232ugly589ugly83ugly1271ugly405startup_seg_m_a3a_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a_0_120_934)
       (not_occupied seg_a3_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_b_0_159_512 ?a)
       (not (not_blocked seg_a3_b_0_159_512 ?a))))
 (:action
  ugly29459ugly29201ugly29547ugly29591ugly29690ugly281ugly512ugly100ugly800startup_seg_p154_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p154_0_75)
       (not_occupied seg_w1_154b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action
  ugly29460ugly29899ugly30532ugly30002ugly29345ugly774ugly916ugly1256ugly874park_seg_p101_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p101_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p101_0_76) (not (is-moving ?a))))
 (:action
  ugly29461ugly30355ugly30297ugly30084ugly29493ugly236ugly1258ugly1338ugly2startup_seg_m_a8b_0_60_south_medium
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
  ugly29462ugly29871ugly29586ugly29425ugly30549ugly1322ugly1118ugly30ugly846startup_seg_w1_143c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143c_0_60)
       (not_occupied seg_w1_143a_0_34) (not_occupied seg_w1_143b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a))))
 (:action
  ugly29463ugly29825ugly29441ugly29717ugly29593ugly1133ugly1317ugly775ugly215move_seg_w1_c1b_0_60_seg_w1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1b_0_60) (not_occupied seg_w1_c1a_0_60)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbe3)
       (not_blocked seg_w1_c1a_0_60 airplane_daew8)
       (not_blocked seg_w1_c1a_0_60 airplane_daew3)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbe2)
       (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (occupied seg_w1_c1b_0_60)) (not_occupied seg_w1_c1b_0_60)
       (not (at-segment ?a seg_w1_c1b_0_60)) (occupied seg_w1_c1a_0_60)
       (not (not_occupied seg_w1_c1a_0_60)) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a)) (at-segment ?a seg_w1_c1a_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_c1_n2c_0_60 ?a)) (not_blocked seg_c1_n2c_0_60 ?a)
       (blocked seg_w1_c1c_0_34 ?a) (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action
  ugly29464ugly29518ugly29834ugly29564ugly30342ugly1193ugly986ugly219ugly1065startup_seg_o1_109c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109c_0_34)
       (not_occupied seg_o1_110a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a))))
 (:action
  ugly29465ugly29393ugly29434ugly30009ugly30188ugly1039ugly693ugly337ugly127startup_seg_n_a4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4b_0_60)
       (not_occupied seg_n_a4a_0_60) (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a)) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action
  ugly29466ugly29512ugly30142ugly29499ugly29628ugly884ugly349ugly1027ugly42move_seg_w1_152c_0_34_seg_w1_152b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152c_0_34) (not_occupied seg_w1_152b_0_45)
       (not_blocked seg_w1_152b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_152b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_152b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_152b_0_45 airplane_daew8)
       (not_blocked seg_w1_152b_0_45 airplane_daew3)
       (not_blocked seg_w1_152b_0_45 airplane_cfbe2)
       (not_occupied seg_w1_152a_0_34))
  :effect
  (and (not (occupied seg_w1_152c_0_34)) (not_occupied seg_w1_152c_0_34)
       (not (at-segment ?a seg_w1_152c_0_34)) (occupied seg_w1_152b_0_45)
       (not (not_occupied seg_w1_152b_0_45)) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a)) (at-segment ?a seg_w1_152b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_153a_0_34 ?a)) (not_blocked seg_w1_153a_0_34 ?a)
       (blocked seg_w1_152a_0_34 ?a) (not (not_blocked seg_w1_152a_0_34 ?a))))
 (:action
  ugly29467ugly30498ugly29707ugly30162ugly29501ugly846ugly761ugly493ugly681startup_seg_m_a7a6a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6a_0_75)
       (not_occupied seg_m_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6b_0_75 ?a)
       (not (not_blocked seg_m_a7a6b_0_75 ?a))))
 (:action
  ugly29468ugly30415ugly29314ugly29987ugly29759ugly219ugly1065ugly946ugly866move_seg_o1_110a_0_34_seg_o1_110b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110b_0_60)
       (not_blocked seg_o1_110b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_110b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_110b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_110b_0_60 airplane_daew8)
       (not_blocked seg_o1_110b_0_60 airplane_daew3)
       (not_blocked seg_o1_110b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_110c_0_34) (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (occupied seg_o1_110a_0_34)) (not_occupied seg_o1_110a_0_34)
       (not (at-segment ?a seg_o1_110a_0_34)) (occupied seg_o1_110b_0_60)
       (not (not_occupied seg_o1_110b_0_60)) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a)) (at-segment ?a seg_o1_110b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_109c_0_34 ?a)) (not_blocked seg_o1_109c_0_34 ?a)
       (blocked seg_o1_110c_0_34 ?a) (not (not_blocked seg_o1_110c_0_34 ?a))
       (blocked seg_o1_110d_0_45 ?a) (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action
  ugly29469ugly29862ugly29307ugly30156ugly29458ugly1163ugly17ugly409ugly358move_seg_o1_109a_0_34_seg_o1_108c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_108c_0_34 airplane_daew8)
       (not_blocked seg_o1_108c_0_34 airplane_daew3)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_109a_0_34)) (not_occupied seg_o1_109a_0_34)
       (not (at-segment ?a seg_o1_109a_0_34)) (occupied seg_o1_108c_0_34)
       (not (not_occupied seg_o1_108c_0_34)) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a)) (at-segment ?a seg_o1_108c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_109b_0_60 ?a)) (not_blocked seg_o1_109b_0_60 ?a)
       (not (blocked seg_o1_109c_0_34 ?a)) (not_blocked seg_o1_109c_0_34 ?a)
       (not (blocked seg_o1_109d_0_45 ?a)) (not_blocked seg_o1_109d_0_45 ?a)))
 (:action
  ugly29470ugly29506ugly29601ugly29582ugly29492ugly945ugly1180ugly930ugly555move_seg_o1_118c_0_34_seg_o1_c4a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118c_0_34) (not_occupied seg_o1_c4a_0_34)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c4a_0_34 airplane_daew8)
       (not_blocked seg_o1_c4a_0_34 airplane_daew3)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_118c_0_34)) (not_occupied seg_o1_118c_0_34)
       (not (at-segment ?a seg_o1_118c_0_34)) (occupied seg_o1_c4a_0_34)
       (not (not_occupied seg_o1_c4a_0_34)) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (at-segment ?a seg_o1_c4a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_118a_0_34 ?a)) (not_blocked seg_o1_118a_0_34 ?a)
       (not (blocked seg_o1_118b_0_60 ?a)) (not_blocked seg_o1_118b_0_60 ?a)))
 (:action
  ugly29471ugly29733ugly29266ugly30072ugly29448ugly200ugly1112ugly1035ugly1292move_seg_o1_c1c_0_80_seg_o1_c1b_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c1b_0_34 airplane_daew8)
       (not_blocked seg_o1_c1b_0_34 airplane_daew3)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe2)
       (not_occupied seg_o1_c1a_0_60))
  :effect
  (and (not (occupied seg_o1_c1c_0_80)) (not_occupied seg_o1_c1c_0_80)
       (not (at-segment ?a seg_o1_c1c_0_80)) (occupied seg_o1_c1b_0_34)
       (not (not_occupied seg_o1_c1b_0_34)) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a)) (at-segment ?a seg_o1_c1b_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_c1_n2b_0_80 ?a)) (not_blocked seg_c1_n2b_0_80 ?a)
       (blocked seg_o1_c1a_0_60 ?a) (not (not_blocked seg_o1_c1a_0_60 ?a))))
 (:action
  ugly29472ugly29200ugly29196ugly30177ugly29954ugly1283ugly434ugly257ugly1068startup_seg_m_a4a7a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7a_0_75)
       (not_occupied seg_m_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7b_0_75 ?a)
       (not (not_blocked seg_m_a4a7b_0_75 ?a))))
 (:action
  ugly29473ugly30186ugly30213ugly29204ugly29329ugly151ugly1023ugly220ugly757startup_seg_s_b5b8a_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8a_0_135)
       (not_occupied seg_s_b5b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b_0_60 ?a)
       (not (not_blocked seg_s_b5b_0_60 ?a))))
 (:action
  ugly29474ugly29998ugly30281ugly30096ugly29784ugly1140ugly133ugly545ugly1238startup_seg_n_a2a3c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3c_0_75)
       (not_occupied seg_n_a2a3d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3d_0_75 ?a)
       (not (not_blocked seg_n_a2a3d_0_75 ?a))))
 (:action
  ugly29475ugly29951ugly29880ugly29603ugly29550ugly955ugly996ugly621ugly106move_seg_o1_c2d_0_60_seg_c2_b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_c2_b_0_80)
       (not_blocked seg_c2_b_0_80 airplane_cfbeg)
       (not_blocked seg_c2_b_0_80 airplane_cfbe1)
       (not_blocked seg_c2_b_0_80 airplane_cfbe3)
       (not_blocked seg_c2_b_0_80 airplane_daew8)
       (not_blocked seg_c2_b_0_80 airplane_daew3)
       (not_blocked seg_c2_b_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_c2d_0_60)) (not_occupied seg_o1_c2d_0_60)
       (not (at-segment ?a seg_o1_c2d_0_60)) (occupied seg_c2_b_0_80)
       (not (not_occupied seg_c2_b_0_80)) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a)) (at-segment ?a seg_c2_b_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c2a_0_60 ?a)) (not_blocked seg_o1_c2a_0_60 ?a)
       (not (blocked seg_o1_c2b_0_60 ?a)) (not_blocked seg_o1_c2b_0_60 ?a)
       (not (blocked seg_o1_c2c_0_34 ?a)) (not_blocked seg_o1_c2c_0_34 ?a)))
 (:action
  ugly29476ugly29573ugly29869ugly29997ugly29589ugly1028ugly633ugly1145ugly1251startup_seg_b4_a_0_156_924_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_a_0_156_924)
       (not_occupied seg_08r_b4d_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b4d_0_161_245 ?a)
       (not (not_blocked seg_08r_b4d_0_161_245 ?a))))
 (:action
  ugly29477ugly29615ugly30522ugly30343ugly29907ugly1224ugly1219ugly1050ugly851startup_seg_t_b3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b_0_60)
       (not_occupied seg_t_b3b4a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4a_0_140 ?a)
       (not (not_blocked seg_t_b3b4a_0_140 ?a))))
 (:action
  ugly29478ugly30384ugly29807ugly29451ugly29247ugly34ugly491ugly718ugly236startup_seg_n_a3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3b_0_60)
       (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action
  ugly29479ugly29927ugly30017ugly30137ugly29412ugly567ugly403ugly1127ugly194move_seg_s_b6b7b_0_140_seg_s_b6b7a_0_140_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b6b7b_0_140) (not_occupied seg_s_b6b7a_0_140)
       (not_blocked seg_s_b6b7a_0_140 airplane_cfbeg)
       (not_blocked seg_s_b6b7a_0_140 airplane_cfbe1)
       (not_blocked seg_s_b6b7a_0_140 airplane_cfbe3)
       (not_blocked seg_s_b6b7a_0_140 airplane_daew8)
       (not_blocked seg_s_b6b7a_0_140 airplane_daew3)
       (not_blocked seg_s_b6b7a_0_140 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b6b7b_0_140)) (not_occupied seg_s_b6b7b_0_140)
       (not (at-segment ?a seg_s_b6b7b_0_140)) (occupied seg_s_b6b7a_0_140)
       (not (not_occupied seg_s_b6b7a_0_140)) (blocked seg_s_b6b7a_0_140 ?a)
       (not (not_blocked seg_s_b6b7a_0_140 ?a))
       (at-segment ?a seg_s_b6b7a_0_140) (not (blocked seg_s_b7d_0_60 ?a))
       (not_blocked seg_s_b7d_0_60 ?a)))
 (:action
  ugly29480ugly29461ugly30355ugly30297ugly30084ugly310ugly308ugly105ugly414startup_seg_w1_152b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152b_0_45)
       (not_occupied seg_p152_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p152_0_75 ?a)
       (not (not_blocked seg_p152_0_75 ?a))))
 (:action
  ugly29481ugly29986ugly29375ugly30242ugly29313ugly1151ugly759ugly1049ugly1037move_seg_p142_0_75_seg_w1_142b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p142_0_75) (not_occupied seg_w1_142b_0_45)
       (not_blocked seg_w1_142b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_142b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_142b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_142b_0_45 airplane_daew8)
       (not_blocked seg_w1_142b_0_45 airplane_daew3)
       (not_blocked seg_w1_142b_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p142_0_75)) (not_occupied seg_p142_0_75)
       (not (at-segment ?a seg_p142_0_75)) (occupied seg_w1_142b_0_45)
       (not (not_occupied seg_w1_142b_0_45)) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a))
       (at-segment ?a seg_w1_142b_0_45)))
 (:action
  ugly29482ugly29794ugly29884ugly30158ugly30041ugly733ugly448ugly689ugly392startup_seg_n_a7a6b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6b_0_75)
       (not_occupied seg_n_a7a6a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6a_0_85 ?a)
       (not (not_blocked seg_n_a7a6a_0_85 ?a))))
 (:action
  ugly29483ugly29400ugly29490ugly29223ugly29965ugly225ugly518ugly831ugly228move_seg_w1_163c_0_34_seg_w1_163b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163c_0_34) (not_occupied seg_w1_163b_0_45)
       (not_blocked seg_w1_163b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_163b_0_45 airplane_daew8)
       (not_blocked seg_w1_163b_0_45 airplane_daew3)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe2)
       (not_occupied seg_w1_163a_0_34))
  :effect
  (and (not (occupied seg_w1_163c_0_34)) (not_occupied seg_w1_163c_0_34)
       (not (at-segment ?a seg_w1_163c_0_34)) (occupied seg_w1_163b_0_45)
       (not (not_occupied seg_w1_163b_0_45)) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a)) (at-segment ?a seg_w1_163b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_164a_0_34 ?a)) (not_blocked seg_w1_164a_0_34 ?a)
       (blocked seg_w1_163a_0_34 ?a) (not (not_blocked seg_w1_163a_0_34 ?a))))
 (:action
  ugly29484ugly29629ugly29961ugly29331ugly30175ugly668ugly79ugly593ugly481startup_seg_t_b5b8c_0_130_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8c_0_130)
       (not_occupied seg_t_b5b8b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8b_0_135 ?a)
       (not (not_blocked seg_t_b5b8b_0_135 ?a))))
 (:action
  ugly29485ugly29519ugly29534ugly29743ugly30341ugly1323ugly807ugly595ugly675move_seg_c1_n2b_0_80_seg_o1_c1c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c1_n2b_0_80) (not_occupied seg_o1_c1c_0_80)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe1)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe3)
       (not_blocked seg_o1_c1c_0_80 airplane_daew8)
       (not_blocked seg_o1_c1c_0_80 airplane_daew3)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_c1_n2b_0_80)) (not_occupied seg_c1_n2b_0_80)
       (not (at-segment ?a seg_c1_n2b_0_80)) (occupied seg_o1_c1c_0_80)
       (not (not_occupied seg_o1_c1c_0_80)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a)) (at-segment ?a seg_o1_c1c_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_c1_n2a_0_60 ?a)) (not_blocked seg_c1_n2a_0_60 ?a)
       (not (blocked seg_c1_n2c_0_60 ?a)) (not_blocked seg_c1_n2c_0_60 ?a)))
 (:action
  ugly29486ugly29709ugly29423ugly29250ugly29234ugly1088ugly826ugly66ugly1214move_seg_o1_115c_0_34_seg_o1_115b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115c_0_34) (not_occupied seg_o1_115b_0_60)
       (not_blocked seg_o1_115b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_115b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_115b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_115b_0_60 airplane_daew8)
       (not_blocked seg_o1_115b_0_60 airplane_daew3)
       (not_blocked seg_o1_115b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_115a_0_34))
  :effect
  (and (not (occupied seg_o1_115c_0_34)) (not_occupied seg_o1_115c_0_34)
       (not (at-segment ?a seg_o1_115c_0_34)) (occupied seg_o1_115b_0_60)
       (not (not_occupied seg_o1_115b_0_60)) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a)) (at-segment ?a seg_o1_115b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_116a_0_34 ?a)) (not_blocked seg_o1_116a_0_34 ?a)
       (blocked seg_o1_115a_0_34 ?a) (not (not_blocked seg_o1_115a_0_34 ?a))))
 (:action
  ugly29487ugly30336ugly29824ugly29264ugly30283ugly19ugly915ugly311ugly415park_seg_p111_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p111_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p111_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_111b_0_60 ?a)) (not_blocked seg_o1_111b_0_60 ?a)))
 (:action
  ugly29488ugly30153ugly29292ugly30021ugly29531ugly649ugly314ugly278ugly836startup_seg_o1_104b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104b_0_60)
       (not_occupied seg_o1_104a_0_34) (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action
  ugly29489ugly30125ugly29452ugly29436ugly29763ugly753ugly802ugly945ugly1180startup_seg_o1_108c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108c_0_34)
       (not_occupied seg_o1_109a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a))))
 (:action
  ugly29490ugly29223ugly29965ugly29408ugly29290ugly1288ugly569ugly927ugly584startup_seg_a7_a_0_156_924_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_a_0_156_924)
       (not_occupied seg_08l_a7c_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a7c_0_161_245 ?a)
       (not (not_blocked seg_08l_a7c_0_161_245 ?a))))
 (:action
  ugly29491ugly29238ugly29392ugly29621ugly30166ugly1130ugly196ugly86ugly235startup_seg_b5_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b5_b_0_159_512)
       (not_occupied seg_t_b5c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5c_0_120_934 ?a)
       (not (not_blocked seg_t_b5c_0_120_934 ?a))))
 (:action
  ugly29492ugly30128ugly29470ugly29506ugly29601ugly399ugly690ugly432ugly838startup_seg_b2_1_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b2_1_0_80)
       (not_occupied seg_b2_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b2_0_80 ?a)
       (not (not_blocked seg_b2_0_80 ?a))))
 (:action
  ugly29493ugly29419ugly30412ugly29491ugly29238ugly209ugly1196ugly818ugly428move_seg_o1_110b_0_60_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110b_0_60) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_110c_0_34 airplane_daew8)
       (not_blocked seg_o1_110c_0_34 airplane_daew3)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe2)
       (not_occupied seg_o1_110a_0_34) (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (occupied seg_o1_110b_0_60)) (not_occupied seg_o1_110b_0_60)
       (not (at-segment ?a seg_o1_110b_0_60)) (occupied seg_o1_110c_0_34)
       (not (not_occupied seg_o1_110c_0_34)) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a)) (at-segment ?a seg_o1_110c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p110_0_76 ?a)) (not_blocked seg_p110_0_76 ?a)
       (blocked seg_o1_110a_0_34 ?a) (not (not_blocked seg_o1_110a_0_34 ?a))
       (blocked seg_o1_110d_0_45 ?a) (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action
  ugly29494ugly30295ugly30423ugly30207ugly29344ugly1248ugly479ugly551ugly444startup_seg_c2_b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_b_0_80)
       (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action
  ugly29495ugly30143ugly29396ugly29755ugly29220ugly1128ugly1211ugly1216ugly768startup_seg_s_b7c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7c_0_60)
       (not_occupied seg_t_b7a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7a_0_60 ?a)
       (not (not_blocked seg_t_b7a_0_60 ?a))))
 (:action
  ugly29496ugly30027ugly29739ugly29522ugly30401ugly1239ugly619ugly1226ugly146move_seg_o1_c1c_0_80_seg_c1_n2b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_c1_n2b_0_80)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbeg)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbe1)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbe3)
       (not_blocked seg_c1_n2b_0_80 airplane_daew8)
       (not_blocked seg_c1_n2b_0_80 airplane_daew3)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_c1c_0_80)) (not_occupied seg_o1_c1c_0_80)
       (not (at-segment ?a seg_o1_c1c_0_80)) (occupied seg_c1_n2b_0_80)
       (not (not_occupied seg_c1_n2b_0_80)) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a)) (at-segment ?a seg_c1_n2b_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)
       (not (blocked seg_o1_c1b_0_34 ?a)) (not_blocked seg_o1_c1b_0_34 ?a)))
 (:action
  ugly29497ugly30215ugly29898ugly30459ugly29970ugly425ugly463ugly1193ugly986move_seg_w1_153c_0_34_seg_w1_153b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153c_0_34) (not_occupied seg_w1_153b_0_45)
       (not_blocked seg_w1_153b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_153b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_153b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_153b_0_45 airplane_daew8)
       (not_blocked seg_w1_153b_0_45 airplane_daew3)
       (not_blocked seg_w1_153b_0_45 airplane_cfbe2)
       (not_occupied seg_w1_153a_0_34))
  :effect
  (and (not (occupied seg_w1_153c_0_34)) (not_occupied seg_w1_153c_0_34)
       (not (at-segment ?a seg_w1_153c_0_34)) (occupied seg_w1_153b_0_45)
       (not (not_occupied seg_w1_153b_0_45)) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a)) (at-segment ?a seg_w1_153b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_154a_0_34 ?a)) (not_blocked seg_w1_154a_0_34 ?a)
       (blocked seg_w1_153a_0_34 ?a) (not (not_blocked seg_w1_153a_0_34 ?a))))
 (:action
  ugly29498ugly29868ugly29673ugly29276ugly29775ugly1176ugly647ugly65ugly937startup_seg_o1_c3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3b_0_60)
       (not_occupied seg_p112_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p112_0_76 ?a)
       (not (not_blocked seg_p112_0_76 ?a))))
 (:action
  ugly29499ugly29628ugly30067ugly29524ugly29928ugly105ugly414ugly786ugly607startup_seg_s_b7b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7b_0_60)
       (not_occupied seg_s_b7a_0_60) (not_occupied seg_s_b7c_0_60)
       (not_occupied seg_s_b7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7a_0_60 ?a)
       (not (not_blocked seg_s_b7a_0_60 ?a)) (blocked seg_s_b7c_0_60 ?a)
       (not (not_blocked seg_s_b7c_0_60 ?a)) (blocked seg_s_b7d_0_60 ?a)
       (not (not_blocked seg_s_b7d_0_60 ?a))))
 (:action
  ugly29500ugly30501ugly29330ugly30539ugly29974ugly562ugly350ugly488ugly177move_seg_o1_109d_0_45_seg_o1_109a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109d_0_45) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_109a_0_34 airplane_daew8)
       (not_blocked seg_o1_109a_0_34 airplane_daew3)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_109b_0_60) (not_occupied seg_o1_109c_0_34))
  :effect
  (and (not (occupied seg_o1_109d_0_45)) (not_occupied seg_o1_109d_0_45)
       (not (at-segment ?a seg_o1_109d_0_45)) (occupied seg_o1_109a_0_34)
       (not (not_occupied seg_o1_109a_0_34)) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a)) (at-segment ?a seg_o1_109a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p132_0_75 ?a)) (not_blocked seg_p132_0_75 ?a)
       (blocked seg_o1_109b_0_60 ?a) (not (not_blocked seg_o1_109b_0_60 ?a))
       (blocked seg_o1_109c_0_34 ?a) (not (not_blocked seg_o1_109c_0_34 ?a))))
 (:action
  ugly29501ugly30029ugly30302ugly30044ugly30544ugly249ugly244ugly1005ugly67move_seg_08r_b2a_0_80_seg_08r_b2b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08r_b2a_0_80) (not_occupied seg_08r_b2b_0_80)
       (not_blocked seg_08r_b2b_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b2b_0_80 airplane_cfbe1)
       (not_blocked seg_08r_b2b_0_80 airplane_cfbe3)
       (not_blocked seg_08r_b2b_0_80 airplane_daew8)
       (not_blocked seg_08r_b2b_0_80 airplane_daew3)
       (not_blocked seg_08r_b2b_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_08r_b2a_0_80)) (not_occupied seg_08r_b2a_0_80)
       (not (at-segment ?a seg_08r_b2a_0_80)) (occupied seg_08r_b2b_0_80)
       (not (not_occupied seg_08r_b2b_0_80)) (blocked seg_08r_b2b_0_80 ?a)
       (not (not_blocked seg_08r_b2b_0_80 ?a)) (at-segment ?a seg_08r_b2b_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_b2_1_0_80 ?a)) (not_blocked seg_b2_1_0_80 ?a)))
 (:action
  ugly29502ugly29681ugly30051ugly30099ugly30472ugly117ugly962ugly1322ugly1118move_seg_w1_164c_0_34_seg_w1_c4a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164c_0_34) (not_occupied seg_w1_c4a_0_34)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_c4a_0_34 airplane_daew8)
       (not_blocked seg_w1_c4a_0_34 airplane_daew3)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_164c_0_34)) (not_occupied seg_w1_164c_0_34)
       (not (at-segment ?a seg_w1_164c_0_34)) (occupied seg_w1_c4a_0_34)
       (not (not_occupied seg_w1_c4a_0_34)) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a)) (at-segment ?a seg_w1_c4a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_164a_0_34 ?a)) (not_blocked seg_w1_164a_0_34 ?a)
       (not (blocked seg_w1_164b_0_45 ?a)) (not_blocked seg_w1_164b_0_45 ?a)))
 (:action
  ugly29503ugly29853ugly29729ugly29978ugly29922ugly1279ugly1342ugly184ugly924startup_seg_n_a6a8e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8e_0_75)
       (not_occupied seg_n_a6a8f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8f_0_75 ?a)
       (not (not_blocked seg_n_a6a8f_0_75 ?a))))
 (:action
  ugly29504ugly29837ugly30437ugly30480ugly29889ugly892ugly46ugly188ugly94startup_seg_n1_0_108_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_0_108)
       (not_occupied seg_n_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a))))
 (:action
  ugly29505ugly29277ugly29855ugly29938ugly30314ugly134ugly101ugly696ugly1082park_seg_p131_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p131_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p131_0_75) (not (is-moving ?a))))
 (:action
  ugly29506ugly29601ugly29582ugly29492ugly30128ugly287ugly558ugly1092ugly452startup_seg_p109_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p109_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly29507ugly29931ugly29849ugly30322ugly29480ugly278ugly836ugly905ugly233startup_seg_08r_b6a_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b6a_0_161_245)
       (not_occupied seg_b8_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_a_0_156_924 ?a)
       (not (not_blocked seg_b8_a_0_156_924 ?a))))
 (:action
  ugly29508ugly29879ugly30069ugly30150ugly30294ugly108ugly429ugly226ugly88move_seg_o1_108c_0_34_seg_o1_108a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_108a_0_34 airplane_daew8)
       (not_blocked seg_o1_108a_0_34 airplane_daew3)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_108b_0_60) (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (occupied seg_o1_108c_0_34)) (not_occupied seg_o1_108c_0_34)
       (not (at-segment ?a seg_o1_108c_0_34)) (occupied seg_o1_108a_0_34)
       (not (not_occupied seg_o1_108a_0_34)) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a)) (at-segment ?a seg_o1_108a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_109a_0_34 ?a)) (not_blocked seg_o1_109a_0_34 ?a)
       (blocked seg_o1_108b_0_60 ?a) (not (not_blocked seg_o1_108b_0_60 ?a))
       (blocked seg_o1_108d_0_45 ?a) (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action
  ugly29509ugly30352ugly30436ugly30208ugly30353ugly509ugly1340ugly152ugly1014startup_seg_t_b3a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3a_0_60)
       (not_occupied seg_s_b3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b_0_60 ?a)
       (not (not_blocked seg_s_b3b_0_60 ?a))))
 (:action
  ugly29510ugly29605ugly29713ugly30251ugly30265ugly431ugly478ugly1366ugly364startup_seg_w1_153b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153b_0_45)
       (not_occupied seg_w1_153a_0_34) (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action
  ugly29511ugly30267ugly29836ugly30290ugly29696ugly216ugly588ugly267ugly47startup_seg_t_b5a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5a_0_60)
       (not_occupied seg_t_b5b_0_60) (not_occupied seg_t_b5c_0_120_934)
       (not_occupied seg_t_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b_0_60 ?a)
       (not (not_blocked seg_t_b5b_0_60 ?a)) (blocked seg_t_b5c_0_120_934 ?a)
       (not (not_blocked seg_t_b5c_0_120_934 ?a)) (blocked seg_t_b5d_0_60 ?a)
       (not (not_blocked seg_t_b5d_0_60 ?a))))
 (:action
  ugly29512ugly30142ugly29499ugly29628ugly30067ugly341ugly850ugly27ugly1069park_seg_p154_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p154_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p154_0_75) (not (is-moving ?a))))
 (:action
  ugly29513ugly30020ugly29468ugly30415ugly29314ugly804ugly1060ugly597ugly922startup_seg_n_a7a6b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6b_0_75)
       (not_occupied seg_n_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6c_0_75 ?a)
       (not (not_blocked seg_n_a7a6c_0_75 ?a))))
 (:action
  ugly29514ugly29271ugly29440ugly29689ugly29740ugly426ugly1178ugly7ugly1055move_seg_w1_143b_0_45_seg_p143_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143b_0_45) (not_occupied seg_p143_0_75)
       (not_blocked seg_p143_0_75 airplane_cfbeg)
       (not_blocked seg_p143_0_75 airplane_cfbe1)
       (not_blocked seg_p143_0_75 airplane_cfbe3)
       (not_blocked seg_p143_0_75 airplane_daew8)
       (not_blocked seg_p143_0_75 airplane_daew3)
       (not_blocked seg_p143_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_143b_0_45)) (not_occupied seg_w1_143b_0_45)
       (not (at-segment ?a seg_w1_143b_0_45)) (occupied seg_p143_0_75)
       (not (not_occupied seg_p143_0_75)) (blocked seg_p143_0_75 ?a)
       (not (not_blocked seg_p143_0_75 ?a)) (at-segment ?a seg_p143_0_75)
       (not (blocked seg_w1_143a_0_34 ?a)) (not_blocked seg_w1_143a_0_34 ?a)
       (not (blocked seg_w1_143c_0_60 ?a)) (not_blocked seg_w1_143c_0_60 ?a)))
 (:action
  ugly29515ugly29800ugly29643ugly29309ugly29952ugly714ugly1139ugly62ugly398startup_seg_m_a4c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4c_0_60)
       (not_occupied seg_n_a4a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a))))
 (:action
  ugly29516ugly29777ugly29904ugly29660ugly30458ugly599ugly1173ugly998ugly780startup_seg_t_b8b9c_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9c_0_115)
       (not_occupied seg_t_b8b9c_1_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9c_1_0_115 ?a)
       (not (not_blocked seg_t_b8b9c_1_0_115 ?a))))
 (:action
  ugly29517ugly29977ugly29900ugly30329ugly29813ugly404ugly1026ugly528ugly914startup_seg_a7_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_0_80_6226)
       (not_occupied seg_m_a7a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a_0_120_934 ?a)
       (not (not_blocked seg_m_a7a_0_120_934 ?a))))
 (:action
  ugly29518ugly29834ugly29564ugly30342ugly30376ugly412ugly1128ugly1211ugly1216startup_seg_w1_c2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2b_0_60)
       (not_occupied seg_c2_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_a_0_80 ?a)
       (not (not_blocked seg_c2_a_0_80 ?a))))
 (:action
  ugly29519ugly29534ugly29743ugly30341ugly30506ugly267ugly47ugly567ugly403startup_seg_m_a4a7a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7a_0_75)
       (not_occupied seg_m_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4b_0_60 ?a)
       (not (not_blocked seg_m_a4b_0_60 ?a))))
 (:action
  ugly29520ugly30163ugly29272ugly29943ugly29724ugly1061ugly1301ugly38ugly167startup_seg_w1_142a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142a_0_34)
       (not_occupied seg_w1_142b_0_45) (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action
  ugly29521ugly30429ugly29212ugly30489ugly29285ugly402ugly824ugly486ugly417startup_seg_s_b2b3c_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3c_0_140)
       (not_occupied seg_s_b3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3c_0_60 ?a)
       (not (not_blocked seg_s_b3c_0_60 ?a))))
 (:action
  ugly29522ugly30401ugly30422ugly29267ugly29925ugly622ugly709ugly825ugly1185startup_seg_n_a8b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8b_0_60)
       (not_occupied seg_n_a8a_0_60) (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a)) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action
  ugly29523ugly29361ugly29320ugly29252ugly30368ugly920ugly1019ugly541ugly1028startup_seg_s_b2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2a_0_60)
       (not_occupied seg_s_b2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b_0_60 ?a)
       (not (not_blocked seg_s_b2b_0_60 ?a))))
 (:action
  ugly29524ugly29928ugly29288ugly30344ugly30240ugly629ugly806ugly1017ugly128move_seg_w1_143b_0_45_seg_w1_143c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143b_0_45) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_cfbe1)
       (not_blocked seg_w1_143c_0_60 airplane_cfbe3)
       (not_blocked seg_w1_143c_0_60 airplane_daew8)
       (not_blocked seg_w1_143c_0_60 airplane_daew3)
       (not_blocked seg_w1_143c_0_60 airplane_cfbe2)
       (not_occupied seg_w1_143a_0_34))
  :effect
  (and (not (occupied seg_w1_143b_0_45)) (not_occupied seg_w1_143b_0_45)
       (not (at-segment ?a seg_w1_143b_0_45)) (occupied seg_w1_143c_0_60)
       (not (not_occupied seg_w1_143c_0_60)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a)) (at-segment ?a seg_w1_143c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p143_0_75 ?a)) (not_blocked seg_p143_0_75 ?a)
       (blocked seg_w1_143a_0_34 ?a) (not (not_blocked seg_w1_143a_0_34 ?a))))
 (:action
  ugly29525ugly30420ugly30307ugly29342ugly29967ugly646ugly191ugly1018ugly211move_seg_n_a6b_0_60_seg_n_a6c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6b_0_60) (not_occupied seg_n_a6c_0_60)
       (not_blocked seg_n_a6c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a6c_0_60 airplane_cfbe1)
       (not_blocked seg_n_a6c_0_60 airplane_cfbe3)
       (not_blocked seg_n_a6c_0_60 airplane_daew8)
       (not_blocked seg_n_a6c_0_60 airplane_daew3)
       (not_blocked seg_n_a6c_0_60 airplane_cfbe2)
       (not_occupied seg_n_a6a_0_60))
  :effect
  (and (not (occupied seg_n_a6b_0_60)) (not_occupied seg_n_a6b_0_60)
       (not (at-segment ?a seg_n_a6b_0_60)) (occupied seg_n_a6c_0_60)
       (not (not_occupied seg_n_a6c_0_60)) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a)) (at-segment ?a seg_n_a6c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n_a6a8a_0_115 ?a)) (not_blocked seg_n_a6a8a_0_115 ?a)
       (blocked seg_n_a6a_0_60 ?a) (not (not_blocked seg_n_a6a_0_60 ?a))))
 (:action
  ugly29526ugly30474ugly29912ugly30432ugly29509ugly1169ugly649ugly314ugly278startup_seg_w1_162c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162c_0_34)
       (not_occupied seg_w1_163a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a))))
 (:action
  ugly29527ugly29656ugly29497ugly30215ugly29898ugly1276ugly931ugly1267ugly18startup_seg_m_a9a10g_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10g_0_80)
       (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action
  ugly29528ugly30520ugly29316ugly30006ugly29684ugly1162ugly1233ugly1114ugly843startup_seg_o1_c4a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4a_0_34)
       (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action
  ugly29529ugly30172ugly30356ugly29565ugly30216ugly785ugly1010ugly91ugly736startup_seg_o1_103b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103b_0_60)
       (not_occupied seg_o1_103a_0_34) (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action
  ugly29530ugly30217ugly30440ugly29293ugly29483ugly217ugly176ugly1105ugly834startup_seg_p151_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p151_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly29531ugly29832ugly30095ugly29602ugly29481ugly803ugly1047ugly144ugly579startup_seg_t_b9b10c_2_0_83_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_2_0_83)
       (not_occupied seg_t_b9b10c_0_84))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_0_84 ?a)
       (not (not_blocked seg_t_b9b10c_0_84 ?a))))
 (:action
  ugly29532ugly29744ugly29798ugly29462ugly29871ugly403ugly1127ugly194ugly36startup_seg_t_b3b4b_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4b_0_140)
       (not_occupied seg_t_b3b4a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4a_0_140 ?a)
       (not (not_blocked seg_t_b3b4a_0_140 ?a))))
 (:action
  ugly29533ugly29312ugly29833ugly29578ugly29976ugly571ugly1275ugly252ugly335startup_seg_m_a8a9b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9b_0_75)
       (not_occupied seg_m_a8a9a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9a_0_75 ?a)
       (not (not_blocked seg_m_a8a9a_0_75 ?a))))
 (:action
  ugly29534ugly29743ugly30341ugly30506ugly29450ugly924ugly1320ugly700ugly324startup_seg_t_b3a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3a_0_60)
       (not_occupied seg_t_b3b_0_60) (not_occupied seg_t_b3c_0_120_934)
       (not_occupied seg_t_b3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b_0_60 ?a)
       (not (not_blocked seg_t_b3b_0_60 ?a)) (blocked seg_t_b3c_0_120_934 ?a)
       (not (not_blocked seg_t_b3c_0_120_934 ?a)) (blocked seg_t_b3d_0_60 ?a)
       (not (not_blocked seg_t_b3d_0_60 ?a))))
 (:action
  ugly29535ugly30427ugly30550ugly30149ugly29503ugly670ugly1234ugly722ugly582move_seg_o1_c2b_0_60_seg_o1_c2d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2b_0_60) (not_occupied seg_o1_c2d_0_60)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c2d_0_60 airplane_daew8)
       (not_blocked seg_o1_c2d_0_60 airplane_daew3)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbe2)
       (not_occupied seg_o1_c2a_0_60) (not_occupied seg_o1_c2c_0_34))
  :effect
  (and (not (occupied seg_o1_c2b_0_60)) (not_occupied seg_o1_c2b_0_60)
       (not (at-segment ?a seg_o1_c2b_0_60)) (occupied seg_o1_c2d_0_60)
       (not (not_occupied seg_o1_c2d_0_60)) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a)) (at-segment ?a seg_o1_c2d_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p107_0_76 ?a)) (not_blocked seg_p107_0_76 ?a)
       (blocked seg_o1_c2a_0_60 ?a) (not (not_blocked seg_o1_c2a_0_60 ?a))
       (blocked seg_o1_c2c_0_34 ?a) (not (not_blocked seg_o1_c2c_0_34 ?a))))
 (:action
  ugly29536ugly29950ugly30196ugly30144ugly29921ugly949ugly10ugly1083ugly19startup_seg_o1_c2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2b_0_60)
       (not_occupied seg_o1_c2a_0_60) (not_occupied seg_o1_c2c_0_34)
       (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a)) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a)) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action
  ugly29537ugly29246ugly30263ugly30255ugly29206ugly1166ugly741ugly936ugly148startup_seg_t_b5b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b_0_60)
       (not_occupied seg_t_b5b8a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8a_0_135 ?a)
       (not (not_blocked seg_t_b5b8a_0_135 ?a))))
 (:action
  ugly29538ugly29484ugly29629ugly29961ugly29331ugly992ugly143ugly327ugly117startup_seg_o1_110c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110c_0_34)
       (not_occupied seg_o1_111a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a))))
 (:action
  ugly29539ugly29865ugly30318ugly29985ugly29439ugly1271ugly405ugly1094ugly1091move_seg_o1_c4c_0_80_seg_o1_c4b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4c_0_80) (not_occupied seg_o1_c4b_0_60)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c4b_0_60 airplane_daew8)
       (not_blocked seg_o1_c4b_0_60 airplane_daew3)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_c4a_0_34))
  :effect
  (and (not (occupied seg_o1_c4c_0_80)) (not_occupied seg_o1_c4c_0_80)
       (not (at-segment ?a seg_o1_c4c_0_80)) (occupied seg_o1_c4b_0_60)
       (not (not_occupied seg_o1_c4b_0_60)) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a)) (at-segment ?a seg_o1_c4b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_c4_s6a_0_80 ?a)) (not_blocked seg_c4_s6a_0_80 ?a)
       (blocked seg_o1_c4a_0_34 ?a) (not (not_blocked seg_o1_c4a_0_34 ?a))))
 (:action
  ugly29540ugly30276ugly29190ugly30272ugly29310ugly149ugly901ugly1221ugly440startup_seg_n_a8a9b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9b_0_75)
       (not_occupied seg_n_a8a9a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9a_0_85 ?a)
       (not (not_blocked seg_n_a8a9a_0_85 ?a))))
 (:action
  ugly29541ugly30408ugly29466ugly29512ugly30142ugly316ugly559ugly170ugly40startup_seg_n_a4a7f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7f_0_75)
       (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action
  ugly29542ugly30542ugly29428ugly30253ugly30484ugly811ugly864ugly1059ugly142move_seg_w1_151b_0_45_seg_w1_151a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151b_0_45) (not_occupied seg_w1_151a_0_34)
       (not_blocked seg_w1_151a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_151a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_151a_0_34 airplane_daew8)
       (not_blocked seg_w1_151a_0_34 airplane_daew3)
       (not_blocked seg_w1_151a_0_34 airplane_cfbe2)
       (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (occupied seg_w1_151b_0_45)) (not_occupied seg_w1_151b_0_45)
       (not (at-segment ?a seg_w1_151b_0_45)) (occupied seg_w1_151a_0_34)
       (not (not_occupied seg_w1_151a_0_34)) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (at-segment ?a seg_w1_151a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p151_0_75 ?a)) (not_blocked seg_p151_0_75 ?a)
       (blocked seg_w1_151c_0_34 ?a) (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action
  ugly29543ugly29778ugly29401ugly29678ugly30109ugly1099ugly351ugly423ugly580startup_seg_p161_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p161_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly29544ugly29641ugly30385ugly29682ugly29369ugly1208ugly384ugly9ugly485startup_seg_w1_152a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152a_0_34)
       (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action
  ugly29545ugly29818ugly30238ugly30270ugly29989ugly228ugly243ugly766ugly108move_seg_o1_118b_0_60_seg_o1_118a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118b_0_60) (not_occupied seg_o1_118a_0_34)
       (not_blocked seg_o1_118a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_118a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_118a_0_34 airplane_daew8)
       (not_blocked seg_o1_118a_0_34 airplane_daew3)
       (not_blocked seg_o1_118a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (occupied seg_o1_118b_0_60)) (not_occupied seg_o1_118b_0_60)
       (not (at-segment ?a seg_o1_118b_0_60)) (occupied seg_o1_118a_0_34)
       (not (not_occupied seg_o1_118a_0_34)) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (at-segment ?a seg_o1_118a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p118_0_76 ?a)) (not_blocked seg_p118_0_76 ?a)
       (blocked seg_o1_118c_0_34 ?a) (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action
  ugly29546ugly30104ugly29940ugly30537ugly30503ugly835ugly1362ugly1336ugly193startup_seg_o1_108d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108d_0_45)
       (not_occupied seg_p131_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p131_0_75 ?a)
       (not (not_blocked seg_p131_0_75 ?a))))
 (:action
  ugly29547ugly29591ugly29690ugly29464ugly29518ugly651ugly490ugly139ugly683move_seg_o1_c3a_0_34_seg_o1_c3c_0_48_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_c3c_0_48)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbe1)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbe3)
       (not_blocked seg_o1_c3c_0_48 airplane_daew8)
       (not_blocked seg_o1_c3c_0_48 airplane_daew3)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbe2)
       (not_occupied seg_o1_c3b_0_60) (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (not (occupied seg_o1_c3a_0_34)) (not_occupied seg_o1_c3a_0_34)
       (not (at-segment ?a seg_o1_c3a_0_34)) (occupied seg_o1_c3c_0_48)
       (not (not_occupied seg_o1_c3c_0_48)) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a)) (at-segment ?a seg_o1_c3c_0_48)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_111c_0_34 ?a)) (not_blocked seg_o1_111c_0_34 ?a)
       (blocked seg_o1_c3b_0_60 ?a) (not (not_blocked seg_o1_c3b_0_60 ?a))
       (blocked seg_o1_c3d_0_60 ?a) (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action
  ugly29548ugly29374ugly29283ugly29866ugly29988ugly447ugly560ugly1166ugly741startup_seg_p108_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p108_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly29549ugly29254ugly29891ugly30108ugly30340ugly554ugly1117ugly114ugly1237startup_seg_s_b9b10a_0_125_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10a_0_125)
       (not_occupied seg_s_b9b10b_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10b_0_125 ?a)
       (not (not_blocked seg_s_b9b10b_0_125 ?a))))
 (:action
  ugly29550ugly30138ugly29222ugly29424ugly29810ugly807ugly595ugly675ugly255startup_seg_n_a3d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3d_0_60)
       (not_occupied seg_n_a2a3f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3f_0_115 ?a)
       (not (not_blocked seg_n_a2a3f_0_115 ?a))))
 (:action
  ugly29551ugly29548ugly29374ugly29283ugly29866ugly805ugly531ugly309ugly909move_seg_n_n2a_0_60_seg_n_n2b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a_0_60) (not_occupied seg_n_n2b_0_60)
       (not_blocked seg_n_n2b_0_60 airplane_cfbeg)
       (not_blocked seg_n_n2b_0_60 airplane_cfbe1)
       (not_blocked seg_n_n2b_0_60 airplane_cfbe3)
       (not_blocked seg_n_n2b_0_60 airplane_daew8)
       (not_blocked seg_n_n2b_0_60 airplane_daew3)
       (not_blocked seg_n_n2b_0_60 airplane_cfbe2)
       (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (occupied seg_n_n2a_0_60)) (not_occupied seg_n_n2a_0_60)
       (not (at-segment ?a seg_n_n2a_0_60)) (occupied seg_n_n2b_0_60)
       (not (not_occupied seg_n_n2b_0_60)) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a)) (at-segment ?a seg_n_n2b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n_n2a4a_0_70 ?a)) (not_blocked seg_n_n2a4a_0_70 ?a)
       (blocked seg_n_n2c_0_60 ?a) (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action
  ugly29552ugly29790ugly29679ugly30299ugly29890ugly965ugly516ugly870ugly1289park_seg_p118_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p118_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p118_0_76) (not (is-moving ?a))))
 (:action
  ugly29553ugly29218ugly30396ugly29723ugly30350ugly1219ugly1050ugly851ugly504move_seg_o1_116a_0_34_seg_o1_115c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_115c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_115c_0_34 airplane_daew8)
       (not_blocked seg_o1_115c_0_34 airplane_daew3)
       (not_blocked seg_o1_115c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_116a_0_34)) (not_occupied seg_o1_116a_0_34)
       (not (at-segment ?a seg_o1_116a_0_34)) (occupied seg_o1_115c_0_34)
       (not (not_occupied seg_o1_115c_0_34)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a)) (at-segment ?a seg_o1_115c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_116b_0_60 ?a)) (not_blocked seg_o1_116b_0_60 ?a)
       (not (blocked seg_o1_116c_0_34 ?a)) (not_blocked seg_o1_116c_0_34 ?a)))
 (:action
  ugly29554ugly30111ugly30187ugly29698ugly30485ugly141ugly1119ugly997ugly1093move_seg_w1_151c_0_34_seg_w1_152a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151c_0_34) (not_occupied seg_w1_152a_0_34)
       (not_blocked seg_w1_152a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_152a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_152a_0_34 airplane_daew8)
       (not_blocked seg_w1_152a_0_34 airplane_daew3)
       (not_blocked seg_w1_152a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_151c_0_34)) (not_occupied seg_w1_151c_0_34)
       (not (at-segment ?a seg_w1_151c_0_34)) (occupied seg_w1_152a_0_34)
       (not (not_occupied seg_w1_152a_0_34)) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (at-segment ?a seg_w1_152a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_151a_0_34 ?a)) (not_blocked seg_w1_151a_0_34 ?a)
       (not (blocked seg_w1_151b_0_45 ?a)) (not_blocked seg_w1_151b_0_45 ?a)))
 (:action
  ugly29555ugly30258ugly29860ugly29545ugly29818ugly1055ugly202ugly347ugly744move_seg_s_b5b8b_0_135_seg_s_b5b8a_0_135_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b5b8b_0_135) (not_occupied seg_s_b5b8a_0_135)
       (not_blocked seg_s_b5b8a_0_135 airplane_cfbeg)
       (not_blocked seg_s_b5b8a_0_135 airplane_cfbe1)
       (not_blocked seg_s_b5b8a_0_135 airplane_cfbe3)
       (not_blocked seg_s_b5b8a_0_135 airplane_daew8)
       (not_blocked seg_s_b5b8a_0_135 airplane_daew3)
       (not_blocked seg_s_b5b8a_0_135 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b5b8b_0_135)) (not_occupied seg_s_b5b8b_0_135)
       (not (at-segment ?a seg_s_b5b8b_0_135)) (occupied seg_s_b5b8a_0_135)
       (not (not_occupied seg_s_b5b8a_0_135)) (blocked seg_s_b5b8a_0_135 ?a)
       (not (not_blocked seg_s_b5b8a_0_135 ?a))
       (at-segment ?a seg_s_b5b8a_0_135) (not (blocked seg_s_b5b8c_0_130 ?a))
       (not_blocked seg_s_b5b8c_0_130 ?a)))
 (:action
  ugly29556ugly29530ugly30217ugly30440ugly29293ugly300ugly749ugly959ugly1024move_seg_s_b2b3a_0_140_seg_s_b2a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b2b3a_0_140) (not_occupied seg_s_b2a_0_60)
       (not_blocked seg_s_b2a_0_60 airplane_cfbeg)
       (not_blocked seg_s_b2a_0_60 airplane_cfbe1)
       (not_blocked seg_s_b2a_0_60 airplane_cfbe3)
       (not_blocked seg_s_b2a_0_60 airplane_daew8)
       (not_blocked seg_s_b2a_0_60 airplane_daew3)
       (not_blocked seg_s_b2a_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b2b3a_0_140)) (not_occupied seg_s_b2b3a_0_140)
       (not (at-segment ?a seg_s_b2b3a_0_140)) (occupied seg_s_b2a_0_60)
       (not (not_occupied seg_s_b2a_0_60)) (blocked seg_s_b2a_0_60 ?a)
       (not (not_blocked seg_s_b2a_0_60 ?a)) (at-segment ?a seg_s_b2a_0_60)
       (not (blocked seg_s_b2b3b_0_140 ?a))
       (not_blocked seg_s_b2b3b_0_140 ?a)))
 (:action
  ugly29557ugly29228ugly29749ugly29722ugly29711ugly74ugly1012ugly262ugly298startup_seg_a9_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_a_0_158_647)
       (not_occupied seg_a9_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_b_0_159_512 ?a)
       (not (not_blocked seg_a9_b_0_159_512 ?a))))
 (:action
  ugly29558ugly30289ugly29265ugly29387ugly30025ugly207ugly987ugly868ugly618move_seg_p110_0_76_seg_o1_110b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p110_0_76) (not_occupied seg_o1_110b_0_60)
       (not_blocked seg_o1_110b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_110b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_110b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_110b_0_60 airplane_daew8)
       (not_blocked seg_o1_110b_0_60 airplane_daew3)
       (not_blocked seg_o1_110b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p110_0_76)) (not_occupied seg_p110_0_76)
       (not (at-segment ?a seg_p110_0_76)) (occupied seg_o1_110b_0_60)
       (not (not_occupied seg_o1_110b_0_60)) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a))
       (at-segment ?a seg_o1_110b_0_60)))
 (:action
  ugly29559ugly30159ugly29577ugly29918ugly29735ugly305ugly305ugly305ugly305move_seg_o1_c3c_0_48_seg_o1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3c_0_48) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c3a_0_34 airplane_daew8)
       (not_blocked seg_o1_c3a_0_34 airplane_daew3)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_c3b_0_60) (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (not (occupied seg_o1_c3c_0_48)) (not_occupied seg_o1_c3c_0_48)
       (not (at-segment ?a seg_o1_c3c_0_48)) (occupied seg_o1_c3a_0_34)
       (not (not_occupied seg_o1_c3a_0_34)) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a)) (at-segment ?a seg_o1_c3a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_115a_0_34 ?a)) (not_blocked seg_o1_115a_0_34 ?a)
       (blocked seg_o1_c3b_0_60 ?a) (not (not_blocked seg_o1_c3b_0_60 ?a))
       (blocked seg_o1_c3d_0_60 ?a) (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action
  ugly29560ugly30185ugly30014ugly30047ugly30298ugly820ugly783ugly461ugly884move_seg_o1_c2d_0_60_seg_o1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c2a_0_60 airplane_daew8)
       (not_blocked seg_o1_c2a_0_60 airplane_daew3)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbe2)
       (not_occupied seg_o1_c2b_0_60) (not_occupied seg_o1_c2c_0_34))
  :effect
  (and (not (occupied seg_o1_c2d_0_60)) (not_occupied seg_o1_c2d_0_60)
       (not (at-segment ?a seg_o1_c2d_0_60)) (occupied seg_o1_c2a_0_60)
       (not (not_occupied seg_o1_c2a_0_60)) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a)) (at-segment ?a seg_o1_c2a_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_c2_b_0_80 ?a)) (not_blocked seg_c2_b_0_80 ?a)
       (blocked seg_o1_c2b_0_60 ?a) (not (not_blocked seg_o1_c2b_0_60 ?a))
       (blocked seg_o1_c2c_0_34 ?a) (not (not_blocked seg_o1_c2c_0_34 ?a))))
 (:action
  ugly29561ugly30330ugly29414ugly29917ugly30126ugly383ugly658ugly161ugly494startup_seg_p152_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p152_0_75)
       (not_occupied seg_w1_152b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action
  ugly29562ugly30363ugly29244ugly30320ugly29479ugly744ugly115ugly1000ugly878move_seg_o1_108d_0_45_seg_p131_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_p131_0_75)
       (not_blocked seg_p131_0_75 airplane_cfbeg)
       (not_blocked seg_p131_0_75 airplane_cfbe1)
       (not_blocked seg_p131_0_75 airplane_cfbe3)
       (not_blocked seg_p131_0_75 airplane_daew8)
       (not_blocked seg_p131_0_75 airplane_daew3)
       (not_blocked seg_p131_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_108d_0_45)) (not_occupied seg_o1_108d_0_45)
       (not (at-segment ?a seg_o1_108d_0_45)) (occupied seg_p131_0_75)
       (not (not_occupied seg_p131_0_75)) (blocked seg_p131_0_75 ?a)
       (not (not_blocked seg_p131_0_75 ?a)) (at-segment ?a seg_p131_0_75)
       (not (blocked seg_o1_108a_0_34 ?a)) (not_blocked seg_o1_108a_0_34 ?a)
       (not (blocked seg_o1_108b_0_60 ?a)) (not_blocked seg_o1_108b_0_60 ?a)
       (not (blocked seg_o1_108c_0_34 ?a)) (not_blocked seg_o1_108c_0_34 ?a)))
 (:action
  ugly29563ugly29418ugly30380ugly29844ugly30333ugly1143ugly566ugly468ugly1313startup_seg_a3_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_b_0_159_512)
       (not_occupied seg_a3_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_a_0_158_647 ?a)
       (not (not_blocked seg_a3_a_0_158_647 ?a))))
 (:action
  ugly29564ugly30342ugly30376ugly29595ugly29526ugly1291ugly1243ugly1030ugly1254move_seg_w1_c4b_0_60_seg_w1_c4a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c4b_0_60) (not_occupied seg_w1_c4a_0_34)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_c4a_0_34 airplane_daew8)
       (not_blocked seg_w1_c4a_0_34 airplane_daew3)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbe2)
       (not_occupied seg_w1_c4c_0_60))
  :effect
  (and (not (occupied seg_w1_c4b_0_60)) (not_occupied seg_w1_c4b_0_60)
       (not (at-segment ?a seg_w1_c4b_0_60)) (occupied seg_w1_c4a_0_34)
       (not (not_occupied seg_w1_c4a_0_34)) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a)) (at-segment ?a seg_w1_c4a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_c4_s6c_0_60 ?a)) (not_blocked seg_c4_s6c_0_60 ?a)
       (blocked seg_w1_c4c_0_60 ?a) (not (not_blocked seg_w1_c4c_0_60 ?a))))
 (:action
  ugly29565ugly30216ugly29968ugly30178ugly29653ugly1365ugly1278ugly261ugly960move_seg_o1_103a_0_34_seg_o1_102c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_102c_0_34 airplane_daew8)
       (not_blocked seg_o1_102c_0_34 airplane_daew3)
       (not_blocked seg_o1_102c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_103a_0_34)) (not_occupied seg_o1_103a_0_34)
       (not (at-segment ?a seg_o1_103a_0_34)) (occupied seg_o1_102c_0_34)
       (not (not_occupied seg_o1_102c_0_34)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a)) (at-segment ?a seg_o1_102c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_103b_0_60 ?a)) (not_blocked seg_o1_103b_0_60 ?a)
       (not (blocked seg_o1_103c_0_34 ?a)) (not_blocked seg_o1_103c_0_34 ?a)))
 (:action
  ugly29566ugly30024ugly30513ugly30332ugly29333ugly12ugly1210ugly981ugly281startup_seg_t_b3b4a_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4a_0_140)
       (not_occupied seg_t_b3b4b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4b_0_140 ?a)
       (not (not_blocked seg_t_b3b4b_0_140 ?a))))
 (:action
  ugly29567ugly29666ugly30070ugly29381ugly30510ugly1347ugly730ugly819ugly58move_seg_w1_c3a_0_34_seg_w1_c3c_0_48_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c3a_0_34) (not_occupied seg_w1_c3c_0_48)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbe1)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbe3)
       (not_blocked seg_w1_c3c_0_48 airplane_daew8)
       (not_blocked seg_w1_c3c_0_48 airplane_daew3)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbe2)
       (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (not (occupied seg_w1_c3a_0_34)) (not_occupied seg_w1_c3a_0_34)
       (not (at-segment ?a seg_w1_c3a_0_34)) (occupied seg_w1_c3c_0_48)
       (not (not_occupied seg_w1_c3c_0_48)) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a)) (at-segment ?a seg_w1_c3c_0_48)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_154c_0_34 ?a)) (not_blocked seg_w1_154c_0_34 ?a)
       (blocked seg_w1_c3b_0_60 ?a) (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action
  ugly29568ugly30496ugly30305ugly30527ugly29289ugly448ugly689ugly392ugly1303startup_seg_m_a6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6b_0_60)
       (not_occupied seg_n_a6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a))))
 (:action
  ugly29569ugly30193ugly30357ugly29686ugly30034ugly754ugly1291ugly1243ugly1030startup_seg_n_a2a3e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3e_0_75)
       (not_occupied seg_n_a2a3f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3f_0_115 ?a)
       (not (not_blocked seg_n_a2a3f_0_115 ?a))))
 (:action
  ugly29570ugly30300ugly29590ugly30312ugly30131ugly640ugly630ugly1143ugly566startup_seg_b4_a_0_156_924_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_a_0_156_924)
       (not_occupied seg_b4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b4_b_1_0_80_6226 ?a))))
 (:action
  ugly29571ugly29420ugly29469ugly29862ugly29307ugly973ugly546ugly1072ugly863startup_seg_s_b8a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8a_0_60)
       (not_occupied seg_s_b8b9a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9a_0_115 ?a)
       (not (not_blocked seg_s_b8b9a_0_115 ?a))))
 (:action
  ugly29572ugly30058ugly29346ugly29663ugly29793ugly145ugly318ugly179ugly879startup_seg_08l_a7b_0_161_245_south_medium
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
  ugly29573ugly29869ugly29997ugly29589ugly30211ugly139ugly683ugly274ugly131startup_seg_b9_a_0_156_924_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_a_0_156_924)
       (not_occupied seg_b9_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b9_b_1_0_80_6226 ?a))))
 (:action
  ugly29574ugly30048ugly29816ugly29379ugly29635ugly522ugly476ugly286ugly1157startup_seg_s_b9b10c_2_0_83_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_2_0_83)
       (not_occupied seg_s_b9b10c_1_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_1_0_83 ?a)
       (not (not_blocked seg_s_b9b10c_1_0_83 ?a))))
 (:action
  ugly29575ugly29995ugly29665ugly29716ugly30001ugly853ugly1063ugly529ugly227move_seg_o1_109c_0_34_seg_o1_109d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109c_0_34) (not_occupied seg_o1_109d_0_45)
       (not_blocked seg_o1_109d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_109d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_109d_0_45 airplane_cfbe3)
       (not_blocked seg_o1_109d_0_45 airplane_daew8)
       (not_blocked seg_o1_109d_0_45 airplane_daew3)
       (not_blocked seg_o1_109d_0_45 airplane_cfbe2)
       (not_occupied seg_o1_109a_0_34) (not_occupied seg_o1_109b_0_60))
  :effect
  (and (not (occupied seg_o1_109c_0_34)) (not_occupied seg_o1_109c_0_34)
       (not (at-segment ?a seg_o1_109c_0_34)) (occupied seg_o1_109d_0_45)
       (not (not_occupied seg_o1_109d_0_45)) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a)) (at-segment ?a seg_o1_109d_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_110a_0_34 ?a)) (not_blocked seg_o1_110a_0_34 ?a)
       (blocked seg_o1_109a_0_34 ?a) (not (not_blocked seg_o1_109a_0_34 ?a))
       (blocked seg_o1_109b_0_60 ?a) (not (not_blocked seg_o1_109b_0_60 ?a))))
 (:action
  ugly29576ugly29539ugly29865ugly30318ugly29985ugly256ugly1108ugly250ugly156move_seg_s_b3b4a_0_140_seg_s_b3a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b3b4a_0_140) (not_occupied seg_s_b3a_0_60)
       (not_blocked seg_s_b3a_0_60 airplane_cfbeg)
       (not_blocked seg_s_b3a_0_60 airplane_cfbe1)
       (not_blocked seg_s_b3a_0_60 airplane_cfbe3)
       (not_blocked seg_s_b3a_0_60 airplane_daew8)
       (not_blocked seg_s_b3a_0_60 airplane_daew3)
       (not_blocked seg_s_b3a_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b3b4a_0_140)) (not_occupied seg_s_b3b4a_0_140)
       (not (at-segment ?a seg_s_b3b4a_0_140)) (occupied seg_s_b3a_0_60)
       (not (not_occupied seg_s_b3a_0_60)) (blocked seg_s_b3a_0_60 ?a)
       (not (not_blocked seg_s_b3a_0_60 ?a)) (at-segment ?a seg_s_b3a_0_60)
       (not (blocked seg_s_b3b4b_0_140 ?a))
       (not_blocked seg_s_b3b4b_0_140 ?a)))
 (:action
  ugly29577ugly29918ugly29735ugly29488ugly30153ugly109ugly248ugly168ugly49park_seg_p161_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p161_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p161_0_75) (not (is-moving ?a))))
 (:action
  ugly29578ugly29976ugly29754ugly30450ugly30239ugly433ugly457ugly1136ugly1344move_seg_o1_116b_0_60_seg_p116_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116b_0_60) (not_occupied seg_p116_0_76)
       (not_blocked seg_p116_0_76 airplane_cfbeg)
       (not_blocked seg_p116_0_76 airplane_cfbe1)
       (not_blocked seg_p116_0_76 airplane_cfbe3)
       (not_blocked seg_p116_0_76 airplane_daew8)
       (not_blocked seg_p116_0_76 airplane_daew3)
       (not_blocked seg_p116_0_76 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_116b_0_60)) (not_occupied seg_o1_116b_0_60)
       (not (at-segment ?a seg_o1_116b_0_60)) (occupied seg_p116_0_76)
       (not (not_occupied seg_p116_0_76)) (blocked seg_p116_0_76 ?a)
       (not (not_blocked seg_p116_0_76 ?a)) (at-segment ?a seg_p116_0_76)
       (not (blocked seg_o1_116a_0_34 ?a)) (not_blocked seg_o1_116a_0_34 ?a)
       (not (blocked seg_o1_116c_0_34 ?a)) (not_blocked seg_o1_116c_0_34 ?a)))
 (:action
  ugly29579ugly30419ugly29209ugly29380ugly30248ugly616ugly1246ugly340ugly947move_seg_w1_c4b_0_60_seg_w1_c4c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c4b_0_60) (not_occupied seg_w1_c4c_0_60)
       (not_blocked seg_w1_c4c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c4c_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c4c_0_60 airplane_cfbe3)
       (not_blocked seg_w1_c4c_0_60 airplane_daew8)
       (not_blocked seg_w1_c4c_0_60 airplane_daew3)
       (not_blocked seg_w1_c4c_0_60 airplane_cfbe2)
       (not_occupied seg_w1_c4a_0_34))
  :effect
  (and (not (occupied seg_w1_c4b_0_60)) (not_occupied seg_w1_c4b_0_60)
       (not (at-segment ?a seg_w1_c4b_0_60)) (occupied seg_w1_c4c_0_60)
       (not (not_occupied seg_w1_c4c_0_60)) (blocked seg_w1_c4c_0_60 ?a)
       (not (not_blocked seg_w1_c4c_0_60 ?a)) (at-segment ?a seg_w1_c4c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_c4_s6c_0_60 ?a)) (not_blocked seg_c4_s6c_0_60 ?a)
       (blocked seg_w1_c4a_0_34 ?a) (not (not_blocked seg_w1_c4a_0_34 ?a))))
 (:action
  ugly29580ugly29449ugly29191ugly30526ugly29194ugly998ugly780ugly615ugly186move_seg_w1_163c_0_34_seg_w1_163a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163c_0_34) (not_occupied seg_w1_163a_0_34)
       (not_blocked seg_w1_163a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_163a_0_34 airplane_daew8)
       (not_blocked seg_w1_163a_0_34 airplane_daew3)
       (not_blocked seg_w1_163a_0_34 airplane_cfbe2)
       (not_occupied seg_w1_163b_0_45))
  :effect
  (and (not (occupied seg_w1_163c_0_34)) (not_occupied seg_w1_163c_0_34)
       (not (at-segment ?a seg_w1_163c_0_34)) (occupied seg_w1_163a_0_34)
       (not (not_occupied seg_w1_163a_0_34)) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (at-segment ?a seg_w1_163a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_164a_0_34 ?a)) (not_blocked seg_w1_164a_0_34 ?a)
       (blocked seg_w1_163b_0_45 ?a) (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action
  ugly29581ugly30434ugly29785ugly29576ugly29539ugly682ugly762ugly746ugly453move_seg_w1_141b_0_45_seg_w1_141c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141b_0_45) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_141c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_141c_0_34 airplane_daew8)
       (not_blocked seg_w1_141c_0_34 airplane_daew3)
       (not_blocked seg_w1_141c_0_34 airplane_cfbe2)
       (not_occupied seg_w1_141a_0_34))
  :effect
  (and (not (occupied seg_w1_141b_0_45)) (not_occupied seg_w1_141b_0_45)
       (not (at-segment ?a seg_w1_141b_0_45)) (occupied seg_w1_141c_0_34)
       (not (not_occupied seg_w1_141c_0_34)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a)) (at-segment ?a seg_w1_141c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p141_0_75 ?a)) (not_blocked seg_p141_0_75 ?a)
       (blocked seg_w1_141a_0_34 ?a) (not (not_blocked seg_w1_141a_0_34 ?a))))
 (:action
  ugly29582ugly29492ugly30128ugly29470ugly29506ugly418ugly1282ugly835ugly1362startup_seg_n_a9b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9b_0_60)
       (not_occupied seg_n_a9a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10a_0_80 ?a)
       (not (not_blocked seg_n_a9a10a_0_80 ?a))))
 (:action
  ugly29583ugly29658ugly29476ugly29573ugly29869ugly814ugly1124ugly245ugly33move_seg_p162_0_75_seg_w1_162b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p162_0_75) (not_occupied seg_w1_162b_0_45)
       (not_blocked seg_w1_162b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_162b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_162b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_162b_0_45 airplane_daew8)
       (not_blocked seg_w1_162b_0_45 airplane_daew3)
       (not_blocked seg_w1_162b_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p162_0_75)) (not_occupied seg_p162_0_75)
       (not (at-segment ?a seg_p162_0_75)) (occupied seg_w1_162b_0_45)
       (not (not_occupied seg_w1_162b_0_45)) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a))
       (at-segment ?a seg_w1_162b_0_45)))
 (:action
  ugly29584ugly29335ugly29485ugly29519ugly29534ugly560ugly1166ugly741ugly936move_seg_w1_141b_0_45_seg_p141_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141b_0_45) (not_occupied seg_p141_0_75)
       (not_blocked seg_p141_0_75 airplane_cfbeg)
       (not_blocked seg_p141_0_75 airplane_cfbe1)
       (not_blocked seg_p141_0_75 airplane_cfbe3)
       (not_blocked seg_p141_0_75 airplane_daew8)
       (not_blocked seg_p141_0_75 airplane_daew3)
       (not_blocked seg_p141_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_141b_0_45)) (not_occupied seg_w1_141b_0_45)
       (not (at-segment ?a seg_w1_141b_0_45)) (occupied seg_p141_0_75)
       (not (not_occupied seg_p141_0_75)) (blocked seg_p141_0_75 ?a)
       (not (not_blocked seg_p141_0_75 ?a)) (at-segment ?a seg_p141_0_75)
       (not (blocked seg_w1_141a_0_34 ?a)) (not_blocked seg_w1_141a_0_34 ?a)
       (not (blocked seg_w1_141c_0_34 ?a)) (not_blocked seg_w1_141c_0_34 ?a)))
 (:action
  ugly29585ugly29197ugly30387ugly29444ugly30378ugly689ugly392ugly1303ugly1162startup_seg_m_a10b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10b_0_60)
       (not_occupied seg_m_a10a_0_60) (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a)) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action
  ugly29586ugly29425ugly30549ugly30505ugly30257ugly1079ugly178ugly482ugly592startup_seg_n_n2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2b_0_60)
       (not_occupied seg_n2_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_0_108 ?a)
       (not (not_blocked seg_n2_0_108 ?a))))
 (:action
  ugly29587ugly30347ugly29715ugly30538ugly29674ugly346ugly323ugly686ugly39startup_seg_a4_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_1_0_80_6226)
       (not_occupied seg_a4_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_a_0_157_785 ?a)
       (not (not_blocked seg_a4_a_0_157_785 ?a))))
 (:action
  ugly29588ugly29551ugly29548ugly29374ugly29283ugly683ugly274ugly131ugly480startup_seg_t_b5c_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5c_0_120_934)
       (not_occupied seg_b5_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b5_b_0_159_512 ?a)
       (not (not_blocked seg_b5_b_0_159_512 ?a))))
 (:action
  ugly29589ugly30211ugly29322ugly30375ugly30366ugly1071ugly336ugly85ugly1327startup_seg_t_b3b4d_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4d_0_140)
       (not_occupied seg_t_b4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4d_0_60 ?a)
       (not (not_blocked seg_t_b4d_0_60 ?a))))
 (:action
  ugly29590ugly30312ugly30131ugly29823ugly30284ugly471ugly875ugly720ugly1071move_seg_o1_103b_0_60_seg_p103_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103b_0_60) (not_occupied seg_p103_0_76)
       (not_blocked seg_p103_0_76 airplane_cfbeg)
       (not_blocked seg_p103_0_76 airplane_cfbe1)
       (not_blocked seg_p103_0_76 airplane_cfbe3)
       (not_blocked seg_p103_0_76 airplane_daew8)
       (not_blocked seg_p103_0_76 airplane_daew3)
       (not_blocked seg_p103_0_76 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_103b_0_60)) (not_occupied seg_o1_103b_0_60)
       (not (at-segment ?a seg_o1_103b_0_60)) (occupied seg_p103_0_76)
       (not (not_occupied seg_p103_0_76)) (blocked seg_p103_0_76 ?a)
       (not (not_blocked seg_p103_0_76 ?a)) (at-segment ?a seg_p103_0_76)
       (not (blocked seg_o1_103a_0_34 ?a)) (not_blocked seg_o1_103a_0_34 ?a)
       (not (blocked seg_o1_103c_0_34 ?a)) (not_blocked seg_o1_103c_0_34 ?a)))
 (:action
  ugly29591ugly29690ugly29464ugly29518ugly29834ugly381ugly600ugly282ugly1361startup_seg_t_b8b9c_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9c_0_115)
       (not_occupied seg_t_b9d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9d_0_60 ?a)
       (not (not_blocked seg_t_b9d_0_60 ?a))))
 (:action
  ugly29592ugly30477ugly29881ugly29186ugly29731ugly898ugly1013ugly41ugly812park_seg_p142_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p142_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p142_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_142b_0_45 ?a)) (not_blocked seg_w1_142b_0_45 ?a)))
 (:action
  ugly29593ugly30316ugly30268ugly29999ugly29510ugly422ugly145ugly318ugly179startup_seg_p101_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p101_0_76)
       (not_occupied seg_o1_c1a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a))))
 (:action
  ugly29594ugly30237ugly30367ugly29560ugly30185ugly831ugly228ugly243ugly766move_seg_b8_b_1_0_80_6226_seg_b8_b_0_80_6226_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_b8_b_1_0_80_6226) (not_occupied seg_b8_b_0_80_6226)
       (not_blocked seg_b8_b_0_80_6226 airplane_cfbeg)
       (not_blocked seg_b8_b_0_80_6226 airplane_cfbe1)
       (not_blocked seg_b8_b_0_80_6226 airplane_cfbe3)
       (not_blocked seg_b8_b_0_80_6226 airplane_daew8)
       (not_blocked seg_b8_b_0_80_6226 airplane_daew3)
       (not_blocked seg_b8_b_0_80_6226 airplane_cfbe2))
  :effect
  (and (not (occupied seg_b8_b_1_0_80_6226))
       (not_occupied seg_b8_b_1_0_80_6226)
       (not (at-segment ?a seg_b8_b_1_0_80_6226)) (occupied seg_b8_b_0_80_6226)
       (not (not_occupied seg_b8_b_0_80_6226)) (blocked seg_b8_b_0_80_6226 ?a)
       (not (not_blocked seg_b8_b_0_80_6226 ?a))
       (at-segment ?a seg_b8_b_0_80_6226) (not (blocked seg_b8_a_0_156_924 ?a))
       (not_blocked seg_b8_a_0_156_924 ?a)))
 (:action
  ugly29595ugly29526ugly30474ugly29912ugly30432ugly326ugly676ugly943ugly917startup_seg_t_b3d_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3d_0_60)
       (not_occupied seg_t_b3a_0_60) (not_occupied seg_t_b3b_0_60)
       (not_occupied seg_t_b3c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3a_0_60 ?a)
       (not (not_blocked seg_t_b3a_0_60 ?a)) (blocked seg_t_b3b_0_60 ?a)
       (not (not_blocked seg_t_b3b_0_60 ?a)) (blocked seg_t_b3c_0_120_934 ?a)
       (not (not_blocked seg_t_b3c_0_120_934 ?a))))
 (:action
  ugly29596ugly29672ugly29221ugly29261ugly30467ugly1336ugly193ugly932ugly319startup_seg_w1_164b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164b_0_45)
       (not_occupied seg_w1_164a_0_34) (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action
  ugly29597ugly30315ugly29417ugly29532ugly29744ugly615ugly186ugly126ugly506move_seg_o1_116a_0_34_seg_o1_116b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_116b_0_60)
       (not_blocked seg_o1_116b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_116b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_116b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_116b_0_60 airplane_daew8)
       (not_blocked seg_o1_116b_0_60 airplane_daew3)
       (not_blocked seg_o1_116b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (occupied seg_o1_116a_0_34)) (not_occupied seg_o1_116a_0_34)
       (not (at-segment ?a seg_o1_116a_0_34)) (occupied seg_o1_116b_0_60)
       (not (not_occupied seg_o1_116b_0_60)) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a)) (at-segment ?a seg_o1_116b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_115c_0_34 ?a)) (not_blocked seg_o1_115c_0_34 ?a)
       (blocked seg_o1_116c_0_34 ?a) (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action
  ugly29598ugly30303ugly29513ugly30020ugly29468ugly1232ugly990ugly160ugly912startup_seg_n_a2a3d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3d_0_75)
       (not_occupied seg_n_a2a3c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3c_0_75 ?a)
       (not (not_blocked seg_n_a2a3c_0_75 ?a))))
 (:action
  ugly29599ugly29306ugly30373ugly29695ugly30328ugly254ugly1332ugly299ugly8startup_seg_s_b9b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b_0_60)
       (not_occupied seg_s_b9a_0_60) (not_occupied seg_s_b9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9a_0_60 ?a)
       (not (not_blocked seg_s_b9a_0_60 ?a)) (blocked seg_s_b9c_0_60 ?a)
       (not (not_blocked seg_s_b9c_0_60 ?a))))
 (:action
  ugly29600ugly29741ugly30231ugly29753ugly30424ugly765ugly397ugly697ugly867startup_seg_w1_151c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151c_0_34)
       (not_occupied seg_w1_152a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a))))
 (:action
  ugly29601ugly29582ugly29492ugly30128ugly29470ugly323ugly686ugly39ugly1359startup_seg_s6_0_94_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s6_0_94)
       (not_occupied seg_s_b5a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5a_0_60 ?a)
       (not (not_blocked seg_s_b5a_0_60 ?a))))
 (:action
  ugly29602ugly29481ugly29986ugly29375ugly30242ugly130ugly751ugly1107ugly289startup_seg_n_a8a9a_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9a_0_85)
       (not_occupied seg_n_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a))))
 (:action
  ugly29603ugly29550ugly30138ugly29222ugly29424ugly627ugly939ugly80ugly957startup_seg_m_a8a9d_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9d_0_85)
       (not_occupied seg_m_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9c_0_75 ?a)
       (not (not_blocked seg_m_a8a9c_0_75 ?a))))
 (:action
  ugly29604ugly30256ugly30473ugly29456ugly29588ugly368ugly840ugly56ugly238startup_seg_s_b8c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8c_0_60)
       (not_occupied seg_s_b8a_0_60) (not_occupied seg_s_b8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8a_0_60 ?a)
       (not (not_blocked seg_s_b8a_0_60 ?a)) (blocked seg_s_b8b_0_60 ?a)
       (not (not_blocked seg_s_b8b_0_60 ?a))))
 (:action
  ugly29605ugly29713ugly30251ugly30265ugly29614ugly779ugly803ugly1047ugly144startup_seg_t_b5b8b_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8b_0_135)
       (not_occupied seg_t_b5b8a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8a_0_135 ?a)
       (not (not_blocked seg_t_b5b8a_0_135 ?a))))
 (:action
  ugly29606ugly30392ugly30508ugly29748ugly30449ugly303ugly811ugly864ugly1059move_seg_w1_c2c_0_34_seg_w1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c2c_0_34) (not_occupied seg_w1_c2a_0_60)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbe3)
       (not_blocked seg_w1_c2a_0_60 airplane_daew8)
       (not_blocked seg_w1_c2a_0_60 airplane_daew3)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbe2)
       (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (not (occupied seg_w1_c2c_0_34)) (not_occupied seg_w1_c2c_0_34)
       (not (at-segment ?a seg_w1_c2c_0_34)) (occupied seg_w1_c2a_0_60)
       (not (not_occupied seg_w1_c2a_0_60)) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a)) (at-segment ?a seg_w1_c2a_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_151a_0_34 ?a)) (not_blocked seg_w1_151a_0_34 ?a)
       (blocked seg_w1_c2b_0_60 ?a) (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action
  ugly29607ugly29787ugly30397ugly29226ugly29559ugly976ugly129ugly572ugly230startup_seg_s_b8b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b_0_60)
       (not_occupied seg_s_b8a_0_60) (not_occupied seg_s_b8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8a_0_60 ?a)
       (not (not_blocked seg_s_b8a_0_60 ?a)) (blocked seg_s_b8c_0_60 ?a)
       (not (not_blocked seg_s_b8c_0_60 ?a))))
 (:action
  ugly29608ugly29413ugly29251ugly30500ugly29242ugly32ugly900ugly98ugly1062move_seg_w1_163b_0_45_seg_w1_163a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163b_0_45) (not_occupied seg_w1_163a_0_34)
       (not_blocked seg_w1_163a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_163a_0_34 airplane_daew8)
       (not_blocked seg_w1_163a_0_34 airplane_daew3)
       (not_blocked seg_w1_163a_0_34 airplane_cfbe2)
       (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (occupied seg_w1_163b_0_45)) (not_occupied seg_w1_163b_0_45)
       (not (at-segment ?a seg_w1_163b_0_45)) (occupied seg_w1_163a_0_34)
       (not (not_occupied seg_w1_163a_0_34)) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (at-segment ?a seg_w1_163a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p163_0_75 ?a)) (not_blocked seg_p163_0_75 ?a)
       (blocked seg_w1_163c_0_34 ?a) (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action
  ugly29609ugly29459ugly29201ugly29547ugly29591ugly507ugly982ugly921ugly1154startup_seg_o1_111c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111c_0_34)
       (not_occupied seg_o1_c3a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a))))
 (:action
  ugly29610ugly30119ugly30114ugly30525ugly29227ugly1076ugly832ugly1167ugly596move_seg_o1_110a_0_34_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_110c_0_34 airplane_daew8)
       (not_blocked seg_o1_110c_0_34 airplane_daew3)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe2)
       (not_occupied seg_o1_110b_0_60) (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (occupied seg_o1_110a_0_34)) (not_occupied seg_o1_110a_0_34)
       (not (at-segment ?a seg_o1_110a_0_34)) (occupied seg_o1_110c_0_34)
       (not (not_occupied seg_o1_110c_0_34)) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a)) (at-segment ?a seg_o1_110c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_109c_0_34 ?a)) (not_blocked seg_o1_109c_0_34 ?a)
       (blocked seg_o1_110b_0_60 ?a) (not (not_blocked seg_o1_110b_0_60 ?a))
       (blocked seg_o1_110d_0_45 ?a) (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action
  ugly29611ugly30249ugly30464ugly29507ugly29931ugly666ugly624ugly295ugly310move_seg_o1_111a_0_34_seg_o1_110c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_110c_0_34 airplane_daew8)
       (not_blocked seg_o1_110c_0_34 airplane_daew3)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_111a_0_34)) (not_occupied seg_o1_111a_0_34)
       (not (at-segment ?a seg_o1_111a_0_34)) (occupied seg_o1_110c_0_34)
       (not (not_occupied seg_o1_110c_0_34)) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a)) (at-segment ?a seg_o1_110c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_111b_0_60 ?a)) (not_blocked seg_o1_111b_0_60 ?a)
       (not (blocked seg_o1_111c_0_34 ?a)) (not_blocked seg_o1_111c_0_34 ?a)
       (not (blocked seg_o1_111d_0_45 ?a)) (not_blocked seg_o1_111d_0_45 ?a)))
 (:action
  ugly29612ugly29604ugly30256ugly30473ugly29456ugly405ugly1094ugly1091ugly437startup_seg_t_b2b3b_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3b_0_140)
       (not_occupied seg_t_b2b3c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3c_0_140 ?a)
       (not (not_blocked seg_t_b2b3c_0_140 ?a))))
 (:action
  ugly29613ugly30335ugly30456ugly29319ugly29734ugly852ugly495ugly462ugly923startup_seg_p118_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p118_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly29614ugly29962ugly30038ugly29496ugly30027ugly556ugly599ugly1173ugly998park_seg_p151_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p151_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p151_0_75) (not (is-moving ?a))))
 (:action
  ugly29615ugly30522ugly30343ugly29907ugly30407ugly505ugly578ugly1363ugly264move_seg_08l_a7b_0_161_245_seg_a8_a_0_157_785_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7b_0_161_245) (not_occupied seg_a8_a_0_157_785)
       (not_blocked seg_a8_a_0_157_785 airplane_cfbeg)
       (not_blocked seg_a8_a_0_157_785 airplane_cfbe1)
       (not_blocked seg_a8_a_0_157_785 airplane_cfbe3)
       (not_blocked seg_a8_a_0_157_785 airplane_daew8)
       (not_blocked seg_a8_a_0_157_785 airplane_daew3)
       (not_blocked seg_a8_a_0_157_785 airplane_cfbe2))
  :effect
  (and (not (occupied seg_08l_a7b_0_161_245))
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
  ugly29616ugly29336ugly30235ugly29343ugly29268ugly1171ugly642ugly970ugly1134startup_seg_w1_164a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164a_0_34)
       (not_occupied seg_w1_164b_0_45) (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action
  ugly29617ugly30421ugly29253ugly29699ugly30167ugly125ugly705ugly169ugly317move_seg_08l_a2a_0_80_seg_08l_a2a3_0_970_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a2a_0_80) (not_occupied seg_08l_a2a3_0_970)
       (not_blocked seg_08l_a2a3_0_970 airplane_cfbeg)
       (not_blocked seg_08l_a2a3_0_970 airplane_cfbe1)
       (not_blocked seg_08l_a2a3_0_970 airplane_cfbe3)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew8)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew3)
       (not_blocked seg_08l_a2a3_0_970 airplane_cfbe2))
  :effect
  (and (not (occupied seg_08l_a2a_0_80)) (not_occupied seg_08l_a2a_0_80)
       (not (at-segment ?a seg_08l_a2a_0_80)) (occupied seg_08l_a2a3_0_970)
       (not (not_occupied seg_08l_a2a3_0_970)) (blocked seg_08l_a2a3_0_970 ?a)
       (not (not_blocked seg_08l_a2a3_0_970 ?a))
       (at-segment ?a seg_08l_a2a3_0_970) (not (blocked seg_08l_a2b_0_80 ?a))
       (not_blocked seg_08l_a2b_0_80 ?a)))
 (:action
  ugly29618ugly29326ugly29427ugly29415ugly29563ugly235ugly576ugly438ugly779startup_seg_p153_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p153_0_75)
       (not_occupied seg_w1_153b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action
  ugly29619ugly30536ugly30534ugly29542ugly30542ugly245ugly33ugly234ugly1227move_seg_o1_109c_0_34_seg_o1_110a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109c_0_34) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_110a_0_34 airplane_daew8)
       (not_blocked seg_o1_110a_0_34 airplane_daew3)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_109c_0_34)) (not_occupied seg_o1_109c_0_34)
       (not (at-segment ?a seg_o1_109c_0_34)) (occupied seg_o1_110a_0_34)
       (not (not_occupied seg_o1_110a_0_34)) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a)) (at-segment ?a seg_o1_110a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_109a_0_34 ?a)) (not_blocked seg_o1_109a_0_34 ?a)
       (not (blocked seg_o1_109b_0_60 ?a)) (not_blocked seg_o1_109b_0_60 ?a)
       (not (blocked seg_o1_109d_0_45 ?a)) (not_blocked seg_o1_109d_0_45 ?a)))
 (:action
  ugly29620ugly30291ugly30438ugly29373ugly30234ugly656ugly1357ugly507ugly982park_seg_p107_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p107_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p107_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c2b_0_60 ?a)) (not_blocked seg_o1_c2b_0_60 ?a)))
 (:action
  ugly29621ugly30166ugly30313ugly29795ugly29768ugly847ugly388ugly908ugly26move_seg_w1_c1c_0_34_seg_w1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1c_0_34) (not_occupied seg_w1_c1a_0_60)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbe3)
       (not_blocked seg_w1_c1a_0_60 airplane_daew8)
       (not_blocked seg_w1_c1a_0_60 airplane_daew3)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbe2)
       (not_occupied seg_w1_c1b_0_60))
  :effect
  (and (not (occupied seg_w1_c1c_0_34)) (not_occupied seg_w1_c1c_0_34)
       (not (at-segment ?a seg_w1_c1c_0_34)) (occupied seg_w1_c1a_0_60)
       (not (not_occupied seg_w1_c1a_0_60)) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a)) (at-segment ?a seg_w1_c1a_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_141a_0_34 ?a)) (not_blocked seg_w1_141a_0_34 ?a)
       (blocked seg_w1_c1b_0_60 ?a) (not (not_blocked seg_w1_c1b_0_60 ?a))))
 (:action
  ugly29622ugly29852ugly29570ugly30300ugly29590ugly1129ugly707ugly651ugly490move_seg_w1_152a_0_34_seg_w1_151c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_151c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_151c_0_34 airplane_daew8)
       (not_blocked seg_w1_151c_0_34 airplane_daew3)
       (not_blocked seg_w1_151c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_152a_0_34)) (not_occupied seg_w1_152a_0_34)
       (not (at-segment ?a seg_w1_152a_0_34)) (occupied seg_w1_151c_0_34)
       (not (not_occupied seg_w1_151c_0_34)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a)) (at-segment ?a seg_w1_151c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_152b_0_45 ?a)) (not_blocked seg_w1_152b_0_45 ?a)
       (not (blocked seg_w1_152c_0_34 ?a)) (not_blocked seg_w1_152c_0_34 ?a)))
 (:action
  ugly29623ugly29549ugly29254ugly29891ugly30108ugly1157ugly1367ugly1076ugly832startup_seg_m_a6d_0_120_934_south_medium
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
  ugly29624ugly30381ugly30061ugly30460ugly29236ugly598ugly418ugly1282ugly835startup_seg_a8_b_1_0_79_7559_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_1_0_79_7559)
       (not_occupied seg_a8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))))
 (:action
  ugly29625ugly29657ugly30139ugly29776ugly30433ugly527ugly859ugly723ugly1045startup_seg_n_n2c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2c_0_60)
       (not_occupied seg_n_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3b_0_60 ?a)
       (not (not_blocked seg_n_a3b_0_60 ?a))))
 (:action
  ugly29626ugly29594ugly30237ugly30367ugly29560ugly1002ugly1311ugly991ugly1239startup_seg_t_b9b10c_1_0_83_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_1_0_83)
       (not_occupied seg_t_b9b10b_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10b_0_125 ?a)
       (not (not_blocked seg_t_b9b10b_0_125 ?a))))
 (:action
  ugly29627ugly29438ugly29296ugly29993ugly29323ugly1199ugly1029ugly1158ugly956startup_seg_w1_c2c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2c_0_34)
       (not_occupied seg_w1_151a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a))))
 (:action
  ugly29628ugly30067ugly29524ugly29928ugly29288ugly1161ugly748ugly1183ugly272startup_seg_o1_c1b_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1b_0_34)
       (not_occupied seg_o1_102a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a))))
 (:action
  ugly29629ugly29961ugly29331ugly30175ugly29851ugly436ugly1276ugly931ugly1267move_seg_w1_153c_0_34_seg_w1_154a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153c_0_34) (not_occupied seg_w1_154a_0_34)
       (not_blocked seg_w1_154a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_154a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_154a_0_34 airplane_daew8)
       (not_blocked seg_w1_154a_0_34 airplane_daew3)
       (not_blocked seg_w1_154a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_153c_0_34)) (not_occupied seg_w1_153c_0_34)
       (not (at-segment ?a seg_w1_153c_0_34)) (occupied seg_w1_154a_0_34)
       (not (not_occupied seg_w1_154a_0_34)) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (at-segment ?a seg_w1_154a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_153a_0_34 ?a)) (not_blocked seg_w1_153a_0_34 ?a)
       (not (blocked seg_w1_153b_0_45 ?a)) (not_blocked seg_w1_153b_0_45 ?a)))
 (:action
  ugly29630ugly29821ugly29240ugly30430ugly29669ugly1041ugly1319ugly954ugly1177startup_seg_08r_b10a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b10a_0_80)
       (not_occupied seg_08r_b10b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b10b_0_80 ?a)
       (not (not_blocked seg_08r_b10b_0_80 ?a))))
 (:action
  ugly29631ugly30528ugly30112ugly29626ugly29594ugly1054ugly385ugly603ugly573move_seg_m_a8d_0_120_934_seg_m_a8b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_m_a8d_0_120_934) (not_occupied seg_m_a8b_0_60)
       (not_blocked seg_m_a8b_0_60 airplane_cfbeg)
       (not_blocked seg_m_a8b_0_60 airplane_cfbe1)
       (not_blocked seg_m_a8b_0_60 airplane_cfbe3)
       (not_blocked seg_m_a8b_0_60 airplane_daew8)
       (not_blocked seg_m_a8b_0_60 airplane_daew3)
       (not_blocked seg_m_a8b_0_60 airplane_cfbe2)
       (not_occupied seg_m_a8a_0_60) (not_occupied seg_m_a8c_0_60))
  :effect
  (and (not (occupied seg_m_a8d_0_120_934)) (not_occupied seg_m_a8d_0_120_934)
       (not (at-segment ?a seg_m_a8d_0_120_934)) (occupied seg_m_a8b_0_60)
       (not (not_occupied seg_m_a8b_0_60)) (blocked seg_m_a8b_0_60 ?a)
       (not (not_blocked seg_m_a8b_0_60 ?a)) (at-segment ?a seg_m_a8b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_a8_b_0_80_6226 ?a))
       (not_blocked seg_a8_b_0_80_6226 ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a)) (blocked seg_m_a8c_0_60 ?a)
       (not (not_blocked seg_m_a8c_0_60 ?a))))
 (:action
  ugly29632ugly29762ugly29697ugly29873ugly30252ugly41ugly812ugly753ugly802startup_seg_o1_109b_0_60_south_medium
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
  ugly29633ugly30182ugly29376ugly29624ugly30381ugly878ugly363ugly519ugly801startup_seg_o1_116a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116a_0_34)
       (not_occupied seg_o1_116b_0_60) (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action
  ugly29634ugly30492ugly29876ugly30414ugly29893ugly31ugly1231ugly454ugly361move_seg_t_b2c_0_60_seg_b2_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_t_b2c_0_60) (not_occupied seg_b2_0_80)
       (not_blocked seg_b2_0_80 airplane_cfbeg)
       (not_blocked seg_b2_0_80 airplane_cfbe1)
       (not_blocked seg_b2_0_80 airplane_cfbe3)
       (not_blocked seg_b2_0_80 airplane_daew8)
       (not_blocked seg_b2_0_80 airplane_daew3)
       (not_blocked seg_b2_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_t_b2c_0_60)) (not_occupied seg_t_b2c_0_60)
       (not (at-segment ?a seg_t_b2c_0_60)) (occupied seg_b2_0_80)
       (not (not_occupied seg_b2_0_80)) (blocked seg_b2_0_80 ?a)
       (not (not_blocked seg_b2_0_80 ?a)) (at-segment ?a seg_b2_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_t_b2a_0_60 ?a)) (not_blocked seg_t_b2a_0_60 ?a)
       (not (blocked seg_t_b2b_0_60 ?a)) (not_blocked seg_t_b2b_0_60 ?a)))
 (:action
  ugly29635ugly29705ugly30365ugly29210ugly29556ugly347ugly744ugly115ugly1000startup_seg_p101_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p101_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly29636ugly29726ugly29639ugly29858ugly30418ugly896ugly339ugly410ugly467startup_seg_08r_b6a_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b6a_0_161_245)
       (not_occupied seg_08r_b6c_0_80) (not_occupied seg_08r_b6b_0_80)
       (not_occupied seg_08r_b6d_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b6c_0_80 ?a)
       (not (not_blocked seg_08r_b6c_0_80 ?a)) (blocked seg_08r_b6b_0_80 ?a)
       (not (not_blocked seg_08r_b6b_0_80 ?a))
       (blocked seg_08r_b6d_0_161_245 ?a)
       (not (not_blocked seg_08r_b6d_0_161_245 ?a))))
 (:action
  ugly29637ugly29908ugly29366ugly29708ugly30468ugly485ugly784ugly207ugly987startup_seg_c4_s6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6c_0_60)
       (not_occupied seg_w1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a))))
 (:action
  ugly29638ugly29298ugly29311ugly29409ugly29433ugly1186ugly369ugly1179ugly55startup_seg_m_a6a8a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8a_0_75)
       (not_occupied seg_m_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8b_0_75 ?a)
       (not (not_blocked seg_m_a6a8b_0_75 ?a))))
 (:action
  ugly29639ugly29858ugly30418ugly30079ugly29475ugly768ugly562ugly350ugly488move_seg_n_a4a7a_0_115_seg_n_a4b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7a_0_115) (not_occupied seg_n_a4b_0_60)
       (not_blocked seg_n_a4b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a4b_0_60 airplane_cfbe1)
       (not_blocked seg_n_a4b_0_60 airplane_cfbe3)
       (not_blocked seg_n_a4b_0_60 airplane_daew8)
       (not_blocked seg_n_a4b_0_60 airplane_daew3)
       (not_blocked seg_n_a4b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a4a7a_0_115)) (not_occupied seg_n_a4a7a_0_115)
       (not (at-segment ?a seg_n_a4a7a_0_115)) (occupied seg_n_a4b_0_60)
       (not (not_occupied seg_n_a4b_0_60)) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a)) (at-segment ?a seg_n_a4b_0_60)
       (not (blocked seg_n_a4a7b_0_75 ?a)) (not_blocked seg_n_a4a7b_0_75 ?a)))
 (:action
  ugly29640ugly29887ugly29454ugly29901ugly29888ugly1233ugly1114ugly843ugly1044startup_seg_o1_c3c_0_48_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3c_0_48)
       (not_occupied seg_o1_115a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a))))
 (:action
  ugly29641ugly30385ugly29682ugly29369ugly30391ugly98ugly1062ugly241ugly240move_seg_08r_b6b9_0_420_seg_08r_b9c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b6b9_0_420) (not_occupied seg_08r_b9c_0_80)
       (not_blocked seg_08r_b9c_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b9c_0_80 airplane_cfbe1)
       (not_blocked seg_08r_b9c_0_80 airplane_cfbe3)
       (not_blocked seg_08r_b9c_0_80 airplane_daew8)
       (not_blocked seg_08r_b9c_0_80 airplane_daew3)
       (not_blocked seg_08r_b9c_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_08r_b6b9_0_420)) (not_occupied seg_08r_b6b9_0_420)
       (not (at-segment ?a seg_08r_b6b9_0_420)) (occupied seg_08r_b9c_0_80)
       (not (not_occupied seg_08r_b9c_0_80)) (blocked seg_08r_b9c_0_80 ?a)
       (not (not_blocked seg_08r_b9c_0_80 ?a)) (at-segment ?a seg_08r_b9c_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_08r_b6b_0_80 ?a)) (not_blocked seg_08r_b6b_0_80 ?a)))
 (:action
  ugly29642ugly30531ugly30062ugly29644ugly30288ugly1026ugly528ugly914ugly1148park_seg_p119_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p119_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p119_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c4b_0_60 ?a)) (not_blocked seg_o1_c4b_0_60 ?a)))
 (:action
  ugly29643ugly29309ugly29952ugly29897ugly29700ugly424ugly1067ugly629ugly806startup_seg_o1_116b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116b_0_60)
       (not_occupied seg_o1_116a_0_34) (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action
  ugly29644ugly30288ugly30209ugly29766ugly30120ugly1126ugly285ugly242ugly386move_seg_n_a2a3f_0_115_seg_n_a2a3e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3f_0_115) (not_occupied seg_n_a2a3e_0_75)
       (not_blocked seg_n_a2a3e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3e_0_75 airplane_cfbe1)
       (not_blocked seg_n_a2a3e_0_75 airplane_cfbe3)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew8)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew3)
       (not_blocked seg_n_a2a3e_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a2a3f_0_115)) (not_occupied seg_n_a2a3f_0_115)
       (not (at-segment ?a seg_n_a2a3f_0_115)) (occupied seg_n_a2a3e_0_75)
       (not (not_occupied seg_n_a2a3e_0_75)) (blocked seg_n_a2a3e_0_75 ?a)
       (not (not_blocked seg_n_a2a3e_0_75 ?a)) (at-segment ?a seg_n_a2a3e_0_75)
       (not (blocked seg_n_a3d_0_60 ?a)) (not_blocked seg_n_a3d_0_60 ?a)))
 (:action
  ugly29645ugly29388ugly29426ugly30037ugly29652ugly20ugly473ugly271ugly371startup_seg_m_a10a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10a_0_60)
       (not_occupied seg_a10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_0_80 ?a)
       (not (not_blocked seg_a10_0_80 ?a))))
 (:action
  ugly29646ugly30164ugly30146ugly29969ugly29847ugly259ugly663ugly125ugly705move_seg_n_a7a6a_0_85_seg_n_a7b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6a_0_85) (not_occupied seg_n_a7b_0_60)
       (not_blocked seg_n_a7b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a7b_0_60 airplane_cfbe1)
       (not_blocked seg_n_a7b_0_60 airplane_cfbe3)
       (not_blocked seg_n_a7b_0_60 airplane_daew8)
       (not_blocked seg_n_a7b_0_60 airplane_daew3)
       (not_blocked seg_n_a7b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a7a6a_0_85)) (not_occupied seg_n_a7a6a_0_85)
       (not (at-segment ?a seg_n_a7a6a_0_85)) (occupied seg_n_a7b_0_60)
       (not (not_occupied seg_n_a7b_0_60)) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a)) (at-segment ?a seg_n_a7b_0_60)
       (not (blocked seg_n_a7a6b_0_75 ?a)) (not_blocked seg_n_a7a6b_0_75 ?a)))
 (:action
  ugly29647ugly30201ugly30102ugly29691ugly30004ugly138ugly1358ugly229ugly180startup_seg_s_b5a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5a_0_60)
       (not_occupied seg_s6_0_94))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s6_0_94 ?a)
       (not (not_blocked seg_s6_0_94 ?a))))
 (:action
  ugly29648ugly29920ugly29546ugly30104ugly29940ugly1354ugly1312ugly527ugly859startup_seg_b8_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_b_1_0_80_6226)
       (not_occupied seg_b8_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_a_0_156_924 ?a)
       (not (not_blocked seg_b8_a_0_156_924 ?a))))
 (:action
  ugly29649ugly29337ugly29198ugly30499ugly29636ugly543ugly1247ugly1307ugly138startup_seg_a4_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_1_0_80_6226)
       (not_occupied seg_a4_b_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_0_79_7559 ?a)
       (not (not_blocked seg_a4_b_0_79_7559 ?a))))
 (:action
  ugly29650ugly30236ugly29808ugly29523ugly29361ugly137ugly1209ugly381ugly600move_seg_o1_118a_0_34_seg_o1_118c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_118c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_118c_0_34 airplane_daew8)
       (not_blocked seg_o1_118c_0_34 airplane_daew3)
       (not_blocked seg_o1_118c_0_34 airplane_cfbe2)
       (not_occupied seg_o1_118b_0_60))
  :effect
  (and (not (occupied seg_o1_118a_0_34)) (not_occupied seg_o1_118a_0_34)
       (not (at-segment ?a seg_o1_118a_0_34)) (occupied seg_o1_118c_0_34)
       (not (not_occupied seg_o1_118c_0_34)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a)) (at-segment ?a seg_o1_118c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_117c_0_34 ?a)) (not_blocked seg_o1_117c_0_34 ?a)
       (blocked seg_o1_118b_0_60 ?a) (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action
  ugly29651ugly29494ugly30295ugly30423ugly30207ugly161ugly494ugly793ugly332startup_seg_t_b4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b_0_60)
       (not_occupied seg_t_b4a_0_60) (not_occupied seg_t_b4c_0_120_934)
       (not_occupied seg_t_b4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4a_0_60 ?a)
       (not (not_blocked seg_t_b4a_0_60 ?a)) (blocked seg_t_b4c_0_120_934 ?a)
       (not (not_blocked seg_t_b4c_0_120_934 ?a)) (blocked seg_t_b4d_0_60 ?a)
       (not (not_blocked seg_t_b4d_0_60 ?a))))
 (:action
  ugly29652ugly29203ugly30491ugly30098ugly29453ugly648ugly1016ugly232ugly407startup_seg_s_b8b9b_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9b_0_115)
       (not_occupied seg_s_b8b9a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9a_0_115 ?a)
       (not (not_blocked seg_s_b8b9a_0_115 ?a))))
 (:action
  ugly29653ugly30548ugly29511ugly30267ugly29836ugly1107ugly289ugly1329ugly1220startup_seg_t_b6b7a_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b7a_0_140)
       (not_occupied seg_t_b6b7b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b7b_0_140 ?a)
       (not (not_blocked seg_t_b6b7b_0_140 ?a))))
 (:action
  ugly29654ugly30469ugly30124ugly29211ugly30285ugly295ugly310ugly308ugly105move_seg_o1_115b_0_60_seg_p115_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115b_0_60) (not_occupied seg_p115_0_76)
       (not_blocked seg_p115_0_76 airplane_cfbeg)
       (not_blocked seg_p115_0_76 airplane_cfbe1)
       (not_blocked seg_p115_0_76 airplane_cfbe3)
       (not_blocked seg_p115_0_76 airplane_daew8)
       (not_blocked seg_p115_0_76 airplane_daew3)
       (not_blocked seg_p115_0_76 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_115b_0_60)) (not_occupied seg_o1_115b_0_60)
       (not (at-segment ?a seg_o1_115b_0_60)) (occupied seg_p115_0_76)
       (not (not_occupied seg_p115_0_76)) (blocked seg_p115_0_76 ?a)
       (not (not_blocked seg_p115_0_76 ?a)) (at-segment ?a seg_p115_0_76)
       (not (blocked seg_o1_115a_0_34 ?a)) (not_blocked seg_o1_115a_0_34 ?a)
       (not (blocked seg_o1_115c_0_34 ?a)) (not_blocked seg_o1_115c_0_34 ?a)))
 (:action
  ugly29655ugly29846ugly30134ugly30085ugly30019ugly758ugly1356ugly1249ugly1057move_seg_o1_111d_0_45_seg_o1_111a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111d_0_45) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_111a_0_34 airplane_daew8)
       (not_blocked seg_o1_111a_0_34 airplane_daew3)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_111b_0_60) (not_occupied seg_o1_111c_0_34))
  :effect
  (and (not (occupied seg_o1_111d_0_45)) (not_occupied seg_o1_111d_0_45)
       (not (at-segment ?a seg_o1_111d_0_45)) (occupied seg_o1_111a_0_34)
       (not (not_occupied seg_o1_111a_0_34)) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a)) (at-segment ?a seg_o1_111a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p134_0_75 ?a)) (not_blocked seg_p134_0_75 ?a)
       (blocked seg_o1_111b_0_60 ?a) (not (not_blocked seg_o1_111b_0_60 ?a))
       (blocked seg_o1_111c_0_34 ?a) (not (not_blocked seg_o1_111c_0_34 ?a))))
 (:action
  ugly29656ugly29497ugly30215ugly29898ugly30459ugly787ugly984ugly294ugly585move_seg_p104_0_76_seg_o1_104b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p104_0_76) (not_occupied seg_o1_104b_0_60)
       (not_blocked seg_o1_104b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_104b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_104b_0_60 airplane_daew8)
       (not_blocked seg_o1_104b_0_60 airplane_daew3)
       (not_blocked seg_o1_104b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p104_0_76)) (not_occupied seg_p104_0_76)
       (not (at-segment ?a seg_p104_0_76)) (occupied seg_o1_104b_0_60)
       (not (not_occupied seg_o1_104b_0_60)) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a))
       (at-segment ?a seg_o1_104b_0_60)))
 (:action
  ugly29657ugly30139ugly29776ugly30433ugly29710ugly392ugly1303ugly1162ugly1233startup_seg_m_a3a4f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4f_0_115)
       (not_occupied seg_m_a4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4d_0_60 ?a)
       (not (not_blocked seg_m_a4d_0_60 ?a))))
 (:action
  ugly29658ugly29476ugly29573ugly29869ugly29997ugly406ugly543ugly1247ugly1307move_seg_w1_152c_0_34_seg_w1_152a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152c_0_34) (not_occupied seg_w1_152a_0_34)
       (not_blocked seg_w1_152a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_152a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_152a_0_34 airplane_daew8)
       (not_blocked seg_w1_152a_0_34 airplane_daew3)
       (not_blocked seg_w1_152a_0_34 airplane_cfbe2)
       (not_occupied seg_w1_152b_0_45))
  :effect
  (and (not (occupied seg_w1_152c_0_34)) (not_occupied seg_w1_152c_0_34)
       (not (at-segment ?a seg_w1_152c_0_34)) (occupied seg_w1_152a_0_34)
       (not (not_occupied seg_w1_152a_0_34)) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (at-segment ?a seg_w1_152a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_153a_0_34 ?a)) (not_blocked seg_w1_153a_0_34 ?a)
       (blocked seg_w1_152b_0_45 ?a) (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action
  ugly29659ugly30261ugly30327ugly29430ugly29702ugly179ugly879ugly1079ugly178startup_seg_08r_b10a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b10a_0_80)
       (not_occupied seg_b10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b10_1_0_80 ?a)
       (not (not_blocked seg_b10_1_0_80 ?a))))
 (:action
  ugly29660ugly30458ugly29782ugly30301ugly29650ugly1053ugly249ugly244ugly1005move_seg_08r_b4b_0_80_seg_08r_b4b6_0_360_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b4b_0_80) (not_occupied seg_08r_b4b6_0_360)
       (not_blocked seg_08r_b4b6_0_360 airplane_cfbeg)
       (not_blocked seg_08r_b4b6_0_360 airplane_cfbe1)
       (not_blocked seg_08r_b4b6_0_360 airplane_cfbe3)
       (not_blocked seg_08r_b4b6_0_360 airplane_daew8)
       (not_blocked seg_08r_b4b6_0_360 airplane_daew3)
       (not_blocked seg_08r_b4b6_0_360 airplane_cfbe2))
  :effect
  (and (not (occupied seg_08r_b4b_0_80)) (not_occupied seg_08r_b4b_0_80)
       (not (at-segment ?a seg_08r_b4b_0_80)) (occupied seg_08r_b4b6_0_360)
       (not (not_occupied seg_08r_b4b6_0_360)) (blocked seg_08r_b4b6_0_360 ?a)
       (not (not_blocked seg_08r_b4b6_0_360 ?a))
       (at-segment ?a seg_08r_b4b6_0_360)
       (not (blocked seg_08r_b4a_0_161_245 ?a))
       (not_blocked seg_08r_b4a_0_161_245 ?a)
       (not (blocked seg_08r_b4c_0_80 ?a)) (not_blocked seg_08r_b4c_0_80 ?a)
       (not (blocked seg_08r_b4d_0_161_245 ?a))
       (not_blocked seg_08r_b4d_0_161_245 ?a)))
 (:action
  ugly29661ugly30479ugly29318ugly29199ugly30026ugly1092ugly452ugly952ugly112startup_seg_o1_103b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103b_0_60)
       (not_occupied seg_p103_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p103_0_76 ?a)
       (not (not_blocked seg_p103_0_76 ?a))))
 (:action
  ugly29662ugly30031ugly29991ugly30488ugly29613ugly1152ugly449ugly865ugly1021move_seg_w1_c3c_0_48_seg_w1_161a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c3c_0_48) (not_occupied seg_w1_161a_0_34)
       (not_blocked seg_w1_161a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_161a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_161a_0_34 airplane_daew8)
       (not_blocked seg_w1_161a_0_34 airplane_daew3)
       (not_blocked seg_w1_161a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_c3c_0_48)) (not_occupied seg_w1_c3c_0_48)
       (not (at-segment ?a seg_w1_c3c_0_48)) (occupied seg_w1_161a_0_34)
       (not (not_occupied seg_w1_161a_0_34)) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (at-segment ?a seg_w1_161a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c3a_0_34 ?a)) (not_blocked seg_w1_c3a_0_34 ?a)
       (not (blocked seg_w1_c3b_0_60 ?a)) (not_blocked seg_w1_c3b_0_60 ?a)))
 (:action
  ugly29663ugly29793ugly29328ugly30087ugly30463ugly1043ugly622ugly709ugly825startup_seg_m_a8a_0_60_south_medium
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
  ugly29664ugly29557ugly29228ugly29749ugly29722ugly528ugly914ugly1148ugly1051startup_seg_m_a3a4e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4e_0_75)
       (not_occupied seg_m_a3a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4d_0_75 ?a)
       (not (not_blocked seg_m_a3a4d_0_75 ?a))))
 (:action
  ugly29665ugly29716ugly30001ugly30036ugly29572ugly875ugly720ugly1071ugly336move_seg_n_a2a3b_0_75_seg_n_a2a3a_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3b_0_75) (not_occupied seg_n_a2a3a_0_75)
       (not_blocked seg_n_a2a3a_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3a_0_75 airplane_cfbe1)
       (not_blocked seg_n_a2a3a_0_75 airplane_cfbe3)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew8)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew3)
       (not_blocked seg_n_a2a3a_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a2a3b_0_75)) (not_occupied seg_n_a2a3b_0_75)
       (not (at-segment ?a seg_n_a2a3b_0_75)) (occupied seg_n_a2a3a_0_75)
       (not (not_occupied seg_n_a2a3a_0_75)) (blocked seg_n_a2a3a_0_75 ?a)
       (not (not_blocked seg_n_a2a3a_0_75 ?a)) (at-segment ?a seg_n_a2a3a_0_75)
       (not (blocked seg_n_a2a3c_0_75 ?a)) (not_blocked seg_n_a2a3c_0_75 ?a)))
 (:action
  ugly29666ugly30070ugly29381ugly30510ugly30530ugly542ugly61ugly368ugly840move_seg_t_b2a_0_60_seg_t_b2c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_t_b2a_0_60) (not_occupied seg_t_b2c_0_60)
       (not_blocked seg_t_b2c_0_60 airplane_cfbeg)
       (not_blocked seg_t_b2c_0_60 airplane_cfbe1)
       (not_blocked seg_t_b2c_0_60 airplane_cfbe3)
       (not_blocked seg_t_b2c_0_60 airplane_daew8)
       (not_blocked seg_t_b2c_0_60 airplane_daew3)
       (not_blocked seg_t_b2c_0_60 airplane_cfbe2)
       (not_occupied seg_t_b2b_0_60))
  :effect
  (and (not (occupied seg_t_b2a_0_60)) (not_occupied seg_t_b2a_0_60)
       (not (at-segment ?a seg_t_b2a_0_60)) (occupied seg_t_b2c_0_60)
       (not (not_occupied seg_t_b2c_0_60)) (blocked seg_t_b2c_0_60 ?a)
       (not (not_blocked seg_t_b2c_0_60 ?a)) (at-segment ?a seg_t_b2c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_s_b2b_0_60 ?a)) (not_blocked seg_s_b2b_0_60 ?a)
       (blocked seg_t_b2b_0_60 ?a) (not (not_blocked seg_t_b2b_0_60 ?a))))
 (:action
  ugly29667ugly30511ugly30183ugly30054ugly29544ugly458ugly1241ugly1206ugly704move_seg_w1_141c_0_34_seg_w1_141b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141c_0_34) (not_occupied seg_w1_141b_0_45)
       (not_blocked seg_w1_141b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_141b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_141b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_141b_0_45 airplane_daew8)
       (not_blocked seg_w1_141b_0_45 airplane_daew3)
       (not_blocked seg_w1_141b_0_45 airplane_cfbe2)
       (not_occupied seg_w1_141a_0_34))
  :effect
  (and (not (occupied seg_w1_141c_0_34)) (not_occupied seg_w1_141c_0_34)
       (not (at-segment ?a seg_w1_141c_0_34)) (occupied seg_w1_141b_0_45)
       (not (not_occupied seg_w1_141b_0_45)) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a)) (at-segment ?a seg_w1_141b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_142a_0_34 ?a)) (not_blocked seg_w1_142a_0_34 ?a)
       (blocked seg_w1_141a_0_34 ?a) (not (not_blocked seg_w1_141a_0_34 ?a))))
 (:action
  ugly29668ugly29981ugly30110ugly29760ugly30409ugly639ugly376ugly729ugly74startup_seg_p115_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p115_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly29669ugly30224ugly29471ugly29733ugly29266ugly889ugly893ugly656ugly1357startup_seg_t_b3c_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3c_0_120_934)
       (not_occupied seg_t_b3a_0_60) (not_occupied seg_t_b3b_0_60)
       (not_occupied seg_t_b3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3a_0_60 ?a)
       (not (not_blocked seg_t_b3a_0_60 ?a)) (blocked seg_t_b3b_0_60 ?a)
       (not (not_blocked seg_t_b3b_0_60 ?a)) (blocked seg_t_b3d_0_60 ?a)
       (not (not_blocked seg_t_b3d_0_60 ?a))))
 (:action
  ugly29670ugly29809ugly29788ugly29780ugly30319ugly790ugly721ugly464ugly574move_seg_a2_c_0_100_seg_a2_b_0_90_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_c_0_100) (not_occupied seg_a2_b_0_90)
       (not_blocked seg_a2_b_0_90 airplane_cfbeg)
       (not_blocked seg_a2_b_0_90 airplane_cfbe1)
       (not_blocked seg_a2_b_0_90 airplane_cfbe3)
       (not_blocked seg_a2_b_0_90 airplane_daew8)
       (not_blocked seg_a2_b_0_90 airplane_daew3)
       (not_blocked seg_a2_b_0_90 airplane_cfbe2))
  :effect
  (and (not (occupied seg_a2_c_0_100)) (not_occupied seg_a2_c_0_100)
       (not (at-segment ?a seg_a2_c_0_100)) (occupied seg_a2_b_0_90)
       (not (not_occupied seg_a2_b_0_90)) (blocked seg_a2_b_0_90 ?a)
       (not (not_blocked seg_a2_b_0_90 ?a)) (at-segment ?a seg_a2_b_0_90)
       (not (blocked seg_n_a2a_0_60 ?a)) (not_blocked seg_n_a2a_0_60 ?a)))
 (:action
  ugly29671ugly30338ugly29687ugly30174ugly30529ugly1282ugly835ugly1362ugly1336move_seg_w1_142b_0_45_seg_w1_142a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142b_0_45) (not_occupied seg_w1_142a_0_34)
       (not_blocked seg_w1_142a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_142a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_142a_0_34 airplane_daew8)
       (not_blocked seg_w1_142a_0_34 airplane_daew3)
       (not_blocked seg_w1_142a_0_34 airplane_cfbe2)
       (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (occupied seg_w1_142b_0_45)) (not_occupied seg_w1_142b_0_45)
       (not (at-segment ?a seg_w1_142b_0_45)) (occupied seg_w1_142a_0_34)
       (not (not_occupied seg_w1_142a_0_34)) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (at-segment ?a seg_w1_142a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p142_0_75 ?a)) (not_blocked seg_p142_0_75 ?a)
       (blocked seg_w1_142c_0_34 ?a) (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action
  ugly29672ugly29221ugly29261ugly30467ugly30519ugly156ugly48ugly809ugly173startup_seg_m_a4d_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4d_0_60)
       (not_occupied seg_m_a4a_0_120_934) (not_occupied seg_m_a4b_0_60)
       (not_occupied seg_m_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a_0_120_934 ?a)
       (not (not_blocked seg_m_a4a_0_120_934 ?a)) (blocked seg_m_a4b_0_60 ?a)
       (not (not_blocked seg_m_a4b_0_60 ?a)) (blocked seg_m_a4c_0_60 ?a)
       (not (not_blocked seg_m_a4c_0_60 ?a))))
 (:action
  ugly29673ugly29276ugly29775ugly30359ugly30106ugly893ugly656ugly1357ugly507park_seg_p111_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p111_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p111_0_76) (not (is-moving ?a))))
 (:action
  ugly29674ugly29529ugly30172ugly30356ugly29565ugly1033ugly32ugly900ugly98startup_seg_08l_a2b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a2b_0_80)
       (not_occupied seg_a2_a_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_a_0_90 ?a)
       (not (not_blocked seg_a2_a_0_90 ?a))))
 (:action
  ugly29675ugly29287ugly29915ugly30212ugly29359ugly660ugly975ugly1259ugly78startup_seg_t_b4b6b_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6b_0_135)
       (not_occupied seg_t_b4b6c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6c_0_130 ?a)
       (not (not_blocked seg_t_b4b6c_0_130 ?a))))
 (:action
  ugly29676ugly30173ugly30043ugly30310ugly29233ugly882ugly124ugly989ugly1260move_seg_o1_111d_0_45_seg_p134_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111d_0_45) (not_occupied seg_p134_0_75)
       (not_blocked seg_p134_0_75 airplane_cfbeg)
       (not_blocked seg_p134_0_75 airplane_cfbe1)
       (not_blocked seg_p134_0_75 airplane_cfbe3)
       (not_blocked seg_p134_0_75 airplane_daew8)
       (not_blocked seg_p134_0_75 airplane_daew3)
       (not_blocked seg_p134_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_111d_0_45)) (not_occupied seg_o1_111d_0_45)
       (not (at-segment ?a seg_o1_111d_0_45)) (occupied seg_p134_0_75)
       (not (not_occupied seg_p134_0_75)) (blocked seg_p134_0_75 ?a)
       (not (not_blocked seg_p134_0_75 ?a)) (at-segment ?a seg_p134_0_75)
       (not (blocked seg_o1_111a_0_34 ?a)) (not_blocked seg_o1_111a_0_34 ?a)
       (not (blocked seg_o1_111b_0_60 ?a)) (not_blocked seg_o1_111b_0_60 ?a)
       (not (blocked seg_o1_111c_0_34 ?a)) (not_blocked seg_o1_111c_0_34 ?a)))
 (:action
  ugly29677ugly30074ugly30105ugly29792ugly30277ugly775ugly215ugly292ugly82startup_seg_p164_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p164_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly29678ugly30109ugly30282ugly29693ugly29237ugly521ugly333ugly1009ugly279move_seg_w1_164a_0_34_seg_w1_164c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164a_0_34) (not_occupied seg_w1_164c_0_34)
       (not_blocked seg_w1_164c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_164c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_164c_0_34 airplane_daew8)
       (not_blocked seg_w1_164c_0_34 airplane_daew3)
       (not_blocked seg_w1_164c_0_34 airplane_cfbe2)
       (not_occupied seg_w1_164b_0_45))
  :effect
  (and (not (occupied seg_w1_164a_0_34)) (not_occupied seg_w1_164a_0_34)
       (not (at-segment ?a seg_w1_164a_0_34)) (occupied seg_w1_164c_0_34)
       (not (not_occupied seg_w1_164c_0_34)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a)) (at-segment ?a seg_w1_164c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_163c_0_34 ?a)) (not_blocked seg_w1_163c_0_34 ?a)
       (blocked seg_w1_164b_0_45 ?a) (not (not_blocked seg_w1_164b_0_45 ?a))))
 (:action
  ugly29679ugly30299ugly29890ugly30148ugly30507ugly822ugly881ugly1152ugly449startup_seg_w1_c4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4b_0_60)
       (not_occupied seg_w1_c4a_0_34) (not_occupied seg_w1_c4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a)) (blocked seg_w1_c4c_0_60 ?a)
       (not (not_blocked seg_w1_c4c_0_60 ?a))))
 (:action
  ugly29680ugly29721ugly30348ugly30540ugly29914ugly982ugly921ugly1154ugly978startup_seg_n_a3d_0_60_south_medium
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
  ugly29681ugly30051ugly30099ugly30472ugly29300ugly545ugly1238ugly1250ugly750park_seg_p131_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p131_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p131_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_108d_0_45 ?a)) (not_blocked seg_o1_108d_0_45 ?a)))
 (:action
  ugly29682ugly29369ugly30391ugly29281ugly29703ugly1321ugly1191ugly1032ugly137startup_seg_m_a9c_0_60_south_medium
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
  ugly29683ugly30023ugly29947ugly29864ugly29279ugly872ugly1284ugly739ugly1036startup_seg_b2_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b2_0_80)
       (not_occupied seg_b2_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b2_1_0_80 ?a)
       (not (not_blocked seg_b2_1_0_80 ?a))))
 (:action
  ugly29684ugly30345ugly29341ugly29360ugly29966ugly48ugly809ugly173ugly1123startup_seg_m_a4a7d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7d_0_75)
       (not_occupied seg_m_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7c_0_75 ?a)
       (not (not_blocked seg_m_a4a7c_0_75 ?a))))
 (:action
  ugly29685ugly29207ugly29826ugly29982ugly29364ugly144ugly579ugly1364ugly1054move_seg_o1_110d_0_45_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110d_0_45) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_110c_0_34 airplane_daew8)
       (not_blocked seg_o1_110c_0_34 airplane_daew3)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe2)
       (not_occupied seg_o1_110a_0_34) (not_occupied seg_o1_110b_0_60))
  :effect
  (and (not (occupied seg_o1_110d_0_45)) (not_occupied seg_o1_110d_0_45)
       (not (at-segment ?a seg_o1_110d_0_45)) (occupied seg_o1_110c_0_34)
       (not (not_occupied seg_o1_110c_0_34)) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a)) (at-segment ?a seg_o1_110c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p133_0_75 ?a)) (not_blocked seg_p133_0_75 ?a)
       (blocked seg_o1_110a_0_34 ?a) (not (not_blocked seg_o1_110a_0_34 ?a))
       (blocked seg_o1_110b_0_60 ?a) (not (not_blocked seg_o1_110b_0_60 ?a))))
 (:action
  ugly29686ugly30034ugly29937ugly29842ugly30457ugly1015ugly355ugly1355ugly530startup_seg_m_a7a_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a_0_120_934)
       (not_occupied seg_a7_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_0_80_6226 ?a))))
 (:action
  ugly29687ugly30174ugly30529ugly30465ugly30478ugly1103ugly1099ugly351ugly423startup_seg_t_b5b8c_0_130_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8c_0_130)
       (not_occupied seg_t_b8d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8d_0_60 ?a)
       (not (not_blocked seg_t_b8d_0_60 ?a))))
 (:action
  ugly29688ugly30194ugly29259ugly29592ugly30477ugly698ugly772ugly787ugly984move_seg_c4_s6a_0_80_seg_o1_c4c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_s6a_0_80) (not_occupied seg_o1_c4c_0_80)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbe1)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbe3)
       (not_blocked seg_o1_c4c_0_80 airplane_daew8)
       (not_blocked seg_o1_c4c_0_80 airplane_daew3)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_c4_s6a_0_80)) (not_occupied seg_c4_s6a_0_80)
       (not (at-segment ?a seg_c4_s6a_0_80)) (occupied seg_o1_c4c_0_80)
       (not (not_occupied seg_o1_c4c_0_80)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a)) (at-segment ?a seg_o1_c4c_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_c4_s6b_0_60 ?a)) (not_blocked seg_c4_s6b_0_60 ?a)
       (not (blocked seg_c4_s6c_0_60 ?a)) (not_blocked seg_c4_s6c_0_60 ?a)))
 (:action
  ugly29689ugly29740ugly29609ugly29459ugly29201ugly364ugly797ugly166ugly1245startup_seg_s_b3c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3c_0_60)
       (not_occupied seg_s_b3a_0_60) (not_occupied seg_s_b3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3a_0_60 ?a)
       (not (not_blocked seg_s_b3a_0_60 ?a)) (blocked seg_s_b3b_0_60 ?a)
       (not (not_blocked seg_s_b3b_0_60 ?a))))
 (:action
  ugly29690ugly29464ugly29518ugly29834ugly29564ugly1159ugly441ugly1056ugly754startup_seg_n_a4a7d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7d_0_75)
       (not_occupied seg_n_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7c_0_75 ?a)
       (not (not_blocked seg_n_a4a7c_0_75 ?a))))
 (:action
  ugly29691ugly30004ugly29321ugly30494ugly29382ugly175ugly104ugly902ugly140move_seg_o1_118c_0_34_seg_o1_118a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118c_0_34) (not_occupied seg_o1_118a_0_34)
       (not_blocked seg_o1_118a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_118a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_118a_0_34 airplane_daew8)
       (not_blocked seg_o1_118a_0_34 airplane_daew3)
       (not_blocked seg_o1_118a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_118b_0_60))
  :effect
  (and (not (occupied seg_o1_118c_0_34)) (not_occupied seg_o1_118c_0_34)
       (not (at-segment ?a seg_o1_118c_0_34)) (occupied seg_o1_118a_0_34)
       (not (not_occupied seg_o1_118a_0_34)) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (at-segment ?a seg_o1_118a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c4a_0_34 ?a)) (not_blocked seg_o1_c4a_0_34 ?a)
       (blocked seg_o1_118b_0_60 ?a) (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action
  ugly29692ugly29357ugly30451ugly30475ugly29301ugly536ugly799ugly1097ugly13move_seg_w1_154c_0_34_seg_w1_c3a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154c_0_34) (not_occupied seg_w1_c3a_0_34)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_c3a_0_34 airplane_daew8)
       (not_blocked seg_w1_c3a_0_34 airplane_daew3)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_154c_0_34)) (not_occupied seg_w1_154c_0_34)
       (not (at-segment ?a seg_w1_154c_0_34)) (occupied seg_w1_c3a_0_34)
       (not (not_occupied seg_w1_c3a_0_34)) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (at-segment ?a seg_w1_c3a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_154a_0_34 ?a)) (not_blocked seg_w1_154a_0_34 ?a)
       (not (blocked seg_w1_154b_0_45 ?a)) (not_blocked seg_w1_154b_0_45 ?a)))
 (:action
  ugly29693ugly29237ugly29704ugly29756ugly29934ugly272ugly872ugly1284ugly739startup_seg_o1_118b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118b_0_60)
       (not_occupied seg_p118_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p118_0_76 ?a)
       (not (not_blocked seg_p118_0_76 ?a))))
 (:action
  ugly29694ugly29473ugly30186ugly30213ugly29204ugly146ugly254ugly1332ugly299move_seg_w1_142c_0_34_seg_w1_143a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142c_0_34) (not_occupied seg_w1_143a_0_34)
       (not_blocked seg_w1_143a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_143a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_143a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_143a_0_34 airplane_daew8)
       (not_blocked seg_w1_143a_0_34 airplane_daew3)
       (not_blocked seg_w1_143a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_142c_0_34)) (not_occupied seg_w1_142c_0_34)
       (not (at-segment ?a seg_w1_142c_0_34)) (occupied seg_w1_143a_0_34)
       (not (not_occupied seg_w1_143a_0_34)) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (at-segment ?a seg_w1_143a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_142a_0_34 ?a)) (not_blocked seg_w1_142a_0_34 ?a)
       (not (blocked seg_w1_142b_0_45 ?a)) (not_blocked seg_w1_142b_0_45 ?a)))
 (:action
  ugly29695ugly30328ugly29437ugly29637ugly29908ugly183ugly163ugly72ugly1182move_seg_s_b7a_0_60_seg_s_b7d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b7a_0_60) (not_occupied seg_s_b7d_0_60)
       (not_blocked seg_s_b7d_0_60 airplane_cfbeg)
       (not_blocked seg_s_b7d_0_60 airplane_cfbe1)
       (not_blocked seg_s_b7d_0_60 airplane_cfbe3)
       (not_blocked seg_s_b7d_0_60 airplane_daew8)
       (not_blocked seg_s_b7d_0_60 airplane_daew3)
       (not_blocked seg_s_b7d_0_60 airplane_cfbe2)
       (not_occupied seg_s_b7b_0_60) (not_occupied seg_s_b7c_0_60))
  :effect
  (and (not (occupied seg_s_b7a_0_60)) (not_occupied seg_s_b7a_0_60)
       (not (at-segment ?a seg_s_b7a_0_60)) (occupied seg_s_b7d_0_60)
       (not (not_occupied seg_s_b7d_0_60)) (blocked seg_s_b7d_0_60 ?a)
       (not (not_blocked seg_s_b7d_0_60 ?a)) (at-segment ?a seg_s_b7d_0_60)
       (not (facing ?a north)) (facing ?a south) (not (blocked seg_s5_0_94 ?a))
       (not_blocked seg_s5_0_94 ?a) (blocked seg_s_b7b_0_60 ?a)
       (not (not_blocked seg_s_b7b_0_60 ?a)) (blocked seg_s_b7c_0_60 ?a)
       (not (not_blocked seg_s_b7c_0_60 ?a))))
 (:action
  ugly29696ugly29399ugly30033ugly29926ugly30470ugly22ugly1084ugly737ugly805startup_seg_s_b4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b_0_60)
       (not_occupied seg_s_b4a_0_60) (not_occupied seg_s_b4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4a_0_60 ?a)
       (not (not_blocked seg_s_b4a_0_60 ?a)) (blocked seg_s_b4c_0_60 ?a)
       (not (not_blocked seg_s_b4c_0_60 ?a))))
 (:action
  ugly29697ugly29873ugly30252ugly29224ugly30455ugly946ugly866ugly382ugly1064move_seg_w1_153c_0_34_seg_w1_153a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153c_0_34) (not_occupied seg_w1_153a_0_34)
       (not_blocked seg_w1_153a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_153a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_153a_0_34 airplane_daew8)
       (not_blocked seg_w1_153a_0_34 airplane_daew3)
       (not_blocked seg_w1_153a_0_34 airplane_cfbe2)
       (not_occupied seg_w1_153b_0_45))
  :effect
  (and (not (occupied seg_w1_153c_0_34)) (not_occupied seg_w1_153c_0_34)
       (not (at-segment ?a seg_w1_153c_0_34)) (occupied seg_w1_153a_0_34)
       (not (not_occupied seg_w1_153a_0_34)) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (at-segment ?a seg_w1_153a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_154a_0_34 ?a)) (not_blocked seg_w1_154a_0_34 ?a)
       (blocked seg_w1_153b_0_45 ?a) (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action
  ugly29698ugly30485ugly29324ugly30040ugly29949ugly652ugly426ugly1178ugly7startup_seg_c4_s6a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6a_0_80)
       (not_occupied seg_c4_s6b_0_60) (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6b_0_60 ?a)
       (not (not_blocked seg_c4_s6b_0_60 ?a)) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action
  ugly29699ugly30167ugly29308ugly29701ugly29597ugly1132ugly526ugly280ugly110startup_seg_m_a9a10d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10d_0_75)
       (not_occupied seg_m_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10c_0_75 ?a)
       (not (not_blocked seg_m_a9a10c_0_75 ?a))))
 (:action
  ugly29700ugly29607ugly29787ugly30397ugly29226ugly376ugly729ugly74ugly1012move_seg_o1_104a_0_34_seg_o1_104c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_cfbe1)
       (not_blocked seg_o1_104c_0_60 airplane_cfbe3)
       (not_blocked seg_o1_104c_0_60 airplane_daew8)
       (not_blocked seg_o1_104c_0_60 airplane_daew3)
       (not_blocked seg_o1_104c_0_60 airplane_cfbe2)
       (not_occupied seg_o1_104b_0_60))
  :effect
  (and (not (occupied seg_o1_104a_0_34)) (not_occupied seg_o1_104a_0_34)
       (not (at-segment ?a seg_o1_104a_0_34)) (occupied seg_o1_104c_0_60)
       (not (not_occupied seg_o1_104c_0_60)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a)) (at-segment ?a seg_o1_104c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_103c_0_34 ?a)) (not_blocked seg_o1_103c_0_34 ?a)
       (blocked seg_o1_104b_0_60 ?a) (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action
  ugly29701ugly29597ugly30315ugly29417ugly29532ugly561ugly645ugly608ugly774startup_seg_o1_c2c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2c_0_34)
       (not_occupied seg_o1_108a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a))))
 (:action
  ugly29702ugly29362ugly29255ugly30168ugly29867ugly776ugly218ugly817ugly174move_seg_08r_b4b6_0_360_seg_08r_b6c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b4b6_0_360) (not_occupied seg_08r_b6c_0_80)
       (not_blocked seg_08r_b6c_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b6c_0_80 airplane_cfbe1)
       (not_blocked seg_08r_b6c_0_80 airplane_cfbe3)
       (not_blocked seg_08r_b6c_0_80 airplane_daew8)
       (not_blocked seg_08r_b6c_0_80 airplane_daew3)
       (not_blocked seg_08r_b6c_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_08r_b4b6_0_360)) (not_occupied seg_08r_b4b6_0_360)
       (not (at-segment ?a seg_08r_b4b6_0_360)) (occupied seg_08r_b6c_0_80)
       (not (not_occupied seg_08r_b6c_0_80)) (blocked seg_08r_b6c_0_80 ?a)
       (not (not_blocked seg_08r_b6c_0_80 ?a)) (at-segment ?a seg_08r_b6c_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_08r_b4b_0_80 ?a)) (not_blocked seg_08r_b4b_0_80 ?a)))
 (:action
  ugly29703ugly30504ugly29598ugly30303ugly29513ugly837ugly646ugly191ugly1018move_seg_w1_152b_0_45_seg_w1_152a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152b_0_45) (not_occupied seg_w1_152a_0_34)
       (not_blocked seg_w1_152a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_152a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_152a_0_34 airplane_daew8)
       (not_blocked seg_w1_152a_0_34 airplane_daew3)
       (not_blocked seg_w1_152a_0_34 airplane_cfbe2)
       (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (occupied seg_w1_152b_0_45)) (not_occupied seg_w1_152b_0_45)
       (not (at-segment ?a seg_w1_152b_0_45)) (occupied seg_w1_152a_0_34)
       (not (not_occupied seg_w1_152a_0_34)) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (at-segment ?a seg_w1_152a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p152_0_75 ?a)) (not_blocked seg_p152_0_75 ?a)
       (blocked seg_w1_152c_0_34 ?a) (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action
  ugly29704ugly29756ugly29934ugly29455ugly30547ugly1256ugly874ugly876ugly612startup_seg_w1_152c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152c_0_34)
       (not_occupied seg_w1_153a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a))))
 (:action
  ugly29705ugly30365ugly29210ugly29556ugly29530ugly1034ugly514ugly577ugly532move_seg_w1_151b_0_45_seg_w1_151c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151b_0_45) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_151c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_151c_0_34 airplane_daew8)
       (not_blocked seg_w1_151c_0_34 airplane_daew3)
       (not_blocked seg_w1_151c_0_34 airplane_cfbe2)
       (not_occupied seg_w1_151a_0_34))
  :effect
  (and (not (occupied seg_w1_151b_0_45)) (not_occupied seg_w1_151b_0_45)
       (not (at-segment ?a seg_w1_151b_0_45)) (occupied seg_w1_151c_0_34)
       (not (not_occupied seg_w1_151c_0_34)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a)) (at-segment ?a seg_w1_151c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p151_0_75 ?a)) (not_blocked seg_p151_0_75 ?a)
       (blocked seg_w1_151a_0_34 ?a) (not (not_blocked seg_w1_151a_0_34 ?a))))
 (:action
  ugly29706ugly29896ugly29732ugly29295ugly29248ugly586ugly1048ugly1ugly763startup_seg_t_b4b6c_0_130_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6c_0_130)
       (not_occupied seg_t_b6d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6d_0_60 ?a)
       (not (not_blocked seg_t_b6d_0_60 ?a))))
 (:action
  ugly29707ugly30162ugly29501ugly30029ugly30302ugly861ugly938ugly714ugly1139move_seg_08r_b2b3_0_900_seg_08r_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b2b3_0_900) (not_occupied seg_08r_0_80)
       (not_blocked seg_08r_0_80 airplane_cfbeg)
       (not_blocked seg_08r_0_80 airplane_cfbe1)
       (not_blocked seg_08r_0_80 airplane_cfbe3)
       (not_blocked seg_08r_0_80 airplane_daew8)
       (not_blocked seg_08r_0_80 airplane_daew3)
       (not_blocked seg_08r_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_08r_b2b3_0_900)) (not_occupied seg_08r_b2b3_0_900)
       (not (at-segment ?a seg_08r_b2b3_0_900)) (occupied seg_08r_0_80)
       (not (not_occupied seg_08r_0_80)) (blocked seg_08r_0_80 ?a)
       (not (not_blocked seg_08r_0_80 ?a)) (at-segment ?a seg_08r_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_08r_b2b_0_80 ?a)) (not_blocked seg_08r_b2b_0_80 ?a)))
 (:action
  ugly29708ugly30468ugly29668ugly29981ugly30110ugly577ugly532ugly206ugly548startup_seg_t_b7a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7a_0_60)
       (not_occupied seg_t_b7b_0_60) (not_occupied seg_t_b7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7b_0_60 ?a)
       (not (not_blocked seg_t_b7b_0_60 ?a)) (blocked seg_t_b7c_0_60 ?a)
       (not (not_blocked seg_t_b7c_0_60 ?a))))
 (:action
  ugly29709ugly29423ugly29250ugly29234ugly30271ugly906ugly446ugly1132ugly526move_seg_o1_117a_0_34_seg_o1_117c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_117c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_117c_0_34 airplane_daew8)
       (not_blocked seg_o1_117c_0_34 airplane_daew3)
       (not_blocked seg_o1_117c_0_34 airplane_cfbe2)
       (not_occupied seg_o1_117b_0_60))
  :effect
  (and (not (occupied seg_o1_117a_0_34)) (not_occupied seg_o1_117a_0_34)
       (not (at-segment ?a seg_o1_117a_0_34)) (occupied seg_o1_117c_0_34)
       (not (not_occupied seg_o1_117c_0_34)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a)) (at-segment ?a seg_o1_117c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_116c_0_34 ?a)) (not_blocked seg_o1_116c_0_34 ?a)
       (blocked seg_o1_117b_0_60 ?a) (not (not_blocked seg_o1_117b_0_60 ?a))))
 (:action
  ugly29710ugly29575ugly29995ugly29665ugly29716ugly818ugly428ugly379ugly1165startup_seg_m_a6a8b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8b_0_75)
       (not_occupied seg_m_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8c_0_75 ?a)
       (not (not_blocked seg_m_a6a8c_0_75 ?a))))
 (:action
  ugly29711ugly29257ugly29930ugly29945ugly30394ugly353ugly524ugly934ugly958startup_seg_n_a7a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a_0_60)
       (not_occupied seg_n_a7b_0_60) (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a)) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action
  ugly29712ugly30090ugly30448ugly29642ugly30531ugly879ugly1079ugly178ugly482startup_seg_t_b8b9a_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9a_0_115)
       (not_occupied seg_t_b8b9b_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9b_0_115 ?a)
       (not (not_blocked seg_t_b8b9b_0_115 ?a))))
 (:action
  ugly29713ugly30251ugly30265ugly29614ugly29962ugly855ugly1078ugly380ugly565startup_seg_m_a3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3b_0_60)
       (not_occupied seg_m_a3a4a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4a_0_75 ?a)
       (not (not_blocked seg_m_a3a4a_0_75 ?a))))
 (:action
  ugly29714ugly29791ugly30241ugly30428ugly29349ugly342ugly728ugly795ugly898startup_seg_p115_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p115_0_76)
       (not_occupied seg_o1_115b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action
  ugly29715ugly30538ugly29674ugly29529ugly30172ugly1173ugly998ugly780ugly615move_seg_n_n2b_0_60_seg_n2_0_108_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_n2b_0_60) (not_occupied seg_n2_0_108)
       (not_blocked seg_n2_0_108 airplane_cfbeg)
       (not_blocked seg_n2_0_108 airplane_cfbe1)
       (not_blocked seg_n2_0_108 airplane_cfbe3)
       (not_blocked seg_n2_0_108 airplane_daew8)
       (not_blocked seg_n2_0_108 airplane_daew3)
       (not_blocked seg_n2_0_108 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_n2b_0_60)) (not_occupied seg_n_n2b_0_60)
       (not (at-segment ?a seg_n_n2b_0_60)) (occupied seg_n2_0_108)
       (not (not_occupied seg_n2_0_108)) (blocked seg_n2_0_108 ?a)
       (not (not_blocked seg_n2_0_108 ?a)) (at-segment ?a seg_n2_0_108)
       (not (blocked seg_n_n2a_0_60 ?a)) (not_blocked seg_n_n2a_0_60 ?a)
       (not (blocked seg_n_n2c_0_60 ?a)) (not_blocked seg_n_n2c_0_60 ?a)))
 (:action
  ugly29716ugly30001ugly30036ugly29572ugly30058ugly163ugly72ugly1182ugly34startup_seg_t_b2c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2c_0_60)
       (not_occupied seg_t_b2a_0_60) (not_occupied seg_t_b2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2a_0_60 ?a)
       (not (not_blocked seg_t_b2a_0_60 ?a)) (blocked seg_t_b2b_0_60 ?a)
       (not (not_blocked seg_t_b2b_0_60 ?a))))
 (:action
  ugly29717ugly29593ugly30316ugly30268ugly29999ugly327ugly117ugly962ugly1322startup_seg_m_a4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4b_0_60)
       (not_occupied seg_m_a4a7a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7a_0_75 ?a)
       (not (not_blocked seg_m_a4a7a_0_75 ?a))))
 (:action
  ugly29718ugly30321ugly29770ugly29627ugly29438ugly113ugly1034ugly514ugly577startup_seg_t_b4b6a_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6a_0_135)
       (not_occupied seg_t_b4b6b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6b_0_135 ?a)
       (not (not_blocked seg_t_b4b6b_0_135 ?a))))
 (:action
  ugly29719ugly29574ugly30048ugly29816ugly29379ugly452ugly952ugly112ugly894startup_seg_t_b10b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10b_0_60)
       (not_occupied seg_t_b10a_0_60) (not_occupied seg_t_b10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10a_0_60 ?a)
       (not (not_blocked seg_t_b10a_0_60 ?a)) (blocked seg_t_b10c_0_60 ?a)
       (not (not_blocked seg_t_b10c_0_60 ?a))))
 (:action
  ugly29720ugly30057ugly29903ugly29384ugly29304ugly248ugly168ugly49ugly828startup_seg_p102_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p102_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly29721ugly30348ugly30540ugly29914ugly30165ugly958ugly1153ugly734ugly964startup_seg_s_b8b9c_1_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9c_1_0_115)
       (not_occupied seg_s_b8b9b_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9b_0_115 ?a)
       (not (not_blocked seg_s_b8b9b_0_115 ?a))))
 (:action
  ugly29722ugly29711ugly29257ugly29930ugly29945ugly1211ugly1216ugly768ugly562move_seg_o1_c2c_0_34_seg_o1_c2b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2c_0_34) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c2b_0_60 airplane_daew8)
       (not_blocked seg_o1_c2b_0_60 airplane_daew3)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_c2a_0_60) (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (not (occupied seg_o1_c2c_0_34)) (not_occupied seg_o1_c2c_0_34)
       (not (at-segment ?a seg_o1_c2c_0_34)) (occupied seg_o1_c2b_0_60)
       (not (not_occupied seg_o1_c2b_0_60)) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a)) (at-segment ?a seg_o1_c2b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_108a_0_34 ?a)) (not_blocked seg_o1_108a_0_34 ?a)
       (blocked seg_o1_c2a_0_60 ?a) (not (not_blocked seg_o1_c2a_0_60 ?a))
       (blocked seg_o1_c2d_0_60 ?a) (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action
  ugly29723ugly30350ugly30402ugly29655ugly29846ugly951ugly1086ugly141ugly1119startup_seg_o1_c3d_0_60_south_medium
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
  ugly29724ugly30244ugly29815ugly30518ugly29460ugly716ugly641ugly1175ugly212startup_seg_n_a7b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7b_0_60)
       (not_occupied seg_n_a7a6a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6a_0_85 ?a)
       (not (not_blocked seg_n_a7a6a_0_85 ?a))))
 (:action
  ugly29725ugly29368ugly30425ugly29964ugly30130ugly636ugly24ugly474ugly1277move_seg_w1_162c_0_34_seg_w1_162b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162c_0_34) (not_occupied seg_w1_162b_0_45)
       (not_blocked seg_w1_162b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_162b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_162b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_162b_0_45 airplane_daew8)
       (not_blocked seg_w1_162b_0_45 airplane_daew3)
       (not_blocked seg_w1_162b_0_45 airplane_cfbe2)
       (not_occupied seg_w1_162a_0_34))
  :effect
  (and (not (occupied seg_w1_162c_0_34)) (not_occupied seg_w1_162c_0_34)
       (not (at-segment ?a seg_w1_162c_0_34)) (occupied seg_w1_162b_0_45)
       (not (not_occupied seg_w1_162b_0_45)) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a)) (at-segment ?a seg_w1_162b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_163a_0_34 ?a)) (not_blocked seg_w1_163a_0_34 ?a)
       (blocked seg_w1_162a_0_34 ?a) (not (not_blocked seg_w1_162a_0_34 ?a))))
 (:action
  ugly29726ugly29639ugly29858ugly30418ugly30079ugly292ugly82ugly860ugly657startup_seg_m_a3a4a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4a_0_75)
       (not_occupied seg_m_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a))))
 (:action
  ugly29727ugly30133ugly30160ugly29552ugly29790ugly496ugly594ugly590ugly1255move_seg_o1_108c_0_34_seg_o1_108d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe3)
       (not_blocked seg_o1_108d_0_45 airplane_daew8)
       (not_blocked seg_o1_108d_0_45 airplane_daew3)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe2)
       (not_occupied seg_o1_108a_0_34) (not_occupied seg_o1_108b_0_60))
  :effect
  (and (not (occupied seg_o1_108c_0_34)) (not_occupied seg_o1_108c_0_34)
       (not (at-segment ?a seg_o1_108c_0_34)) (occupied seg_o1_108d_0_45)
       (not (not_occupied seg_o1_108d_0_45)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a)) (at-segment ?a seg_o1_108d_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_109a_0_34 ?a)) (not_blocked seg_o1_109a_0_34 ?a)
       (blocked seg_o1_108a_0_34 ?a) (not (not_blocked seg_o1_108a_0_34 ?a))
       (blocked seg_o1_108b_0_60 ?a) (not (not_blocked seg_o1_108b_0_60 ?a))))
 (:action
  ugly29728ugly29219ugly29747ugly30068ugly29661ugly1296ugly455ugly1232ugly990move_seg_n_a6a8d_0_75_seg_n_a6a8c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8d_0_75) (not_occupied seg_n_a6a8c_0_75)
       (not_blocked seg_n_a6a8c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8c_0_75 airplane_cfbe1)
       (not_blocked seg_n_a6a8c_0_75 airplane_cfbe3)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew8)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew3)
       (not_blocked seg_n_a6a8c_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a6a8d_0_75)) (not_occupied seg_n_a6a8d_0_75)
       (not (at-segment ?a seg_n_a6a8d_0_75)) (occupied seg_n_a6a8c_0_75)
       (not (not_occupied seg_n_a6a8c_0_75)) (blocked seg_n_a6a8c_0_75 ?a)
       (not (not_blocked seg_n_a6a8c_0_75 ?a)) (at-segment ?a seg_n_a6a8c_0_75)
       (not (blocked seg_n_a6a8e_0_75 ?a)) (not_blocked seg_n_a6a8e_0_75 ?a)))
 (:action
  ugly29729ugly29978ugly29922ugly30462ugly29520ugly980ugly1348ugly891ugly391startup_seg_n_a3a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3a_0_60)
       (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action
  ugly29730ugly29664ugly29557ugly29228ugly29749ugly539ugly367ugly293ugly1039startup_seg_s_b8a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8a_0_60)
       (not_occupied seg_s_b8b_0_60) (not_occupied seg_s_b8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b_0_60 ?a)
       (not (not_blocked seg_s_b8b_0_60 ?a)) (blocked seg_s_b8c_0_60 ?a)
       (not (not_blocked seg_s_b8c_0_60 ?a))))
 (:action
  ugly29731ugly30081ugly29256ugly30383ugly29783ugly493ugly681ugly1150ugly1109startup_seg_s_b10a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b10a_0_60)
       (not_occupied seg_t_b10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10a_0_60 ?a)
       (not (not_blocked seg_t_b10a_0_60 ?a))))
 (:action
  ugly29732ugly29295ugly29248ugly29769ugly30523ugly1358ugly229ugly180ugly680startup_seg_t_b6b7b_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b7b_0_140)
       (not_occupied seg_t_b7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7c_0_60 ?a)
       (not (not_blocked seg_t_b7c_0_60 ?a))))
 (:action
  ugly29733ugly29266ugly30072ugly29448ugly29383ugly671ugly833ugly31ugly1231startup_seg_08r_b2a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b2a_0_80)
       (not_occupied seg_b2_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b2_1_0_80 ?a)
       (not (not_blocked seg_b2_1_0_80 ?a))))
 (:action
  ugly29734ugly30035ugly29305ugly29877ugly30218ugly1222ugly1326ugly710ugly822startup_seg_o1_102a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102a_0_34)
       (not_occupied seg_o1_102b_0_60) (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action
  ugly29735ugly29488ugly30153ugly29292ugly30021ugly348ugly666ugly624ugly295move_seg_o1_110a_0_34_seg_o1_109c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_109c_0_34 airplane_daew8)
       (not_blocked seg_o1_109c_0_34 airplane_daew3)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_110a_0_34)) (not_occupied seg_o1_110a_0_34)
       (not (at-segment ?a seg_o1_110a_0_34)) (occupied seg_o1_109c_0_34)
       (not (not_occupied seg_o1_109c_0_34)) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a)) (at-segment ?a seg_o1_109c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_110b_0_60 ?a)) (not_blocked seg_o1_110b_0_60 ?a)
       (not (blocked seg_o1_110c_0_34 ?a)) (not_blocked seg_o1_110c_0_34 ?a)
       (not (blocked seg_o1_110d_0_45 ?a)) (not_blocked seg_o1_110d_0_45 ?a)))
 (:action
  ugly29736ugly29840ugly30100ugly29857ugly30082ugly555ugly283ugly961ugly1341startup_seg_s_b5d_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5d_0_60)
       (not_occupied seg_s_b5a_0_60) (not_occupied seg_s_b5b_0_60)
       (not_occupied seg_s_b5c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5a_0_60 ?a)
       (not (not_blocked seg_s_b5a_0_60 ?a)) (blocked seg_s_b5b_0_60 ?a)
       (not (not_blocked seg_s_b5b_0_60 ?a)) (blocked seg_s_b5c_0_60 ?a)
       (not (not_blocked seg_s_b5c_0_60 ?a))))
 (:action
  ugly29737ugly30059ugly30452ugly29944ugly29623ugly366ugly711ugly1038ugly522startup_seg_b6_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b6_a_0_158_647)
       (not_occupied seg_b6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b6_b_0_159_512 ?a)
       (not (not_blocked seg_b6_b_0_159_512 ?a))))
 (:action
  ugly29738ugly30230ugly30246ugly29429ugly29562ugly1180ugly930ugly555ugly283startup_seg_o1_110b_0_60_south_medium
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
  ugly29739ugly29522ugly30401ugly30422ugly29267ugly742ugly64ugly1224ugly1219park_seg_p119_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p119_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p119_0_76) (not (is-moving ?a))))
 (:action
  ugly29740ugly29609ugly29459ugly29201ugly29547ugly408ugly852ugly495ugly462startup_seg_p107_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p107_0_76)
       (not_occupied seg_o1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a))))
 (:action
  ugly29741ugly30231ugly29753ugly30424ugly29948ugly788ugly1286ugly1073ugly586startup_seg_o1_c4c_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4c_0_80)
       (not_occupied seg_c4_s6a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a))))
 (:action
  ugly29742ugly29457ugly30370ugly30008ugly30202ugly1270ugly625ugly1252ugly326startup_seg_s5_0_94_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s5_0_94)
       (not_occupied seg_s_b7a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7a_0_60 ?a)
       (not (not_blocked seg_s_b7a_0_60 ?a))))
 (:action
  ugly29743ugly30341ugly30506ugly29450ugly30107ugly1067ugly629ugly806ugly1017move_seg_w1_162c_0_34_seg_w1_162a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162c_0_34) (not_occupied seg_w1_162a_0_34)
       (not_blocked seg_w1_162a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_162a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_162a_0_34 airplane_daew8)
       (not_blocked seg_w1_162a_0_34 airplane_daew3)
       (not_blocked seg_w1_162a_0_34 airplane_cfbe2)
       (not_occupied seg_w1_162b_0_45))
  :effect
  (and (not (occupied seg_w1_162c_0_34)) (not_occupied seg_w1_162c_0_34)
       (not (at-segment ?a seg_w1_162c_0_34)) (occupied seg_w1_162a_0_34)
       (not (not_occupied seg_w1_162a_0_34)) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (at-segment ?a seg_w1_162a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_163a_0_34 ?a)) (not_blocked seg_w1_163a_0_34 ?a)
       (blocked seg_w1_162b_0_45 ?a) (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action
  ugly29744ugly29798ugly29462ugly29871ugly29586ugly242ugly386ugly81ugly187move_seg_o1_111c_0_34_seg_o1_111a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_111a_0_34 airplane_daew8)
       (not_blocked seg_o1_111a_0_34 airplane_daew3)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_111b_0_60) (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (occupied seg_o1_111c_0_34)) (not_occupied seg_o1_111c_0_34)
       (not (at-segment ?a seg_o1_111c_0_34)) (occupied seg_o1_111a_0_34)
       (not (not_occupied seg_o1_111a_0_34)) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a)) (at-segment ?a seg_o1_111a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c3a_0_34 ?a)) (not_blocked seg_o1_c3a_0_34 ?a)
       (blocked seg_o1_111b_0_60 ?a) (not (not_blocked seg_o1_111b_0_60 ?a))
       (blocked seg_o1_111d_0_45 ?a) (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action
  ugly29745ugly29955ugly29902ugly30266ugly29243ugly647ugly65ugly937ugly992move_seg_w1_c2a_0_60_seg_w1_143c_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c2a_0_60) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_cfbe1)
       (not_blocked seg_w1_143c_0_60 airplane_cfbe3)
       (not_blocked seg_w1_143c_0_60 airplane_daew8)
       (not_blocked seg_w1_143c_0_60 airplane_daew3)
       (not_blocked seg_w1_143c_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_c2a_0_60)) (not_occupied seg_w1_c2a_0_60)
       (not (at-segment ?a seg_w1_c2a_0_60)) (occupied seg_w1_143c_0_60)
       (not (not_occupied seg_w1_143c_0_60)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a)) (at-segment ?a seg_w1_143c_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c2b_0_60 ?a)) (not_blocked seg_w1_c2b_0_60 ?a)
       (not (blocked seg_w1_c2c_0_34 ?a)) (not_blocked seg_w1_c2c_0_34 ?a)))
 (:action
  ugly29746ugly29675ugly29287ugly29915ugly30212ugly176ugly1105ugly834ugly782move_seg_b8_a_0_156_924_seg_b8_b_1_0_80_6226_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_b8_a_0_156_924) (not_occupied seg_b8_b_1_0_80_6226)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_cfbeg)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_cfbe1)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_cfbe3)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_daew8)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_daew3)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_cfbe2))
  :effect
  (and (not (occupied seg_b8_a_0_156_924)) (not_occupied seg_b8_a_0_156_924)
       (not (at-segment ?a seg_b8_a_0_156_924)) (occupied seg_b8_b_1_0_80_6226)
       (not (not_occupied seg_b8_b_1_0_80_6226))
       (blocked seg_b8_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b8_b_1_0_80_6226 ?a))
       (at-segment ?a seg_b8_b_1_0_80_6226)
       (not (blocked seg_08r_b6a_0_161_245 ?a))
       (not_blocked seg_08r_b6a_0_161_245 ?a)))
 (:action
  ugly29747ugly30068ugly29661ugly30479ugly29318ugly16ugly955ugly996ugly621move_seg_08r_b6a_0_161_245_seg_b8_a_0_156_924_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b6a_0_161_245) (not_occupied seg_b8_a_0_156_924)
       (not_blocked seg_b8_a_0_156_924 airplane_cfbeg)
       (not_blocked seg_b8_a_0_156_924 airplane_cfbe1)
       (not_blocked seg_b8_a_0_156_924 airplane_cfbe3)
       (not_blocked seg_b8_a_0_156_924 airplane_daew8)
       (not_blocked seg_b8_a_0_156_924 airplane_daew3)
       (not_blocked seg_b8_a_0_156_924 airplane_cfbe2))
  :effect
  (and (not (occupied seg_08r_b6a_0_161_245))
       (not_occupied seg_08r_b6a_0_161_245)
       (not (at-segment ?a seg_08r_b6a_0_161_245))
       (occupied seg_b8_a_0_156_924) (not (not_occupied seg_b8_a_0_156_924))
       (blocked seg_b8_a_0_156_924 ?a)
       (not (not_blocked seg_b8_a_0_156_924 ?a))
       (at-segment ?a seg_b8_a_0_156_924) (not (blocked seg_08r_b6c_0_80 ?a))
       (not_blocked seg_08r_b6c_0_80 ?a) (not (blocked seg_08r_b6b_0_80 ?a))
       (not_blocked seg_08r_b6b_0_80 ?a)
       (not (blocked seg_08r_b6d_0_161_245 ?a))
       (not_blocked seg_08r_b6d_0_161_245 ?a)))
 (:action
  ugly29748ugly30449ugly29486ugly29709ugly29423ugly67ugly60ugly513ugly725startup_seg_n_a4c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4c_0_60)
       (not_occupied seg_n_a4a_0_60) (not_occupied seg_n_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a)) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a))))
 (:action
  ugly29749ugly29722ugly29711ugly29257ugly29930ugly762ugly746ugly453ugly73startup_seg_n_a2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a_0_60)
       (not_occupied seg_a2_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_c_0_100 ?a)
       (not (not_blocked seg_a2_c_0_100 ?a))))
 (:action
  ugly29750ugly29752ugly30293ugly30388ugly29447ugly157ugly135ugly1033ugly32startup_seg_p103_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p103_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly29751ugly29229ugly30324ugly29935ugly29239ugly1037ugly192ugly735ugly951startup_seg_08l_a9b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a9b_0_161_245)
       (not_occupied seg_a9_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_a_0_158_647 ?a)
       (not (not_blocked seg_a9_a_0_158_647 ?a))))
 (:action
  ugly29752ugly30293ugly30388ugly29447ugly29340ugly1007ugly815ugly634ugly1164startup_seg_m_a8a9a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9a_0_75)
       (not_occupied seg_m_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9b_0_75 ?a)
       (not (not_blocked seg_m_a8a9b_0_75 ?a))))
 (:action
  ugly29753ugly30424ugly29948ugly29971ugly30543ugly189ugly1022ugly610ugly1304startup_seg_s_b8b9b_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9b_0_115)
       (not_occupied seg_s_b8b9c_1_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9c_1_0_115 ?a)
       (not (not_blocked seg_s_b8b9c_1_0_115 ?a))))
 (:action
  ugly29754ugly30450ugly30239ugly29616ugly29336ugly1052ugly861ugly938ugly714startup_seg_m_a4a7f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7f_0_115)
       (not_occupied seg_m_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7e_0_75 ?a)
       (not (not_blocked seg_m_a4a7e_0_75 ?a))))
 (:action
  ugly29755ugly29220ugly30311ugly29405ugly30404ugly1194ugly1172ugly966ugly253startup_seg_t_b5c_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5c_0_120_934)
       (not_occupied seg_t_b5a_0_60) (not_occupied seg_t_b5b_0_60)
       (not_occupied seg_t_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5a_0_60 ?a)
       (not (not_blocked seg_t_b5a_0_60 ?a)) (blocked seg_t_b5b_0_60 ?a)
       (not (not_blocked seg_t_b5b_0_60 ?a)) (blocked seg_t_b5d_0_60 ?a)
       (not (not_blocked seg_t_b5d_0_60 ?a))))
 (:action
  ugly29756ugly29934ugly29455ugly30547ugly30439ugly553ugly539ugly367ugly293startup_seg_o1_118c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118c_0_34)
       (not_occupied seg_o1_118a_0_34) (not_occupied seg_o1_118b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action
  ugly29757ugly29919ugly30524ugly29184ugly29742ugly274ugly131ugly480ugly570startup_seg_p131_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p131_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly29758ugly29942ugly30015ugly30487ugly30093ugly712ugly837ugly646ugly191startup_seg_o1_116c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116c_0_34)
       (not_occupied seg_o1_117a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a))))
 (:action
  ugly29759ugly29402ugly29489ugly30125ugly29452ugly253ugly571ugly1275ugly252move_seg_o1_103c_0_34_seg_o1_103b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103c_0_34) (not_occupied seg_o1_103b_0_60)
       (not_blocked seg_o1_103b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_103b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_103b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_103b_0_60 airplane_daew8)
       (not_blocked seg_o1_103b_0_60 airplane_daew3)
       (not_blocked seg_o1_103b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_103a_0_34))
  :effect
  (and (not (occupied seg_o1_103c_0_34)) (not_occupied seg_o1_103c_0_34)
       (not (at-segment ?a seg_o1_103c_0_34)) (occupied seg_o1_103b_0_60)
       (not (not_occupied seg_o1_103b_0_60)) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a)) (at-segment ?a seg_o1_103b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_104a_0_34 ?a)) (not_blocked seg_o1_104a_0_34 ?a)
       (blocked seg_o1_103a_0_34 ?a) (not (not_blocked seg_o1_103a_0_34 ?a))))
 (:action
  ugly29760ugly30409ugly29822ugly30362ugly29568ugly1313ugly1101ugly433ugly457startup_seg_m_a4a7e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7e_0_75)
       (not_occupied seg_m_a4a7f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7f_0_115 ?a)
       (not (not_blocked seg_m_a4a7f_0_115 ?a))))
 (:action
  ugly29761ugly29933ugly30050ugly29540ugly30276ugly7ugly1055ugly202ugly347startup_seg_p141_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p141_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly29762ugly29697ugly29873ugly30252ugly29224ugly1272ugly1080ugly906ugly446startup_seg_m_a4a7c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7c_0_75)
       (not_occupied seg_m_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7d_0_75 ?a)
       (not (not_blocked seg_m_a4a7d_0_75 ?a))))
 (:action
  ugly29763ugly29936ugly30000ugly30413ugly30016ugly215ugly292ugly82ugly860startup_seg_s_b4b6a_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6a_0_135)
       (not_occupied seg_s_b4a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4a_0_60 ?a)
       (not (not_blocked seg_s_b4a_0_60 ?a))))
 (:action
  ugly29764ugly30426ugly29348ugly29874ugly30011ugly1332ugly299ugly8ugly609park_seg_p109_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p109_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p109_0_76) (not (is-moving ?a))))
 (:action
  ugly29765ugly29980ugly30180ugly29648ugly29920ugly363ugly519ugly801ugly1015move_seg_o1_108b_0_60_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108b_0_60) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_108c_0_34 airplane_daew8)
       (not_blocked seg_o1_108c_0_34 airplane_daew3)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe2)
       (not_occupied seg_o1_108a_0_34) (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (occupied seg_o1_108b_0_60)) (not_occupied seg_o1_108b_0_60)
       (not (at-segment ?a seg_o1_108b_0_60)) (occupied seg_o1_108c_0_34)
       (not (not_occupied seg_o1_108c_0_34)) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a)) (at-segment ?a seg_o1_108c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p108_0_76 ?a)) (not_blocked seg_p108_0_76 ?a)
       (blocked seg_o1_108a_0_34 ?a) (not (not_blocked seg_o1_108a_0_34 ?a))
       (blocked seg_o1_108d_0_45 ?a) (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action
  ugly29766ugly30120ugly30309ugly30136ugly29622ugly669ugly451ugly911ugly359startup_seg_a4_a_0_157_785_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_a_0_157_785)
       (not_occupied seg_08l_a4c_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a4c_0_161_245 ?a)
       (not (not_blocked seg_08l_a4c_0_161_245 ?a))))
 (:action
  ugly29767ugly29667ugly30511ugly30183ugly30054ugly361ugly57ugly165ugly792move_seg_p116_0_76_seg_o1_116b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p116_0_76) (not_occupied seg_o1_116b_0_60)
       (not_blocked seg_o1_116b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_116b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_116b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_116b_0_60 airplane_daew8)
       (not_blocked seg_o1_116b_0_60 airplane_daew3)
       (not_blocked seg_o1_116b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p116_0_76)) (not_occupied seg_p116_0_76)
       (not (at-segment ?a seg_p116_0_76)) (occupied seg_o1_116b_0_60)
       (not (not_occupied seg_o1_116b_0_60)) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a))
       (at-segment ?a seg_o1_116b_0_60)))
 (:action
  ugly29768ugly30030ugly29685ugly29207ugly29826ugly799ugly1097ugly13ugly20startup_seg_08r_b6d_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b6d_0_161_245)
       (not_occupied seg_08r_b6a_0_161_245) (not_occupied seg_08r_b6c_0_80)
       (not_occupied seg_08r_b6b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b6a_0_161_245 ?a)
       (not (not_blocked seg_08r_b6a_0_161_245 ?a))
       (blocked seg_08r_b6c_0_80 ?a) (not (not_blocked seg_08r_b6c_0_80 ?a))
       (blocked seg_08r_b6b_0_80 ?a) (not (not_blocked seg_08r_b6b_0_80 ?a))))
 (:action
  ugly29769ugly30523ugly30541ugly30127ugly29315ugly727ugly716ugly641ugly1175move_seg_w1_152b_0_45_seg_w1_152c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152b_0_45) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_152c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_152c_0_34 airplane_daew8)
       (not_blocked seg_w1_152c_0_34 airplane_daew3)
       (not_blocked seg_w1_152c_0_34 airplane_cfbe2)
       (not_occupied seg_w1_152a_0_34))
  :effect
  (and (not (occupied seg_w1_152b_0_45)) (not_occupied seg_w1_152b_0_45)
       (not (at-segment ?a seg_w1_152b_0_45)) (occupied seg_w1_152c_0_34)
       (not (not_occupied seg_w1_152c_0_34)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a)) (at-segment ?a seg_w1_152c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p152_0_75 ?a)) (not_blocked seg_p152_0_75 ?a)
       (blocked seg_w1_152a_0_34 ?a) (not (not_blocked seg_w1_152a_0_34 ?a))))
 (:action
  ugly29770ugly29627ugly29438ugly29296ugly29993ugly140ugly297ugly1222ugly1326startup_seg_s_b9b10b_0_125_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10b_0_125)
       (not_occupied seg_s_b9b10c_1_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_1_0_83 ?a)
       (not (not_blocked seg_s_b9b10c_1_0_83 ?a))))
 (:action
  ugly29771ugly29422ugly29779ugly29817ugly29367ugly423ugly580ugly830ugly1186move_seg_o1_109b_0_60_seg_p109_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109b_0_60) (not_occupied seg_p109_0_76)
       (not_blocked seg_p109_0_76 airplane_cfbeg)
       (not_blocked seg_p109_0_76 airplane_cfbe1)
       (not_blocked seg_p109_0_76 airplane_cfbe3)
       (not_blocked seg_p109_0_76 airplane_daew8)
       (not_blocked seg_p109_0_76 airplane_daew3)
       (not_blocked seg_p109_0_76 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_109b_0_60)) (not_occupied seg_o1_109b_0_60)
       (not (at-segment ?a seg_o1_109b_0_60)) (occupied seg_p109_0_76)
       (not (not_occupied seg_p109_0_76)) (blocked seg_p109_0_76 ?a)
       (not (not_blocked seg_p109_0_76 ?a)) (at-segment ?a seg_p109_0_76)
       (not (blocked seg_o1_109a_0_34 ?a)) (not_blocked seg_o1_109a_0_34 ?a)
       (not (blocked seg_o1_109c_0_34 ?a)) (not_blocked seg_o1_109c_0_34 ?a)
       (not (blocked seg_o1_109d_0_45 ?a)) (not_blocked seg_o1_109d_0_45 ?a)))
 (:action
  ugly29772ugly29325ugly29618ugly29326ugly29427ugly232ugly407ugly699ugly856move_seg_w1_164a_0_34_seg_w1_164b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164a_0_34) (not_occupied seg_w1_164b_0_45)
       (not_blocked seg_w1_164b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_164b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_164b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_164b_0_45 airplane_daew8)
       (not_blocked seg_w1_164b_0_45 airplane_daew3)
       (not_blocked seg_w1_164b_0_45 airplane_cfbe2)
       (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (occupied seg_w1_164a_0_34)) (not_occupied seg_w1_164a_0_34)
       (not (at-segment ?a seg_w1_164a_0_34)) (occupied seg_w1_164b_0_45)
       (not (not_occupied seg_w1_164b_0_45)) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a)) (at-segment ?a seg_w1_164b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_163c_0_34 ?a)) (not_blocked seg_w1_163c_0_34 ?a)
       (blocked seg_w1_164c_0_34 ?a) (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action
  ugly29773ugly29521ugly30429ugly29212ugly30489ugly102ugly325ugly477ugly198startup_seg_o1_108b_0_60_south_medium
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
  ugly29774ugly30279ugly30361ugly29720ugly30057ugly720ugly1071ugly336ugly85startup_seg_n_a8c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8c_0_60)
       (not_occupied seg_n_a8a_0_60) (not_occupied seg_n_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a)) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a))))
 (:action
  ugly29775ugly30359ugly30106ugly30076ugly29751ugly46ugly188ugly94ugly733pushback_seg_o1_108d_0_45_seg_o1_108c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_108c_0_34 airplane_daew8)
       (not_blocked seg_o1_108c_0_34 airplane_daew3)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_108d_0_45)) (not_occupied seg_o1_108d_0_45)
       (not (blocked seg_o1_108d_0_45 ?a)) (not_blocked seg_o1_108d_0_45 ?a)
       (not (at-segment ?a seg_o1_108d_0_45)) (occupied seg_o1_108c_0_34)
       (not (not_occupied seg_o1_108c_0_34)) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a)) (at-segment ?a seg_o1_108c_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly29776ugly30433ugly29710ugly29575ugly29995ugly482ugly592ugly1268ugly489move_seg_c4_s6b_0_60_seg_c4_s6c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c4_s6b_0_60) (not_occupied seg_c4_s6c_0_60)
       (not_blocked seg_c4_s6c_0_60 airplane_cfbeg)
       (not_blocked seg_c4_s6c_0_60 airplane_cfbe1)
       (not_blocked seg_c4_s6c_0_60 airplane_cfbe3)
       (not_blocked seg_c4_s6c_0_60 airplane_daew8)
       (not_blocked seg_c4_s6c_0_60 airplane_daew3)
       (not_blocked seg_c4_s6c_0_60 airplane_cfbe2)
       (not_occupied seg_c4_s6a_0_80))
  :effect
  (and (not (occupied seg_c4_s6b_0_60)) (not_occupied seg_c4_s6b_0_60)
       (not (at-segment ?a seg_c4_s6b_0_60)) (occupied seg_c4_s6c_0_60)
       (not (not_occupied seg_c4_s6c_0_60)) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a)) (at-segment ?a seg_c4_s6c_0_60)
       (not (facing ?a north)) (facing ?a south) (not (blocked seg_s6_0_94 ?a))
       (not_blocked seg_s6_0_94 ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a))))
 (:action
  ugly29777ugly29904ugly29660ugly30458ugly29782ugly1118ugly30ugly846ugly761startup_seg_s_b2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b_0_60)
       (not_occupied seg_s_b2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2a_0_60 ?a)
       (not (not_blocked seg_s_b2a_0_60 ?a))))
 (:action
  ugly29778ugly29401ugly29678ugly30109ugly30282ugly510ugly662ugly459ugly306move_seg_08l_a7a_0_80_seg_08l_a7a9_0_270_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7a_0_80) (not_occupied seg_08l_a7a9_0_270)
       (not_blocked seg_08l_a7a9_0_270 airplane_cfbeg)
       (not_blocked seg_08l_a7a9_0_270 airplane_cfbe1)
       (not_blocked seg_08l_a7a9_0_270 airplane_cfbe3)
       (not_blocked seg_08l_a7a9_0_270 airplane_daew8)
       (not_blocked seg_08l_a7a9_0_270 airplane_daew3)
       (not_blocked seg_08l_a7a9_0_270 airplane_cfbe2)
       (not_occupied seg_08l_a2a_0_80) (not_occupied seg_09l_0_80)
       (not_occupied seg_08l_a4a_0_80) (not_occupied seg_08l_a3a_0_80)
       (not_occupied seg_08l_0_80) (not_occupied seg_08l_a3a4_0_450)
       (not_occupied seg_08l_a4d_0_80) (not_occupied seg_08l_a6a7_0_450)
       (not_occupied seg_08l_a7d_0_80))
  :effect
  (and (not (occupied seg_08l_a7a_0_80)) (not_occupied seg_08l_a7a_0_80)
       (not (at-segment ?a seg_08l_a7a_0_80)) (occupied seg_08l_a7a9_0_270)
       (not (not_occupied seg_08l_a7a9_0_270)) (blocked seg_08l_a7a9_0_270 ?a)
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
 (:action
  ugly29779ugly29817ugly29367ugly29606ugly30392ugly1325ugly1090ugly871ugly1043startup_seg_t_b10b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10b_0_60)
       (not_occupied seg_b10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b10_0_80 ?a)
       (not (not_blocked seg_b10_0_80 ?a))))
 (:action
  ugly29780ugly30319ugly29973ugly29712ugly30090ugly1265ugly598ugly418ugly1282startup_seg_w1_162b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162b_0_45)
       (not_occupied seg_w1_162a_0_34) (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action
  ugly29781ugly30374ugly30447ugly30046ugly29806ugly881ugly1152ugly449ugly865park_seg_p116_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p116_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p116_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_116b_0_60 ?a)) (not_blocked seg_o1_116b_0_60 ?a)))
 (:action
  ugly29782ugly30301ugly29650ugly30236ugly29808ugly340ugly947ugly287ugly558startup_seg_a10_1_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_1_0_80)
       (not_occupied seg_a10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_0_80 ?a)
       (not (not_blocked seg_a10_0_80 ?a))))
 (:action
  ugly29783ugly29676ugly30173ugly30043ugly30310ugly50ugly357ugly604ugly767startup_seg_n_a6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6c_0_60)
       (not_occupied seg_n_a7a6d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6d_0_75 ?a)
       (not (not_blocked seg_n_a7a6d_0_75 ?a))))
 (:action
  ugly29784ugly30323ugly30116ugly29848ugly29932ugly777ugly903ugly225ugly518startup_seg_p161_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p161_0_75)
       (not_occupied seg_w1_161b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a))))
 (:action
  ugly29785ugly29576ugly29539ugly29865ugly30318ugly802ugly945ugly1180ugly930startup_seg_t_b6b7b_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b7b_0_140)
       (not_occupied seg_t_b6b7a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b7a_0_140 ?a)
       (not (not_blocked seg_t_b6b7a_0_140 ?a))))
 (:action
  ugly29786ugly29680ugly29721ugly30348ugly30540ugly731ugly1133ugly1317ugly775move_seg_w1_152a_0_34_seg_w1_152b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_152b_0_45)
       (not_blocked seg_w1_152b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_152b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_152b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_152b_0_45 airplane_daew8)
       (not_blocked seg_w1_152b_0_45 airplane_daew3)
       (not_blocked seg_w1_152b_0_45 airplane_cfbe2)
       (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (occupied seg_w1_152a_0_34)) (not_occupied seg_w1_152a_0_34)
       (not (at-segment ?a seg_w1_152a_0_34)) (occupied seg_w1_152b_0_45)
       (not (not_occupied seg_w1_152b_0_45)) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a)) (at-segment ?a seg_w1_152b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_151c_0_34 ?a)) (not_blocked seg_w1_151c_0_34 ?a)
       (blocked seg_w1_152c_0_34 ?a) (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action
  ugly29787ugly30397ugly29226ugly29559ugly30159ugly394ugly1115ugly172ugly1198startup_seg_n_a7c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7c_0_60)
       (not_occupied seg_n_a4a7f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7f_0_75 ?a)
       (not (not_blocked seg_n_a4a7f_0_75 ?a))))
 (:action
  ugly29788ugly29780ugly30319ugly29973ugly29712ugly907ugly650ugly653ugly537startup_seg_n2_0_108_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_0_108)
       (not_occupied seg_c1_n2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a))))
 (:action
  ugly29789ugly29286ugly29596ugly29672ugly29221ugly78ugly536ugly799ugly1097move_seg_w1_151a_0_34_seg_w1_151c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_151c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_151c_0_34 airplane_daew8)
       (not_blocked seg_w1_151c_0_34 airplane_daew3)
       (not_blocked seg_w1_151c_0_34 airplane_cfbe2)
       (not_occupied seg_w1_151b_0_45))
  :effect
  (and (not (occupied seg_w1_151a_0_34)) (not_occupied seg_w1_151a_0_34)
       (not (at-segment ?a seg_w1_151a_0_34)) (occupied seg_w1_151c_0_34)
       (not (not_occupied seg_w1_151c_0_34)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a)) (at-segment ?a seg_w1_151c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c2c_0_34 ?a)) (not_blocked seg_w1_c2c_0_34 ?a)
       (blocked seg_w1_151b_0_45 ?a) (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action
  ugly29790ugly29679ugly30299ugly29890ugly30148ugly1324ugly97ugly985ugly315startup_seg_t_b9b10b_0_125_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10b_0_125)
       (not_occupied seg_t_b9b10c_1_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_1_0_83 ?a)
       (not (not_blocked seg_t_b9b10c_1_0_83 ?a))))
 (:action
  ugly29791ugly30241ugly30428ugly29349ugly29525ugly1237ugly706ugly51ugly1330startup_seg_n_a9a10e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10e_0_75)
       (not_occupied seg_n_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10d_0_75 ?a)
       (not (not_blocked seg_n_a9a10d_0_75 ?a))))
 (:action
  ugly29792ugly30277ugly29958ugly29189ugly30398ugly1352ugly260ugly216ugly588move_seg_o1_108c_0_34_seg_o1_109a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_109a_0_34 airplane_daew8)
       (not_blocked seg_o1_109a_0_34 airplane_daew3)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_108c_0_34)) (not_occupied seg_o1_108c_0_34)
       (not (at-segment ?a seg_o1_108c_0_34)) (occupied seg_o1_109a_0_34)
       (not (not_occupied seg_o1_109a_0_34)) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a)) (at-segment ?a seg_o1_109a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_108a_0_34 ?a)) (not_blocked seg_o1_108a_0_34 ?a)
       (not (blocked seg_o1_108b_0_60 ?a)) (not_blocked seg_o1_108b_0_60 ?a)
       (not (blocked seg_o1_108d_0_45 ?a)) (not_blocked seg_o1_108d_0_45 ?a)))
 (:action
  ugly29793ugly29328ugly30087ugly30463ugly30226ugly1196ugly818ugly428ugly379startup_seg_m_a6c_0_60_south_medium
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
  ugly29794ugly29884ugly30158ugly30041ugly29916ugly9ugly485ugly784ugly207park_seg_p134_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p134_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p134_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_111d_0_45 ?a)) (not_blocked seg_o1_111d_0_45 ?a)))
 (:action
  ugly29795ugly29768ugly30030ugly29685ugly29207ugly643ugly820ugly783ugly461startup_seg_o1_102b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102b_0_60)
       (not_occupied seg_p102_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p102_0_76 ?a)
       (not (not_blocked seg_p102_0_76 ?a))))
 (:action
  ugly29796ugly29905ugly30233ugly30390ugly29765ugly797ugly166ugly1245ugly643startup_seg_c3_a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_a_0_80)
       (not_occupied seg_c3_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_b_0_80 ?a)
       (not (not_blocked seg_c3_b_0_80 ?a))))
 (:action
  ugly29797ugly29838ugly29913ugly30351ugly29527ugly473ugly271ugly371ugly1230startup_seg_a6_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_a_0_158_647)
       (not_occupied seg_08l_a4b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a4b_0_161_245 ?a)
       (not (not_blocked seg_08l_a4b_0_161_245 ?a))))
 (:action
  ugly29798ugly29462ugly29871ugly29586ugly29425ugly1366ugly364ugly797ugly166startup_seg_a2_c_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_c_0_100)
       (not_occupied seg_a2_b_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_b_0_90 ?a)
       (not (not_blocked seg_a2_b_0_90 ?a))))
 (:action
  ugly29799ugly30287ugly29385ugly30012ugly29929ugly388ugly908ugly26ugly76startup_seg_m_a7d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7d_0_60)
       (not_occupied seg_m_a4a7f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7f_0_115 ?a)
       (not (not_blocked seg_m_a4a7f_0_115 ?a))))
 (:action
  ugly29800ugly29643ugly29309ugly29952ugly29897ugly517ugly356ugly422ugly145move_seg_o1_104a_0_34_seg_o1_103c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_103c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_103c_0_34 airplane_daew8)
       (not_blocked seg_o1_103c_0_34 airplane_daew3)
       (not_blocked seg_o1_103c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_104a_0_34)) (not_occupied seg_o1_104a_0_34)
       (not (at-segment ?a seg_o1_104a_0_34)) (occupied seg_o1_103c_0_34)
       (not (not_occupied seg_o1_103c_0_34)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a)) (at-segment ?a seg_o1_103c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_104b_0_60 ?a)) (not_blocked seg_o1_104b_0_60 ?a)
       (not (blocked seg_o1_104c_0_60 ?a)) (not_blocked seg_o1_104c_0_60 ?a)))
 (:action
  ugly29801ugly30115ugly29767ugly29667ugly30511ugly1000ugly878ugly363ugly519park_seg_p153_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p153_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p153_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_153b_0_45 ?a)) (not_blocked seg_w1_153b_0_45 ?a)))
 (:action
  ugly29802ugly29640ugly29887ugly29454ugly29901ugly705ugly169ugly317ugly93startup_seg_c2_a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_a_0_80)
       (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action
  ugly29803ugly29516ugly29777ugly29904ugly29660ugly1275ugly252ugly335ugly1199startup_seg_o1_117c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117c_0_34)
       (not_occupied seg_o1_117a_0_34) (not_occupied seg_o1_117b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a)) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a))))
 (:action
  ugly29804ugly29407ugly29216ugly30371ugly30443ugly1314ugly552ugly858ugly1041startup_seg_n_a6a8d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8d_0_75)
       (not_occupied seg_n_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8c_0_75 ?a)
       (not (not_blocked seg_n_a6a8c_0_75 ?a))))
 (:action
  ugly29805ugly29774ugly30279ugly30361ugly29720ugly874ugly876ugly612ugly788startup_seg_n_a4a7b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7b_0_75)
       (not_occupied seg_n_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7c_0_75 ?a)
       (not (not_blocked seg_n_a4a7c_0_75 ?a))))
 (:action
  ugly29806ugly30064ugly30206ugly29581ugly30434ugly602ugly549ugly322ugly304park_seg_p101_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p101_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p101_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)))
 (:action
  ugly29807ugly29451ugly29247ugly29217ugly29963ugly1156ugly769ugly1070ugly11move_seg_p111_0_76_seg_o1_111b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p111_0_76) (not_occupied seg_o1_111b_0_60)
       (not_blocked seg_o1_111b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_111b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_111b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_111b_0_60 airplane_daew8)
       (not_blocked seg_o1_111b_0_60 airplane_daew3)
       (not_blocked seg_o1_111b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p111_0_76)) (not_occupied seg_p111_0_76)
       (not (at-segment ?a seg_p111_0_76)) (occupied seg_o1_111b_0_60)
       (not (not_occupied seg_o1_111b_0_60)) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a))
       (at-segment ?a seg_o1_111b_0_60)))
 (:action
  ugly29808ugly29523ugly29361ugly29320ugly29252ugly1185ugly1325ugly1090ugly871startup_seg_p118_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p118_0_76)
       (not_occupied seg_o1_118b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action
  ugly29809ugly29788ugly29780ugly30319ugly29973ugly529ugly227ugly374ugly829move_seg_p154_0_75_seg_w1_154b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p154_0_75) (not_occupied seg_w1_154b_0_45)
       (not_blocked seg_w1_154b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_154b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_154b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_154b_0_45 airplane_daew8)
       (not_blocked seg_w1_154b_0_45 airplane_daew3)
       (not_blocked seg_w1_154b_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p154_0_75)) (not_occupied seg_p154_0_75)
       (not (at-segment ?a seg_p154_0_75)) (occupied seg_w1_154b_0_45)
       (not (not_occupied seg_w1_154b_0_45)) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))
       (at-segment ?a seg_w1_154b_0_45)))
 (:action
  ugly29810ugly29990ugly29802ugly29640ugly29887ugly271ugly371ugly1230ugly1075move_seg_o1_117b_0_60_seg_o1_117c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117b_0_60) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_117c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_117c_0_34 airplane_daew8)
       (not_blocked seg_o1_117c_0_34 airplane_daew3)
       (not_blocked seg_o1_117c_0_34 airplane_cfbe2)
       (not_occupied seg_o1_117a_0_34))
  :effect
  (and (not (occupied seg_o1_117b_0_60)) (not_occupied seg_o1_117b_0_60)
       (not (at-segment ?a seg_o1_117b_0_60)) (occupied seg_o1_117c_0_34)
       (not (not_occupied seg_o1_117c_0_34)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a)) (at-segment ?a seg_o1_117c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p117_0_76 ?a)) (not_blocked seg_p117_0_76 ?a)
       (blocked seg_o1_117a_0_34 ?a) (not (not_blocked seg_o1_117a_0_34 ?a))))
 (:action
  ugly29811ugly29514ugly29271ugly29440ugly29689ugly557ugly636ugly24ugly474startup_seg_n_n2a4d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4d_0_75)
       (not_occupied seg_n_n2a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4c_0_75 ?a)
       (not (not_blocked seg_n_n2a4c_0_75 ?a))))
 (:action
  ugly29812ugly30056ugly30490ugly29923ugly29820ugly120ugly781ugly443ugly1354startup_seg_n_a6a8a_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8a_0_115)
       (not_occupied seg_n_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8b_0_75 ?a)
       (not (not_blocked seg_n_a6a8b_0_75 ?a))))
 (:action
  ugly29813ugly29587ugly30347ugly29715ugly30538ugly491ugly718ugly236ugly1258startup_seg_n_a9c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9c_0_60)
       (not_occupied seg_n_a8a9d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9d_0_75 ?a)
       (not (not_blocked seg_n_a8a9d_0_75 ?a))))
 (:action
  ugly29814ugly30205ugly29421ugly29646ugly30164ugly963ugly847ugly388ugly908move_seg_w1_162c_0_34_seg_w1_163a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162c_0_34) (not_occupied seg_w1_163a_0_34)
       (not_blocked seg_w1_163a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_163a_0_34 airplane_daew8)
       (not_blocked seg_w1_163a_0_34 airplane_daew3)
       (not_blocked seg_w1_163a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_162c_0_34)) (not_occupied seg_w1_162c_0_34)
       (not (at-segment ?a seg_w1_162c_0_34)) (occupied seg_w1_163a_0_34)
       (not (not_occupied seg_w1_163a_0_34)) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (at-segment ?a seg_w1_163a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_162a_0_34 ?a)) (not_blocked seg_w1_162a_0_34 ?a)
       (not (blocked seg_w1_162b_0_45 ?a)) (not_blocked seg_w1_162b_0_45 ?a)))
 (:action
  ugly29815ugly30518ugly29460ugly29899ugly30532ugly819ugly58ugly21ugly1121park_seg_p162_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p162_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p162_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_162b_0_45 ?a)) (not_blocked seg_w1_162b_0_45 ?a)))
 (:action
  ugly29816ugly29379ugly29635ugly29705ugly30365ugly27ugly1069ugly810ugly4startup_seg_m_a9b_0_60_south_medium
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
  ugly29817ugly29367ugly29606ugly30392ugly30508ugly565ugly1096ugly1122ugly971move_seg_o1_102a_0_34_seg_o1_102c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_102c_0_34 airplane_daew8)
       (not_blocked seg_o1_102c_0_34 airplane_daew3)
       (not_blocked seg_o1_102c_0_34 airplane_cfbe2)
       (not_occupied seg_o1_102b_0_60))
  :effect
  (and (not (occupied seg_o1_102a_0_34)) (not_occupied seg_o1_102a_0_34)
       (not (at-segment ?a seg_o1_102a_0_34)) (occupied seg_o1_102c_0_34)
       (not (not_occupied seg_o1_102c_0_34)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a)) (at-segment ?a seg_o1_102c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c1b_0_34 ?a)) (not_blocked seg_o1_c1b_0_34 ?a)
       (blocked seg_o1_102b_0_60 ?a) (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action
  ugly29818ugly30238ugly30270ugly29989ugly29411ugly827ugly814ugly1124ugly245move_seg_s5_0_94_seg_s_b7a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s5_0_94) (not_occupied seg_s_b7a_0_60)
       (not_blocked seg_s_b7a_0_60 airplane_cfbeg)
       (not_blocked seg_s_b7a_0_60 airplane_cfbe1)
       (not_blocked seg_s_b7a_0_60 airplane_cfbe3)
       (not_blocked seg_s_b7a_0_60 airplane_daew8)
       (not_blocked seg_s_b7a_0_60 airplane_daew3)
       (not_blocked seg_s_b7a_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s5_0_94)) (not_occupied seg_s5_0_94)
       (not (at-segment ?a seg_s5_0_94)) (occupied seg_s_b7a_0_60)
       (not (not_occupied seg_s_b7a_0_60)) (blocked seg_s_b7a_0_60 ?a)
       (not (not_blocked seg_s_b7a_0_60 ?a)) (at-segment ?a seg_s_b7a_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c4c_0_60 ?a)) (not_blocked seg_w1_c4c_0_60 ?a)))
 (:action
  ugly29819ugly29541ugly30408ugly29466ugly29512ugly959ugly1024ugly53ugly892move_seg_s_b3b4c_0_140_seg_s_b3b4b_0_140_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b3b4c_0_140) (not_occupied seg_s_b3b4b_0_140)
       (not_blocked seg_s_b3b4b_0_140 airplane_cfbeg)
       (not_blocked seg_s_b3b4b_0_140 airplane_cfbe1)
       (not_blocked seg_s_b3b4b_0_140 airplane_cfbe3)
       (not_blocked seg_s_b3b4b_0_140 airplane_daew8)
       (not_blocked seg_s_b3b4b_0_140 airplane_daew3)
       (not_blocked seg_s_b3b4b_0_140 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b3b4c_0_140)) (not_occupied seg_s_b3b4c_0_140)
       (not (at-segment ?a seg_s_b3b4c_0_140)) (occupied seg_s_b3b4b_0_140)
       (not (not_occupied seg_s_b3b4b_0_140)) (blocked seg_s_b3b4b_0_140 ?a)
       (not (not_blocked seg_s_b3b4b_0_140 ?a))
       (at-segment ?a seg_s_b3b4b_0_140) (not (blocked seg_s_b3b4d_0_140 ?a))
       (not_blocked seg_s_b3b4d_0_140 ?a)))
 (:action
  ugly29820ugly29303ugly29841ugly29845ugly29377ugly628ugly949ugly10ugly1083move_seg_w1_154a_0_34_seg_w1_154c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_154c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_154c_0_34 airplane_daew8)
       (not_blocked seg_w1_154c_0_34 airplane_daew3)
       (not_blocked seg_w1_154c_0_34 airplane_cfbe2)
       (not_occupied seg_w1_154b_0_45))
  :effect
  (and (not (occupied seg_w1_154a_0_34)) (not_occupied seg_w1_154a_0_34)
       (not (at-segment ?a seg_w1_154a_0_34)) (occupied seg_w1_154c_0_34)
       (not (not_occupied seg_w1_154c_0_34)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a)) (at-segment ?a seg_w1_154c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_153c_0_34 ?a)) (not_blocked seg_w1_153c_0_34 ?a)
       (blocked seg_w1_154b_0_45 ?a) (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action
  ugly29821ugly29240ugly30430ugly29669ugly30224ugly288ugly1351ugly841ugly197move_seg_o1_115c_0_34_seg_o1_115a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115c_0_34) (not_occupied seg_o1_115a_0_34)
       (not_blocked seg_o1_115a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_115a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_115a_0_34 airplane_daew8)
       (not_blocked seg_o1_115a_0_34 airplane_daew3)
       (not_blocked seg_o1_115a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_115b_0_60))
  :effect
  (and (not (occupied seg_o1_115c_0_34)) (not_occupied seg_o1_115c_0_34)
       (not (at-segment ?a seg_o1_115c_0_34)) (occupied seg_o1_115a_0_34)
       (not (not_occupied seg_o1_115a_0_34)) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (at-segment ?a seg_o1_115a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_116a_0_34 ?a)) (not_blocked seg_o1_116a_0_34 ?a)
       (blocked seg_o1_115b_0_60 ?a) (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action
  ugly29822ugly30362ugly29568ugly30496ugly30305ugly1344ugly420ugly738ugly743pushback_seg_o1_c1c_0_80_seg_c1_n2b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_c1_n2b_0_80)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbeg)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbe1)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbe3)
       (not_blocked seg_c1_n2b_0_80 airplane_daew8)
       (not_blocked seg_c1_n2b_0_80 airplane_daew3)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_c1c_0_80)) (not_occupied seg_o1_c1c_0_80)
       (not (blocked seg_o1_c1c_0_80 ?a)) (not_blocked seg_o1_c1c_0_80 ?a)
       (not (at-segment ?a seg_o1_c1c_0_80)) (occupied seg_c1_n2b_0_80)
       (not (not_occupied seg_c1_n2b_0_80)) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a)) (at-segment ?a seg_c1_n2b_0_80)
       (not (facing ?a north)) (facing ?a south)))
 (:action
  ugly29823ugly30284ugly29654ugly30469ugly30124ugly28ugly373ugly652ugly426startup_seg_m_a6a8d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8d_0_75)
       (not_occupied seg_m_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8e_0_75 ?a)
       (not (not_blocked seg_m_a6a8e_0_75 ?a))))
 (:action
  ugly29824ugly29264ugly30283ugly29202ugly29634ugly1309ugly1006ugly1144ugly715startup_seg_s_b9b10c_0_84_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_0_84)
       (not_occupied seg_s_b9b10c_2_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_2_0_83 ?a)
       (not (not_blocked seg_s_b9b10c_2_0_83 ?a))))
 (:action
  ugly29825ugly29441ugly29717ugly29593ugly30316ugly1085ugly844ugly501ugly969startup_seg_n_n2a4b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4b_0_75)
       (not_occupied seg_n_n2a4a_0_70))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4a_0_70 ?a)
       (not (not_blocked seg_n_n2a4a_0_70 ?a))))
 (:action
  ugly29826ugly29982ugly29364ugly29327ugly30393ugly971ugly258ugly511ugly301move_seg_w1_141a_0_34_seg_w1_c1c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_c1c_0_34)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_c1c_0_34 airplane_daew8)
       (not_blocked seg_w1_c1c_0_34 airplane_daew3)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_141a_0_34)) (not_occupied seg_w1_141a_0_34)
       (not (at-segment ?a seg_w1_141a_0_34)) (occupied seg_w1_c1c_0_34)
       (not (not_occupied seg_w1_c1c_0_34)) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a)) (at-segment ?a seg_w1_c1c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_141b_0_45 ?a)) (not_blocked seg_w1_141b_0_45 ?a)
       (not (blocked seg_w1_141c_0_34 ?a)) (not_blocked seg_w1_141c_0_34 ?a)))
 (:action
  ugly29827ugly29583ugly29658ugly29476ugly29573ugly686ugly39ugly1359ugly684move_seg_n_a8c_0_60_seg_n_a6a8f_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a8c_0_60) (not_occupied seg_n_a6a8f_0_75)
       (not_blocked seg_n_a6a8f_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8f_0_75 airplane_cfbe1)
       (not_blocked seg_n_a6a8f_0_75 airplane_cfbe3)
       (not_blocked seg_n_a6a8f_0_75 airplane_daew8)
       (not_blocked seg_n_a6a8f_0_75 airplane_daew3)
       (not_blocked seg_n_a6a8f_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a8c_0_60)) (not_occupied seg_n_a8c_0_60)
       (not (at-segment ?a seg_n_a8c_0_60)) (occupied seg_n_a6a8f_0_75)
       (not (not_occupied seg_n_a6a8f_0_75)) (blocked seg_n_a6a8f_0_75 ?a)
       (not (not_blocked seg_n_a6a8f_0_75 ?a)) (at-segment ?a seg_n_a6a8f_0_75)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_n_a8a_0_60 ?a)) (not_blocked seg_n_a8a_0_60 ?a)
       (not (blocked seg_n_a8b_0_60 ?a)) (not_blocked seg_n_a8b_0_60 ?a)))
 (:action
  ugly29828ugly29579ugly30419ugly29209ugly29380ugly1065ugly946ugly866ugly382startup_seg_a2_a_0_90_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_a_0_90)
       (not_occupied seg_a2_b_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_b_0_90 ?a)
       (not (not_blocked seg_a2_b_0_90 ?a))))
 (:action
  ugly29829ugly30317ugly29435ugly30483ugly30013ugly1014ugly502ugly677ugly589move_seg_n_a2a3d_0_75_seg_n_a2a3c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3d_0_75) (not_occupied seg_n_a2a3c_0_75)
       (not_blocked seg_n_a2a3c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3c_0_75 airplane_cfbe1)
       (not_blocked seg_n_a2a3c_0_75 airplane_cfbe3)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew8)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew3)
       (not_blocked seg_n_a2a3c_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a2a3d_0_75)) (not_occupied seg_n_a2a3d_0_75)
       (not (at-segment ?a seg_n_a2a3d_0_75)) (occupied seg_n_a2a3c_0_75)
       (not (not_occupied seg_n_a2a3c_0_75)) (blocked seg_n_a2a3c_0_75 ?a)
       (not (not_blocked seg_n_a2a3c_0_75 ?a)) (at-segment ?a seg_n_a2a3c_0_75)
       (not (blocked seg_n_a2a3e_0_75 ?a)) (not_blocked seg_n_a2a3e_0_75 ?a)))
 (:action
  ugly29830ugly29294ugly29796ugly29905ugly30233ugly1207ugly284ugly103ugly1335startup_seg_t_b5b8a_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8a_0_135)
       (not_occupied seg_t_b5b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b_0_60 ?a)
       (not (not_blocked seg_t_b5b_0_60 ?a))))
 (:action
  ugly29831ugly30094ugly30088ugly29580ugly29449ugly8ugly609ugly950ugly765move_seg_o1_111d_0_45_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111d_0_45) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_111c_0_34 airplane_daew8)
       (not_blocked seg_o1_111c_0_34 airplane_daew3)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe2)
       (not_occupied seg_o1_111a_0_34) (not_occupied seg_o1_111b_0_60))
  :effect
  (and (not (occupied seg_o1_111d_0_45)) (not_occupied seg_o1_111d_0_45)
       (not (at-segment ?a seg_o1_111d_0_45)) (occupied seg_o1_111c_0_34)
       (not (not_occupied seg_o1_111c_0_34)) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a)) (at-segment ?a seg_o1_111c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p134_0_75 ?a)) (not_blocked seg_p134_0_75 ?a)
       (blocked seg_o1_111a_0_34 ?a) (not (not_blocked seg_o1_111a_0_34 ?a))
       (blocked seg_o1_111b_0_60 ?a) (not (not_blocked seg_o1_111b_0_60 ?a))))
 (:action
  ugly29832ugly30095ugly29602ugly29481ugly29986ugly192ugly735ugly951ugly1086move_seg_w1_151a_0_34_seg_w1_c2c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_c2c_0_34)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_c2c_0_34 airplane_daew8)
       (not_blocked seg_w1_c2c_0_34 airplane_daew3)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_151a_0_34)) (not_occupied seg_w1_151a_0_34)
       (not (at-segment ?a seg_w1_151a_0_34)) (occupied seg_w1_c2c_0_34)
       (not (not_occupied seg_w1_c2c_0_34)) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a)) (at-segment ?a seg_w1_c2c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_151b_0_45 ?a)) (not_blocked seg_w1_151b_0_45 ?a)
       (not (blocked seg_w1_151c_0_34 ?a)) (not_blocked seg_w1_151c_0_34 ?a)))
 (:action
  ugly29833ugly29578ugly29976ugly29754ugly30450ugly1056ugly754ugly1291ugly1243park_seg_p117_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p117_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p117_0_76) (not (is-moving ?a))))
 (:action
  ugly29834ugly29564ugly30342ugly30376ugly29595ugly343ugly873ugly899ugly1295move_seg_o1_c3d_0_60_seg_o1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3d_0_60) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c3a_0_34 airplane_daew8)
       (not_blocked seg_o1_c3a_0_34 airplane_daew3)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_c3b_0_60) (not_occupied seg_o1_c3c_0_48))
  :effect
  (and (not (occupied seg_o1_c3d_0_60)) (not_occupied seg_o1_c3d_0_60)
       (not (at-segment ?a seg_o1_c3d_0_60)) (occupied seg_o1_c3a_0_34)
       (not (not_occupied seg_o1_c3a_0_34)) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a)) (at-segment ?a seg_o1_c3a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_c3_b_0_80 ?a)) (not_blocked seg_c3_b_0_80 ?a)
       (blocked seg_o1_c3b_0_60 ?a) (not (not_blocked seg_o1_c3b_0_60 ?a))
       (blocked seg_o1_c3c_0_48 ?a) (not (not_blocked seg_o1_c3c_0_48 ?a))))
 (:action
  ugly29835ugly29730ugly29664ugly29557ugly29228ugly566ugly468ugly1313ugly1101move_seg_o1_118a_0_34_seg_o1_118b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_118b_0_60)
       (not_blocked seg_o1_118b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_118b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_118b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_118b_0_60 airplane_daew8)
       (not_blocked seg_o1_118b_0_60 airplane_daew3)
       (not_blocked seg_o1_118b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (occupied seg_o1_118a_0_34)) (not_occupied seg_o1_118a_0_34)
       (not (at-segment ?a seg_o1_118a_0_34)) (occupied seg_o1_118b_0_60)
       (not (not_occupied seg_o1_118b_0_60)) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a)) (at-segment ?a seg_o1_118b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_117c_0_34 ?a)) (not_blocked seg_o1_117c_0_34 ?a)
       (blocked seg_o1_118c_0_34 ?a) (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action
  ugly29836ugly30290ugly29696ugly29399ugly30033ugly743ugly442ugly758ugly1356startup_seg_n_a2a3b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3b_0_75)
       (not_occupied seg_n_a2a3a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3a_0_75 ?a)
       (not (not_blocked seg_n_a2a3a_0_75 ?a))))
 (:action
  ugly29837ugly30437ugly30480ugly29889ugly30075ugly206ugly548ugly557ugly636move_seg_w1_161c_0_34_seg_w1_162a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161c_0_34) (not_occupied seg_w1_162a_0_34)
       (not_blocked seg_w1_162a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_162a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_162a_0_34 airplane_daew8)
       (not_blocked seg_w1_162a_0_34 airplane_daew3)
       (not_blocked seg_w1_162a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_161c_0_34)) (not_occupied seg_w1_161c_0_34)
       (not (at-segment ?a seg_w1_161c_0_34)) (occupied seg_w1_162a_0_34)
       (not (not_occupied seg_w1_162a_0_34)) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (at-segment ?a seg_w1_162a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_161a_0_34 ?a)) (not_blocked seg_w1_161a_0_34 ?a)
       (not (blocked seg_w1_161b_0_45 ?a)) (not_blocked seg_w1_161b_0_45 ?a)))
 (:action
  ugly29838ugly29913ugly30351ugly29527ugly29656ugly314ugly278ugly836ugly905move_seg_w1_161a_0_34_seg_w1_161b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_161b_0_45)
       (not_blocked seg_w1_161b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_161b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_161b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_161b_0_45 airplane_daew8)
       (not_blocked seg_w1_161b_0_45 airplane_daew3)
       (not_blocked seg_w1_161b_0_45 airplane_cfbe2)
       (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (occupied seg_w1_161a_0_34)) (not_occupied seg_w1_161a_0_34)
       (not (at-segment ?a seg_w1_161a_0_34)) (occupied seg_w1_161b_0_45)
       (not (not_occupied seg_w1_161b_0_45)) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a)) (at-segment ?a seg_w1_161b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c3c_0_48 ?a)) (not_blocked seg_w1_c3c_0_48 ?a)
       (blocked seg_w1_161c_0_34 ?a) (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action
  ugly29839ugly29213ugly29500ugly30501ugly29330ugly1356ugly1249ugly1057ugly396startup_seg_w1_c1c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1c_0_34)
       (not_occupied seg_w1_c1a_0_60) (not_occupied seg_w1_c1b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a)) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a))))
 (:action
  ugly29840ugly30100ugly29857ugly30082ugly29738ugly1047ugly144ugly579ugly1364startup_seg_c4_s6a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6a_0_80)
       (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action
  ugly29841ugly29845ugly29377ugly29811ugly29514ugly88ugly313ugly928ugly708startup_seg_n_a8a9a_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9a_0_85)
       (not_occupied seg_n_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9b_0_75 ?a)
       (not (not_blocked seg_n_a8a9b_0_75 ?a))))
 (:action
  ugly29842ugly30457ugly30198ugly30364ugly29983ugly1095ugly344ugly821ugly181move_seg_o1_104c_0_60_seg_o1_104b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104c_0_60) (not_occupied seg_o1_104b_0_60)
       (not_blocked seg_o1_104b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_104b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_104b_0_60 airplane_daew8)
       (not_blocked seg_o1_104b_0_60 airplane_daew3)
       (not_blocked seg_o1_104b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_104a_0_34))
  :effect
  (and (not (occupied seg_o1_104c_0_60)) (not_occupied seg_o1_104c_0_60)
       (not (at-segment ?a seg_o1_104c_0_60)) (occupied seg_o1_104b_0_60)
       (not (not_occupied seg_o1_104b_0_60)) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a)) (at-segment ?a seg_o1_104b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c2a_0_60 ?a)) (not_blocked seg_o1_c2a_0_60 ?a)
       (blocked seg_o1_104a_0_34 ?a) (not (not_blocked seg_o1_104a_0_34 ?a))))
 (:action
  ugly29843ugly30245ugly29370ugly30195ugly30435ugly897ugly919ugly15ugly1212startup_seg_n_a9c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9c_0_60)
       (not_occupied seg_n_a9a_0_60) (not_occupied seg_n_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a)) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a))))
 (:action
  ugly29844ugly30333ugly30326ugly29353ugly30157ugly544ugly745ugly44ugly190startup_seg_n_a4a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a_0_60)
       (not_occupied seg_n_a4b_0_60) (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a)) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action
  ugly29845ugly29377ugly29811ugly29514ugly29271ugly257ugly1068ugly1126ugly285move_seg_w1_163b_0_45_seg_w1_163c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163b_0_45) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_163c_0_34 airplane_daew8)
       (not_blocked seg_w1_163c_0_34 airplane_daew3)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe2)
       (not_occupied seg_w1_163a_0_34))
  :effect
  (and (not (occupied seg_w1_163b_0_45)) (not_occupied seg_w1_163b_0_45)
       (not (at-segment ?a seg_w1_163b_0_45)) (occupied seg_w1_163c_0_34)
       (not (not_occupied seg_w1_163c_0_34)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a)) (at-segment ?a seg_w1_163c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p163_0_75 ?a)) (not_blocked seg_p163_0_75 ?a)
       (blocked seg_w1_163a_0_34 ?a) (not (not_blocked seg_w1_163a_0_34 ?a))))
 (:action
  ugly29846ugly30134ugly30085ugly30019ugly29941ugly1036ugly497ugly366ugly711startup_seg_o1_118c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118c_0_34)
       (not_occupied seg_o1_c4a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a))))
 (:action
  ugly29847ugly29442ugly29761ugly29933ugly30050ugly357ugly604ugly767ugly1310move_seg_s_b4a_0_60_seg_s_b4c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b4a_0_60) (not_occupied seg_s_b4c_0_60)
       (not_blocked seg_s_b4c_0_60 airplane_cfbeg)
       (not_blocked seg_s_b4c_0_60 airplane_cfbe1)
       (not_blocked seg_s_b4c_0_60 airplane_cfbe3)
       (not_blocked seg_s_b4c_0_60 airplane_daew8)
       (not_blocked seg_s_b4c_0_60 airplane_daew3)
       (not_blocked seg_s_b4c_0_60 airplane_cfbe2)
       (not_occupied seg_s_b4b_0_60))
  :effect
  (and (not (occupied seg_s_b4a_0_60)) (not_occupied seg_s_b4a_0_60)
       (not (at-segment ?a seg_s_b4a_0_60)) (occupied seg_s_b4c_0_60)
       (not (not_occupied seg_s_b4c_0_60)) (blocked seg_s_b4c_0_60 ?a)
       (not (not_blocked seg_s_b4c_0_60 ?a)) (at-segment ?a seg_s_b4c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_s_b4b6a_0_135 ?a)) (not_blocked seg_s_b4b6a_0_135 ?a)
       (blocked seg_s_b4b_0_60 ?a) (not (not_blocked seg_s_b4b_0_60 ?a))))
 (:action
  ugly29848ugly29932ugly29960ugly30269ugly29694ugly290ugly149ugly901ugly1221pushback_seg_p101_0_76_seg_o1_c1a_0_60_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p101_0_76) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c1a_0_60 airplane_daew8)
       (not_blocked seg_o1_c1a_0_60 airplane_daew3)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p101_0_76)) (not_occupied seg_p101_0_76)
       (not (blocked seg_p101_0_76 ?a)) (not_blocked seg_p101_0_76 ?a)
       (not (at-segment ?a seg_p101_0_76)) (occupied seg_o1_c1a_0_60)
       (not (not_occupied seg_o1_c1a_0_60)) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (at-segment ?a seg_o1_c1a_0_60)))
 (:action
  ugly29849ugly30322ugly29480ugly29461ugly30355ugly1114ugly843ugly1044ugly994startup_seg_w1_c1a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1a_0_60)
       (not_occupied seg_n1_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_0_108 ?a)
       (not (not_blocked seg_n1_0_108 ?a))))
 (:action
  ugly29850ugly29786ugly29680ugly29721ugly30348ugly1357ugly507ugly982ugly921startup_seg_m_a7a6b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6b_0_75)
       (not_occupied seg_m_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6c_0_75 ?a)
       (not (not_blocked seg_m_a7a6c_0_75 ?a))))
 (:action
  ugly29851ugly29619ugly30536ugly30534ugly29542ugly1359ugly684ugly157ugly135startup_seg_p117_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p117_0_76)
       (not_occupied seg_o1_117b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a))))
 (:action
  ugly29852ugly29570ugly30300ugly29590ugly30312ugly948ugly913ugly116ugly1074startup_seg_08l_a7c_0_161_245_south_medium
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
  ugly29853ugly29729ugly29978ugly29922ugly30462ugly337ugly127ugly1281ugly87move_seg_o1_111a_0_34_seg_o1_111d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111d_0_45)
       (not_blocked seg_o1_111d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_111d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_111d_0_45 airplane_cfbe3)
       (not_blocked seg_o1_111d_0_45 airplane_daew8)
       (not_blocked seg_o1_111d_0_45 airplane_daew3)
       (not_blocked seg_o1_111d_0_45 airplane_cfbe2)
       (not_occupied seg_o1_111b_0_60) (not_occupied seg_o1_111c_0_34))
  :effect
  (and (not (occupied seg_o1_111a_0_34)) (not_occupied seg_o1_111a_0_34)
       (not (at-segment ?a seg_o1_111a_0_34)) (occupied seg_o1_111d_0_45)
       (not (not_occupied seg_o1_111d_0_45)) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a)) (at-segment ?a seg_o1_111d_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_110c_0_34 ?a)) (not_blocked seg_o1_110c_0_34 ?a)
       (blocked seg_o1_111b_0_60 ?a) (not (not_blocked seg_o1_111b_0_60 ?a))
       (blocked seg_o1_111c_0_34 ?a) (not (not_blocked seg_o1_111c_0_34 ?a))))
 (:action
  ugly29854ugly29245ugly29714ugly29791ugly30241ugly1245ugly643ugly820ugly783startup_seg_b3_a_0_156_924_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_a_0_156_924)
       (not_occupied seg_08r_b3c_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b3c_0_161_245 ?a)
       (not (not_blocked seg_08r_b3c_0_161_245 ?a))))
 (:action
  ugly29855ugly29938ugly30314ugly29317ugly30101ugly427ugly907ugly650ugly653startup_seg_t_b4b6b_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6b_0_135)
       (not_occupied seg_t_b4b6a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6a_0_135 ?a)
       (not (not_blocked seg_t_b4b6a_0_135 ?a))))
 (:action
  ugly29856ugly30545ugly29270ugly29538ugly29484ugly446ugly1132ugly526ugly280move_seg_t_b8c_0_120_934_seg_t_b8a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_t_b8c_0_120_934) (not_occupied seg_t_b8a_0_60)
       (not_blocked seg_t_b8a_0_60 airplane_cfbeg)
       (not_blocked seg_t_b8a_0_60 airplane_cfbe1)
       (not_blocked seg_t_b8a_0_60 airplane_cfbe3)
       (not_blocked seg_t_b8a_0_60 airplane_daew8)
       (not_blocked seg_t_b8a_0_60 airplane_daew3)
       (not_blocked seg_t_b8a_0_60 airplane_cfbe2)
       (not_occupied seg_t_b8b_0_60) (not_occupied seg_t_b8d_0_60))
  :effect
  (and (not (occupied seg_t_b8c_0_120_934)) (not_occupied seg_t_b8c_0_120_934)
       (not (at-segment ?a seg_t_b8c_0_120_934)) (occupied seg_t_b8a_0_60)
       (not (not_occupied seg_t_b8a_0_60)) (blocked seg_t_b8a_0_60 ?a)
       (not (not_blocked seg_t_b8a_0_60 ?a)) (at-segment ?a seg_t_b8a_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_b8_b_0_80_6226 ?a))
       (not_blocked seg_b8_b_0_80_6226 ?a) (blocked seg_t_b8b_0_60 ?a)
       (not (not_blocked seg_t_b8b_0_60 ?a)) (blocked seg_t_b8d_0_60 ?a)
       (not (not_blocked seg_t_b8d_0_60 ?a))))
 (:action
  ugly29857ugly30082ugly29738ugly30230ugly30246ugly246ugly231ugly1205ugly694startup_seg_c1_n2b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2b_0_80)
       (not_occupied seg_c1_n2a_0_60) (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a)) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action
  ugly29858ugly30418ugly30079ugly29475ugly29951ugly697ugly867ugly778ugly134move_seg_08l_a7d_0_80_seg_08l_a7a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a7d_0_80) (not_occupied seg_08l_a7a_0_80)
       (not_blocked seg_08l_a7a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a7a_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a7a_0_80 airplane_cfbe3)
       (not_blocked seg_08l_a7a_0_80 airplane_daew8)
       (not_blocked seg_08l_a7a_0_80 airplane_daew3)
       (not_blocked seg_08l_a7a_0_80 airplane_cfbe2)
       (not_occupied seg_08l_a7b_0_161_245)
       (not_occupied seg_08l_a7c_0_161_245) (not_occupied seg_08l_a2a_0_80)
       (not_occupied seg_09l_0_80))
  :effect
  (and (not (occupied seg_08l_a7d_0_80)) (not_occupied seg_08l_a7d_0_80)
       (not (at-segment ?a seg_08l_a7d_0_80)) (occupied seg_08l_a7a_0_80)
       (not (not_occupied seg_08l_a7a_0_80)) (blocked seg_08l_a7a_0_80 ?a)
       (not (not_blocked seg_08l_a7a_0_80 ?a)) (at-segment ?a seg_08l_a7a_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_08l_a6a7_0_450 ?a))
       (not_blocked seg_08l_a6a7_0_450 ?a) (blocked seg_08l_a7b_0_161_245 ?a)
       (not (not_blocked seg_08l_a7b_0_161_245 ?a))
       (blocked seg_08l_a7c_0_161_245 ?a)
       (not (not_blocked seg_08l_a7c_0_161_245 ?a))
       (blocked seg_08l_a2a_0_80 ?a) (not (not_blocked seg_08l_a2a_0_80 ?a))
       (blocked seg_09l_0_80 ?a) (not (not_blocked seg_09l_0_80 ?a))))
 (:action
  ugly29859ugly30306ugly29671ugly30338ugly29687ugly991ugly1239ugly619ugly1226move_seg_w1_142c_0_34_seg_w1_142a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142c_0_34) (not_occupied seg_w1_142a_0_34)
       (not_blocked seg_w1_142a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_142a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_142a_0_34 airplane_daew8)
       (not_blocked seg_w1_142a_0_34 airplane_daew3)
       (not_blocked seg_w1_142a_0_34 airplane_cfbe2)
       (not_occupied seg_w1_142b_0_45))
  :effect
  (and (not (occupied seg_w1_142c_0_34)) (not_occupied seg_w1_142c_0_34)
       (not (at-segment ?a seg_w1_142c_0_34)) (occupied seg_w1_142a_0_34)
       (not (not_occupied seg_w1_142a_0_34)) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (at-segment ?a seg_w1_142a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_143a_0_34 ?a)) (not_blocked seg_w1_143a_0_34 ?a)
       (blocked seg_w1_142b_0_45 ?a) (not (not_blocked seg_w1_142b_0_45 ?a))))
 (:action
  ugly29860ugly29545ugly29818ugly30238ugly30270ugly806ugly1017ugly128ugly200startup_seg_m_a3a4e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4e_0_75)
       (not_occupied seg_m_a3a4f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4f_0_115 ?a)
       (not (not_blocked seg_m_a3a4f_0_115 ?a))))
 (:action
  ugly29861ugly29394ugly30145ugly29232ugly29187ugly1017ugly128ugly200ugly1112startup_seg_o1_118a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118a_0_34)
       (not_occupied seg_o1_118b_0_60) (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action
  ugly29862ugly29307ugly30156ugly29458ugly30346ugly792ugly416ugly50ugly357startup_seg_t_b9c_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9c_0_120_934)
       (not_occupied seg_b9_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_b_0_80_6226 ?a)
       (not (not_blocked seg_b9_b_0_80_6226 ?a))))
 (:action
  ugly29863ugly29535ugly30427ugly30550ugly30149ugly320ugly430ugly1288ugly569startup_seg_c2_b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_b_0_80)
       (not_occupied seg_c2_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_a_0_80 ?a)
       (not (not_blocked seg_c2_a_0_80 ?a))))
 (:action
  ugly29864ugly29279ugly30055ugly29804ugly29407ugly33ugly234ugly1227ugly269move_seg_08r_b6c_0_80_seg_08r_b6b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08r_b6c_0_80) (not_occupied seg_08r_b6b_0_80)
       (not_blocked seg_08r_b6b_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b6b_0_80 airplane_cfbe1)
       (not_blocked seg_08r_b6b_0_80 airplane_cfbe3)
       (not_blocked seg_08r_b6b_0_80 airplane_daew8)
       (not_blocked seg_08r_b6b_0_80 airplane_daew3)
       (not_blocked seg_08r_b6b_0_80 airplane_cfbe2)
       (not_occupied seg_08r_b6a_0_161_245)
       (not_occupied seg_08r_b6d_0_161_245))
  :effect
  (and (not (occupied seg_08r_b6c_0_80)) (not_occupied seg_08r_b6c_0_80)
       (not (at-segment ?a seg_08r_b6c_0_80)) (occupied seg_08r_b6b_0_80)
       (not (not_occupied seg_08r_b6b_0_80)) (blocked seg_08r_b6b_0_80 ?a)
       (not (not_blocked seg_08r_b6b_0_80 ?a)) (at-segment ?a seg_08r_b6b_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_08r_b4b6_0_360 ?a))
       (not_blocked seg_08r_b4b6_0_360 ?a) (blocked seg_08r_b6a_0_161_245 ?a)
       (not (not_blocked seg_08r_b6a_0_161_245 ?a))
       (blocked seg_08r_b6d_0_161_245 ?a)
       (not (not_blocked seg_08r_b6d_0_161_245 ?a))))
 (:action
  ugly29865ugly30318ugly29985ugly29439ugly30454ugly877ugly660ugly975ugly1259move_seg_n1_0_108_seg_n_a3c_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n1_0_108) (not_occupied seg_n_a3c_0_60)
       (not_blocked seg_n_a3c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a3c_0_60 airplane_cfbe1)
       (not_blocked seg_n_a3c_0_60 airplane_cfbe3)
       (not_blocked seg_n_a3c_0_60 airplane_daew8)
       (not_blocked seg_n_a3c_0_60 airplane_daew3)
       (not_blocked seg_n_a3c_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n1_0_108)) (not_occupied seg_n1_0_108)
       (not (at-segment ?a seg_n1_0_108)) (occupied seg_n_a3c_0_60)
       (not (not_occupied seg_n_a3c_0_60)) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a)) (at-segment ?a seg_n_a3c_0_60)
       (not (blocked seg_w1_c1a_0_60 ?a)) (not_blocked seg_w1_c1a_0_60 ?a)))
 (:action
  ugly29866ugly29988ugly29630ugly29821ugly29240ugly1247ugly1307ugly138ugly1358move_seg_w1_161b_0_45_seg_w1_161a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161b_0_45) (not_occupied seg_w1_161a_0_34)
       (not_blocked seg_w1_161a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_161a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_161a_0_34 airplane_daew8)
       (not_blocked seg_w1_161a_0_34 airplane_daew3)
       (not_blocked seg_w1_161a_0_34 airplane_cfbe2)
       (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (occupied seg_w1_161b_0_45)) (not_occupied seg_w1_161b_0_45)
       (not (at-segment ?a seg_w1_161b_0_45)) (occupied seg_w1_161a_0_34)
       (not (not_occupied seg_w1_161a_0_34)) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (at-segment ?a seg_w1_161a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p161_0_75 ?a)) (not_blocked seg_p161_0_75 ?a)
       (blocked seg_w1_161c_0_34 ?a) (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action
  ugly29867ugly29959ugly29517ugly29977ugly29900ugly1146ugly1001ugly1242ugly885startup_seg_t_b6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b_0_60)
       (not_occupied seg_t_b6b7a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b7a_0_140 ?a)
       (not (not_blocked seg_t_b6b7a_0_140 ?a))))
 (:action
  ugly29868ugly29673ugly29276ugly29775ugly30359ugly923ugly1042ugly880ugly1100move_seg_o1_115c_0_34_seg_o1_116a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115c_0_34) (not_occupied seg_o1_116a_0_34)
       (not_blocked seg_o1_116a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_116a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_116a_0_34 airplane_daew8)
       (not_blocked seg_o1_116a_0_34 airplane_daew3)
       (not_blocked seg_o1_116a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_115c_0_34)) (not_occupied seg_o1_115c_0_34)
       (not (at-segment ?a seg_o1_115c_0_34)) (occupied seg_o1_116a_0_34)
       (not (not_occupied seg_o1_116a_0_34)) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (at-segment ?a seg_o1_116a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_115a_0_34 ?a)) (not_blocked seg_o1_115a_0_34 ?a)
       (not (blocked seg_o1_115b_0_60 ?a)) (not_blocked seg_o1_115b_0_60 ?a)))
 (:action
  ugly29869ugly29997ugly29589ugly30211ugly29322ugly1192ugly1188ugly1316ugly627startup_seg_o1_109a_0_34_south_medium
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
  ugly29870ugly29828ugly29579ugly30419ugly29209ugly197ugly303ugly811ugly864startup_seg_n2_0_108_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_0_108)
       (not_occupied seg_n_n2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a))))
 (:action
  ugly29871ugly29586ugly29425ugly30549ugly30505ugly1074ugly1081ugly28ugly373startup_seg_s_b4a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4a_0_60)
       (not_occupied seg_s_b4b6a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6a_0_135 ?a)
       (not (not_blocked seg_s_b4b6a_0_135 ?a))))
 (:action
  ugly29872ugly30360ugly30192ugly30403ugly29241ugly233ugly470ugly37ugly620move_seg_o1_c4b_0_60_seg_o1_c4a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4b_0_60) (not_occupied seg_o1_c4a_0_34)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c4a_0_34 airplane_daew8)
       (not_blocked seg_o1_c4a_0_34 airplane_daew3)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (occupied seg_o1_c4b_0_60)) (not_occupied seg_o1_c4b_0_60)
       (not (at-segment ?a seg_o1_c4b_0_60)) (occupied seg_o1_c4a_0_34)
       (not (not_occupied seg_o1_c4a_0_34)) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (at-segment ?a seg_o1_c4a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p119_0_76 ?a)) (not_blocked seg_p119_0_76 ?a)
       (blocked seg_o1_c4c_0_80 ?a) (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action
  ugly29873ugly30252ugly29224ugly30455ugly30129ugly883ugly95ugly1176ugly647move_seg_08r_b3b4_0_520_seg_08r_b4c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b3b4_0_520) (not_occupied seg_08r_b4c_0_80)
       (not_blocked seg_08r_b4c_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b4c_0_80 airplane_cfbe1)
       (not_blocked seg_08r_b4c_0_80 airplane_cfbe3)
       (not_blocked seg_08r_b4c_0_80 airplane_daew8)
       (not_blocked seg_08r_b4c_0_80 airplane_daew3)
       (not_blocked seg_08r_b4c_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_08r_b3b4_0_520)) (not_occupied seg_08r_b3b4_0_520)
       (not (at-segment ?a seg_08r_b3b4_0_520)) (occupied seg_08r_b4c_0_80)
       (not (not_occupied seg_08r_b4c_0_80)) (blocked seg_08r_b4c_0_80 ?a)
       (not (not_blocked seg_08r_b4c_0_80 ?a)) (at-segment ?a seg_08r_b4c_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_08r_b3a_0_80 ?a)) (not_blocked seg_08r_b3a_0_80 ?a)
       (not (blocked seg_08r_b2b_0_80 ?a)) (not_blocked seg_08r_b2b_0_80 ?a)
       (not (blocked seg_08r_0_80 ?a)) (not_blocked seg_08r_0_80 ?a)))
 (:action
  ugly29874ugly30011ugly30515ugly29280ugly30118ugly1258ugly1338ugly2ugly1187move_seg_o1_c3c_0_48_seg_o1_115a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3c_0_48) (not_occupied seg_o1_115a_0_34)
       (not_blocked seg_o1_115a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_115a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_115a_0_34 airplane_daew8)
       (not_blocked seg_o1_115a_0_34 airplane_daew3)
       (not_blocked seg_o1_115a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_c3c_0_48)) (not_occupied seg_o1_c3c_0_48)
       (not (at-segment ?a seg_o1_c3c_0_48)) (occupied seg_o1_115a_0_34)
       (not (not_occupied seg_o1_115a_0_34)) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (at-segment ?a seg_o1_115a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c3a_0_34 ?a)) (not_blocked seg_o1_c3a_0_34 ?a)
       (not (blocked seg_o1_c3b_0_60 ?a)) (not_blocked seg_o1_c3b_0_60 ?a)
       (not (blocked seg_o1_c3d_0_60 ?a)) (not_blocked seg_o1_c3d_0_60 ?a)))
 (:action
  ugly29875ugly29803ugly29516ugly29777ugly29904ugly477ugly198ugly929ugly1236startup_seg_a4_b_0_79_7559_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_0_79_7559)
       (not_occupied seg_a4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a4_b_1_0_80_6226 ?a))))
 (:action
  ugly29876ugly30414ugly29893ugly29214ugly30280ugly957ugly1203ugly702ugly1003startup_seg_n_a6b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6b_0_60)
       (not_occupied seg_n_a6a_0_60) (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a)) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action
  ugly29877ugly30218ugly30405ugly29386ugly30210ugly870ugly1289ugly1040ugly5move_seg_o1_c2a_0_60_seg_o1_104c_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_cfbe1)
       (not_blocked seg_o1_104c_0_60 airplane_cfbe3)
       (not_blocked seg_o1_104c_0_60 airplane_daew8)
       (not_blocked seg_o1_104c_0_60 airplane_daew3)
       (not_blocked seg_o1_104c_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_c2a_0_60)) (not_occupied seg_o1_c2a_0_60)
       (not (at-segment ?a seg_o1_c2a_0_60)) (occupied seg_o1_104c_0_60)
       (not (not_occupied seg_o1_104c_0_60)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a)) (at-segment ?a seg_o1_104c_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c2b_0_60 ?a)) (not_blocked seg_o1_c2b_0_60 ?a)
       (not (blocked seg_o1_c2c_0_34 ?a)) (not_blocked seg_o1_c2c_0_34 ?a)
       (not (blocked seg_o1_c2d_0_60 ?a)) (not_blocked seg_o1_c2d_0_60 ?a)))
 (:action
  ugly29878ugly29225ugly29647ugly30201ugly30102ugly508ugly404ugly1026ugly528startup_seg_o1_c2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2b_0_60)
       (not_occupied seg_p107_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p107_0_76 ?a)
       (not (not_blocked seg_p107_0_76 ?a))))
 (:action
  ugly29879ugly30069ugly30150ugly30294ugly29291ugly167ugly747ugly1215ugly496startup_seg_b8_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_b_0_80_6226)
       (not_occupied seg_t_b8c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8c_0_120_934 ?a)
       (not (not_blocked seg_t_b8c_0_120_934 ?a))))
 (:action
  ugly29880ugly29603ugly29550ugly30138ugly29222ugly241ugly240ugly71ugly904startup_seg_m_a7a_0_120_934_south_medium
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
  ugly29881ugly29186ugly29731ugly30081ugly29256ugly1200ugly1265ugly598ugly418startup_seg_n_a4c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4c_0_60)
       (not_occupied seg_n_n2a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4e_0_75 ?a)
       (not (not_blocked seg_n_n2a4e_0_75 ?a))))
 (:action
  ugly29882ugly29404ugly29274ugly30481ugly30292ugly809ugly173ugly1123ugly1135startup_seg_m_a4a7f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7f_0_115)
       (not_occupied seg_m_a7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7d_0_60 ?a)
       (not (not_blocked seg_m_a7d_0_60 ?a))))
 (:action
  ugly29883ugly30123ugly29625ugly29657ugly30139ugly593ugly481ugly581ugly1195startup_seg_m_a9a10e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10e_0_75)
       (not_occupied seg_m_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10d_0_75 ?a)
       (not (not_blocked seg_m_a9a10d_0_75 ?a))))
 (:action
  ugly29884ugly30158ugly30041ugly29916ugly29192ugly676ugly943ugly917ugly509startup_seg_n_a9a10a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10a_0_80)
       (not_occupied seg_n_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10b_0_75 ?a)
       (not (not_blocked seg_n_a9a10b_0_75 ?a))))
 (:action
  ugly29885ugly29863ugly29535ugly30427ugly30550ugly966ugly253ugly571ugly1275move_seg_p101_0_76_seg_o1_c1a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p101_0_76) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c1a_0_60 airplane_daew8)
       (not_blocked seg_o1_c1a_0_60 airplane_daew3)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p101_0_76)) (not_occupied seg_p101_0_76)
       (not (at-segment ?a seg_p101_0_76)) (occupied seg_o1_c1a_0_60)
       (not (not_occupied seg_o1_c1a_0_60)) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (at-segment ?a seg_o1_c1a_0_60)))
 (:action
  ugly29886ugly30176ugly30097ugly30400ugly30042ugly487ugly523ugly988ugly77move_seg_o1_108d_0_45_seg_o1_108a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_108a_0_34 airplane_daew8)
       (not_blocked seg_o1_108a_0_34 airplane_daew3)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_108b_0_60) (not_occupied seg_o1_108c_0_34))
  :effect
  (and (not (occupied seg_o1_108d_0_45)) (not_occupied seg_o1_108d_0_45)
       (not (at-segment ?a seg_o1_108d_0_45)) (occupied seg_o1_108a_0_34)
       (not (not_occupied seg_o1_108a_0_34)) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a)) (at-segment ?a seg_o1_108a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p131_0_75 ?a)) (not_blocked seg_p131_0_75 ?a)
       (blocked seg_o1_108b_0_60 ?a) (not (not_blocked seg_o1_108b_0_60 ?a))
       (blocked seg_o1_108c_0_34 ?a) (not (not_blocked seg_o1_108c_0_34 ?a))))
 (:action
  ugly29887ugly29454ugly29901ugly29888ugly30416ugly434ugly257ugly1068ugly1126move_seg_o1_c4c_0_80_seg_c4_s6a_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4c_0_80) (not_occupied seg_c4_s6a_0_80)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbeg)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbe1)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbe3)
       (not_blocked seg_c4_s6a_0_80 airplane_daew8)
       (not_blocked seg_c4_s6a_0_80 airplane_daew3)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_c4c_0_80)) (not_occupied seg_o1_c4c_0_80)
       (not (at-segment ?a seg_o1_c4c_0_80)) (occupied seg_c4_s6a_0_80)
       (not (not_occupied seg_c4_s6a_0_80)) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a)) (at-segment ?a seg_c4_s6a_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c4a_0_34 ?a)) (not_blocked seg_o1_c4a_0_34 ?a)
       (not (blocked seg_o1_c4b_0_60 ?a)) (not_blocked seg_o1_c4b_0_60 ?a)))
 (:action
  ugly29888ugly30416ugly29617ugly30421ugly29253ugly516ugly870ugly1289ugly1040move_seg_w1_141a_0_34_seg_w1_141c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_141c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_141c_0_34 airplane_daew8)
       (not_blocked seg_w1_141c_0_34 airplane_daew3)
       (not_blocked seg_w1_141c_0_34 airplane_cfbe2)
       (not_occupied seg_w1_141b_0_45))
  :effect
  (and (not (occupied seg_w1_141a_0_34)) (not_occupied seg_w1_141a_0_34)
       (not (at-segment ?a seg_w1_141a_0_34)) (occupied seg_w1_141c_0_34)
       (not (not_occupied seg_w1_141c_0_34)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a)) (at-segment ?a seg_w1_141c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c1c_0_34 ?a)) (not_blocked seg_w1_c1c_0_34 ?a)
       (blocked seg_w1_141b_0_45 ?a) (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action
  ugly29889ugly30075ugly29389ugly29554ugly30111ugly1004ugly224ugly732ugly965startup_seg_t_b3b4b_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4b_0_140)
       (not_occupied seg_t_b3b4c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4c_0_140 ?a)
       (not (not_blocked seg_t_b3b4c_0_140 ?a))))
 (:action
  ugly29890ugly30148ugly30507ugly30005ugly30191ugly988ugly77ugly360ugly1266startup_seg_n_a9a10f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10f_0_75)
       (not_occupied seg_n_a9a10g_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10g_0_75 ?a)
       (not (not_blocked seg_n_a9a10g_0_75 ?a))))
 (:action
  ugly29891ugly30108ugly30340ugly29737ugly30059ugly1269ugly999ugly1308ugly547startup_seg_m_a4a7b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7b_0_75)
       (not_occupied seg_m_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7c_0_75 ?a)
       (not (not_blocked seg_m_a4a7c_0_75 ?a))))
 (:action
  ugly29892ugly29979ugly30214ugly29956ugly29553ugly35ugly189ugly1022ugly610startup_seg_n_a7a6c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6c_0_75)
       (not_occupied seg_n_a7a6d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6d_0_75 ?a)
       (not (not_blocked seg_n_a7a6d_0_75 ?a))))
 (:action
  ugly29893ugly29214ugly30280ugly30140ugly29543ugly595ugly675ugly255ugly1262startup_seg_s_b2b3c_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3c_0_140)
       (not_occupied seg_s_b2b3b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3b_0_140 ?a)
       (not (not_blocked seg_s_b2b3b_0_140 ?a))))
 (:action
  ugly29894ugly29584ugly29335ugly29485ugly29519ugly351ugly423ugly580ugly830startup_seg_m_a8b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8b_0_60)
       (not_occupied seg_n_a8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a))))
 (:action
  ugly29895ugly30445ugly29185ugly30155ugly29773ugly338ugly889ugly893ugly656startup_seg_a2_b_0_90_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_b_0_90)
       (not_occupied seg_a2_a_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_a_0_90 ?a)
       (not (not_blocked seg_a2_a_0_90 ?a))))
 (:action
  ugly29896ugly29732ugly29295ugly29248ugly29769ugly1340ugly152ugly1014ugly502startup_seg_s5_0_94_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s5_0_94)
       (not_occupied seg_w1_c4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4c_0_60 ?a)
       (not (not_blocked seg_w1_c4c_0_60 ?a))))
 (:action
  ugly29897ugly29700ugly29607ugly29787ugly30397ugly43ugly823ugly1353ugly175move_seg_08l_a9c_0_80_seg_09l_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a9c_0_80) (not_occupied seg_09l_0_80)
       (not_blocked seg_09l_0_80 airplane_cfbeg)
       (not_blocked seg_09l_0_80 airplane_cfbe1)
       (not_blocked seg_09l_0_80 airplane_cfbe3)
       (not_blocked seg_09l_0_80 airplane_daew8)
       (not_blocked seg_09l_0_80 airplane_daew3)
       (not_blocked seg_09l_0_80 airplane_cfbe2)
       (not_occupied seg_08l_a9b_0_161_245) (not_occupied seg_08l_a2a_0_80))
  :effect
  (and (not (occupied seg_08l_a9c_0_80)) (not_occupied seg_08l_a9c_0_80)
       (not (at-segment ?a seg_08l_a9c_0_80)) (occupied seg_09l_0_80)
       (not (not_occupied seg_09l_0_80)) (blocked seg_09l_0_80 ?a)
       (not (not_blocked seg_09l_0_80 ?a)) (at-segment ?a seg_09l_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_08l_a7a9_0_270 ?a))
       (not_blocked seg_08l_a7a9_0_270 ?a) (blocked seg_08l_a9b_0_161_245 ?a)
       (not (not_blocked seg_08l_a9b_0_161_245 ?a))
       (blocked seg_08l_a2a_0_80 ?a) (not (not_blocked seg_08l_a2a_0_80 ?a))))
 (:action
  ugly29898ugly30459ugly29970ugly29608ugly29413ugly68ugly521ugly333ugly1009move_seg_o1_116c_0_34_seg_o1_117a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116c_0_34) (not_occupied seg_o1_117a_0_34)
       (not_blocked seg_o1_117a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_117a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_117a_0_34 airplane_daew8)
       (not_blocked seg_o1_117a_0_34 airplane_daew3)
       (not_blocked seg_o1_117a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_116c_0_34)) (not_occupied seg_o1_116c_0_34)
       (not (at-segment ?a seg_o1_116c_0_34)) (occupied seg_o1_117a_0_34)
       (not (not_occupied seg_o1_117a_0_34)) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a)) (at-segment ?a seg_o1_117a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_116a_0_34 ?a)) (not_blocked seg_o1_116a_0_34 ?a)
       (not (blocked seg_o1_116b_0_60 ?a)) (not_blocked seg_o1_116b_0_60 ?a)))
 (:action
  ugly29899ugly30532ugly30002ugly29345ugly29957ugly90ugly119ugly703ugly842startup_seg_w1_161c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161c_0_34)
       (not_occupied seg_w1_161a_0_34) (not_occupied seg_w1_161b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a))))
 (:action
  ugly29900ugly30329ugly29813ugly29587ugly30347ugly532ugly206ugly548ugly557startup_seg_s_b2b3b_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3b_0_140)
       (not_occupied seg_s_b2b3c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3c_0_140 ?a)
       (not (not_blocked seg_s_b2b3c_0_140 ?a))))
 (:action
  ugly29901ugly29888ugly30416ugly29617ugly30421ugly70ugly365ugly268ugly1025startup_seg_m_a9c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9c_0_60)
       (not_occupied seg_m_a8a9d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9d_0_85 ?a)
       (not (not_blocked seg_m_a8a9d_0_85 ?a))))
 (:action
  ugly29902ugly30266ugly29243ugly29830ugly29294ugly613ugly1321ugly1191ugly1032move_seg_w1_153a_0_34_seg_w1_152c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_152c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_152c_0_34 airplane_daew8)
       (not_blocked seg_w1_152c_0_34 airplane_daew3)
       (not_blocked seg_w1_152c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_153a_0_34)) (not_occupied seg_w1_153a_0_34)
       (not (at-segment ?a seg_w1_153a_0_34)) (occupied seg_w1_152c_0_34)
       (not (not_occupied seg_w1_152c_0_34)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a)) (at-segment ?a seg_w1_152c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_153b_0_45 ?a)) (not_blocked seg_w1_153b_0_45 ?a)
       (not (blocked seg_w1_153c_0_34 ?a)) (not_blocked seg_w1_153c_0_34 ?a)))
 (:action
  ugly29903ugly29384ugly29304ugly29431ugly29561ugly1147ugly655ugly1160ugly563move_seg_08l_a3a_0_80_seg_08l_a3a4_0_450_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a3a_0_80) (not_occupied seg_08l_a3a4_0_450)
       (not_blocked seg_08l_a3a4_0_450 airplane_cfbeg)
       (not_blocked seg_08l_a3a4_0_450 airplane_cfbe1)
       (not_blocked seg_08l_a3a4_0_450 airplane_cfbe3)
       (not_blocked seg_08l_a3a4_0_450 airplane_daew8)
       (not_blocked seg_08l_a3a4_0_450 airplane_daew3)
       (not_blocked seg_08l_a3a4_0_450 airplane_cfbe2)
       (not_occupied seg_08l_a2a_0_80) (not_occupied seg_09l_0_80)
       (not_occupied seg_08l_a7a_0_80) (not_occupied seg_08l_a4a_0_80)
       (not_occupied seg_08l_0_80))
  :effect
  (and (not (occupied seg_08l_a3a_0_80)) (not_occupied seg_08l_a3a_0_80)
       (not (at-segment ?a seg_08l_a3a_0_80)) (occupied seg_08l_a3a4_0_450)
       (not (not_occupied seg_08l_a3a4_0_450)) (blocked seg_08l_a3a4_0_450 ?a)
       (not (not_blocked seg_08l_a3a4_0_450 ?a))
       (at-segment ?a seg_08l_a3a4_0_450)
       (not (blocked seg_08l_a3b_0_161_245 ?a))
       (not_blocked seg_08l_a3b_0_161_245 ?a) (blocked seg_08l_a2a_0_80 ?a)
       (not (not_blocked seg_08l_a2a_0_80 ?a)) (blocked seg_09l_0_80 ?a)
       (not (not_blocked seg_09l_0_80 ?a)) (blocked seg_08l_a7a_0_80 ?a)
       (not (not_blocked seg_08l_a7a_0_80 ?a)) (blocked seg_08l_a4a_0_80 ?a)
       (not (not_blocked seg_08l_a4a_0_80 ?a))))
 (:action
  ugly29904ugly29660ugly30458ugly29782ugly30301ugly467ugly471ugly875ugly720startup_seg_08l_a4b_0_161_245_south_medium
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
  ugly29905ugly30233ugly30390ugly29765ugly29980ugly997ugly1093ugly14ugly375move_seg_s_b3b4d_0_140_seg_s_b3b4c_0_140_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b3b4d_0_140) (not_occupied seg_s_b3b4c_0_140)
       (not_blocked seg_s_b3b4c_0_140 airplane_cfbeg)
       (not_blocked seg_s_b3b4c_0_140 airplane_cfbe1)
       (not_blocked seg_s_b3b4c_0_140 airplane_cfbe3)
       (not_blocked seg_s_b3b4c_0_140 airplane_daew8)
       (not_blocked seg_s_b3b4c_0_140 airplane_daew3)
       (not_blocked seg_s_b3b4c_0_140 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b3b4d_0_140)) (not_occupied seg_s_b3b4d_0_140)
       (not (at-segment ?a seg_s_b3b4d_0_140)) (occupied seg_s_b3b4c_0_140)
       (not (not_occupied seg_s_b3b4c_0_140)) (blocked seg_s_b3b4c_0_140 ?a)
       (not (not_blocked seg_s_b3b4c_0_140 ?a))
       (at-segment ?a seg_s_b3b4c_0_140) (not (blocked seg_s_b4c_0_60 ?a))
       (not_blocked seg_s_b4c_0_60 ?a)))
 (:action
  ugly29906ugly30386ugly30247ugly30331ugly30273ugly711ugly1038ugly522ugly476move_seg_c4_s6a_0_80_seg_c4_s6c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c4_s6a_0_80) (not_occupied seg_c4_s6c_0_60)
       (not_blocked seg_c4_s6c_0_60 airplane_cfbeg)
       (not_blocked seg_c4_s6c_0_60 airplane_cfbe1)
       (not_blocked seg_c4_s6c_0_60 airplane_cfbe3)
       (not_blocked seg_c4_s6c_0_60 airplane_daew8)
       (not_blocked seg_c4_s6c_0_60 airplane_daew3)
       (not_blocked seg_c4_s6c_0_60 airplane_cfbe2)
       (not_occupied seg_c4_s6b_0_60))
  :effect
  (and (not (occupied seg_c4_s6a_0_80)) (not_occupied seg_c4_s6a_0_80)
       (not (at-segment ?a seg_c4_s6a_0_80)) (occupied seg_c4_s6c_0_60)
       (not (not_occupied seg_c4_s6c_0_60)) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a)) (at-segment ?a seg_c4_s6c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c4c_0_80 ?a)) (not_blocked seg_o1_c4c_0_80 ?a)
       (blocked seg_c4_s6b_0_60 ?a) (not (not_blocked seg_c4_s6b_0_60 ?a))))
 (:action
  ugly29907ugly30407ugly29688ugly30194ugly29259ugly409ugly358ugly312ugly1306move_seg_n_n2a4c_0_75_seg_n_n2a4b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4c_0_75) (not_occupied seg_n_n2a4b_0_75)
       (not_blocked seg_n_n2a4b_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4b_0_75 airplane_cfbe1)
       (not_blocked seg_n_n2a4b_0_75 airplane_cfbe3)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew8)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew3)
       (not_blocked seg_n_n2a4b_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_n2a4c_0_75)) (not_occupied seg_n_n2a4c_0_75)
       (not (at-segment ?a seg_n_n2a4c_0_75)) (occupied seg_n_n2a4b_0_75)
       (not (not_occupied seg_n_n2a4b_0_75)) (blocked seg_n_n2a4b_0_75 ?a)
       (not (not_blocked seg_n_n2a4b_0_75 ?a)) (at-segment ?a seg_n_n2a4b_0_75)
       (not (blocked seg_n_n2a4d_0_75 ?a)) (not_blocked seg_n_n2a4d_0_75 ?a)))
 (:action
  ugly29908ugly29366ugly29708ugly30468ugly29668ugly798ugly505ugly578ugly1363move_seg_o1_c2a_0_60_seg_o1_c2c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_c2c_0_34)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c2c_0_34 airplane_daew8)
       (not_blocked seg_o1_c2c_0_34 airplane_daew3)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe2)
       (not_occupied seg_o1_c2b_0_60) (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (not (occupied seg_o1_c2a_0_60)) (not_occupied seg_o1_c2a_0_60)
       (not (at-segment ?a seg_o1_c2a_0_60)) (occupied seg_o1_c2c_0_34)
       (not (not_occupied seg_o1_c2c_0_34)) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a)) (at-segment ?a seg_o1_c2c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_104c_0_60 ?a)) (not_blocked seg_o1_104c_0_60 ?a)
       (blocked seg_o1_c2b_0_60 ?a) (not (not_blocked seg_o1_c2b_0_60 ?a))
       (blocked seg_o1_c2d_0_60 ?a) (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action
  ugly29909ugly29406ugly30512ugly30052ugly29537ugly63ugly1299ugly109ugly248move_seg_n_a7a6b_0_75_seg_n_a7a6a_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6b_0_75) (not_occupied seg_n_a7a6a_0_85)
       (not_blocked seg_n_a7a6a_0_85 airplane_cfbeg)
       (not_blocked seg_n_a7a6a_0_85 airplane_cfbe1)
       (not_blocked seg_n_a7a6a_0_85 airplane_cfbe3)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew8)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew3)
       (not_blocked seg_n_a7a6a_0_85 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a7a6b_0_75)) (not_occupied seg_n_a7a6b_0_75)
       (not (at-segment ?a seg_n_a7a6b_0_75)) (occupied seg_n_a7a6a_0_85)
       (not (not_occupied seg_n_a7a6a_0_85)) (blocked seg_n_a7a6a_0_85 ?a)
       (not (not_blocked seg_n_a7a6a_0_85 ?a)) (at-segment ?a seg_n_a7a6a_0_85)
       (not (blocked seg_n_a7a6c_0_75 ?a)) (not_blocked seg_n_a7a6c_0_75 ?a)))
 (:action
  ugly29910ugly29633ugly30182ugly29376ugly29624ugly1198ugly1298ugly993ugly121startup_seg_t_b9b10b_0_125_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10b_0_125)
       (not_occupied seg_t_b9b10a_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10a_0_125 ?a)
       (not (not_blocked seg_t_b9b10a_0_125 ?a))))
 (:action
  ugly29911ugly29282ugly29445ugly29365ugly29338ugly1121ugly839ugly203ugly1004move_seg_w1_154b_0_45_seg_w1_154c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154b_0_45) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_154c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_154c_0_34 airplane_daew8)
       (not_blocked seg_w1_154c_0_34 airplane_daew3)
       (not_blocked seg_w1_154c_0_34 airplane_cfbe2)
       (not_occupied seg_w1_154a_0_34))
  :effect
  (and (not (occupied seg_w1_154b_0_45)) (not_occupied seg_w1_154b_0_45)
       (not (at-segment ?a seg_w1_154b_0_45)) (occupied seg_w1_154c_0_34)
       (not (not_occupied seg_w1_154c_0_34)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a)) (at-segment ?a seg_w1_154c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p154_0_75 ?a)) (not_blocked seg_p154_0_75 ?a)
       (blocked seg_w1_154a_0_34 ?a) (not (not_blocked seg_w1_154a_0_34 ?a))))
 (:action
  ugly29912ugly30432ugly29509ugly30352ugly30436ugly1025ugly1208ugly384ugly9startup_seg_b10_1_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b10_1_0_80)
       (not_occupied seg_08r_b10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b10a_0_80 ?a)
       (not (not_blocked seg_08r_b10a_0_80 ?a))))
 (:action
  ugly29913ugly30351ugly29527ugly29656ugly29497ugly1032ugly137ugly1209ugly381startup_seg_t_b9a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9a_0_60)
       (not_occupied seg_s_b9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b_0_60 ?a)
       (not (not_blocked seg_s_b9b_0_60 ?a))))
 (:action
  ugly29914ugly30165ugly30141ugly29683ugly30023ugly764ugly1142ugly390ugly1159pushback_seg_o1_c1a_0_60_seg_o1_c1c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_o1_c1c_0_80)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe1)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe3)
       (not_blocked seg_o1_c1c_0_80 airplane_daew8)
       (not_blocked seg_o1_c1c_0_80 airplane_daew3)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_c1a_0_60)) (not_occupied seg_o1_c1a_0_60)
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)
       (not (at-segment ?a seg_o1_c1a_0_60)) (occupied seg_o1_c1c_0_80)
       (not (not_occupied seg_o1_c1c_0_80)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a)) (at-segment ?a seg_o1_c1c_0_80)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly29915ugly30212ugly29359ugly29843ugly30245ugly187ugly307ugly158ugly492startup_seg_o1_111d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111d_0_45)
       (not_occupied seg_p134_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p134_0_75 ?a)
       (not (not_blocked seg_p134_0_75 ?a))))
 (:action
  ugly29916ugly29192ugly29859ugly30306ugly29671ugly1155ugly1087ugly6ugly1200startup_seg_n_n2c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2c_0_60)
       (not_occupied seg_n_n2a_0_60) (not_occupied seg_n_n2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a)) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a))))
 (:action
  ugly29917ugly30126ugly29566ugly30024ugly30513ugly1149ugly1163ugly17ugly409move_seg_o1_108a_0_34_seg_o1_108b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108b_0_60)
       (not_blocked seg_o1_108b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_108b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_108b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_108b_0_60 airplane_daew8)
       (not_blocked seg_o1_108b_0_60 airplane_daew3)
       (not_blocked seg_o1_108b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_108c_0_34) (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (occupied seg_o1_108a_0_34)) (not_occupied seg_o1_108a_0_34)
       (not (at-segment ?a seg_o1_108a_0_34)) (occupied seg_o1_108b_0_60)
       (not (not_occupied seg_o1_108b_0_60)) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a)) (at-segment ?a seg_o1_108b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c2c_0_34 ?a)) (not_blocked seg_o1_c2c_0_34 ?a)
       (blocked seg_o1_108c_0_34 ?a) (not (not_blocked seg_o1_108c_0_34 ?a))
       (blocked seg_o1_108d_0_45 ?a) (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action
  ugly29918ugly29735ugly29488ugly30153ugly29292ugly838ugly456ugly354ugly402startup_seg_w1_161b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161b_0_45)
       (not_occupied seg_p161_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p161_0_75 ?a)
       (not (not_blocked seg_p161_0_75 ?a))))
 (:action
  ugly29919ugly30524ugly29184ugly29742ugly29457ugly1187ugly275ugly395ugly685startup_seg_t_b8c_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8c_0_120_934)
       (not_occupied seg_t_b8a_0_60) (not_occupied seg_t_b8b_0_60)
       (not_occupied seg_t_b8d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8a_0_60 ?a)
       (not (not_blocked seg_t_b8a_0_60 ?a)) (blocked seg_t_b8b_0_60 ?a)
       (not (not_blocked seg_t_b8b_0_60 ?a)) (blocked seg_t_b8d_0_60 ?a)
       (not (not_blocked seg_t_b8d_0_60 ?a))))
 (:action
  ugly29920ugly29546ugly30104ugly29940ugly30537ugly1320ugly700ugly324ugly503move_seg_p151_0_75_seg_w1_151b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p151_0_75) (not_occupied seg_w1_151b_0_45)
       (not_blocked seg_w1_151b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_151b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_151b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_151b_0_45 airplane_daew8)
       (not_blocked seg_w1_151b_0_45 airplane_daew3)
       (not_blocked seg_w1_151b_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p151_0_75)) (not_occupied seg_p151_0_75)
       (not (at-segment ?a seg_p151_0_75)) (occupied seg_w1_151b_0_45)
       (not (not_occupied seg_w1_151b_0_45)) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a))
       (at-segment ?a seg_w1_151b_0_45)))
 (:action
  ugly29921ugly30132ugly30509ugly29882ugly29404ugly91ugly736ugly895ugly1089move_seg_o1_c1b_0_34_seg_o1_c1c_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_c1c_0_80)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe1)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe3)
       (not_blocked seg_o1_c1c_0_80 airplane_daew8)
       (not_blocked seg_o1_c1c_0_80 airplane_daew3)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe2)
       (not_occupied seg_o1_c1a_0_60))
  :effect
  (and (not (occupied seg_o1_c1b_0_34)) (not_occupied seg_o1_c1b_0_34)
       (not (at-segment ?a seg_o1_c1b_0_34)) (occupied seg_o1_c1c_0_80)
       (not (not_occupied seg_o1_c1c_0_80)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a)) (at-segment ?a seg_o1_c1c_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_102a_0_34 ?a)) (not_blocked seg_o1_102a_0_34 ?a)
       (blocked seg_o1_c1a_0_60 ?a) (not (not_blocked seg_o1_c1a_0_60 ?a))))
 (:action
  ugly29922ugly30462ugly29520ugly30163ugly29272ugly760ugly92ugly1011ugly508move_seg_c3_b_0_80_seg_o1_c3d_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c3_b_0_80) (not_occupied seg_o1_c3d_0_60)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c3d_0_60 airplane_daew8)
       (not_blocked seg_o1_c3d_0_60 airplane_daew3)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_c3_b_0_80)) (not_occupied seg_c3_b_0_80)
       (not (at-segment ?a seg_c3_b_0_80)) (occupied seg_o1_c3d_0_60)
       (not (not_occupied seg_o1_c3d_0_60)) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a)) (at-segment ?a seg_o1_c3d_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_c3_a_0_80 ?a)) (not_blocked seg_c3_a_0_80 ?a)))
 (:action
  ugly29923ugly29820ugly29303ugly29841ugly29845ugly194ugly36ugly517ugly356move_seg_p117_0_76_seg_o1_117b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p117_0_76) (not_occupied seg_o1_117b_0_60)
       (not_blocked seg_o1_117b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_117b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_117b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_117b_0_60 airplane_daew8)
       (not_blocked seg_o1_117b_0_60 airplane_daew3)
       (not_blocked seg_o1_117b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p117_0_76)) (not_occupied seg_p117_0_76)
       (not (at-segment ?a seg_p117_0_76)) (occupied seg_o1_117b_0_60)
       (not (not_occupied seg_o1_117b_0_60)) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a))
       (at-segment ?a seg_o1_117b_0_60)))
 (:action
  ugly29924ugly29567ugly29666ugly30070ugly29381ugly1327ugly520ugly688ugly977move_seg_w1_143b_0_45_seg_w1_143a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143b_0_45) (not_occupied seg_w1_143a_0_34)
       (not_blocked seg_w1_143a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_143a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_143a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_143a_0_34 airplane_daew8)
       (not_blocked seg_w1_143a_0_34 airplane_daew3)
       (not_blocked seg_w1_143a_0_34 airplane_cfbe2)
       (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (occupied seg_w1_143b_0_45)) (not_occupied seg_w1_143b_0_45)
       (not (at-segment ?a seg_w1_143b_0_45)) (occupied seg_w1_143a_0_34)
       (not (not_occupied seg_w1_143a_0_34)) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (at-segment ?a seg_w1_143a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p143_0_75 ?a)) (not_blocked seg_p143_0_75 ?a)
       (blocked seg_w1_143c_0_60 ?a) (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action
  ugly29925ugly29805ugly29774ugly30279ugly30361ugly537ugly1058ugly669ugly451startup_seg_p104_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p104_0_76)
       (not_occupied seg_o1_104b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action
  ugly29926ugly30470ugly29205ugly29555ugly30258ugly677ugly589ugly83ugly1271move_seg_o1_c3d_0_60_seg_o1_c3c_0_48_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3d_0_60) (not_occupied seg_o1_c3c_0_48)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbe1)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbe3)
       (not_blocked seg_o1_c3c_0_48 airplane_daew8)
       (not_blocked seg_o1_c3c_0_48 airplane_daew3)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbe2)
       (not_occupied seg_o1_c3a_0_34) (not_occupied seg_o1_c3b_0_60))
  :effect
  (and (not (occupied seg_o1_c3d_0_60)) (not_occupied seg_o1_c3d_0_60)
       (not (at-segment ?a seg_o1_c3d_0_60)) (occupied seg_o1_c3c_0_48)
       (not (not_occupied seg_o1_c3c_0_48)) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a)) (at-segment ?a seg_o1_c3c_0_48)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_c3_b_0_80 ?a)) (not_blocked seg_c3_b_0_80 ?a)
       (blocked seg_o1_c3a_0_34 ?a) (not (not_blocked seg_o1_c3a_0_34 ?a))
       (blocked seg_o1_c3b_0_60 ?a) (not (not_blocked seg_o1_c3b_0_60 ?a))))
 (:action
  ugly29927ugly30017ugly30137ugly29412ugly29750ugly569ugly927ugly584ugly1085startup_seg_w1_163b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163b_0_45)
       (not_occupied seg_p163_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p163_0_75 ?a)
       (not (not_blocked seg_p163_0_75 ?a))))
 (:action
  ugly29928ugly29288ugly30344ugly30240ugly29812ugly873ugly899ugly1295ugly406startup_seg_t_b6b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b_0_60)
       (not_occupied seg_t_b6a_0_60) (not_occupied seg_t_b6c_0_120_934)
       (not_occupied seg_t_b6d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6a_0_60 ?a)
       (not (not_blocked seg_t_b6a_0_60 ?a)) (blocked seg_t_b6c_0_120_934 ?a)
       (not (not_blocked seg_t_b6c_0_120_934 ?a)) (blocked seg_t_b6d_0_60 ?a)
       (not (not_blocked seg_t_b6d_0_60 ?a))))
 (:action
  ugly29929ugly29571ugly29420ugly29469ugly29862ugly124ugly989ugly1260ugly399startup_seg_s_b5b8c_0_130_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8c_0_130)
       (not_occupied seg_s_b8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8c_0_60 ?a)
       (not (not_blocked seg_s_b8c_0_60 ?a))))
 (:action
  ugly29930ugly29945ugly30394ugly29536ugly29950ugly1013ugly41ugly812ugly753startup_seg_p153_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p153_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly29931ugly29849ugly30322ugly29480ugly29461ugly1172ugly966ugly253ugly571startup_seg_n_n2a4c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4c_0_75)
       (not_occupied seg_n_n2a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4b_0_75 ?a)
       (not (not_blocked seg_n_n2a4b_0_75 ?a))))
 (:action
  ugly29932ugly29960ugly30269ugly29694ugly29473ugly1003ugly1309ugly1006ugly1144startup_seg_s_b10b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b10b_0_60)
       (not_occupied seg_s_b10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b10a_0_60 ?a)
       (not (not_blocked seg_s_b10a_0_60 ?a))))
 (:action
  ugly29933ugly30050ugly29540ugly30276ugly29190ugly1089ugly290ugly149ugly901startup_seg_m_a9a10c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10c_0_75)
       (not_occupied seg_m_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10b_0_75 ?a)
       (not (not_blocked seg_m_a9a10b_0_75 ?a))))
 (:action
  ugly29934ugly29455ugly30547ugly30439ugly29736ugly657ugly1103ugly1099ugly351move_seg_o1_117b_0_60_seg_o1_117a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117b_0_60) (not_occupied seg_o1_117a_0_34)
       (not_blocked seg_o1_117a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_117a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_117a_0_34 airplane_daew8)
       (not_blocked seg_o1_117a_0_34 airplane_daew3)
       (not_blocked seg_o1_117a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (occupied seg_o1_117b_0_60)) (not_occupied seg_o1_117b_0_60)
       (not (at-segment ?a seg_o1_117b_0_60)) (occupied seg_o1_117a_0_34)
       (not (not_occupied seg_o1_117a_0_34)) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a)) (at-segment ?a seg_o1_117a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p117_0_76 ?a)) (not_blocked seg_p117_0_76 ?a)
       (blocked seg_o1_117c_0_34 ?a) (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action
  ugly29935ugly29239ugly30220ugly29262ugly29347ugly1154ugly978ugly1263ugly1244startup_seg_n_a4a7a_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7a_0_115)
       (not_occupied seg_n_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a))))
 (:action
  ugly29936ugly30000ugly30413ugly30016ugly29398ugly726ugly601ugly1197ugly370move_seg_w1_161c_0_34_seg_w1_161a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161c_0_34) (not_occupied seg_w1_161a_0_34)
       (not_blocked seg_w1_161a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_161a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_161a_0_34 airplane_daew8)
       (not_blocked seg_w1_161a_0_34 airplane_daew3)
       (not_blocked seg_w1_161a_0_34 airplane_cfbe2)
       (not_occupied seg_w1_161b_0_45))
  :effect
  (and (not (occupied seg_w1_161c_0_34)) (not_occupied seg_w1_161c_0_34)
       (not (at-segment ?a seg_w1_161c_0_34)) (occupied seg_w1_161a_0_34)
       (not (not_occupied seg_w1_161a_0_34)) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (at-segment ?a seg_w1_161a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_162a_0_34 ?a)) (not_blocked seg_w1_162a_0_34 ?a)
       (blocked seg_w1_161b_0_45 ?a) (not (not_blocked seg_w1_161b_0_45 ?a))))
 (:action
  ugly29937ugly29842ugly30457ugly30198ugly30364ugly800ugly813ugly1002ugly1311startup_seg_o1_c3a_0_34_south_medium
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
  ugly29938ugly30314ugly29317ugly30101ugly29610ugly936ugly148ugly568ugly790startup_seg_b4_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_b_1_0_80_6226)
       (not_occupied seg_b4_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_a_0_156_924 ?a)
       (not (not_blocked seg_b4_a_0_156_924 ?a))))
 (:action
  ugly29939ugly30170ugly29883ugly30123ugly29625ugly474ugly1277ugly237ugly968startup_seg_m_a9a10a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10a_0_75)
       (not_occupied seg_m_a9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a_0_60 ?a)
       (not (not_blocked seg_m_a9a_0_60 ?a))))
 (:action
  ugly29940ugly30537ugly30503ugly30018ugly29984ugly180ugly680ugly554ugly1117move_seg_s_b5b8c_0_130_seg_s_b5b8b_0_135_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b5b8c_0_130) (not_occupied seg_s_b5b8b_0_135)
       (not_blocked seg_s_b5b8b_0_135 airplane_cfbeg)
       (not_blocked seg_s_b5b8b_0_135 airplane_cfbe1)
       (not_blocked seg_s_b5b8b_0_135 airplane_cfbe3)
       (not_blocked seg_s_b5b8b_0_135 airplane_daew8)
       (not_blocked seg_s_b5b8b_0_135 airplane_daew3)
       (not_blocked seg_s_b5b8b_0_135 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b5b8c_0_130)) (not_occupied seg_s_b5b8c_0_130)
       (not (at-segment ?a seg_s_b5b8c_0_130)) (occupied seg_s_b5b8b_0_135)
       (not (not_occupied seg_s_b5b8b_0_135)) (blocked seg_s_b5b8b_0_135 ?a)
       (not (not_blocked seg_s_b5b8b_0_135 ?a))
       (at-segment ?a seg_s_b5b8b_0_135) (not (blocked seg_s_b8c_0_60 ?a))
       (not_blocked seg_s_b8c_0_60 ?a)))
 (:action
  ugly29941ugly30219ugly29230ugly29410ugly29258ugly260ugly216ugly588ugly267move_seg_s_b3b4b_0_140_seg_s_b3b4a_0_140_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b3b4b_0_140) (not_occupied seg_s_b3b4a_0_140)
       (not_blocked seg_s_b3b4a_0_140 airplane_cfbeg)
       (not_blocked seg_s_b3b4a_0_140 airplane_cfbe1)
       (not_blocked seg_s_b3b4a_0_140 airplane_cfbe3)
       (not_blocked seg_s_b3b4a_0_140 airplane_daew8)
       (not_blocked seg_s_b3b4a_0_140 airplane_daew3)
       (not_blocked seg_s_b3b4a_0_140 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b3b4b_0_140)) (not_occupied seg_s_b3b4b_0_140)
       (not (at-segment ?a seg_s_b3b4b_0_140)) (occupied seg_s_b3b4a_0_140)
       (not (not_occupied seg_s_b3b4a_0_140)) (blocked seg_s_b3b4a_0_140 ?a)
       (not (not_blocked seg_s_b3b4a_0_140 ?a))
       (at-segment ?a seg_s_b3b4a_0_140) (not (blocked seg_s_b3b4c_0_140 ?a))
       (not_blocked seg_s_b3b4c_0_140 ?a)))
 (:action
  ugly29942ugly30015ugly30487ugly30093ugly29895ugly1262ugly639ugly376ugly729move_seg_w1_142a_0_34_seg_w1_141c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_141c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_141c_0_34 airplane_daew8)
       (not_blocked seg_w1_141c_0_34 airplane_daew3)
       (not_blocked seg_w1_141c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_142a_0_34)) (not_occupied seg_w1_142a_0_34)
       (not (at-segment ?a seg_w1_142a_0_34)) (occupied seg_w1_141c_0_34)
       (not (not_occupied seg_w1_141c_0_34)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a)) (at-segment ?a seg_w1_141c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_142b_0_45 ?a)) (not_blocked seg_w1_142b_0_45 ?a)
       (not (blocked seg_w1_142c_0_34 ?a)) (not_blocked seg_w1_142c_0_34 ?a)))
 (:action
  ugly29943ugly29724ugly30244ugly29815ugly30518ugly277ugly1155ugly1087ugly6startup_seg_m_a8a9c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9c_0_75)
       (not_occupied seg_m_a8a9d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9d_0_85 ?a)
       (not (not_blocked seg_m_a8a9d_0_85 ?a))))
 (:action
  ugly29944ugly29623ugly29549ugly29254ugly29891ugly925ugly771ugly1274ugly896move_seg_o1_104b_0_60_seg_o1_104a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104b_0_60) (not_occupied seg_o1_104a_0_34)
       (not_blocked seg_o1_104a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_104a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_104a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_104a_0_34 airplane_daew8)
       (not_blocked seg_o1_104a_0_34 airplane_daew3)
       (not_blocked seg_o1_104a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (occupied seg_o1_104b_0_60)) (not_occupied seg_o1_104b_0_60)
       (not (at-segment ?a seg_o1_104b_0_60)) (occupied seg_o1_104a_0_34)
       (not (not_occupied seg_o1_104a_0_34)) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (at-segment ?a seg_o1_104a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p104_0_76 ?a)) (not_blocked seg_p104_0_76 ?a)
       (blocked seg_o1_104c_0_60 ?a) (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action
  ugly29945ugly30394ugly29536ugly29950ugly30196ugly961ugly1341ugly679ugly995move_seg_o1_110b_0_60_seg_o1_110a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110b_0_60) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_110a_0_34 airplane_daew8)
       (not_blocked seg_o1_110a_0_34 airplane_daew3)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_110c_0_34) (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (occupied seg_o1_110b_0_60)) (not_occupied seg_o1_110b_0_60)
       (not (at-segment ?a seg_o1_110b_0_60)) (occupied seg_o1_110a_0_34)
       (not (not_occupied seg_o1_110a_0_34)) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a)) (at-segment ?a seg_o1_110a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p110_0_76 ?a)) (not_blocked seg_p110_0_76 ?a)
       (blocked seg_o1_110c_0_34 ?a) (not (not_blocked seg_o1_110c_0_34 ?a))
       (blocked seg_o1_110d_0_45 ?a) (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action
  ugly29946ugly29939ugly30170ugly29883ugly30123ugly442ugly758ugly1356ugly1249startup_seg_c1_n2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2a_0_60)
       (not_occupied seg_c1_n2b_0_80) (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a)) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action
  ugly29947ugly29864ugly29279ugly30055ugly29804ugly224ugly732ugly965ugly516startup_seg_o1_c1a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1a_0_60)
       (not_occupied seg_p101_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p101_0_76 ?a)
       (not (not_blocked seg_p101_0_76 ?a))))
 (:action
  ugly29948ugly29971ugly30543ugly29372ugly29638ugly115ugly1000ugly878ugly363startup_seg_t_b3b4c_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4c_0_140)
       (not_occupied seg_t_b3b4b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4b_0_140 ?a)
       (not (not_blocked seg_t_b3b4b_0_140 ?a))))
 (:action
  ugly29949ugly29835ugly29730ugly29664ugly29557ugly45ugly1334ugly648ugly1016move_seg_w1_161b_0_45_seg_p161_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161b_0_45) (not_occupied seg_p161_0_75)
       (not_blocked seg_p161_0_75 airplane_cfbeg)
       (not_blocked seg_p161_0_75 airplane_cfbe1)
       (not_blocked seg_p161_0_75 airplane_cfbe3)
       (not_blocked seg_p161_0_75 airplane_daew8)
       (not_blocked seg_p161_0_75 airplane_daew3)
       (not_blocked seg_p161_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_161b_0_45)) (not_occupied seg_w1_161b_0_45)
       (not (at-segment ?a seg_w1_161b_0_45)) (occupied seg_p161_0_75)
       (not (not_occupied seg_p161_0_75)) (blocked seg_p161_0_75 ?a)
       (not (not_blocked seg_p161_0_75 ?a)) (at-segment ?a seg_p161_0_75)
       (not (blocked seg_w1_161a_0_34 ?a)) (not_blocked seg_w1_161a_0_34 ?a)
       (not (blocked seg_w1_161c_0_34 ?a)) (not_blocked seg_w1_161c_0_34 ?a)))
 (:action
  ugly29950ugly30196ugly30144ugly29921ugly30132ugly1326ugly710ugly822ugly881startup_seg_n_a7a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a_0_60)
       (not_occupied seg_m_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7c_0_60 ?a)
       (not (not_blocked seg_m_a7c_0_60 ?a))))
 (:action
  ugly29951ugly29880ugly29603ugly29550ugly30138ugly39ugly1359ugly684ugly157move_seg_w1_154a_0_34_seg_w1_153c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_153c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_153c_0_34 airplane_daew8)
       (not_blocked seg_w1_153c_0_34 airplane_daew3)
       (not_blocked seg_w1_153c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_154a_0_34)) (not_occupied seg_w1_154a_0_34)
       (not (at-segment ?a seg_w1_154a_0_34)) (occupied seg_w1_153c_0_34)
       (not (not_occupied seg_w1_153c_0_34)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a)) (at-segment ?a seg_w1_153c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_154b_0_45 ?a)) (not_blocked seg_w1_154b_0_45 ?a)
       (not (blocked seg_w1_154c_0_34 ?a)) (not_blocked seg_w1_154c_0_34 ?a)))
 (:action
  ugly29952ugly29897ugly29700ugly29607ugly29787ugly1214ugly413ugly1202ugly882move_seg_w1_164c_0_34_seg_w1_164a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164c_0_34) (not_occupied seg_w1_164a_0_34)
       (not_blocked seg_w1_164a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_164a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_164a_0_34 airplane_daew8)
       (not_blocked seg_w1_164a_0_34 airplane_daew3)
       (not_blocked seg_w1_164a_0_34 airplane_cfbe2)
       (not_occupied seg_w1_164b_0_45))
  :effect
  (and (not (occupied seg_w1_164c_0_34)) (not_occupied seg_w1_164c_0_34)
       (not (at-segment ?a seg_w1_164c_0_34)) (occupied seg_w1_164a_0_34)
       (not (not_occupied seg_w1_164a_0_34)) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (at-segment ?a seg_w1_164a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c4a_0_34 ?a)) (not_blocked seg_w1_c4a_0_34 ?a)
       (blocked seg_w1_164b_0_45 ?a) (not (not_blocked seg_w1_164b_0_45 ?a))))
 (:action
  ugly29953ugly29508ugly29879ugly30069ugly30150ugly1111ugly561ugly645ugly608startup_seg_w1_151a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151a_0_34)
       (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action
  ugly29954ugly30466ugly29892ugly29979ugly30214ugly773ugly447ugly560ugly1166startup_seg_w1_141c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141c_0_34)
       (not_occupied seg_w1_141a_0_34) (not_occupied seg_w1_141b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action
  ugly29955ugly29902ugly30266ugly29243ugly29830ugly111ugly1169ugly649ugly314move_seg_o1_116a_0_34_seg_o1_116c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_116c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_116c_0_34 airplane_daew8)
       (not_blocked seg_o1_116c_0_34 airplane_daew3)
       (not_blocked seg_o1_116c_0_34 airplane_cfbe2)
       (not_occupied seg_o1_116b_0_60))
  :effect
  (and (not (occupied seg_o1_116a_0_34)) (not_occupied seg_o1_116a_0_34)
       (not (at-segment ?a seg_o1_116a_0_34)) (occupied seg_o1_116c_0_34)
       (not (not_occupied seg_o1_116c_0_34)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a)) (at-segment ?a seg_o1_116c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_115c_0_34 ?a)) (not_blocked seg_o1_115c_0_34 ?a)
       (blocked seg_o1_116b_0_60 ?a) (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action
  ugly29956ugly29553ugly29218ugly30396ugly29723ugly1167ugly596ugly270ugly933startup_seg_c4_s6c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6c_0_60)
       (not_occupied seg_c4_s6a_0_80) (not_occupied seg_c4_s6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a)) (blocked seg_c4_s6b_0_60 ?a)
       (not (not_blocked seg_c4_s6b_0_60 ?a))))
 (:action
  ugly29957ugly29273ugly29659ugly30261ugly30327ugly247ugly1149ugly1163ugly17move_seg_o1_c3a_0_34_seg_o1_c3b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_c3b_0_60)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c3b_0_60 airplane_daew8)
       (not_blocked seg_o1_c3b_0_60 airplane_daew3)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_c3c_0_48) (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (not (occupied seg_o1_c3a_0_34)) (not_occupied seg_o1_c3a_0_34)
       (not (at-segment ?a seg_o1_c3a_0_34)) (occupied seg_o1_c3b_0_60)
       (not (not_occupied seg_o1_c3b_0_60)) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a)) (at-segment ?a seg_o1_c3b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_111c_0_34 ?a)) (not_blocked seg_o1_111c_0_34 ?a)
       (blocked seg_o1_c3c_0_48 ?a) (not (not_blocked seg_o1_c3c_0_48 ?a))
       (blocked seg_o1_c3d_0_60 ?a) (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action
  ugly29958ugly29189ugly30398ugly30535ugly29395ugly1045ugly1264ugly296ugly276move_seg_o1_111b_0_60_seg_p111_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111b_0_60) (not_occupied seg_p111_0_76)
       (not_blocked seg_p111_0_76 airplane_cfbeg)
       (not_blocked seg_p111_0_76 airplane_cfbe1)
       (not_blocked seg_p111_0_76 airplane_cfbe3)
       (not_blocked seg_p111_0_76 airplane_daew8)
       (not_blocked seg_p111_0_76 airplane_daew3)
       (not_blocked seg_p111_0_76 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_111b_0_60)) (not_occupied seg_o1_111b_0_60)
       (not (at-segment ?a seg_o1_111b_0_60)) (occupied seg_p111_0_76)
       (not (not_occupied seg_p111_0_76)) (blocked seg_p111_0_76 ?a)
       (not (not_blocked seg_p111_0_76 ?a)) (at-segment ?a seg_p111_0_76)
       (not (blocked seg_o1_111a_0_34 ?a)) (not_blocked seg_o1_111a_0_34 ?a)
       (not (blocked seg_o1_111c_0_34 ?a)) (not_blocked seg_o1_111c_0_34 ?a)
       (not (blocked seg_o1_111d_0_45 ?a)) (not_blocked seg_o1_111d_0_45 ?a)))
 (:action
  ugly29959ugly29517ugly29977ugly29900ugly30329ugly630ugly1143ugly566ugly468startup_seg_n_a6a8a_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8a_0_115)
       (not_occupied seg_n_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a))))
 (:action
  ugly29960ugly30269ugly29694ugly29473ugly30186ugly1030ugly1254ugly122ugly1305startup_seg_o1_108a_0_34_south_medium
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
  ugly29961ugly29331ugly30175ugly29851ugly29619ugly1353ugly175ugly104ugly902move_seg_w1_151c_0_34_seg_w1_151a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151c_0_34) (not_occupied seg_w1_151a_0_34)
       (not_blocked seg_w1_151a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_151a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_151a_0_34 airplane_daew8)
       (not_blocked seg_w1_151a_0_34 airplane_daew3)
       (not_blocked seg_w1_151a_0_34 airplane_cfbe2)
       (not_occupied seg_w1_151b_0_45))
  :effect
  (and (not (occupied seg_w1_151c_0_34)) (not_occupied seg_w1_151c_0_34)
       (not (at-segment ?a seg_w1_151c_0_34)) (occupied seg_w1_151a_0_34)
       (not (not_occupied seg_w1_151a_0_34)) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (at-segment ?a seg_w1_151a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_152a_0_34 ?a)) (not_blocked seg_w1_152a_0_34 ?a)
       (blocked seg_w1_151b_0_45 ?a) (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action
  ugly29962ugly30038ugly29496ugly30027ugly29739ugly339ugly410ugly467ugly471startup_seg_o1_c1c_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1c_0_80)
       (not_occupied seg_o1_c1a_0_60) (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action
  ugly29963ugly30339ugly29827ugly29583ugly29658ugly293ugly1039ugly693ugly337move_seg_w1_163a_0_34_seg_w1_162c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_162c_0_34 airplane_daew8)
       (not_blocked seg_w1_162c_0_34 airplane_daew3)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_163a_0_34)) (not_occupied seg_w1_163a_0_34)
       (not (at-segment ?a seg_w1_163a_0_34)) (occupied seg_w1_162c_0_34)
       (not (not_occupied seg_w1_162c_0_34)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a)) (at-segment ?a seg_w1_162c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_163b_0_45 ?a)) (not_blocked seg_w1_163b_0_45 ?a)
       (not (blocked seg_w1_163c_0_34 ?a)) (not_blocked seg_w1_163c_0_34 ?a)))
 (:action
  ugly29964ugly30130ugly29819ugly29541ugly30408ugly283ugly961ugly1341ugly679startup_seg_o1_c3c_0_48_south_medium
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
  ugly29965ugly29408ugly29290ugly30471ugly29746ugly492ugly980ugly1348ugly891move_seg_o1_111b_0_60_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111b_0_60) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_111c_0_34 airplane_daew8)
       (not_blocked seg_o1_111c_0_34 airplane_daew3)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe2)
       (not_occupied seg_o1_111a_0_34) (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (occupied seg_o1_111b_0_60)) (not_occupied seg_o1_111b_0_60)
       (not (at-segment ?a seg_o1_111b_0_60)) (occupied seg_o1_111c_0_34)
       (not (not_occupied seg_o1_111c_0_34)) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a)) (at-segment ?a seg_o1_111c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p111_0_76 ?a)) (not_blocked seg_p111_0_76 ?a)
       (blocked seg_o1_111a_0_34 ?a) (not (not_blocked seg_o1_111a_0_34 ?a))
       (blocked seg_o1_111d_0_45 ?a) (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action
  ugly29966ugly29231ugly29850ugly29786ugly29680ugly538ugly23ugly605ugly436startup_seg_n_n2a4d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4d_0_75)
       (not_occupied seg_n_n2a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4e_0_75 ?a)
       (not (not_blocked seg_n_n2a4e_0_75 ?a))))
 (:action
  ugly29967ugly29829ugly30317ugly29435ugly30483ugly830ugly1186ugly369ugly1179move_seg_s_b2b_0_60_seg_t_b2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b2b_0_60) (not_occupied seg_t_b2a_0_60)
       (not_blocked seg_t_b2a_0_60 airplane_cfbeg)
       (not_blocked seg_t_b2a_0_60 airplane_cfbe1)
       (not_blocked seg_t_b2a_0_60 airplane_cfbe3)
       (not_blocked seg_t_b2a_0_60 airplane_daew8)
       (not_blocked seg_t_b2a_0_60 airplane_daew3)
       (not_blocked seg_t_b2a_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b2b_0_60)) (not_occupied seg_s_b2b_0_60)
       (not (at-segment ?a seg_s_b2b_0_60)) (occupied seg_t_b2a_0_60)
       (not (not_occupied seg_t_b2a_0_60)) (blocked seg_t_b2a_0_60 ?a)
       (not (not_blocked seg_t_b2a_0_60 ?a)) (at-segment ?a seg_t_b2a_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_s_b2a_0_60 ?a)) (not_blocked seg_s_b2a_0_60 ?a)))
 (:action
  ugly29968ugly30178ugly29653ugly30548ugly29511ugly1084ugly737ugly805ugly531move_seg_o1_110c_0_34_seg_o1_110a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_110a_0_34 airplane_daew8)
       (not_blocked seg_o1_110a_0_34 airplane_daew3)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_110b_0_60) (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (occupied seg_o1_110c_0_34)) (not_occupied seg_o1_110c_0_34)
       (not (at-segment ?a seg_o1_110c_0_34)) (occupied seg_o1_110a_0_34)
       (not (not_occupied seg_o1_110a_0_34)) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a)) (at-segment ?a seg_o1_110a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_111a_0_34 ?a)) (not_blocked seg_o1_111a_0_34 ?a)
       (blocked seg_o1_110b_0_60 ?a) (not (not_blocked seg_o1_110b_0_60 ?a))
       (blocked seg_o1_110d_0_45 ?a) (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action
  ugly29969ugly29847ugly29442ugly29761ugly29933ugly867ugly778ugly134ugly101startup_seg_s_b8b9a_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9a_0_115)
       (not_occupied seg_s_b8b9b_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9b_0_115 ?a)
       (not (not_blocked seg_s_b8b9b_0_115 ?a))))
 (:action
  ugly29970ugly29608ugly29413ugly29251ugly30500ugly59ugly75ugly383ugly658move_seg_n_a6a8c_0_75_seg_n_a6a8b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8c_0_75) (not_occupied seg_n_a6a8b_0_75)
       (not_blocked seg_n_a6a8b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8b_0_75 airplane_cfbe1)
       (not_blocked seg_n_a6a8b_0_75 airplane_cfbe3)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew8)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew3)
       (not_blocked seg_n_a6a8b_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a6a8c_0_75)) (not_occupied seg_n_a6a8c_0_75)
       (not (at-segment ?a seg_n_a6a8c_0_75)) (occupied seg_n_a6a8b_0_75)
       (not (not_occupied seg_n_a6a8b_0_75)) (blocked seg_n_a6a8b_0_75 ?a)
       (not (not_blocked seg_n_a6a8b_0_75 ?a)) (at-segment ?a seg_n_a6a8b_0_75)
       (not (blocked seg_n_a6a8d_0_75 ?a)) (not_blocked seg_n_a6a8d_0_75 ?a)))
 (:action
  ugly29971ugly30543ugly29372ugly29638ugly29298ugly128ugly200ugly1112ugly1035startup_seg_n_a4a7e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7e_0_75)
       (not_occupied seg_n_a4a7f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7f_0_75 ?a)
       (not (not_blocked seg_n_a4a7f_0_75 ?a))))
 (:action
  ugly29972ugly29487ugly30336ugly29824ugly29264ugly1100ugly277ugly1155ugly1087move_seg_w1_141c_0_34_seg_w1_142a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141c_0_34) (not_occupied seg_w1_142a_0_34)
       (not_blocked seg_w1_142a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_142a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_142a_0_34 airplane_daew8)
       (not_blocked seg_w1_142a_0_34 airplane_daew3)
       (not_blocked seg_w1_142a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_141c_0_34)) (not_occupied seg_w1_141c_0_34)
       (not (at-segment ?a seg_w1_141c_0_34)) (occupied seg_w1_142a_0_34)
       (not (not_occupied seg_w1_142a_0_34)) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (at-segment ?a seg_w1_142a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_141a_0_34 ?a)) (not_blocked seg_w1_141a_0_34 ?a)
       (not (blocked seg_w1_141b_0_45 ?a)) (not_blocked seg_w1_141b_0_45 ?a)))
 (:action
  ugly29973ugly29712ugly30090ugly30448ugly29642ugly1348ugly891ugly391ugly1104move_seg_o1_c3b_0_60_seg_p112_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3b_0_60) (not_occupied seg_p112_0_76)
       (not_blocked seg_p112_0_76 airplane_cfbeg)
       (not_blocked seg_p112_0_76 airplane_cfbe1)
       (not_blocked seg_p112_0_76 airplane_cfbe3)
       (not_blocked seg_p112_0_76 airplane_daew8)
       (not_blocked seg_p112_0_76 airplane_daew3)
       (not_blocked seg_p112_0_76 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_c3b_0_60)) (not_occupied seg_o1_c3b_0_60)
       (not (at-segment ?a seg_o1_c3b_0_60)) (occupied seg_p112_0_76)
       (not (not_occupied seg_p112_0_76)) (blocked seg_p112_0_76 ?a)
       (not (not_blocked seg_p112_0_76 ?a)) (at-segment ?a seg_p112_0_76)
       (not (blocked seg_o1_c3a_0_34 ?a)) (not_blocked seg_o1_c3a_0_34 ?a)
       (not (blocked seg_o1_c3c_0_48 ?a)) (not_blocked seg_o1_c3c_0_48 ?a)
       (not (blocked seg_o1_c3d_0_60 ?a)) (not_blocked seg_o1_c3d_0_60 ?a)))
 (:action
  ugly29974ugly29745ugly29955ugly29902ugly30266ugly60ugly513ugly725ugly1283move_seg_p119_0_76_seg_o1_c4b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p119_0_76) (not_occupied seg_o1_c4b_0_60)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c4b_0_60 airplane_daew8)
       (not_blocked seg_o1_c4b_0_60 airplane_daew3)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p119_0_76)) (not_occupied seg_p119_0_76)
       (not (at-segment ?a seg_p119_0_76)) (occupied seg_o1_c4b_0_60)
       (not (not_occupied seg_o1_c4b_0_60)) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a)) (at-segment ?a seg_o1_c4b_0_60)))
 (:action
  ugly29975ugly30022ugly30232ugly29772ugly29325ugly435ugly682ugly762ugly746takeoff_seg_08l_0_80_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_08l_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_08l_0_80)) (not_occupied seg_08l_0_80)
       (not (blocked seg_08l_0_80 ?a)) (not_blocked seg_08l_0_80 ?a)
       (not (at-segment ?a seg_08l_0_80)) (airborne ?a seg_08l_0_80)
       (not (is-moving ?a)) (not (blocked seg_08l_a2a3_0_970 ?a))
       (not_blocked seg_08l_a2a3_0_970 ?a)))
 (:action
  ugly29976ugly29754ugly30450ugly30239ugly29616ugly153ugly756ugly466ugly796startup_seg_n_a6a8b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8b_0_75)
       (not_occupied seg_n_a6a8a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8a_0_115 ?a)
       (not (not_blocked seg_n_a6a8a_0_115 ?a))))
 (:action
  ugly29977ugly29900ugly30329ugly29813ugly29587ugly1164ugly1192ugly1188ugly1316startup_seg_s_b10a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b10a_0_60)
       (not_occupied seg_s_b10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b10b_0_60 ?a)
       (not (not_blocked seg_s_b10b_0_60 ?a))))
 (:action
  ugly29978ugly29922ugly30462ugly29520ugly30163ugly89ugly99ugly740ugly886startup_seg_t_b5d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5d_0_60)
       (not_occupied seg_t_b7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7b_0_60 ?a)
       (not (not_blocked seg_t_b7b_0_60 ?a))))
 (:action
  ugly29979ugly30214ugly29956ugly29553ugly29218ugly1213ugly1106ugly25ugly263park_seg_p107_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p107_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p107_0_76) (not (is-moving ?a))))
 (:action
  ugly29980ugly30180ugly29648ugly29920ugly29546ugly921ugly1154ugly978ugly1263startup_seg_a2_c_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_c_0_100)
       (not_occupied seg_n_a2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a_0_60 ?a)
       (not (not_blocked seg_n_a2a_0_60 ?a))))
 (:action
  ugly29981ugly30110ugly29760ugly30409ugly29822ugly1179ugly55ugly1168ugly54startup_seg_s_b5d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5d_0_60)
       (not_occupied seg_s_b7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7b_0_60 ?a)
       (not (not_blocked seg_s_b7b_0_60 ?a))))
 (:action
  ugly29982ugly29364ugly29327ugly30393ugly30154ugly289ugly1329ugly1220ugly550move_seg_w1_154b_0_45_seg_w1_154a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154b_0_45) (not_occupied seg_w1_154a_0_34)
       (not_blocked seg_w1_154a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_154a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_154a_0_34 airplane_daew8)
       (not_blocked seg_w1_154a_0_34 airplane_daew3)
       (not_blocked seg_w1_154a_0_34 airplane_cfbe2)
       (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (occupied seg_w1_154b_0_45)) (not_occupied seg_w1_154b_0_45)
       (not (at-segment ?a seg_w1_154b_0_45)) (occupied seg_w1_154a_0_34)
       (not (not_occupied seg_w1_154a_0_34)) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (at-segment ?a seg_w1_154a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p154_0_75 ?a)) (not_blocked seg_p154_0_75 ?a)
       (blocked seg_w1_154c_0_34 ?a) (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action
  ugly29983ugly30278ugly30521ugly30264ugly29351ugly813ugly1002ugly1311ugly991startup_seg_n_a10a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10a_0_60)
       (not_occupied seg_n_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10b_0_60 ?a)
       (not (not_blocked seg_n_a10b_0_60 ?a))))
 (:action
  ugly29984ugly29363ugly29814ugly30205ugly29421ugly463ugly1193ugly986ugly219startup_seg_a2_a_0_90_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_a_0_90)
       (not_occupied seg_08l_a2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a2b_0_80 ?a)
       (not (not_blocked seg_08l_a2b_0_80 ?a))))
 (:action
  ugly29985ugly29439ugly30454ugly30060ugly30135ugly220ugly757ugly687ugly1194startup_seg_a6_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_b_0_159_512)
       (not_occupied seg_m_a6d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6d_0_120_934 ?a)
       (not (not_blocked seg_m_a6d_0_120_934 ?a))))
 (:action
  ugly29986ugly29375ugly30242ugly29313ugly30334ugly428ugly379ugly1165ugly1174startup_seg_w1_163b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163b_0_45)
       (not_occupied seg_w1_163a_0_34) (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action
  ugly29987ugly29759ugly29402ugly29489ugly30125ugly269ugly69ugly334ugly644startup_seg_n_a4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4b_0_60)
       (not_occupied seg_n_a4a7a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7a_0_115 ?a)
       (not (not_blocked seg_n_a4a7a_0_115 ?a))))
 (:action
  ugly29988ugly29630ugly29821ugly29240ugly30430ugly486ugly417ugly638ugly445startup_seg_o1_115b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115b_0_60)
       (not_occupied seg_o1_115a_0_34) (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action
  ugly29989ugly29411ugly30010ugly29758ugly29942ugly832ugly1167ugly596ugly270startup_seg_o1_108d_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108d_0_45)
       (not_occupied seg_o1_108a_0_34) (not_occupied seg_o1_108b_0_60)
       (not_occupied seg_o1_108c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a)) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a)) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a))))
 (:action
  ugly29990ugly29802ugly29640ugly29887ugly29454ugly718ugly236ugly1258ugly1338move_seg_w1_141b_0_45_seg_w1_141a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141b_0_45) (not_occupied seg_w1_141a_0_34)
       (not_blocked seg_w1_141a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_141a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_141a_0_34 airplane_daew8)
       (not_blocked seg_w1_141a_0_34 airplane_daew3)
       (not_blocked seg_w1_141a_0_34 airplane_cfbe2)
       (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (occupied seg_w1_141b_0_45)) (not_occupied seg_w1_141b_0_45)
       (not (at-segment ?a seg_w1_141b_0_45)) (occupied seg_w1_141a_0_34)
       (not (not_occupied seg_w1_141a_0_34)) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (at-segment ?a seg_w1_141a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p141_0_75 ?a)) (not_blocked seg_p141_0_75 ?a)
       (blocked seg_w1_141c_0_34 ?a) (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly29991ugly30488ugly29613ugly30335ugly30456ugly136ugly1008ugly1020ugly664startup_seg_o1_109b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109b_0_60)
       (not_occupied seg_p109_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p109_0_76 ?a)
       (not (not_blocked seg_p109_0_76 ?a))))
 (:action
  ugly29992ugly30221ugly30113ugly30229ugly30225ugly978ugly1263ugly1244ugly1285move_seg_o1_111c_0_34_seg_o1_c3a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c3a_0_34 airplane_daew8)
       (not_blocked seg_o1_c3a_0_34 airplane_daew3)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_111c_0_34)) (not_occupied seg_o1_111c_0_34)
       (not (at-segment ?a seg_o1_111c_0_34)) (occupied seg_o1_c3a_0_34)
       (not (not_occupied seg_o1_c3a_0_34)) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a)) (at-segment ?a seg_o1_c3a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_111a_0_34 ?a)) (not_blocked seg_o1_111a_0_34 ?a)
       (not (blocked seg_o1_111b_0_60 ?a)) (not_blocked seg_o1_111b_0_60 ?a)
       (not (blocked seg_o1_111d_0_45 ?a)) (not_blocked seg_o1_111d_0_45 ?a)))
 (:action
  ugly29993ugly29323ugly30382ugly30395ugly30274ugly101ugly696ugly1082ugly940startup_seg_m_a3a4a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4a_0_75)
       (not_occupied seg_m_a3a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4b_0_75 ?a)
       (not (not_blocked seg_m_a3a4b_0_75 ?a))))
 (:action
  ugly29994ugly29677ugly30074ugly30105ugly29792ugly1094ugly1091ugly437ugly498startup_seg_m_a9a10b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10b_0_75)
       (not_occupied seg_m_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10c_0_75 ?a)
       (not (not_blocked seg_m_a9a10c_0_75 ?a))))
 (:action
  ugly29995ugly29665ugly29716ugly30001ugly30036ugly389ugly342ugly728ugly795park_seg_p103_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p103_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p103_0_76) (not (is-moving ?a))))
 (:action
  ugly29996ugly30223ugly29662ugly30031ugly29991ugly1305ugly925ugly771ugly1274startup_seg_o1_103c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103c_0_34)
       (not_occupied seg_o1_104a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a))))
 (:action
  ugly29997ugly29589ugly30211ugly29322ugly30375ugly1183ugly272ugly872ugly1284startup_seg_w1_141b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141b_0_45)
       (not_occupied seg_w1_141a_0_34) (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly29998ugly30281ugly30096ugly29784ugly30323ugly933ugly869ugly475ugly450startup_seg_m_a9a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a_0_60)
       (not_occupied seg_m_a9a10a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10a_0_75 ?a)
       (not (not_blocked seg_m_a9a10a_0_75 ?a))))
 (:action
  ugly29999ugly29510ugly29605ugly29713ugly30251ugly1082ugly940ugly1102ugly935move_seg_w1_162a_0_34_seg_w1_162b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_162b_0_45)
       (not_blocked seg_w1_162b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_162b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_162b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_162b_0_45 airplane_daew8)
       (not_blocked seg_w1_162b_0_45 airplane_daew3)
       (not_blocked seg_w1_162b_0_45 airplane_cfbe2)
       (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (occupied seg_w1_162a_0_34)) (not_occupied seg_w1_162a_0_34)
       (not (at-segment ?a seg_w1_162a_0_34)) (occupied seg_w1_162b_0_45)
       (not (not_occupied seg_w1_162b_0_45)) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a)) (at-segment ?a seg_w1_162b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_161c_0_34 ?a)) (not_blocked seg_w1_161c_0_34 ?a)
       (blocked seg_w1_162c_0_34 ?a) (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action
  ugly30000ugly30413ugly30016ugly29398ugly29909ugly223ugly1116ugly713ugly854startup_seg_n_a6a8f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8f_0_75)
       (not_occupied seg_n_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8e_0_75 ?a)
       (not (not_blocked seg_n_a6a8e_0_75 ?a))))
 (:action
  ugly30001ugly30036ugly29572ugly30058ugly29346ugly480ugly570ugly942ugly352startup_seg_p133_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p133_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly30002ugly29345ugly29957ugly29273ugly29659ugly1078ugly380ugly565ugly1096startup_seg_m_a4d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4d_0_60)
       (not_occupied seg_m_a3a4f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4f_0_115 ?a)
       (not (not_blocked seg_m_a3a4f_0_115 ?a))))
 (:action
  ugly30003ugly30495ugly29515ugly29800ugly29643ugly126ugly506ugly421ugly171move_seg_w1_c4a_0_34_seg_w1_164c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c4a_0_34) (not_occupied seg_w1_164c_0_34)
       (not_blocked seg_w1_164c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_164c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_164c_0_34 airplane_daew8)
       (not_blocked seg_w1_164c_0_34 airplane_daew3)
       (not_blocked seg_w1_164c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_c4a_0_34)) (not_occupied seg_w1_c4a_0_34)
       (not (at-segment ?a seg_w1_c4a_0_34)) (occupied seg_w1_164c_0_34)
       (not (not_occupied seg_w1_164c_0_34)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a)) (at-segment ?a seg_w1_164c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c4b_0_60 ?a)) (not_blocked seg_w1_c4b_0_60 ?a)
       (not (blocked seg_w1_c4c_0_60 ?a)) (not_blocked seg_w1_c4c_0_60 ?a)))
 (:action
  ugly30004ugly29321ugly30494ugly29382ugly29358ugly25ugly263ugly920ugly1019startup_seg_t_b6a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6a_0_60)
       (not_occupied seg_t_b6b_0_60) (not_occupied seg_t_b6c_0_120_934)
       (not_occupied seg_t_b6d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b_0_60 ?a)
       (not (not_blocked seg_t_b6b_0_60 ?a)) (blocked seg_t_b6c_0_120_934 ?a)
       (not (not_blocked seg_t_b6c_0_120_934 ?a)) (blocked seg_t_b6d_0_60 ?a)
       (not (not_blocked seg_t_b6d_0_60 ?a))))
 (:action
  ugly30005ugly30191ugly30171ugly30007ugly29620ugly1108ugly250ugly156ugly48startup_seg_w1_154c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154c_0_34)
       (not_occupied seg_w1_154a_0_34) (not_occupied seg_w1_154b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action
  ugly30006ugly29684ugly30345ugly29341ugly29360ugly783ugly461ugly884ugly349startup_seg_o1_117b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117b_0_60)
       (not_occupied seg_o1_117a_0_34) (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action
  ugly30007ugly29620ugly30291ugly30438ugly29373ugly1051ugly1113ugly1324ugly97startup_seg_p111_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p111_0_76)
       (not_occupied seg_o1_111b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a))))
 (:action
  ugly30008ugly30202ugly30453ugly29533ugly29312ugly650ugly653ugly537ugly1058startup_seg_s_b6b7b_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b7b_0_140)
       (not_occupied seg_s_b6b7a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b7a_0_140 ?a)
       (not (not_blocked seg_s_b6b7a_0_140 ?a))))
 (:action
  ugly30009ugly30188ugly30222ugly30152ugly29352ugly171ugly123ugly431ugly478startup_seg_s_b9b10c_2_0_83_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_2_0_83)
       (not_occupied seg_s_b9b10c_0_84))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_0_84 ?a)
       (not (not_blocked seg_s_b9b10c_0_84 ?a))))
 (:action
  ugly30010ugly29758ugly29942ugly30015ugly30487ugly910ugly427ugly907ugly650startup_seg_s_b4a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4a_0_60)
       (not_occupied seg_s_b4b_0_60) (not_occupied seg_s_b4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b_0_60 ?a)
       (not (not_blocked seg_s_b4b_0_60 ?a)) (blocked seg_s_b4c_0_60 ?a)
       (not (not_blocked seg_s_b4c_0_60 ?a))))
 (:action
  ugly30011ugly30515ugly29280ugly30118ugly30441ugly1077ugly1314ugly552ugly858park_seg_p118_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p118_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p118_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_118b_0_60 ?a)) (not_blocked seg_o1_118b_0_60 ?a)))
 (:action
  ugly30012ugly29929ugly29571ugly29420ugly29469ugly679ugly995ugly378ugly712startup_seg_w1_162c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162c_0_34)
       (not_occupied seg_w1_162a_0_34) (not_occupied seg_w1_162b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action
  ugly30013ugly30197ugly29599ugly29306ugly30373ugly512ugly100ugly800ugly813startup_seg_o1_115a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115a_0_34)
       (not_occupied seg_o1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a))))
 (:action
  ugly30014ugly30047ugly30298ugly30003ugly30495ugly332ugly525ugly1343ugly1131move_seg_w1_152c_0_34_seg_w1_153a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152c_0_34) (not_occupied seg_w1_153a_0_34)
       (not_blocked seg_w1_153a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_153a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_153a_0_34 airplane_daew8)
       (not_blocked seg_w1_153a_0_34 airplane_daew3)
       (not_blocked seg_w1_153a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_152c_0_34)) (not_occupied seg_w1_152c_0_34)
       (not (at-segment ?a seg_w1_152c_0_34)) (occupied seg_w1_153a_0_34)
       (not (not_occupied seg_w1_153a_0_34)) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (at-segment ?a seg_w1_153a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_152a_0_34 ?a)) (not_blocked seg_w1_152a_0_34 ?a)
       (not (blocked seg_w1_152b_0_45 ?a)) (not_blocked seg_w1_152b_0_45 ?a)))
 (:action
  ugly30015ugly30487ugly30093ugly29895ugly30445ugly2ugly1187ugly275ugly395startup_seg_s6_0_94_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s6_0_94)
       (not_occupied seg_c4_s6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6b_0_60 ?a)
       (not (not_blocked seg_c4_s6b_0_60 ?a))))
 (:action
  ugly30016ugly29398ugly29909ugly29406ugly30512ugly869ugly475ugly450ugly1204move_seg_a2_b_0_90_seg_a2_a_0_90_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_b_0_90) (not_occupied seg_a2_a_0_90)
       (not_blocked seg_a2_a_0_90 airplane_cfbeg)
       (not_blocked seg_a2_a_0_90 airplane_cfbe1)
       (not_blocked seg_a2_a_0_90 airplane_cfbe3)
       (not_blocked seg_a2_a_0_90 airplane_daew8)
       (not_blocked seg_a2_a_0_90 airplane_daew3)
       (not_blocked seg_a2_a_0_90 airplane_cfbe2))
  :effect
  (and (not (occupied seg_a2_b_0_90)) (not_occupied seg_a2_b_0_90)
       (not (at-segment ?a seg_a2_b_0_90)) (occupied seg_a2_a_0_90)
       (not (not_occupied seg_a2_a_0_90)) (blocked seg_a2_a_0_90 ?a)
       (not (not_blocked seg_a2_a_0_90 ?a)) (at-segment ?a seg_a2_a_0_90)
       (not (blocked seg_a2_c_0_100 ?a)) (not_blocked seg_a2_c_0_100 ?a)))
 (:action
  ugly30017ugly30137ugly29412ugly29750ugly29752ugly1110ugly816ugly515ugly755startup_seg_m_a6a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a_0_60)
       (not_occupied seg_m_a6b_0_60) (not_occupied seg_m_a6c_0_60)
       (not_occupied seg_m_a6d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6b_0_60 ?a)
       (not (not_blocked seg_m_a6b_0_60 ?a)) (blocked seg_m_a6c_0_60 ?a)
       (not (not_blocked seg_m_a6c_0_60 ?a)) (blocked seg_m_a6d_0_120_934 ?a)
       (not (not_blocked seg_m_a6d_0_120_934 ?a))))
 (:action
  ugly30018ugly29984ugly29363ugly29814ugly30205ugly238ugly695ugly1031ugly967startup_seg_w1_c4a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4a_0_34)
       (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action
  ugly30019ugly29941ugly30219ugly29230ugly29410ugly75ugly383ugly658ugly161startup_seg_t_b2b3a_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3a_0_140)
       (not_occupied seg_t_b2b3b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3b_0_140 ?a)
       (not (not_blocked seg_t_b2b3b_0_140 ?a))))
 (:action
  ugly30020ugly29468ugly30415ugly29314ugly29987ugly576ugly438ugly779ugly803startup_seg_o1_c4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4b_0_60)
       (not_occupied seg_o1_c4a_0_34) (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action
  ugly30021ugly29531ugly29832ugly30095ugly29602ugly298ugly1088ugly826ugly66startup_seg_n_a9a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a_0_60)
       (not_occupied seg_m_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9b_0_60 ?a)
       (not (not_blocked seg_m_a9b_0_60 ?a))))
 (:action
  ugly30022ugly30232ugly29772ugly29325ugly29618ugly143ugly327ugly117ugly962startup_seg_n_a6a8f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8f_0_75)
       (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action
  ugly30023ugly29947ugly29864ugly29279ugly30055ugly621ugly106ugly346ugly323startup_seg_s_b5b8a_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8a_0_135)
       (not_occupied seg_s_b5b8b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8b_0_135 ?a)
       (not (not_blocked seg_s_b5b8b_0_135 ?a))))
 (:action
  ugly30024ugly30513ugly30332ugly29333ugly29195ugly1006ugly1144ugly715ugly717startup_seg_m_a3a_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a_0_120_934)
       (not_occupied seg_m_a3b_0_60) (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a)) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action
  ugly30025ugly29390ugly30203ugly29706ugly29896ugly549ugly322ugly304ugly877startup_seg_s_b4b6c_0_130_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6c_0_130)
       (not_occupied seg_s_b6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6c_0_60 ?a)
       (not (not_blocked seg_s_b6c_0_60 ?a))))
 (:action
  ugly30026ugly30275ugly29757ugly29919ugly30524ugly1ugly763ugly538ugly23startup_seg_t_b9c_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9c_0_120_934)
       (not_occupied seg_t_b9a_0_60) (not_occupied seg_t_b9b_0_60)
       (not_occupied seg_t_b9d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9a_0_60 ?a)
       (not (not_blocked seg_t_b9a_0_60 ?a)) (blocked seg_t_b9b_0_60 ?a)
       (not (not_blocked seg_t_b9b_0_60 ?a)) (blocked seg_t_b9d_0_60 ?a)
       (not (not_blocked seg_t_b9d_0_60 ?a))))
 (:action
  ugly30027ugly29739ugly29522ugly30401ugly30422ugly84ugly195ugly637ugly300startup_seg_w1_142b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142b_0_45)
       (not_occupied seg_w1_142a_0_34) (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action
  ugly30028ugly30045ugly30399ugly30091ugly29801ugly932ugly319ugly855ugly1078move_seg_o1_110c_0_34_seg_o1_110b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_110b_0_60)
       (not_blocked seg_o1_110b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_110b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_110b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_110b_0_60 airplane_daew8)
       (not_blocked seg_o1_110b_0_60 airplane_daew3)
       (not_blocked seg_o1_110b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_110a_0_34) (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (occupied seg_o1_110c_0_34)) (not_occupied seg_o1_110c_0_34)
       (not (at-segment ?a seg_o1_110c_0_34)) (occupied seg_o1_110b_0_60)
       (not (not_occupied seg_o1_110b_0_60)) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a)) (at-segment ?a seg_o1_110b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_111a_0_34 ?a)) (not_blocked seg_o1_111a_0_34 ?a)
       (blocked seg_o1_110a_0_34 ?a) (not (not_blocked seg_o1_110a_0_34 ?a))
       (blocked seg_o1_110d_0_45 ?a) (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action
  ugly30029ugly30302ugly30044ugly30544ugly29432ugly1016ugly232ugly407ugly699startup_seg_w1_164c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164c_0_34)
       (not_occupied seg_w1_c4a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a))))
 (:action
  ugly30030ugly29685ugly29207ugly29826ugly29982ugly181ugly341ugly850ugly27startup_seg_a3_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_a_0_158_647)
       (not_occupied seg_08l_a3b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a3b_0_161_245 ?a)
       (not (not_blocked seg_08l_a3b_0_161_245 ?a))))
 (:action
  ugly30031ugly29991ugly30488ugly29613ugly30335ugly1273ugly159ugly661ugly808move_seg_o1_108a_0_34_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_108c_0_34 airplane_daew8)
       (not_blocked seg_o1_108c_0_34 airplane_daew3)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe2)
       (not_occupied seg_o1_108b_0_60) (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (occupied seg_o1_108a_0_34)) (not_occupied seg_o1_108a_0_34)
       (not (at-segment ?a seg_o1_108a_0_34)) (occupied seg_o1_108c_0_34)
       (not (not_occupied seg_o1_108c_0_34)) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a)) (at-segment ?a seg_o1_108c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c2c_0_34 ?a)) (not_blocked seg_o1_c2c_0_34 ?a)
       (blocked seg_o1_108b_0_60 ?a) (not (not_blocked seg_o1_108b_0_60 ?a))
       (blocked seg_o1_108d_0_45 ?a) (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action
  ugly30032ugly29467ugly30498ugly29707ugly30162ugly318ugly179ugly879ugly1079move_seg_n_a4b_0_60_seg_n_a4c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4b_0_60) (not_occupied seg_n_a4c_0_60)
       (not_blocked seg_n_a4c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a4c_0_60 airplane_cfbe1)
       (not_blocked seg_n_a4c_0_60 airplane_cfbe3)
       (not_blocked seg_n_a4c_0_60 airplane_daew8)
       (not_blocked seg_n_a4c_0_60 airplane_daew3)
       (not_blocked seg_n_a4c_0_60 airplane_cfbe2)
       (not_occupied seg_n_a4a_0_60))
  :effect
  (and (not (occupied seg_n_a4b_0_60)) (not_occupied seg_n_a4b_0_60)
       (not (at-segment ?a seg_n_a4b_0_60)) (occupied seg_n_a4c_0_60)
       (not (not_occupied seg_n_a4c_0_60)) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a)) (at-segment ?a seg_n_a4c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n_a4a7a_0_115 ?a)) (not_blocked seg_n_a4a7a_0_115 ?a)
       (blocked seg_n_a4a_0_60 ?a) (not (not_blocked seg_n_a4a_0_60 ?a))))
 (:action
  ugly30033ugly29926ugly30470ugly29205ugly29555ugly1075ugly424ugly1067ugly629startup_seg_w1_154b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154b_0_45)
       (not_occupied seg_p154_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p154_0_75 ?a)
       (not (not_blocked seg_p154_0_75 ?a))))
 (:action
  ugly30034ugly29937ugly29842ugly30457ugly30198ugly1181ugly760ugly92ugly1011startup_seg_t_b3d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3d_0_60)
       (not_occupied seg_t_b2b3c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3c_0_140 ?a)
       (not (not_blocked seg_t_b2b3c_0_140 ?a))))
 (:action
  ugly30035ugly29305ugly29877ugly30218ugly30405ugly203ugly1004ugly224ugly732startup_seg_o1_110d_0_45_south_medium
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
  ugly30036ugly29572ugly30058ugly29346ugly29663ugly610ugly1304ugly698ugly772startup_seg_w1_152b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152b_0_45)
       (not_occupied seg_w1_152a_0_34) (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action
  ugly30037ugly29652ugly29203ugly30491ugly30098ugly270ugly933ugly869ugly475takeoff_seg_09r_0_80_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_09r_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_09r_0_80)) (not_occupied seg_09r_0_80)
       (not (blocked seg_09r_0_80 ?a)) (not_blocked seg_09r_0_80 ?a)
       (not (at-segment ?a seg_09r_0_80)) (airborne ?a seg_09r_0_80)
       (not (is-moving ?a)) (not (blocked seg_08r_b9b10_0_980 ?a))
       (not_blocked seg_08r_b9b10_0_980 ?a)))
 (:action
  ugly30038ugly29496ugly30027ugly29739ugly29522ugly1218ugly670ugly1234ugly722startup_seg_t_b8a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8a_0_60)
       (not_occupied seg_s_b8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b_0_60 ?a)
       (not (not_blocked seg_s_b8b_0_60 ?a))))
 (:action
  ugly30039ugly30461ugly30086ugly29297ugly29789ugly103ugly1335ugly575ugly329startup_seg_n_a6a8d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8d_0_75)
       (not_occupied seg_n_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8e_0_75 ?a)
       (not (not_blocked seg_n_a6a8e_0_75 ?a))))
 (:action
  ugly30040ugly29949ugly29835ugly29730ugly29664ugly374ugly829ugly222ugly348startup_seg_s_b6b7a_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b7a_0_140)
       (not_occupied seg_s_b6b7b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b7b_0_140 ?a)
       (not (not_blocked seg_s_b6b7b_0_140 ?a))))
 (:action
  ugly30041ugly29916ugly29192ugly29859ugly30306ugly488ugly177ugly372ugly979move_seg_w1_c3c_0_48_seg_w1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c3c_0_48) (not_occupied seg_w1_c3a_0_34)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_c3a_0_34 airplane_daew8)
       (not_blocked seg_w1_c3a_0_34 airplane_daew3)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbe2)
       (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (not (occupied seg_w1_c3c_0_48)) (not_occupied seg_w1_c3c_0_48)
       (not (at-segment ?a seg_w1_c3c_0_48)) (occupied seg_w1_c3a_0_34)
       (not (not_occupied seg_w1_c3a_0_34)) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (at-segment ?a seg_w1_c3a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_161a_0_34 ?a)) (not_blocked seg_w1_161a_0_34 ?a)
       (blocked seg_w1_c3b_0_60 ?a) (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action
  ugly30042ugly29670ugly29809ugly29788ugly29780ugly1136ugly1344ugly420ugly738park_seg_p141_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p141_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p141_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_141b_0_45 ?a)) (not_blocked seg_w1_141b_0_45 ?a)))
 (:action
  ugly30043ugly30310ugly29233ugly30065ugly30121ugly1189ugly458ugly1241ugly1206startup_seg_s_b9c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9c_0_60)
       (not_occupied seg_s_b8b9c_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9c_0_115 ?a)
       (not (not_blocked seg_s_b8b9c_0_115 ?a))))
 (:action
  ugly30044ugly30544ugly29432ugly30199ugly29764ugly1243ugly1030ugly1254ugly122startup_seg_n_a7a6c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6c_0_75)
       (not_occupied seg_n_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6b_0_75 ?a)
       (not (not_blocked seg_n_a7a6b_0_75 ?a))))
 (:action
  ugly30045ugly30399ugly30091ugly29801ugly30115ugly584ugly1085ugly844ugly501startup_seg_p110_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p110_0_76)
       (not_occupied seg_o1_110b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a))))
 (:action
  ugly30046ugly29806ugly30064ugly30206ugly29581ugly1251ugly469ugly1098ugly70move_seg_p109_0_76_seg_o1_109b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p109_0_76) (not_occupied seg_o1_109b_0_60)
       (not_blocked seg_o1_109b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_109b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_109b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_109b_0_60 airplane_daew8)
       (not_blocked seg_o1_109b_0_60 airplane_daew3)
       (not_blocked seg_o1_109b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p109_0_76)) (not_occupied seg_p109_0_76)
       (not (at-segment ?a seg_p109_0_76)) (occupied seg_o1_109b_0_60)
       (not (not_occupied seg_o1_109b_0_60)) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a))
       (at-segment ?a seg_o1_109b_0_60)))
 (:action
  ugly30047ugly30298ugly30003ugly30495ugly29515ugly617ugly209ugly1196ugly818move_seg_p118_0_76_seg_o1_118b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p118_0_76) (not_occupied seg_o1_118b_0_60)
       (not_blocked seg_o1_118b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_118b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_118b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_118b_0_60 airplane_daew8)
       (not_blocked seg_o1_118b_0_60 airplane_daew3)
       (not_blocked seg_o1_118b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p118_0_76)) (not_occupied seg_p118_0_76)
       (not (at-segment ?a seg_p118_0_76)) (occupied seg_o1_118b_0_60)
       (not (not_occupied seg_o1_118b_0_60)) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))
       (at-segment ?a seg_o1_118b_0_60)))
 (:action
  ugly30048ugly29816ugly29379ugly29635ugly29705ugly1182ugly34ugly491ugly718move_seg_w1_162b_0_45_seg_w1_162c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162b_0_45) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_162c_0_34 airplane_daew8)
       (not_blocked seg_w1_162c_0_34 airplane_daew3)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe2)
       (not_occupied seg_w1_162a_0_34))
  :effect
  (and (not (occupied seg_w1_162b_0_45)) (not_occupied seg_w1_162b_0_45)
       (not (at-segment ?a seg_w1_162b_0_45)) (occupied seg_w1_162c_0_34)
       (not (not_occupied seg_w1_162c_0_34)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a)) (at-segment ?a seg_w1_162c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p162_0_75 ?a)) (not_blocked seg_p162_0_75 ?a)
       (blocked seg_w1_162a_0_34 ?a) (not (not_blocked seg_w1_162a_0_34 ?a))))
 (:action
  ugly30049ugly30049ugly30049ugly30049ugly30049ugly866ugly382ugly1064ugly136startup_seg_o1_115c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115c_0_34)
       (not_occupied seg_o1_116a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a))))
 (:action
  ugly30050ugly29540ugly30276ugly29190ugly30272ugly127ugly1281ugly87ugly400move_seg_p164_0_75_seg_w1_164b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p164_0_75) (not_occupied seg_w1_164b_0_45)
       (not_blocked seg_w1_164b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_164b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_164b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_164b_0_45 airplane_daew8)
       (not_blocked seg_w1_164b_0_45 airplane_daew3)
       (not_blocked seg_w1_164b_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p164_0_75)) (not_occupied seg_p164_0_75)
       (not (at-segment ?a seg_p164_0_75)) (occupied seg_w1_164b_0_45)
       (not (not_occupied seg_w1_164b_0_45)) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a))
       (at-segment ?a seg_w1_164b_0_45)))
 (:action
  ugly30051ugly30099ugly30472ugly29300ugly29728ugly36ugly517ugly356ugly422move_seg_w1_143a_0_34_seg_w1_142c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_142c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_142c_0_34 airplane_daew8)
       (not_blocked seg_w1_142c_0_34 airplane_daew3)
       (not_blocked seg_w1_142c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_143a_0_34)) (not_occupied seg_w1_143a_0_34)
       (not (at-segment ?a seg_w1_143a_0_34)) (occupied seg_w1_142c_0_34)
       (not (not_occupied seg_w1_142c_0_34)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a)) (at-segment ?a seg_w1_142c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_143b_0_45 ?a)) (not_blocked seg_w1_143b_0_45 ?a)
       (not (blocked seg_w1_143c_0_60 ?a)) (not_blocked seg_w1_143c_0_60 ?a)))
 (:action
  ugly30052ugly29537ugly29246ugly30263ugly30255ugly23ugly605ugly436ugly1276startup_seg_o1_108c_0_34_south_medium
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
  ugly30053ugly30417ugly29651ugly29494ugly30295ugly1240ugly63ugly1299ugly109move_seg_w1_164b_0_45_seg_w1_164c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164b_0_45) (not_occupied seg_w1_164c_0_34)
       (not_blocked seg_w1_164c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_164c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_164c_0_34 airplane_daew8)
       (not_blocked seg_w1_164c_0_34 airplane_daew3)
       (not_blocked seg_w1_164c_0_34 airplane_cfbe2)
       (not_occupied seg_w1_164a_0_34))
  :effect
  (and (not (occupied seg_w1_164b_0_45)) (not_occupied seg_w1_164b_0_45)
       (not (at-segment ?a seg_w1_164b_0_45)) (occupied seg_w1_164c_0_34)
       (not (not_occupied seg_w1_164c_0_34)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a)) (at-segment ?a seg_w1_164c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p164_0_75 ?a)) (not_blocked seg_p164_0_75 ?a)
       (blocked seg_w1_164a_0_34 ?a) (not (not_blocked seg_w1_164a_0_34 ?a))))
 (:action
  ugly30054ugly29544ugly29641ugly30385ugly29682ugly186ugly126ugly506ugly421move_seg_n_a7c_0_60_seg_n_a4a7f_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a7c_0_60) (not_occupied seg_n_a4a7f_0_75)
       (not_blocked seg_n_a4a7f_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7f_0_75 airplane_cfbe1)
       (not_blocked seg_n_a4a7f_0_75 airplane_cfbe3)
       (not_blocked seg_n_a4a7f_0_75 airplane_daew8)
       (not_blocked seg_n_a4a7f_0_75 airplane_daew3)
       (not_blocked seg_n_a4a7f_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a7c_0_60)) (not_occupied seg_n_a7c_0_60)
       (not (at-segment ?a seg_n_a7c_0_60)) (occupied seg_n_a4a7f_0_75)
       (not (not_occupied seg_n_a4a7f_0_75)) (blocked seg_n_a4a7f_0_75 ?a)
       (not (not_blocked seg_n_a4a7f_0_75 ?a)) (at-segment ?a seg_n_a4a7f_0_75)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_n_a7a_0_60 ?a)) (not_blocked seg_n_a7a_0_60 ?a)
       (not (blocked seg_n_a7b_0_60 ?a)) (not_blocked seg_n_a7b_0_60 ?a)))
 (:action
  ugly30055ugly29804ugly29407ugly29216ugly30371ugly1260ugly399ugly690ugly432park_seg_p162_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p162_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p162_0_75) (not (is-moving ?a))))
 (:action
  ugly30056ugly30490ugly29923ugly29820ugly29303ugly658ugly161ugly494ugly793move_seg_p103_0_76_seg_o1_103b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p103_0_76) (not_occupied seg_o1_103b_0_60)
       (not_blocked seg_o1_103b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_103b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_103b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_103b_0_60 airplane_daew8)
       (not_blocked seg_o1_103b_0_60 airplane_daew3)
       (not_blocked seg_o1_103b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p103_0_76)) (not_occupied seg_p103_0_76)
       (not (at-segment ?a seg_p103_0_76)) (occupied seg_o1_103b_0_60)
       (not (not_occupied seg_o1_103b_0_60)) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a))
       (at-segment ?a seg_o1_103b_0_60)))
 (:action
  ugly30057ugly29903ugly29384ugly29304ugly29431ugly378ugly712ugly837ugly646move_seg_w1_141a_0_34_seg_w1_141b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_141b_0_45)
       (not_blocked seg_w1_141b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_141b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_141b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_141b_0_45 airplane_daew8)
       (not_blocked seg_w1_141b_0_45 airplane_daew3)
       (not_blocked seg_w1_141b_0_45 airplane_cfbe2)
       (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (occupied seg_w1_141a_0_34)) (not_occupied seg_w1_141a_0_34)
       (not (at-segment ?a seg_w1_141a_0_34)) (occupied seg_w1_141b_0_45)
       (not (not_occupied seg_w1_141b_0_45)) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a)) (at-segment ?a seg_w1_141b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c1c_0_34 ?a)) (not_blocked seg_w1_c1c_0_34 ?a)
       (blocked seg_w1_141c_0_34 ?a) (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly30058ugly29346ugly29663ugly29793ugly29328ugly904ugly1141ugly777ugly903move_seg_w1_154c_0_34_seg_w1_154b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154c_0_34) (not_occupied seg_w1_154b_0_45)
       (not_blocked seg_w1_154b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_154b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_154b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_154b_0_45 airplane_daew8)
       (not_blocked seg_w1_154b_0_45 airplane_daew3)
       (not_blocked seg_w1_154b_0_45 airplane_cfbe2)
       (not_occupied seg_w1_154a_0_34))
  :effect
  (and (not (occupied seg_w1_154c_0_34)) (not_occupied seg_w1_154c_0_34)
       (not (at-segment ?a seg_w1_154c_0_34)) (occupied seg_w1_154b_0_45)
       (not (not_occupied seg_w1_154b_0_45)) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a)) (at-segment ?a seg_w1_154b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c3a_0_34 ?a)) (not_blocked seg_w1_c3a_0_34 ?a)
       (blocked seg_w1_154a_0_34 ?a) (not (not_blocked seg_w1_154a_0_34 ?a))))
 (:action
  ugly30059ugly30452ugly29944ugly29623ugly29549ugly71ugly904ugly1141ugly777startup_seg_o1_104a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104a_0_34)
       (not_occupied seg_o1_104b_0_60) (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action
  ugly30060ugly30135ugly29403ugly30482ugly30296ugly535ugly534ugly321ugly208startup_seg_t_b2b3c_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3c_0_140)
       (not_occupied seg_t_b3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3d_0_60 ?a)
       (not (not_blocked seg_t_b3d_0_60 ?a))))
 (:action
  ugly30061ugly30460ugly29236ugly29781ugly30374ugly1264ugly296ugly276ugly393startup_seg_w1_152c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152c_0_34)
       (not_occupied seg_w1_152a_0_34) (not_occupied seg_w1_152b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action
  ugly30062ugly29644ugly30288ugly30209ugly29766ugly937ugly992ugly143ugly327move_seg_s_b5b_0_60_seg_s_b5a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b5b_0_60) (not_occupied seg_s_b5a_0_60)
       (not_blocked seg_s_b5a_0_60 airplane_cfbeg)
       (not_blocked seg_s_b5a_0_60 airplane_cfbe1)
       (not_blocked seg_s_b5a_0_60 airplane_cfbe3)
       (not_blocked seg_s_b5a_0_60 airplane_daew8)
       (not_blocked seg_s_b5a_0_60 airplane_daew3)
       (not_blocked seg_s_b5a_0_60 airplane_cfbe2)
       (not_occupied seg_s_b5c_0_60) (not_occupied seg_s_b5d_0_60))
  :effect
  (and (not (occupied seg_s_b5b_0_60)) (not_occupied seg_s_b5b_0_60)
       (not (at-segment ?a seg_s_b5b_0_60)) (occupied seg_s_b5a_0_60)
       (not (not_occupied seg_s_b5a_0_60)) (blocked seg_s_b5a_0_60 ?a)
       (not (not_blocked seg_s_b5a_0_60 ?a)) (at-segment ?a seg_s_b5a_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_s_b5b8a_0_135 ?a)) (not_blocked seg_s_b5b8a_0_135 ?a)
       (blocked seg_s_b5c_0_60 ?a) (not (not_blocked seg_s_b5c_0_60 ?a))
       (blocked seg_s_b5d_0_60 ?a) (not (not_blocked seg_s_b5d_0_60 ?a))))
 (:action
  ugly30063ugly30147ugly30179ugly30117ugly29924ugly384ugly9ugly485ugly784move_seg_w1_151c_0_34_seg_w1_151b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151c_0_34) (not_occupied seg_w1_151b_0_45)
       (not_blocked seg_w1_151b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_151b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_151b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_151b_0_45 airplane_daew8)
       (not_blocked seg_w1_151b_0_45 airplane_daew3)
       (not_blocked seg_w1_151b_0_45 airplane_cfbe2)
       (not_occupied seg_w1_151a_0_34))
  :effect
  (and (not (occupied seg_w1_151c_0_34)) (not_occupied seg_w1_151c_0_34)
       (not (at-segment ?a seg_w1_151c_0_34)) (occupied seg_w1_151b_0_45)
       (not (not_occupied seg_w1_151b_0_45)) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a)) (at-segment ?a seg_w1_151b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_152a_0_34 ?a)) (not_blocked seg_w1_152a_0_34 ?a)
       (blocked seg_w1_151a_0_34 ?a) (not (not_blocked seg_w1_151a_0_34 ?a))))
 (:action
  ugly30064ugly30206ugly29581ugly30434ugly29785ugly393ugly789ugly1337ugly118startup_seg_t_b9b10a_0_125_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10a_0_125)
       (not_occupied seg_t_b9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b_0_60 ?a)
       (not (not_blocked seg_t_b9b_0_60 ?a))))
 (:action
  ugly30065ugly30121ugly30372ugly29495ugly30143ugly213ugly343ugly873ugly899startup_seg_n_a4a7f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7f_0_75)
       (not_occupied seg_n_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7e_0_75 ?a)
       (not (not_blocked seg_n_a4a7e_0_75 ?a))))
 (:action
  ugly30066ugly30516ugly30410ugly29569ugly30193ugly1174ugly845ugly1272ugly1080startup_seg_o1_104c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104c_0_60)
       (not_occupied seg_o1_c2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a))))
 (:action
  ugly30067ugly29524ugly29928ugly29288ugly30344ugly1057ugly396ugly731ugly1133startup_seg_n_a6a8c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8c_0_75)
       (not_occupied seg_n_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8b_0_75 ?a)
       (not (not_blocked seg_n_a6a8b_0_75 ?a))))
 (:action
  ugly30068ugly29661ugly30479ugly29318ugly29199ugly843ugly1044ugly994ugly726startup_seg_t_b9a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9a_0_60)
       (not_occupied seg_t_b9b_0_60) (not_occupied seg_t_b9c_0_120_934)
       (not_occupied seg_t_b9d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b_0_60 ?a)
       (not (not_blocked seg_t_b9b_0_60 ?a)) (blocked seg_t_b9c_0_120_934 ?a)
       (not (not_blocked seg_t_b9c_0_120_934 ?a)) (blocked seg_t_b9d_0_60 ?a)
       (not (not_blocked seg_t_b9d_0_60 ?a))))
 (:action
  ugly30069ugly30150ugly30294ugly29291ugly29350ugly687ugly1194ugly1172ugly966move_seg_o1_c1a_0_60_seg_o1_c1c_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_o1_c1c_0_80)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe1)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe3)
       (not_blocked seg_o1_c1c_0_80 airplane_daew8)
       (not_blocked seg_o1_c1c_0_80 airplane_daew3)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe2)
       (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (not (occupied seg_o1_c1a_0_60)) (not_occupied seg_o1_c1a_0_60)
       (not (at-segment ?a seg_o1_c1a_0_60)) (occupied seg_o1_c1c_0_80)
       (not (not_occupied seg_o1_c1c_0_80)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a)) (at-segment ?a seg_o1_c1c_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p101_0_76 ?a)) (not_blocked seg_p101_0_76 ?a)
       (blocked seg_o1_c1b_0_34 ?a) (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action
  ugly30070ugly29381ugly30510ugly30530ugly29725ugly185ugly1365ugly1278ugly261startup_seg_o1_110b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110b_0_60)
       (not_occupied seg_p110_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p110_0_76 ?a)
       (not (not_blocked seg_p110_0_76 ?a))))
 (:action
  ugly30071ugly29482ugly29794ugly29884ugly30158ugly858ugly1041ugly1319ugly954startup_seg_m_a6a8c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8c_0_75)
       (not_occupied seg_m_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8b_0_75 ?a)
       (not (not_blocked seg_m_a6a8b_0_75 ?a))))
 (:action
  ugly30072ugly29448ugly29383ugly29854ugly29245ugly531ugly309ugly909ugly185startup_seg_t_b9b10c_2_0_83_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_2_0_83)
       (not_occupied seg_t_b9b10c_1_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_1_0_83 ?a)
       (not (not_blocked seg_t_b9b10c_1_0_83 ?a))))
 (:action
  ugly30073ugly29649ugly29337ugly29198ugly30499ugly453ugly73ugly1240ugly63startup_seg_n_a7c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7c_0_60)
       (not_occupied seg_n_a7a_0_60) (not_occupied seg_n_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a)) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a))))
 (:action
  ugly30074ugly30105ugly29792ugly30277ugly29958ugly6ugly1200ugly1265ugly598move_seg_o1_116b_0_60_seg_o1_116c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116b_0_60) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_116c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_116c_0_34 airplane_daew8)
       (not_blocked seg_o1_116c_0_34 airplane_daew3)
       (not_blocked seg_o1_116c_0_34 airplane_cfbe2)
       (not_occupied seg_o1_116a_0_34))
  :effect
  (and (not (occupied seg_o1_116b_0_60)) (not_occupied seg_o1_116b_0_60)
       (not (at-segment ?a seg_o1_116b_0_60)) (occupied seg_o1_116c_0_34)
       (not (not_occupied seg_o1_116c_0_34)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a)) (at-segment ?a seg_o1_116c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p116_0_76 ?a)) (not_blocked seg_p116_0_76 ?a)
       (blocked seg_o1_116a_0_34 ?a) (not (not_blocked seg_o1_116a_0_34 ?a))))
 (:action
  ugly30075ugly29389ugly29554ugly30111ugly30187ugly515ugly755ugly1161ugly748startup_seg_m_a6a8f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8f_0_115)
       (not_occupied seg_m_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8e_0_75 ?a)
       (not (not_blocked seg_m_a6a8e_0_75 ?a))))
 (:action
  ugly30076ugly29751ugly29229ugly30324ugly29935ugly56ugly238ugly695ugly1031park_seg_p110_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p110_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p110_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_110b_0_60 ?a)) (not_blocked seg_o1_110b_0_60 ?a)))
 (:action
  ugly30077ugly30169ugly29504ugly29837ugly30437ugly1297ugly111ugly1169ugly649move_seg_o1_108a_0_34_seg_o1_c2c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_c2c_0_34)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c2c_0_34 airplane_daew8)
       (not_blocked seg_o1_c2c_0_34 airplane_daew3)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_108a_0_34)) (not_occupied seg_o1_108a_0_34)
       (not (at-segment ?a seg_o1_108a_0_34)) (occupied seg_o1_c2c_0_34)
       (not (not_occupied seg_o1_c2c_0_34)) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a)) (at-segment ?a seg_o1_c2c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_108b_0_60 ?a)) (not_blocked seg_o1_108b_0_60 ?a)
       (not (blocked seg_o1_108c_0_34 ?a)) (not_blocked seg_o1_108c_0_34 ?a)
       (not (blocked seg_o1_108d_0_45 ?a)) (not_blocked seg_o1_108d_0_45 ?a)))
 (:action
  ugly30078ugly30533ugly29474ugly29998ugly30281ugly913ugly116ugly1074ugly1081move_seg_w1_163c_0_34_seg_w1_164a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163c_0_34) (not_occupied seg_w1_164a_0_34)
       (not_blocked seg_w1_164a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_164a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_164a_0_34 airplane_daew8)
       (not_blocked seg_w1_164a_0_34 airplane_daew3)
       (not_blocked seg_w1_164a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_163c_0_34)) (not_occupied seg_w1_163c_0_34)
       (not (at-segment ?a seg_w1_163c_0_34)) (occupied seg_w1_164a_0_34)
       (not (not_occupied seg_w1_164a_0_34)) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (at-segment ?a seg_w1_164a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_163a_0_34 ?a)) (not_blocked seg_w1_163a_0_34 ?a)
       (not (blocked seg_w1_163b_0_45 ?a)) (not_blocked seg_w1_163b_0_45 ?a)))
 (:action
  ugly30079ugly29475ugly29951ugly29880ugly29603ugly367ugly293ugly1039ugly693move_seg_o1_103a_0_34_seg_o1_103b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_103b_0_60)
       (not_blocked seg_o1_103b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_103b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_103b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_103b_0_60 airplane_daew8)
       (not_blocked seg_o1_103b_0_60 airplane_daew3)
       (not_blocked seg_o1_103b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (occupied seg_o1_103a_0_34)) (not_occupied seg_o1_103a_0_34)
       (not (at-segment ?a seg_o1_103a_0_34)) (occupied seg_o1_103b_0_60)
       (not (not_occupied seg_o1_103b_0_60)) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a)) (at-segment ?a seg_o1_103b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_102c_0_34 ?a)) (not_blocked seg_o1_102c_0_34 ?a)
       (blocked seg_o1_103c_0_34 ?a) (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action
  ugly30080ugly29911ugly29282ugly29445ugly29365ugly155ugly1052ugly861ugly938startup_seg_s_b10b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b10b_0_60)
       (not_occupied seg_s_b9b10c_0_84))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_0_84 ?a)
       (not (not_blocked seg_s_b9b10c_0_84 ?a))))
 (:action
  ugly30081ugly29256ugly30383ugly29783ugly29676ugly990ugly160ugly912ugly1253startup_seg_m_a7a6a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6a_0_75)
       (not_occupied seg_m_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7b_0_60 ?a)
       (not (not_blocked seg_m_a7b_0_60 ?a))))
 (:action
  ugly30082ugly29738ugly30230ugly30246ugly29429ugly379ugly1165ugly1174ugly845startup_seg_n_n2a4b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4b_0_75)
       (not_occupied seg_n_n2a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4c_0_75 ?a)
       (not (not_blocked seg_n_n2a4c_0_75 ?a))))
 (:action
  ugly30083ugly29886ugly30176ugly30097ugly30400ugly859ugly723ugly1045ugly1264move_seg_o1_c4a_0_34_seg_o1_118c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4a_0_34) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_118c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_118c_0_34 airplane_daew8)
       (not_blocked seg_o1_118c_0_34 airplane_daew3)
       (not_blocked seg_o1_118c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_c4a_0_34)) (not_occupied seg_o1_c4a_0_34)
       (not (at-segment ?a seg_o1_c4a_0_34)) (occupied seg_o1_118c_0_34)
       (not (not_occupied seg_o1_118c_0_34)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a)) (at-segment ?a seg_o1_118c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c4b_0_60 ?a)) (not_blocked seg_o1_c4b_0_60 ?a)
       (not (blocked seg_o1_c4c_0_80 ?a)) (not_blocked seg_o1_c4c_0_80 ?a)))
 (:action
  ugly30084ugly29493ugly29419ugly30412ugly29491ugly55ugly1168ugly54ugly678move_seg_o1_c2c_0_34_seg_o1_108a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2c_0_34) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_108a_0_34 airplane_daew8)
       (not_blocked seg_o1_108a_0_34 airplane_daew3)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_c2c_0_34)) (not_occupied seg_o1_c2c_0_34)
       (not (at-segment ?a seg_o1_c2c_0_34)) (occupied seg_o1_108a_0_34)
       (not (not_occupied seg_o1_108a_0_34)) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a)) (at-segment ?a seg_o1_108a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c2a_0_60 ?a)) (not_blocked seg_o1_c2a_0_60 ?a)
       (not (blocked seg_o1_c2b_0_60 ?a)) (not_blocked seg_o1_c2b_0_60 ?a)
       (not (blocked seg_o1_c2d_0_60 ?a)) (not_blocked seg_o1_c2d_0_60 ?a)))
 (:action
  ugly30085ugly30019ugly29941ugly30219ugly29230ugly227ugly374ugly829ugly222move_seg_o1_c2d_0_60_seg_o1_c2c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_o1_c2c_0_34)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c2c_0_34 airplane_daew8)
       (not_blocked seg_o1_c2c_0_34 airplane_daew3)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe2)
       (not_occupied seg_o1_c2a_0_60) (not_occupied seg_o1_c2b_0_60))
  :effect
  (and (not (occupied seg_o1_c2d_0_60)) (not_occupied seg_o1_c2d_0_60)
       (not (at-segment ?a seg_o1_c2d_0_60)) (occupied seg_o1_c2c_0_34)
       (not (not_occupied seg_o1_c2c_0_34)) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a)) (at-segment ?a seg_o1_c2c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_c2_b_0_80 ?a)) (not_blocked seg_c2_b_0_80 ?a)
       (blocked seg_o1_c2a_0_60 ?a) (not (not_blocked seg_o1_c2a_0_60 ?a))
       (blocked seg_o1_c2b_0_60 ?a) (not (not_blocked seg_o1_c2b_0_60 ?a))))
 (:action
  ugly30086ugly29297ugly29789ugly29286ugly29596ugly489ugly120ugly781ugly443startup_seg_n_a10b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10b_0_60)
       (not_occupied seg_n_a9a10g_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10g_0_75 ?a)
       (not (not_blocked seg_n_a9a10g_0_75 ?a))))
 (:action
  ugly30087ugly30463ugly30226ugly30379ugly29771ugly239ugly151ugly1023ugly220startup_seg_w1_143a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143a_0_34)
       (not_occupied seg_w1_143b_0_45) (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action
  ugly30088ugly29580ugly29449ugly29191ugly30526ugly11ugly389ugly342ugly728startup_seg_w1_153a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153a_0_34)
       (not_occupied seg_w1_153b_0_45) (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action
  ugly30089ugly29299ugly30514ugly29463ugly29825ugly258ugly511ugly301ugly3startup_seg_n_a7a6a_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6a_0_85)
       (not_occupied seg_n_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6b_0_75 ?a)
       (not (not_blocked seg_n_a7a6b_0_75 ?a))))
 (:action
  ugly30090ugly30448ugly29642ugly30531ugly30062ugly461ugly884ugly349ugly1027move_seg_s_b4b6a_0_135_seg_s_b4a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b4b6a_0_135) (not_occupied seg_s_b4a_0_60)
       (not_blocked seg_s_b4a_0_60 airplane_cfbeg)
       (not_blocked seg_s_b4a_0_60 airplane_cfbe1)
       (not_blocked seg_s_b4a_0_60 airplane_cfbe3)
       (not_blocked seg_s_b4a_0_60 airplane_daew8)
       (not_blocked seg_s_b4a_0_60 airplane_daew3)
       (not_blocked seg_s_b4a_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b4b6a_0_135)) (not_occupied seg_s_b4b6a_0_135)
       (not (at-segment ?a seg_s_b4b6a_0_135)) (occupied seg_s_b4a_0_60)
       (not (not_occupied seg_s_b4a_0_60)) (blocked seg_s_b4a_0_60 ?a)
       (not (not_blocked seg_s_b4a_0_60 ?a)) (at-segment ?a seg_s_b4a_0_60)
       (not (blocked seg_s_b4b6b_0_135 ?a))
       (not_blocked seg_s_b4b6b_0_135 ?a)))
 (:action
  ugly30091ugly29801ugly30115ugly29767ugly29667ugly1328ugly472ugly973ugly546startup_seg_08l_a4c_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a4c_0_161_245)
       (not_occupied seg_a4_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_a_0_157_785 ?a)
       (not (not_blocked seg_a4_a_0_157_785 ?a))))
 (:action
  ugly30092ugly30442ugly30063ugly30147ugly30179ugly934ugly958ugly1153ugly734startup_seg_o1_110d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110d_0_45)
       (not_occupied seg_p133_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p133_0_75 ?a)
       (not (not_blocked seg_p133_0_75 ?a))))
 (:action
  ugly30093ugly29895ugly30445ugly29185ugly30155ugly590ugly1255ugly362ugly857startup_seg_n_a4a7b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7b_0_75)
       (not_occupied seg_n_a4a7a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7a_0_115 ?a)
       (not (not_blocked seg_n_a4a7a_0_115 ?a))))
 (:action
  ugly30094ugly30088ugly29580ugly29449ugly29191ugly1343ugly1131ugly16ugly955startup_seg_o1_c3d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3d_0_60)
       (not_occupied seg_c3_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_b_0_80 ?a)
       (not (not_blocked seg_c3_b_0_80 ?a))))
 (:action
  ugly30095ugly29602ugly29481ugly29986ugly29375ugly1059ugly142ugly205ugly217move_seg_n_a4a7b_0_75_seg_n_a4a7a_0_115_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7b_0_75) (not_occupied seg_n_a4a7a_0_115)
       (not_blocked seg_n_a4a7a_0_115 airplane_cfbeg)
       (not_blocked seg_n_a4a7a_0_115 airplane_cfbe1)
       (not_blocked seg_n_a4a7a_0_115 airplane_cfbe3)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew8)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew3)
       (not_blocked seg_n_a4a7a_0_115 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a4a7b_0_75)) (not_occupied seg_n_a4a7b_0_75)
       (not (at-segment ?a seg_n_a4a7b_0_75)) (occupied seg_n_a4a7a_0_115)
       (not (not_occupied seg_n_a4a7a_0_115)) (blocked seg_n_a4a7a_0_115 ?a)
       (not (not_blocked seg_n_a4a7a_0_115 ?a))
       (at-segment ?a seg_n_a4a7a_0_115) (not (blocked seg_n_a4a7c_0_75 ?a))
       (not_blocked seg_n_a4a7c_0_75 ?a)))
 (:action
  ugly30096ugly29784ugly30323ugly30116ugly29848ugly749ugly959ugly1024ugly53startup_seg_o1_103a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103a_0_34)
       (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action
  ugly30097ugly30400ugly30042ugly29670ugly29809ugly605ugly436ugly1276ugly931startup_seg_n_n2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a_0_60)
       (not_occupied seg_n_n2b_0_60) (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a)) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action
  ugly30098ugly29453ugly29831ugly30094ugly30088ugly397ugly697ugly867ugly778move_seg_w1_154c_0_34_seg_w1_154a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154c_0_34) (not_occupied seg_w1_154a_0_34)
       (not_blocked seg_w1_154a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_154a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_154a_0_34 airplane_daew8)
       (not_blocked seg_w1_154a_0_34 airplane_daew3)
       (not_blocked seg_w1_154a_0_34 airplane_cfbe2)
       (not_occupied seg_w1_154b_0_45))
  :effect
  (and (not (occupied seg_w1_154c_0_34)) (not_occupied seg_w1_154c_0_34)
       (not (at-segment ?a seg_w1_154c_0_34)) (occupied seg_w1_154a_0_34)
       (not (not_occupied seg_w1_154a_0_34)) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (at-segment ?a seg_w1_154a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c3a_0_34 ?a)) (not_blocked seg_w1_c3a_0_34 ?a)
       (blocked seg_w1_154b_0_45 ?a) (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action
  ugly30099ugly30472ugly29300ugly29728ugly29219ugly564ugly976ugly129ugly572move_seg_w1_161b_0_45_seg_w1_161c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161b_0_45) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_161c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_161c_0_34 airplane_daew8)
       (not_blocked seg_w1_161c_0_34 airplane_daew3)
       (not_blocked seg_w1_161c_0_34 airplane_cfbe2)
       (not_occupied seg_w1_161a_0_34))
  :effect
  (and (not (occupied seg_w1_161b_0_45)) (not_occupied seg_w1_161b_0_45)
       (not (at-segment ?a seg_w1_161b_0_45)) (occupied seg_w1_161c_0_34)
       (not (not_occupied seg_w1_161c_0_34)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a)) (at-segment ?a seg_w1_161c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p161_0_75 ?a)) (not_blocked seg_p161_0_75 ?a)
       (blocked seg_w1_161a_0_34 ?a) (not (not_blocked seg_w1_161a_0_34 ?a))))
 (:action
  ugly30100ugly29857ugly30082ugly29738ugly30230ugly1063ugly529ugly227ugly374park_seg_p161_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p161_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p161_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_161b_0_45 ?a)) (not_blocked seg_w1_161b_0_45 ?a)))
 (:action
  ugly30101ugly29610ugly30119ugly30114ugly30525ugly44ugly190ugly1129ugly707startup_seg_s_b3b4d_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4d_0_140)
       (not_occupied seg_s_b3b4c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4c_0_140 ?a)
       (not (not_blocked seg_s_b3b4c_0_140 ?a))))
 (:action
  ugly30102ugly29691ugly30004ugly29321ugly30494ugly199ugly1261ugly1347ugly730startup_seg_w1_c3c_0_48_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3c_0_48)
       (not_occupied seg_w1_c3a_0_34) (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action
  ugly30103ugly29391ugly30446ugly30406ugly29632ugly579ugly1364ugly1054ugly385startup_seg_t_b9b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b_0_60)
       (not_occupied seg_t_b9a_0_60) (not_occupied seg_t_b9c_0_120_934)
       (not_occupied seg_t_b9d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9a_0_60 ?a)
       (not (not_blocked seg_t_b9a_0_60 ?a)) (blocked seg_t_b9c_0_120_934 ?a)
       (not (not_blocked seg_t_b9c_0_120_934 ?a)) (blocked seg_t_b9d_0_60 ?a)
       (not (not_blocked seg_t_b9d_0_60 ?a))))
 (:action
  ugly30104ugly29940ugly30537ugly30503ugly30018ugly801ugly1015ugly355ugly1355startup_seg_s_b4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b_0_60)
       (not_occupied seg_t_b4a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4a_0_60 ?a)
       (not (not_blocked seg_t_b4a_0_60 ?a))))
 (:action
  ugly30105ugly29792ugly30277ugly29958ugly29189ugly1215ugly496ugly594ugly590startup_seg_n_a2a3e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3e_0_75)
       (not_occupied seg_n_a2a3d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3d_0_75 ?a)
       (not (not_blocked seg_n_a2a3d_0_75 ?a))))
 (:action
  ugly30106ugly30076ugly29751ugly29229ugly30324ugly752ugly1170ugly153ugly756startup_seg_b5_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b5_a_0_158_647)
       (not_occupied seg_b5_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b5_b_0_159_512 ?a)
       (not (not_blocked seg_b5_b_0_159_512 ?a))))
 (:action
  ugly30107ugly30250ugly29878ugly29225ugly29647ugly1018ugly211ugly164ugly640startup_seg_t_b9b10c_0_84_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_0_84)
       (not_occupied seg_t_b10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10c_0_60 ?a)
       (not (not_blocked seg_t_b10c_0_60 ?a))))
 (:action
  ugly30108ugly30340ugly29737ugly30059ugly30452ugly761ugly493ugly681ugly1150startup_seg_m_a3a4c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4c_0_75)
       (not_occupied seg_m_a3a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4b_0_75 ?a)
       (not (not_blocked seg_m_a3a4b_0_75 ?a))))
 (:action
  ugly30109ugly30282ugly29693ugly29237ugly29704ugly573ugly154ugly918ugly719startup_seg_s_b2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2a_0_60)
       (not_occupied seg_s_b2b3a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3a_0_140 ?a)
       (not (not_blocked seg_s_b2b3a_0_140 ?a))))
 (:action
  ugly30110ugly29760ugly30409ugly29822ugly30362ugly385ugly603ugly573ugly154startup_seg_o1_c2d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2d_0_60)
       (not_occupied seg_c2_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a))))
 (:action
  ugly30111ugly30187ugly29698ugly30485ugly29324ugly857ugly1287ugly214ugly35move_seg_c1_n2c_0_60_seg_w1_c1b_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c1_n2c_0_60) (not_occupied seg_w1_c1b_0_60)
       (not_blocked seg_w1_c1b_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1b_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c1b_0_60 airplane_cfbe3)
       (not_blocked seg_w1_c1b_0_60 airplane_daew8)
       (not_blocked seg_w1_c1b_0_60 airplane_daew3)
       (not_blocked seg_w1_c1b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_c1_n2c_0_60)) (not_occupied seg_c1_n2c_0_60)
       (not (at-segment ?a seg_c1_n2c_0_60)) (occupied seg_w1_c1b_0_60)
       (not (not_occupied seg_w1_c1b_0_60)) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a)) (at-segment ?a seg_w1_c1b_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_c1_n2a_0_60 ?a)) (not_blocked seg_c1_n2a_0_60 ?a)
       (not (blocked seg_c1_n2b_0_80 ?a)) (not_blocked seg_c1_n2b_0_80 ?a)))
 (:action
  ugly30112ugly29626ugly29594ugly30237ugly30367ugly377ugly155ugly1052ugly861startup_seg_o1_109a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109a_0_34)
       (not_occupied seg_o1_108c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a))))
 (:action
  ugly30113ugly30229ugly30225ugly30161ugly30073ugly466ugly796ugly1315ugly1053move_seg_w1_164c_0_34_seg_w1_164b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164c_0_34) (not_occupied seg_w1_164b_0_45)
       (not_blocked seg_w1_164b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_164b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_164b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_164b_0_45 airplane_daew8)
       (not_blocked seg_w1_164b_0_45 airplane_daew3)
       (not_blocked seg_w1_164b_0_45 airplane_cfbe2)
       (not_occupied seg_w1_164a_0_34))
  :effect
  (and (not (occupied seg_w1_164c_0_34)) (not_occupied seg_w1_164c_0_34)
       (not (at-segment ?a seg_w1_164c_0_34)) (occupied seg_w1_164b_0_45)
       (not (not_occupied seg_w1_164b_0_45)) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a)) (at-segment ?a seg_w1_164b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c4a_0_34 ?a)) (not_blocked seg_w1_c4a_0_34 ?a)
       (blocked seg_w1_164a_0_34 ?a) (not (not_blocked seg_w1_164a_0_34 ?a))))
 (:action
  ugly30114ugly30525ugly29227ugly30259ugly29278ugly845ugly1272ugly1080ugly906pushback_seg_o1_108d_0_45_seg_o1_108a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_108a_0_34 airplane_daew8)
       (not_blocked seg_o1_108a_0_34 airplane_daew3)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_108d_0_45)) (not_occupied seg_o1_108d_0_45)
       (not (blocked seg_o1_108d_0_45 ?a)) (not_blocked seg_o1_108d_0_45 ?a)
       (not (at-segment ?a seg_o1_108d_0_45)) (occupied seg_o1_108a_0_34)
       (not (not_occupied seg_o1_108a_0_34)) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a)) (at-segment ?a seg_o1_108a_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly30115ugly29767ugly29667ugly30511ugly30183ugly871ugly1043ugly622ugly709startup_seg_w1_161b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161b_0_45)
       (not_occupied seg_w1_161a_0_34) (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action
  ugly30116ugly29848ugly29932ugly29960ugly30269ugly511ugly301ugly3ugly1300startup_seg_n_a9a10g_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10g_0_75)
       (not_occupied seg_n_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10b_0_60 ?a)
       (not (not_blocked seg_n_a10b_0_60 ?a))))
 (:action
  ugly30117ugly29924ugly29567ugly29666ugly30070ugly198ugly929ugly1236ugly1125move_seg_p108_0_76_seg_o1_108b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p108_0_76) (not_occupied seg_o1_108b_0_60)
       (not_blocked seg_o1_108b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_108b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_108b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_108b_0_60 airplane_daew8)
       (not_blocked seg_o1_108b_0_60 airplane_daew3)
       (not_blocked seg_o1_108b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p108_0_76)) (not_occupied seg_p108_0_76)
       (not (at-segment ?a seg_p108_0_76)) (occupied seg_o1_108b_0_60)
       (not (not_occupied seg_o1_108b_0_60)) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a))
       (at-segment ?a seg_o1_108b_0_60)))
 (:action
  ugly30118ugly30441ugly30260ugly29477ugly29615ugly1339ugly1201ugly259ugly663move_seg_w1_164a_0_34_seg_w1_163c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164a_0_34) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_163c_0_34 airplane_daew8)
       (not_blocked seg_w1_163c_0_34 airplane_daew3)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_164a_0_34)) (not_occupied seg_w1_164a_0_34)
       (not (at-segment ?a seg_w1_164a_0_34)) (occupied seg_w1_163c_0_34)
       (not (not_occupied seg_w1_163c_0_34)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a)) (at-segment ?a seg_w1_163c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_164b_0_45 ?a)) (not_blocked seg_w1_164b_0_45 ?a)
       (not (blocked seg_w1_164c_0_34 ?a)) (not_blocked seg_w1_164c_0_34 ?a)))
 (:action
  ugly30119ugly30114ugly30525ugly29227ugly30259ugly95ugly1176ugly647ugly65startup_seg_p108_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p108_0_76)
       (not_occupied seg_o1_108b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a))))
 (:action
  ugly30120ugly30309ugly30136ugly29622ugly29852ugly387ugly510ugly662ugly459move_seg_o1_c3a_0_34_seg_o1_111c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_111c_0_34 airplane_daew8)
       (not_blocked seg_o1_111c_0_34 airplane_daew3)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_c3a_0_34)) (not_occupied seg_o1_c3a_0_34)
       (not (at-segment ?a seg_o1_c3a_0_34)) (occupied seg_o1_111c_0_34)
       (not (not_occupied seg_o1_111c_0_34)) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a)) (at-segment ?a seg_o1_111c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c3b_0_60 ?a)) (not_blocked seg_o1_c3b_0_60 ?a)
       (not (blocked seg_o1_c3c_0_48 ?a)) (not_blocked seg_o1_c3c_0_48 ?a)
       (not (blocked seg_o1_c3d_0_60 ?a)) (not_blocked seg_o1_c3d_0_60 ?a)))
 (:action
  ugly30121ugly30372ugly29495ugly30143ugly29396ugly572ugly230ugly591ugly84move_seg_w1_142c_0_34_seg_w1_142b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142c_0_34) (not_occupied seg_w1_142b_0_45)
       (not_blocked seg_w1_142b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_142b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_142b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_142b_0_45 airplane_daew8)
       (not_blocked seg_w1_142b_0_45 airplane_daew3)
       (not_blocked seg_w1_142b_0_45 airplane_cfbe2)
       (not_occupied seg_w1_142a_0_34))
  :effect
  (and (not (occupied seg_w1_142c_0_34)) (not_occupied seg_w1_142c_0_34)
       (not (at-segment ?a seg_w1_142c_0_34)) (occupied seg_w1_142b_0_45)
       (not (not_occupied seg_w1_142b_0_45)) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a)) (at-segment ?a seg_w1_142b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_143a_0_34 ?a)) (not_blocked seg_w1_143a_0_34 ?a)
       (blocked seg_w1_142a_0_34 ?a) (not (not_blocked seg_w1_142a_0_34 ?a))))
 (:action
  ugly30122ugly29498ugly29868ugly29673ugly29276ugly592ugly1268ugly489ugly120park_seg_p151_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p151_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p151_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_151b_0_45 ?a)) (not_blocked seg_w1_151b_0_45 ?a)))
 (:action
  ugly30123ugly29625ugly29657ugly30139ugly29776ugly1250ugly750ugly941ugly764startup_seg_m_a7b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7b_0_60)
       (not_occupied seg_m_a7a6a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6a_0_75 ?a)
       (not (not_blocked seg_m_a7a6a_0_75 ?a))))
 (:action
  ugly30124ugly29211ugly30285ugly29478ugly30384ugly624ugly295ugly310ugly308move_seg_08r_b6c_0_80_seg_08r_b6a_0_161_245_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08r_b6c_0_80) (not_occupied seg_08r_b6a_0_161_245)
       (not_blocked seg_08r_b6a_0_161_245 airplane_cfbeg)
       (not_blocked seg_08r_b6a_0_161_245 airplane_cfbe1)
       (not_blocked seg_08r_b6a_0_161_245 airplane_cfbe3)
       (not_blocked seg_08r_b6a_0_161_245 airplane_daew8)
       (not_blocked seg_08r_b6a_0_161_245 airplane_daew3)
       (not_blocked seg_08r_b6a_0_161_245 airplane_cfbe2)
       (not_occupied seg_08r_b6b_0_80) (not_occupied seg_08r_b6d_0_161_245))
  :effect
  (and (not (occupied seg_08r_b6c_0_80)) (not_occupied seg_08r_b6c_0_80)
       (not (at-segment ?a seg_08r_b6c_0_80)) (occupied seg_08r_b6a_0_161_245)
       (not (not_occupied seg_08r_b6a_0_161_245))
       (blocked seg_08r_b6a_0_161_245 ?a)
       (not (not_blocked seg_08r_b6a_0_161_245 ?a))
       (at-segment ?a seg_08r_b6a_0_161_245) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_08r_b4b6_0_360 ?a))
       (not_blocked seg_08r_b4b6_0_360 ?a) (blocked seg_08r_b6b_0_80 ?a)
       (not (not_blocked seg_08r_b6b_0_80 ?a))
       (blocked seg_08r_b6d_0_161_245 ?a)
       (not (not_blocked seg_08r_b6d_0_161_245 ?a))))
 (:action
  ugly30125ugly29452ugly29436ugly29763ugly29936ugly817ugly174ugly68ugly521move_seg_o1_103b_0_60_seg_o1_103a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103b_0_60) (not_occupied seg_o1_103a_0_34)
       (not_blocked seg_o1_103a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_103a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_103a_0_34 airplane_daew8)
       (not_blocked seg_o1_103a_0_34 airplane_daew3)
       (not_blocked seg_o1_103a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (occupied seg_o1_103b_0_60)) (not_occupied seg_o1_103b_0_60)
       (not (at-segment ?a seg_o1_103b_0_60)) (occupied seg_o1_103a_0_34)
       (not (not_occupied seg_o1_103a_0_34)) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (at-segment ?a seg_o1_103a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p103_0_76 ?a)) (not_blocked seg_p103_0_76 ?a)
       (blocked seg_o1_103c_0_34 ?a) (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action
  ugly30126ugly29566ugly30024ugly30513ugly30332ugly150ugly583ugly724ugly291startup_seg_m_a10c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10c_0_60)
       (not_occupied seg_m_a10a_0_60) (not_occupied seg_m_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a)) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a))))
 (:action
  ugly30127ugly29315ugly29910ugly29633ugly30182ugly193ugly932ugly319ugly855startup_seg_08l_a7b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a7b_0_161_245)
       (not_occupied seg_a8_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_a_0_157_785 ?a)
       (not (not_blocked seg_a8_a_0_157_785 ?a))))
 (:action
  ugly30128ugly29470ugly29506ugly29601ugly29582ugly309ugly909ugly185ugly1365startup_seg_n_n2a4e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4e_0_75)
       (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action
  ugly30129ugly30066ugly30516ugly30410ugly29569ugly1010ugly91ugly736ugly895startup_seg_a9_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_a_0_158_647)
       (not_occupied seg_08l_a9b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a9b_0_161_245 ?a)
       (not (not_blocked seg_08l_a9b_0_161_245 ?a))))
 (:action
  ugly30130ugly29819ugly29541ugly30408ugly29466ugly329ugly1318ugly1333ugly553startup_seg_t_b4b6c_0_130_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6c_0_130)
       (not_occupied seg_t_b4b6b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6b_0_135 ?a)
       (not (not_blocked seg_t_b4b6b_0_135 ?a))))
 (:action
  ugly30131ugly29823ugly30284ugly29654ugly30469ugly941ugly764ugly1142ugly390startup_seg_m_a7a6d_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6d_0_85)
       (not_occupied seg_m_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6c_0_75 ?a)
       (not (not_blocked seg_m_a7a6c_0_75 ?a))))
 (:action
  ugly30132ugly30509ugly29882ugly29404ugly29274ugly1298ugly993ugly121ugly617move_seg_w1_151a_0_34_seg_w1_151b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_151b_0_45)
       (not_blocked seg_w1_151b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_151b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_151b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_151b_0_45 airplane_daew8)
       (not_blocked seg_w1_151b_0_45 airplane_daew3)
       (not_blocked seg_w1_151b_0_45 airplane_cfbe2)
       (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (occupied seg_w1_151a_0_34)) (not_occupied seg_w1_151a_0_34)
       (not (at-segment ?a seg_w1_151a_0_34)) (occupied seg_w1_151b_0_45)
       (not (not_occupied seg_w1_151b_0_45)) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a)) (at-segment ?a seg_w1_151b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c2c_0_34 ?a)) (not_blocked seg_w1_c2c_0_34 ?a)
       (blocked seg_w1_151c_0_34 ?a) (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action
  ugly30133ugly30160ugly29552ugly29790ugly29679ugly1116ugly713ugly854ugly1323startup_seg_w1_154b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154b_0_45)
       (not_occupied seg_w1_154a_0_34) (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action
  ugly30134ugly30085ugly30019ugly29941ugly30219ugly47ugly567ugly403ugly1127move_seg_w1_142b_0_45_seg_w1_142c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142b_0_45) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_142c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_142c_0_34 airplane_daew8)
       (not_blocked seg_w1_142c_0_34 airplane_daew3)
       (not_blocked seg_w1_142c_0_34 airplane_cfbe2)
       (not_occupied seg_w1_142a_0_34))
  :effect
  (and (not (occupied seg_w1_142b_0_45)) (not_occupied seg_w1_142b_0_45)
       (not (at-segment ?a seg_w1_142b_0_45)) (occupied seg_w1_142c_0_34)
       (not (not_occupied seg_w1_142c_0_34)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a)) (at-segment ?a seg_w1_142c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p142_0_75 ?a)) (not_blocked seg_p142_0_75 ?a)
       (blocked seg_w1_142a_0_34 ?a) (not (not_blocked seg_w1_142a_0_34 ?a))))
 (:action
  ugly30135ugly29403ugly30482ugly30296ugly29718ugly1138ugly672ugly401ugly328move_seg_o1_102a_0_34_seg_o1_102b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_102b_0_60)
       (not_blocked seg_o1_102b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_102b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_102b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_102b_0_60 airplane_daew8)
       (not_blocked seg_o1_102b_0_60 airplane_daew3)
       (not_blocked seg_o1_102b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (occupied seg_o1_102a_0_34)) (not_occupied seg_o1_102a_0_34)
       (not (at-segment ?a seg_o1_102a_0_34)) (occupied seg_o1_102b_0_60)
       (not (not_occupied seg_o1_102b_0_60)) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a)) (at-segment ?a seg_o1_102b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c1b_0_34 ?a)) (not_blocked seg_o1_c1b_0_34 ?a)
       (blocked seg_o1_102c_0_34 ?a) (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action
  ugly30136ugly29622ugly29852ugly29570ugly30300ugly407ugly699ugly856ugly251move_seg_o1_111a_0_34_seg_o1_111b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111b_0_60)
       (not_blocked seg_o1_111b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_111b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_111b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_111b_0_60 airplane_daew8)
       (not_blocked seg_o1_111b_0_60 airplane_daew3)
       (not_blocked seg_o1_111b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_111c_0_34) (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (occupied seg_o1_111a_0_34)) (not_occupied seg_o1_111a_0_34)
       (not (at-segment ?a seg_o1_111a_0_34)) (occupied seg_o1_111b_0_60)
       (not (not_occupied seg_o1_111b_0_60)) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a)) (at-segment ?a seg_o1_111b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_110c_0_34 ?a)) (not_blocked seg_o1_110c_0_34 ?a)
       (blocked seg_o1_111c_0_34 ?a) (not (not_blocked seg_o1_111c_0_34 ?a))
       (blocked seg_o1_111d_0_45 ?a) (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action
  ugly30137ugly29412ugly29750ugly29752ugly30293ugly1205ugly694ugly883ugly95startup_seg_m_a6a8c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8c_0_75)
       (not_occupied seg_m_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8d_0_75 ?a)
       (not (not_blocked seg_m_a6a8d_0_75 ?a))))
 (:action
  ugly30138ugly29222ugly29424ugly29810ugly29990ugly619ugly1226ugly146ugly254startup_seg_n_a8a9c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9c_0_75)
       (not_occupied seg_n_a8a9d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9d_0_75 ?a)
       (not (not_blocked seg_n_a8a9d_0_75 ?a))))
 (:action
  ugly30139ugly29776ugly30433ugly29710ugly29575ugly812ugly753ugly802ugly945startup_seg_m_a6a8e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8e_0_75)
       (not_occupied seg_m_a6a8f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8f_0_115 ?a)
       (not (not_blocked seg_m_a6a8f_0_115 ?a))))
 (:action
  ugly30140ugly29543ugly29778ugly29401ugly29678ugly926ugly387ugly510ugly662startup_seg_08r_b3c_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b3c_0_161_245)
       (not_occupied seg_08r_0_80) (not_occupied seg_08r_b3a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_0_80 ?a)
       (not (not_blocked seg_08r_0_80 ?a)) (blocked seg_08r_b3a_0_80 ?a)
       (not (not_blocked seg_08r_b3a_0_80 ?a))))
 (:action
  ugly30141ugly29683ugly30023ugly29947ugly29864ugly96ugly162ugly210ugly631startup_seg_m_a7a6c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6c_0_75)
       (not_occupied seg_m_a7a6d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6d_0_85 ?a)
       (not (not_blocked seg_m_a7a6d_0_85 ?a))))
 (:action
  ugly30142ugly29499ugly29628ugly30067ugly29524ugly745ugly44ugly190ugly1129startup_seg_s_b9b10a_0_125_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10a_0_125)
       (not_occupied seg_s_b9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9a_0_60 ?a)
       (not (not_blocked seg_s_b9a_0_60 ?a))))
 (:action
  ugly30143ugly29396ugly29755ugly29220ugly30311ugly222ugly348ugly666ugly624move_seg_o1_c4c_0_80_seg_o1_c4a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4c_0_80) (not_occupied seg_o1_c4a_0_34)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c4a_0_34 airplane_daew8)
       (not_blocked seg_o1_c4a_0_34 airplane_daew3)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_c4b_0_60))
  :effect
  (and (not (occupied seg_o1_c4c_0_80)) (not_occupied seg_o1_c4c_0_80)
       (not (at-segment ?a seg_o1_c4c_0_80)) (occupied seg_o1_c4a_0_34)
       (not (not_occupied seg_o1_c4a_0_34)) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (at-segment ?a seg_o1_c4a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_c4_s6a_0_80 ?a)) (not_blocked seg_c4_s6a_0_80 ?a)
       (blocked seg_o1_c4b_0_60 ?a) (not (not_blocked seg_o1_c4b_0_60 ?a))))
 (:action
  ugly30144ugly29921ugly30132ugly30509ugly29882ugly221ugly804ugly1060ugly597startup_seg_p107_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p107_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly30145ugly29232ugly29187ugly30200ugly29356ugly1334ugly648ugly1016ugly232move_seg_o1_c3c_0_48_seg_o1_c3b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3c_0_48) (not_occupied seg_o1_c3b_0_60)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c3b_0_60 airplane_daew8)
       (not_blocked seg_o1_c3b_0_60 airplane_daew3)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_c3a_0_34) (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (not (occupied seg_o1_c3c_0_48)) (not_occupied seg_o1_c3c_0_48)
       (not (at-segment ?a seg_o1_c3c_0_48)) (occupied seg_o1_c3b_0_60)
       (not (not_occupied seg_o1_c3b_0_60)) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a)) (at-segment ?a seg_o1_c3b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_115a_0_34 ?a)) (not_blocked seg_o1_115a_0_34 ?a)
       (blocked seg_o1_c3a_0_34 ?a) (not (not_blocked seg_o1_c3a_0_34 ?a))
       (blocked seg_o1_c3d_0_60 ?a) (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action
  ugly30146ugly29969ugly29847ugly29442ugly29761ugly750ugly941ugly764ugly1142move_seg_o1_111b_0_60_seg_o1_111a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111b_0_60) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_111a_0_34 airplane_daew8)
       (not_blocked seg_o1_111a_0_34 airplane_daew3)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_111c_0_34) (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (occupied seg_o1_111b_0_60)) (not_occupied seg_o1_111b_0_60)
       (not (at-segment ?a seg_o1_111b_0_60)) (occupied seg_o1_111a_0_34)
       (not (not_occupied seg_o1_111a_0_34)) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a)) (at-segment ?a seg_o1_111a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p111_0_76 ?a)) (not_blocked seg_p111_0_76 ?a)
       (blocked seg_o1_111c_0_34 ?a) (not (not_blocked seg_o1_111c_0_34 ?a))
       (blocked seg_o1_111d_0_45 ?a) (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action
  ugly30147ugly30179ugly30117ugly29924ugly29567ugly483ugly654ugly1190ugly412startup_seg_n_a4a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a_0_60)
       (not_occupied seg_m_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4c_0_60 ?a)
       (not (not_blocked seg_m_a4c_0_60 ?a))))
 (:action
  ugly30148ugly30507ugly30005ugly30191ugly30171ugly824ugly486ugly417ugly638pushback_seg_p131_0_75_seg_o1_108d_0_45_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p131_0_75) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe3)
       (not_blocked seg_o1_108d_0_45 airplane_daew8)
       (not_blocked seg_o1_108d_0_45 airplane_daew3)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p131_0_75)) (not_occupied seg_p131_0_75)
       (not (blocked seg_p131_0_75 ?a)) (not_blocked seg_p131_0_75 ?a)
       (not (at-segment ?a seg_p131_0_75)) (occupied seg_o1_108d_0_45)
       (not (not_occupied seg_o1_108d_0_45)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))
       (at-segment ?a seg_o1_108d_0_45)))
 (:action
  ugly30149ugly29503ugly29853ugly29729ugly29978ugly739ugly1036ugly497ugly366startup_seg_s_b9b10b_0_125_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10b_0_125)
       (not_occupied seg_s_b9b10a_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10a_0_125 ?a)
       (not (not_blocked seg_s_b9b10a_0_125 ?a))))
 (:action
  ugly30150ugly30294ugly29291ugly29350ugly29870ugly645ugly608ugly774ugly916startup_seg_n_a2a3f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3f_0_115)
       (not_occupied seg_n_a3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3d_0_60 ?a)
       (not (not_blocked seg_n_a3d_0_60 ?a))))
 (:action
  ugly30151ugly30243ugly29797ugly29838ugly29913ugly1168ugly54ugly678ugly265startup_seg_t_b6c_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6c_0_120_934)
       (not_occupied seg_b6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b6_b_0_159_512 ?a)
       (not (not_blocked seg_b6_b_0_159_512 ?a))))
 (:action
  ugly30152ugly29352ugly29354ugly29972ugly29487ugly1153ugly734ugly964ugly701startup_seg_w1_153a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153a_0_34)
       (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action
  ugly30153ugly29292ugly30021ugly29531ugly29832ugly912ugly1253ugly1151ugly759startup_seg_o1_c4c_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4c_0_80)
       (not_occupied seg_o1_c4a_0_34) (not_occupied seg_o1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a))))
 (:action
  ugly30154ugly29472ugly29200ugly29196ugly30177ugly771ugly1274ugly896ugly339move_seg_p115_0_76_seg_o1_115b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p115_0_76) (not_occupied seg_o1_115b_0_60)
       (not_blocked seg_o1_115b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_115b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_115b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_115b_0_60 airplane_daew8)
       (not_blocked seg_o1_115b_0_60 airplane_daew3)
       (not_blocked seg_o1_115b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p115_0_76)) (not_occupied seg_p115_0_76)
       (not (at-segment ?a seg_p115_0_76)) (occupied seg_o1_115b_0_60)
       (not (not_occupied seg_o1_115b_0_60)) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a))
       (at-segment ?a seg_o1_115b_0_60)))
 (:action
  ugly30155ugly29773ugly29521ugly30429ugly29212ugly1306ugly182ugly535ugly534move_seg_o1_102c_0_34_seg_o1_102a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102c_0_34) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_102a_0_34 airplane_daew8)
       (not_blocked seg_o1_102a_0_34 airplane_daew3)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_102b_0_60))
  :effect
  (and (not (occupied seg_o1_102c_0_34)) (not_occupied seg_o1_102c_0_34)
       (not (at-segment ?a seg_o1_102c_0_34)) (occupied seg_o1_102a_0_34)
       (not (not_occupied seg_o1_102a_0_34)) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (at-segment ?a seg_o1_102a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_103a_0_34 ?a)) (not_blocked seg_o1_103a_0_34 ?a)
       (blocked seg_o1_102b_0_60 ?a) (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action
  ugly30156ugly29458ugly30346ugly29975ugly30022ugly1049ugly1037ugly192ugly735park_seg_p109_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p109_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p109_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_109b_0_60 ?a)) (not_blocked seg_o1_109b_0_60 ?a)))
 (:action
  ugly30157ugly29727ugly30133ugly30160ugly29552ugly607ugly673ugly59ugly75move_seg_p133_0_75_seg_o1_110d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p133_0_75) (not_occupied seg_o1_110d_0_45)
       (not_blocked seg_o1_110d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_110d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_110d_0_45 airplane_cfbe3)
       (not_blocked seg_o1_110d_0_45 airplane_daew8)
       (not_blocked seg_o1_110d_0_45 airplane_daew3)
       (not_blocked seg_o1_110d_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p133_0_75)) (not_occupied seg_p133_0_75)
       (not (at-segment ?a seg_p133_0_75)) (occupied seg_o1_110d_0_45)
       (not (not_occupied seg_o1_110d_0_45)) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))
       (at-segment ?a seg_o1_110d_0_45)))
 (:action
  ugly30158ugly30041ugly29916ugly29192ugly29859ugly1123ugly1135ugly1138ugly672move_seg_p112_0_76_seg_o1_c3b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p112_0_76) (not_occupied seg_o1_c3b_0_60)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c3b_0_60 airplane_daew8)
       (not_blocked seg_o1_c3b_0_60 airplane_daew3)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p112_0_76)) (not_occupied seg_p112_0_76)
       (not (at-segment ?a seg_p112_0_76)) (occupied seg_o1_c3b_0_60)
       (not (not_occupied seg_o1_c3b_0_60)) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a)) (at-segment ?a seg_o1_c3b_0_60)))
 (:action
  ugly30159ugly29577ugly29918ugly29735ugly29488ugly970ugly1134ugly853ugly1063startup_seg_t_b4d_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4d_0_60)
       (not_occupied seg_t_b4a_0_60) (not_occupied seg_t_b4b_0_60)
       (not_occupied seg_t_b4c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4a_0_60 ?a)
       (not (not_blocked seg_t_b4a_0_60 ?a)) (blocked seg_t_b4b_0_60 ?a)
       (not (not_blocked seg_t_b4b_0_60 ?a)) (blocked seg_t_b4c_0_120_934 ?a)
       (not (not_blocked seg_t_b4c_0_120_934 ?a))))
 (:action
  ugly30160ugly29552ugly29790ugly29679ugly30299ugly707ugly651ugly490ugly139startup_seg_s_b5b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b_0_60)
       (not_occupied seg_s_b5a_0_60) (not_occupied seg_s_b5c_0_60)
       (not_occupied seg_s_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5a_0_60 ?a)
       (not (not_blocked seg_s_b5a_0_60 ?a)) (blocked seg_s_b5c_0_60 ?a)
       (not (not_blocked seg_s_b5c_0_60 ?a)) (blocked seg_s_b5d_0_60 ?a)
       (not (not_blocked seg_s_b5d_0_60 ?a))))
 (:action
  ugly30161ugly30073ugly29649ugly29337ugly29198ugly1316ugly627ugly939ugly80park_seg_p132_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p132_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p132_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_109d_0_45 ?a)) (not_blocked seg_o1_109d_0_45 ?a)))
 (:action
  ugly30162ugly29501ugly30029ugly30302ugly30044ugly1361ugly614ugly247ugly1149startup_seg_m_a6b_0_60_south_medium
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
  ugly30163ugly29272ugly29943ugly29724ugly30244ugly632ugly1257ugly659ugly1270startup_seg_t_b10c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10c_0_60)
       (not_occupied seg_t_b10a_0_60) (not_occupied seg_t_b10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10a_0_60 ?a)
       (not (not_blocked seg_t_b10a_0_60 ?a)) (blocked seg_t_b10b_0_60 ?a)
       (not (not_blocked seg_t_b10b_0_60 ?a))))
 (:action
  ugly30164ugly30146ugly29969ugly29847ugly29442ugly578ugly1363ugly264ugly150startup_seg_t_b8a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8a_0_60)
       (not_occupied seg_t_b8b_0_60) (not_occupied seg_t_b8c_0_120_934)
       (not_occupied seg_t_b8d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b_0_60 ?a)
       (not (not_blocked seg_t_b8b_0_60 ?a)) (blocked seg_t_b8c_0_120_934 ?a)
       (not (not_blocked seg_t_b8c_0_120_934 ?a)) (blocked seg_t_b8d_0_60 ?a)
       (not (not_blocked seg_t_b8d_0_60 ?a))))
 (:action
  ugly30165ugly30141ugly29683ugly30023ugly29947ugly681ugly1150ugly1109ugly626startup_seg_t_b2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2a_0_60)
       (not_occupied seg_t_b2b_0_60) (not_occupied seg_t_b2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b_0_60 ?a)
       (not (not_blocked seg_t_b2b_0_60 ?a)) (blocked seg_t_b2c_0_60 ?a)
       (not (not_blocked seg_t_b2c_0_60 ?a))))
 (:action
  ugly30166ugly30313ugly29795ugly29768ugly30030ugly502ugly677ugly589ugly83startup_seg_n_n2a4a_0_70_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4a_0_70)
       (not_occupied seg_n_n2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a))))
 (:action
  ugly30167ugly29308ugly29701ugly29597ugly30315ugly234ugly1227ugly269ugly69move_seg_o1_103b_0_60_seg_o1_103c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103b_0_60) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_103c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_103c_0_34 airplane_daew8)
       (not_blocked seg_o1_103c_0_34 airplane_daew3)
       (not_blocked seg_o1_103c_0_34 airplane_cfbe2)
       (not_occupied seg_o1_103a_0_34))
  :effect
  (and (not (occupied seg_o1_103b_0_60)) (not_occupied seg_o1_103b_0_60)
       (not (at-segment ?a seg_o1_103b_0_60)) (occupied seg_o1_103c_0_34)
       (not (not_occupied seg_o1_103c_0_34)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a)) (at-segment ?a seg_o1_103c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p103_0_76 ?a)) (not_blocked seg_p103_0_76 ?a)
       (blocked seg_o1_103a_0_34 ?a) (not (not_blocked seg_o1_103a_0_34 ?a))))
 (:action
  ugly30168ugly29867ugly29959ugly29517ugly29977ugly717ugly1095ugly344ugly821move_seg_n_n2a4d_0_75_seg_n_n2a4c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4d_0_75) (not_occupied seg_n_n2a4c_0_75)
       (not_blocked seg_n_n2a4c_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4c_0_75 airplane_cfbe1)
       (not_blocked seg_n_n2a4c_0_75 airplane_cfbe3)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew8)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew3)
       (not_blocked seg_n_n2a4c_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_n2a4d_0_75)) (not_occupied seg_n_n2a4d_0_75)
       (not (at-segment ?a seg_n_n2a4d_0_75)) (occupied seg_n_n2a4c_0_75)
       (not (not_occupied seg_n_n2a4c_0_75)) (blocked seg_n_n2a4c_0_75 ?a)
       (not (not_blocked seg_n_n2a4c_0_75 ?a)) (at-segment ?a seg_n_n2a4c_0_75)
       (not (blocked seg_n_n2a4e_0_75 ?a)) (not_blocked seg_n_n2a4e_0_75 ?a)))
 (:action
  ugly30169ugly29504ugly29837ugly30437ugly30480ugly706ugly51ugly1330ugly1349startup_seg_n_n2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2b_0_60)
       (not_occupied seg_n_n2a_0_60) (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a)) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action
  ugly30170ugly29883ugly30123ugly29625ugly29657ugly956ugly770ugly848ugly1137startup_seg_t_b9b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b_0_60)
       (not_occupied seg_t_b9b10a_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10a_0_125 ?a)
       (not (not_blocked seg_t_b9b10a_0_125 ?a))))
 (:action
  ugly30171ugly30007ugly29620ugly30291ugly30438ugly190ugly1129ugly707ugly651startup_seg_t_b2c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2c_0_60)
       (not_occupied seg_b2_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b2_0_80 ?a)
       (not (not_blocked seg_b2_0_80 ?a))))
 (:action
  ugly30172ugly30356ugly29565ugly30216ugly29968ugly995ugly378ugly712ugly837startup_seg_s_b3b4b_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4b_0_140)
       (not_occupied seg_s_b3b4c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4c_0_140 ?a)
       (not (not_blocked seg_s_b3b4c_0_140 ?a))))
 (:action
  ugly30173ugly30043ugly30310ugly29233ugly30065ugly938ugly714ugly1139ugly62move_seg_o1_111c_0_34_seg_o1_111d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_111d_0_45)
       (not_blocked seg_o1_111d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_111d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_111d_0_45 airplane_cfbe3)
       (not_blocked seg_o1_111d_0_45 airplane_daew8)
       (not_blocked seg_o1_111d_0_45 airplane_daew3)
       (not_blocked seg_o1_111d_0_45 airplane_cfbe2)
       (not_occupied seg_o1_111a_0_34) (not_occupied seg_o1_111b_0_60))
  :effect
  (and (not (occupied seg_o1_111c_0_34)) (not_occupied seg_o1_111c_0_34)
       (not (at-segment ?a seg_o1_111c_0_34)) (occupied seg_o1_111d_0_45)
       (not (not_occupied seg_o1_111d_0_45)) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a)) (at-segment ?a seg_o1_111d_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c3a_0_34 ?a)) (not_blocked seg_o1_c3a_0_34 ?a)
       (blocked seg_o1_111a_0_34 ?a) (not (not_blocked seg_o1_111a_0_34 ?a))
       (blocked seg_o1_111b_0_60 ?a) (not (not_blocked seg_o1_111b_0_60 ?a))))
 (:action
  ugly30174ugly30529ugly30465ugly30478ugly30286ugly1125ugly353ugly524ugly934startup_seg_p132_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p132_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly30175ugly29851ugly29619ugly30536ugly30534ugly359ugly1077ugly1314ugly552park_seg_p164_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p164_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p164_0_75) (not (is-moving ?a))))
 (:action
  ugly30176ugly30097ugly30400ugly30042ugly29670ugly626ugly487ugly523ugly988move_seg_w1_c1a_0_60_seg_n1_0_108_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c1a_0_60) (not_occupied seg_n1_0_108)
       (not_blocked seg_n1_0_108 airplane_cfbeg)
       (not_blocked seg_n1_0_108 airplane_cfbe1)
       (not_blocked seg_n1_0_108 airplane_cfbe3)
       (not_blocked seg_n1_0_108 airplane_daew8)
       (not_blocked seg_n1_0_108 airplane_daew3)
       (not_blocked seg_n1_0_108 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_c1a_0_60)) (not_occupied seg_w1_c1a_0_60)
       (not (at-segment ?a seg_w1_c1a_0_60)) (occupied seg_n1_0_108)
       (not (not_occupied seg_n1_0_108)) (blocked seg_n1_0_108 ?a)
       (not (not_blocked seg_n1_0_108 ?a)) (at-segment ?a seg_n1_0_108)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c1b_0_60 ?a)) (not_blocked seg_w1_c1b_0_60 ?a)
       (not (blocked seg_w1_c1c_0_34 ?a)) (not_blocked seg_w1_c1c_0_34 ?a)))
 (:action
  ugly30177ugly29954ugly30466ugly29892ugly29979ugly1031ugly967ugly862ugly785park_seg_p115_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p115_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p115_0_76) (not (is-moving ?a))))
 (:action
  ugly30178ugly29653ugly30548ugly29511ugly30267ugly653ugly537ugly1058ugly669takeoff_seg_08r_0_80_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_08r_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_08r_0_80)) (not_occupied seg_08r_0_80)
       (not (blocked seg_08r_0_80 ?a)) (not_blocked seg_08r_0_80 ?a)
       (not (at-segment ?a seg_08r_0_80)) (airborne ?a seg_08r_0_80)
       (not (is-moving ?a)) (not (blocked seg_08r_b2b3_0_900 ?a))
       (not_blocked seg_08r_b2b3_0_900 ?a)))
 (:action
  ugly30179ugly30117ugly29924ugly29567ugly29666ugly887ugly556ugly599ugly1173park_seg_p112_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p112_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p112_0_76) (not (is-moving ?a))))
 (:action
  ugly30180ugly29648ugly29920ugly29546ugly30104ugly757ugly687ugly1194ugly1172park_seg_p110_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p110_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p110_0_76) (not (is-moving ?a))))
 (:action
  ugly30181ugly29875ugly29803ugly29516ugly29777ugly721ugly464ugly574ugly89move_seg_08l_a4a_0_80_seg_08l_a6a7_0_450_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a4a_0_80) (not_occupied seg_08l_a6a7_0_450)
       (not_blocked seg_08l_a6a7_0_450 airplane_cfbeg)
       (not_blocked seg_08l_a6a7_0_450 airplane_cfbe1)
       (not_blocked seg_08l_a6a7_0_450 airplane_cfbe3)
       (not_blocked seg_08l_a6a7_0_450 airplane_daew8)
       (not_blocked seg_08l_a6a7_0_450 airplane_daew3)
       (not_blocked seg_08l_a6a7_0_450 airplane_cfbe2)
       (not_occupied seg_08l_a2a_0_80) (not_occupied seg_09l_0_80)
       (not_occupied seg_08l_a7a_0_80) (not_occupied seg_08l_a3a_0_80)
       (not_occupied seg_08l_0_80) (not_occupied seg_08l_a3a4_0_450)
       (not_occupied seg_08l_a4d_0_80))
  :effect
  (and (not (occupied seg_08l_a4a_0_80)) (not_occupied seg_08l_a4a_0_80)
       (not (at-segment ?a seg_08l_a4a_0_80)) (occupied seg_08l_a6a7_0_450)
       (not (not_occupied seg_08l_a6a7_0_450)) (blocked seg_08l_a6a7_0_450 ?a)
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
  ugly30182ugly29376ugly29624ugly30381ugly30061ugly1277ugly237ugly968ugly1213startup_seg_m_a3a4b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4b_0_75)
       (not_occupied seg_m_a3a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4c_0_75 ?a)
       (not (not_blocked seg_m_a3a4c_0_75 ?a))))
 (:action
  ugly30183ugly30054ugly29544ugly29641ugly30385ugly499ugly484ugly439ugly1229startup_seg_a9_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_b_0_159_512)
       (not_occupied seg_a9_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_a_0_158_647 ?a)
       (not (not_blocked seg_a9_a_0_158_647 ?a))))
 (:action
  ugly30184ugly29260ugly29953ugly29508ugly29879ugly886ugly564ugly976ugly129startup_seg_s_b5c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5c_0_60)
       (not_occupied seg_t_b5a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5a_0_60 ?a)
       (not (not_blocked seg_t_b5a_0_60 ?a))))
 (:action
  ugly30185ugly30014ugly30047ugly30298ugly30003ugly1312ugly527ugly859ugly723startup_seg_o1_c4a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4a_0_34)
       (not_occupied seg_o1_c4b_0_60) (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action
  ugly30186ugly30213ugly29204ugly29329ugly29334ugly375ugly45ugly1334ugly648startup_seg_o1_116b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116b_0_60)
       (not_occupied seg_p116_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p116_0_76 ?a)
       (not (not_blocked seg_p116_0_76 ?a))))
 (:action
  ugly30187ugly29698ugly30485ugly29324ugly30040ugly766ugly108ugly429ugly226move_seg_n_a2a_0_60_seg_a2_c_0_100_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a2a_0_60) (not_occupied seg_a2_c_0_100)
       (not_blocked seg_a2_c_0_100 airplane_cfbeg)
       (not_blocked seg_a2_c_0_100 airplane_cfbe1)
       (not_blocked seg_a2_c_0_100 airplane_cfbe3)
       (not_blocked seg_a2_c_0_100 airplane_daew8)
       (not_blocked seg_a2_c_0_100 airplane_daew3)
       (not_blocked seg_a2_c_0_100 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a2a_0_60)) (not_occupied seg_n_a2a_0_60)
       (not (at-segment ?a seg_n_a2a_0_60)) (occupied seg_a2_c_0_100)
       (not (not_occupied seg_a2_c_0_100)) (blocked seg_a2_c_0_100 ?a)
       (not (not_blocked seg_a2_c_0_100 ?a)) (at-segment ?a seg_a2_c_0_100)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_n_a2b_0_60 ?a)) (not_blocked seg_n_a2b_0_60 ?a)))
 (:action
  ugly30188ugly30222ugly30152ugly29352ugly29354ugly789ugly1337ugly118ugly611move_seg_w1_153a_0_34_seg_w1_153b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_153b_0_45)
       (not_blocked seg_w1_153b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_153b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_153b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_153b_0_45 airplane_daew8)
       (not_blocked seg_w1_153b_0_45 airplane_daew3)
       (not_blocked seg_w1_153b_0_45 airplane_cfbe2)
       (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (occupied seg_w1_153a_0_34)) (not_occupied seg_w1_153a_0_34)
       (not (at-segment ?a seg_w1_153a_0_34)) (occupied seg_w1_153b_0_45)
       (not (not_occupied seg_w1_153b_0_45)) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a)) (at-segment ?a seg_w1_153b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_152c_0_34 ?a)) (not_blocked seg_w1_152c_0_34 ?a)
       (blocked seg_w1_153c_0_34 ?a) (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action
  ugly30189ugly30486ugly29885ugly29863ugly29535ugly1244ugly1285ugly273ugly972startup_seg_w1_151b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151b_0_45)
       (not_occupied seg_p151_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p151_0_75 ?a)
       (not (not_blocked seg_p151_0_75 ?a))))
 (:action
  ugly30190ugly30039ugly30461ugly30086ugly29297ugly606ugly1297ugly111ugly1169startup_seg_s_b3b4c_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4c_0_140)
       (not_occupied seg_s_b3b4b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4b_0_140 ?a)
       (not (not_blocked seg_s_b3b4b_0_140 ?a))))
 (:action
  ugly30191ugly30171ugly30007ugly29620ugly30291ugly1255ugly362ugly857ugly1287move_seg_w1_152b_0_45_seg_p152_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152b_0_45) (not_occupied seg_p152_0_75)
       (not_blocked seg_p152_0_75 airplane_cfbeg)
       (not_blocked seg_p152_0_75 airplane_cfbe1)
       (not_blocked seg_p152_0_75 airplane_cfbe3)
       (not_blocked seg_p152_0_75 airplane_daew8)
       (not_blocked seg_p152_0_75 airplane_daew3)
       (not_blocked seg_p152_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_152b_0_45)) (not_occupied seg_w1_152b_0_45)
       (not (at-segment ?a seg_w1_152b_0_45)) (occupied seg_p152_0_75)
       (not (not_occupied seg_p152_0_75)) (blocked seg_p152_0_75 ?a)
       (not (not_blocked seg_p152_0_75 ?a)) (at-segment ?a seg_p152_0_75)
       (not (blocked seg_w1_152a_0_34 ?a)) (not_blocked seg_w1_152a_0_34 ?a)
       (not (blocked seg_w1_152c_0_34 ?a)) (not_blocked seg_w1_152c_0_34 ?a)))
 (:action
  ugly30192ugly30403ugly29241ugly29416ugly30083ugly703ugly842ugly827ugly814startup_seg_a4_b_0_79_7559_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_0_79_7559)
       (not_occupied seg_m_a4a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a_0_120_934 ?a)
       (not (not_blocked seg_m_a4a_0_120_934 ?a))))
 (:action
  ugly30193ugly30357ugly29686ugly30034ugly29937ugly659ugly1270ugly625ugly1252move_seg_p102_0_76_seg_o1_102b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p102_0_76) (not_occupied seg_o1_102b_0_60)
       (not_blocked seg_o1_102b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_102b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_102b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_102b_0_60 airplane_daew8)
       (not_blocked seg_o1_102b_0_60 airplane_daew3)
       (not_blocked seg_o1_102b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p102_0_76)) (not_occupied seg_p102_0_76)
       (not (at-segment ?a seg_p102_0_76)) (occupied seg_o1_102b_0_60)
       (not (not_occupied seg_o1_102b_0_60)) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a))
       (at-segment ?a seg_o1_102b_0_60)))
 (:action
  ugly30194ugly29259ugly29592ugly30477ugly29881ugly3ugly1300ugly1352ugly260move_seg_p153_0_75_seg_w1_153b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p153_0_75) (not_occupied seg_w1_153b_0_45)
       (not_blocked seg_w1_153b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_153b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_153b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_153b_0_45 airplane_daew8)
       (not_blocked seg_w1_153b_0_45 airplane_daew3)
       (not_blocked seg_w1_153b_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p153_0_75)) (not_occupied seg_p153_0_75)
       (not (at-segment ?a seg_p153_0_75)) (occupied seg_w1_153b_0_45)
       (not (not_occupied seg_w1_153b_0_45)) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))
       (at-segment ?a seg_w1_153b_0_45)))
 (:action
  ugly30195ugly30435ugly30080ugly29911ugly29282ugly262ugly298ugly1088ugly826move_seg_08r_b4c_0_80_seg_08r_b4b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08r_b4c_0_80) (not_occupied seg_08r_b4b_0_80)
       (not_blocked seg_08r_b4b_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b4b_0_80 airplane_cfbe1)
       (not_blocked seg_08r_b4b_0_80 airplane_cfbe3)
       (not_blocked seg_08r_b4b_0_80 airplane_daew8)
       (not_blocked seg_08r_b4b_0_80 airplane_daew3)
       (not_blocked seg_08r_b4b_0_80 airplane_cfbe2)
       (not_occupied seg_08r_b4a_0_161_245)
       (not_occupied seg_08r_b4d_0_161_245))
  :effect
  (and (not (occupied seg_08r_b4c_0_80)) (not_occupied seg_08r_b4c_0_80)
       (not (at-segment ?a seg_08r_b4c_0_80)) (occupied seg_08r_b4b_0_80)
       (not (not_occupied seg_08r_b4b_0_80)) (blocked seg_08r_b4b_0_80 ?a)
       (not (not_blocked seg_08r_b4b_0_80 ?a)) (at-segment ?a seg_08r_b4b_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_08r_b3b4_0_520 ?a))
       (not_blocked seg_08r_b3b4_0_520 ?a) (blocked seg_08r_b4a_0_161_245 ?a)
       (not (not_blocked seg_08r_b4a_0_161_245 ?a))
       (blocked seg_08r_b4d_0_161_245 ?a)
       (not (not_blocked seg_08r_b4d_0_161_245 ?a))))
 (:action
  ugly30196ugly30144ugly29921ugly30132ugly30509ugly699ugly856ugly251ugly394startup_seg_m_a3a4f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4f_0_115)
       (not_occupied seg_m_a3a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4e_0_75 ?a)
       (not (not_blocked seg_m_a3a4e_0_75 ?a))))
 (:action
  ugly30197ugly29599ugly29306ugly30373ugly29695ugly1145ugly1251ugly469ugly1098move_seg_08r_b6b_0_80_seg_08r_b6b9_0_420_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b6b_0_80) (not_occupied seg_08r_b6b9_0_420)
       (not_blocked seg_08r_b6b9_0_420 airplane_cfbeg)
       (not_blocked seg_08r_b6b9_0_420 airplane_cfbe1)
       (not_blocked seg_08r_b6b9_0_420 airplane_cfbe3)
       (not_blocked seg_08r_b6b9_0_420 airplane_daew8)
       (not_blocked seg_08r_b6b9_0_420 airplane_daew3)
       (not_blocked seg_08r_b6b9_0_420 airplane_cfbe2))
  :effect
  (and (not (occupied seg_08r_b6b_0_80)) (not_occupied seg_08r_b6b_0_80)
       (not (at-segment ?a seg_08r_b6b_0_80)) (occupied seg_08r_b6b9_0_420)
       (not (not_occupied seg_08r_b6b9_0_420)) (blocked seg_08r_b6b9_0_420 ?a)
       (not (not_blocked seg_08r_b6b9_0_420 ?a))
       (at-segment ?a seg_08r_b6b9_0_420)
       (not (blocked seg_08r_b6a_0_161_245 ?a))
       (not_blocked seg_08r_b6a_0_161_245 ?a)
       (not (blocked seg_08r_b6c_0_80 ?a)) (not_blocked seg_08r_b6c_0_80 ?a)
       (not (blocked seg_08r_b6d_0_161_245 ?a))
       (not_blocked seg_08r_b6d_0_161_245 ?a)))
 (:action
  ugly30198ugly30364ugly29983ugly30278ugly30521ugly1081ugly28ugly373ugly652move_seg_o1_117b_0_60_seg_p117_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117b_0_60) (not_occupied seg_p117_0_76)
       (not_blocked seg_p117_0_76 airplane_cfbeg)
       (not_blocked seg_p117_0_76 airplane_cfbe1)
       (not_blocked seg_p117_0_76 airplane_cfbe3)
       (not_blocked seg_p117_0_76 airplane_daew8)
       (not_blocked seg_p117_0_76 airplane_daew3)
       (not_blocked seg_p117_0_76 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_117b_0_60)) (not_occupied seg_o1_117b_0_60)
       (not (at-segment ?a seg_o1_117b_0_60)) (occupied seg_p117_0_76)
       (not (not_occupied seg_p117_0_76)) (blocked seg_p117_0_76 ?a)
       (not (not_blocked seg_p117_0_76 ?a)) (at-segment ?a seg_p117_0_76)
       (not (blocked seg_o1_117a_0_34 ?a)) (not_blocked seg_o1_117a_0_34 ?a)
       (not (blocked seg_o1_117c_0_34 ?a)) (not_blocked seg_o1_117c_0_34 ?a)))
 (:action
  ugly30199ugly29764ugly30426ugly29348ugly29874ugly828ugly890ugly52ugly460startup_seg_t_b2b3b_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3b_0_140)
       (not_occupied seg_t_b2b3a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3a_0_140 ?a)
       (not (not_blocked seg_t_b2b3a_0_140 ?a))))
 (:action
  ugly30200ugly29356ugly30517ugly29600ugly29741ugly1048ugly1ugly763ugly538move_seg_w1_161a_0_34_seg_w1_161c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_161c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_161c_0_34 airplane_daew8)
       (not_blocked seg_w1_161c_0_34 airplane_daew3)
       (not_blocked seg_w1_161c_0_34 airplane_cfbe2)
       (not_occupied seg_w1_161b_0_45))
  :effect
  (and (not (occupied seg_w1_161a_0_34)) (not_occupied seg_w1_161a_0_34)
       (not (at-segment ?a seg_w1_161a_0_34)) (occupied seg_w1_161c_0_34)
       (not (not_occupied seg_w1_161c_0_34)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a)) (at-segment ?a seg_w1_161c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c3c_0_48 ?a)) (not_blocked seg_w1_c3c_0_48 ?a)
       (blocked seg_w1_161b_0_45 ?a) (not (not_blocked seg_w1_161b_0_45 ?a))))
 (:action
  ugly30201ugly30102ugly29691ugly30004ugly29321ugly1311ugly991ugly1239ugly619startup_seg_m_a9a10f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10f_0_75)
       (not_occupied seg_m_a9a10g_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10g_0_80 ?a)
       (not (not_blocked seg_m_a9a10g_0_80 ?a))))
 (:action
  ugly30202ugly30453ugly29533ugly29312ugly29833ugly395ugly685ugly587ugly533startup_seg_t_b9d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9d_0_60)
       (not_occupied seg_t_b8b9c_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9c_0_115 ?a)
       (not (not_blocked seg_t_b8b9c_0_115 ?a))))
 (:action
  ugly30203ugly29706ugly29896ugly29732ugly29295ugly65ugly937ugly992ugly143move_seg_o1_102b_0_60_seg_o1_102a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102b_0_60) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_102a_0_34 airplane_daew8)
       (not_blocked seg_o1_102a_0_34 airplane_daew3)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (occupied seg_o1_102b_0_60)) (not_occupied seg_o1_102b_0_60)
       (not (at-segment ?a seg_o1_102b_0_60)) (occupied seg_o1_102a_0_34)
       (not (not_occupied seg_o1_102a_0_34)) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (at-segment ?a seg_o1_102a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p102_0_76 ?a)) (not_blocked seg_p102_0_76 ?a)
       (blocked seg_o1_102c_0_34 ?a) (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action
  ugly30204ugly29188ugly29906ugly30386ugly30247ugly1148ugly1051ugly1113ugly1324move_seg_08l_a3a4_0_450_seg_08l_a4d_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a3a4_0_450) (not_occupied seg_08l_a4d_0_80)
       (not_blocked seg_08l_a4d_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a4d_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a4d_0_80 airplane_cfbe3)
       (not_blocked seg_08l_a4d_0_80 airplane_daew8)
       (not_blocked seg_08l_a4d_0_80 airplane_daew3)
       (not_blocked seg_08l_a4d_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_08l_a3a4_0_450)) (not_occupied seg_08l_a3a4_0_450)
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
  ugly30205ugly29421ugly29646ugly30164ugly30146ugly786ugly607ugly673ugly59move_seg_w1_141c_0_34_seg_w1_141a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141c_0_34) (not_occupied seg_w1_141a_0_34)
       (not_blocked seg_w1_141a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_141a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_141a_0_34 airplane_daew8)
       (not_blocked seg_w1_141a_0_34 airplane_daew3)
       (not_blocked seg_w1_141a_0_34 airplane_cfbe2)
       (not_occupied seg_w1_141b_0_45))
  :effect
  (and (not (occupied seg_w1_141c_0_34)) (not_occupied seg_w1_141c_0_34)
       (not (at-segment ?a seg_w1_141c_0_34)) (occupied seg_w1_141a_0_34)
       (not (not_occupied seg_w1_141a_0_34)) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (at-segment ?a seg_w1_141a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_142a_0_34 ?a)) (not_blocked seg_w1_142a_0_34 ?a)
       (blocked seg_w1_141b_0_45 ?a) (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action
  ugly30206ugly29581ugly30434ugly29785ugly29576ugly356ugly422ugly145ugly318move_seg_n_a4c_0_60_seg_n_n2a4e_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a4c_0_60) (not_occupied seg_n_n2a4e_0_75)
       (not_blocked seg_n_n2a4e_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4e_0_75 airplane_cfbe1)
       (not_blocked seg_n_n2a4e_0_75 airplane_cfbe3)
       (not_blocked seg_n_n2a4e_0_75 airplane_daew8)
       (not_blocked seg_n_n2a4e_0_75 airplane_daew3)
       (not_blocked seg_n_n2a4e_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a4c_0_60)) (not_occupied seg_n_a4c_0_60)
       (not (at-segment ?a seg_n_a4c_0_60)) (occupied seg_n_n2a4e_0_75)
       (not (not_occupied seg_n_n2a4e_0_75)) (blocked seg_n_n2a4e_0_75 ?a)
       (not (not_blocked seg_n_n2a4e_0_75 ?a)) (at-segment ?a seg_n_n2a4e_0_75)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_n_a4a_0_60 ?a)) (not_blocked seg_n_a4a_0_60 ?a)
       (not (blocked seg_n_a4b_0_60 ?a)) (not_blocked seg_n_a4b_0_60 ?a)))
 (:action
  ugly30207ugly29344ugly30431ugly30358ugly30546ugly86ugly235ugly576ugly438startup_seg_w1_151c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151c_0_34)
       (not_occupied seg_w1_151a_0_34) (not_occupied seg_w1_151b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action
  ugly30208ugly30353ugly29692ugly29357ugly30451ugly1292ugly256ugly1108ugly250move_seg_n_a8a_0_60_seg_n_a8c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a8a_0_60) (not_occupied seg_n_a8c_0_60)
       (not_blocked seg_n_a8c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a8c_0_60 airplane_cfbe1)
       (not_blocked seg_n_a8c_0_60 airplane_cfbe3)
       (not_blocked seg_n_a8c_0_60 airplane_daew8)
       (not_blocked seg_n_a8c_0_60 airplane_daew3)
       (not_blocked seg_n_a8c_0_60 airplane_cfbe2)
       (not_occupied seg_n_a8b_0_60))
  :effect
  (and (not (occupied seg_n_a8a_0_60)) (not_occupied seg_n_a8a_0_60)
       (not (at-segment ?a seg_n_a8a_0_60)) (occupied seg_n_a8c_0_60)
       (not (not_occupied seg_n_a8c_0_60)) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a)) (at-segment ?a seg_n_a8c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_m_a8b_0_60 ?a)) (not_blocked seg_m_a8b_0_60 ?a)
       (blocked seg_n_a8b_0_60 ?a) (not (not_blocked seg_n_a8b_0_60 ?a))))
 (:action
  ugly30209ugly29766ugly30120ugly30309ugly30136ugly439ugly1229ugly1217ugly888startup_seg_c4_s6b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6b_0_60)
       (not_occupied seg_c4_s6a_0_80) (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a)) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action
  ugly30210ugly30053ugly30417ugly29651ugly29494ugly1112ugly1035ugly1292ugly256startup_seg_m_a3a4c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4c_0_75)
       (not_occupied seg_m_a3a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4d_0_75 ?a)
       (not (not_blocked seg_m_a3a4d_0_75 ?a))))
 (:action
  ugly30211ugly29322ugly30375ugly30366ugly30254ugly1001ugly1242ugly885ugly542move_seg_08r_b2b_0_80_seg_08r_b2b3_0_900_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b2b_0_80) (not_occupied seg_08r_b2b3_0_900)
       (not_blocked seg_08r_b2b3_0_900 airplane_cfbeg)
       (not_blocked seg_08r_b2b3_0_900 airplane_cfbe1)
       (not_blocked seg_08r_b2b3_0_900 airplane_cfbe3)
       (not_blocked seg_08r_b2b3_0_900 airplane_daew8)
       (not_blocked seg_08r_b2b3_0_900 airplane_daew3)
       (not_blocked seg_08r_b2b3_0_900 airplane_cfbe2))
  :effect
  (and (not (occupied seg_08r_b2b_0_80)) (not_occupied seg_08r_b2b_0_80)
       (not (at-segment ?a seg_08r_b2b_0_80)) (occupied seg_08r_b2b3_0_900)
       (not (not_occupied seg_08r_b2b3_0_900)) (blocked seg_08r_b2b3_0_900 ?a)
       (not (not_blocked seg_08r_b2b3_0_900 ?a))
       (at-segment ?a seg_08r_b2b3_0_900) (not (blocked seg_08r_b2a_0_80 ?a))
       (not_blocked seg_08r_b2a_0_80 ?a)))
 (:action
  ugly30212ugly29359ugly29843ugly30245ugly29370ugly1012ugly262ugly298ugly1088startup_seg_w1_161c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161c_0_34)
       (not_occupied seg_w1_162a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a))))
 (:action
  ugly30213ugly29204ugly29329ugly29334ugly29558ugly1106ugly25ugly263ugly920startup_seg_o1_116c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116c_0_34)
       (not_occupied seg_o1_116a_0_34) (not_occupied seg_o1_116b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action
  ugly30214ugly29956ugly29553ugly29218ugly30396ugly540ugly910ugly427ugly907startup_seg_s_b3b4d_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4d_0_140)
       (not_occupied seg_s_b4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4c_0_60 ?a)
       (not (not_blocked seg_s_b4c_0_60 ?a))))
 (:action
  ugly30215ugly29898ugly30459ugly29970ugly29608ugly230ugly591ugly84ugly195startup_seg_s_b2b3b_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3b_0_140)
       (not_occupied seg_s_b2b3a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3a_0_140 ?a)
       (not (not_blocked seg_s_b2b3a_0_140 ?a))))
 (:action
  ugly30216ugly29968ugly30178ugly29653ugly30548ugly328ugly331ugly183ugly163move_seg_08r_b9c_0_80_seg_09r_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08r_b9c_0_80) (not_occupied seg_09r_0_80)
       (not_blocked seg_09r_0_80 airplane_cfbeg)
       (not_blocked seg_09r_0_80 airplane_cfbe1)
       (not_blocked seg_09r_0_80 airplane_cfbe3)
       (not_blocked seg_09r_0_80 airplane_daew8)
       (not_blocked seg_09r_0_80 airplane_daew3)
       (not_blocked seg_09r_0_80 airplane_cfbe2)
       (not_occupied seg_08r_b9a_0_161_245))
  :effect
  (and (not (occupied seg_08r_b9c_0_80)) (not_occupied seg_08r_b9c_0_80)
       (not (at-segment ?a seg_08r_b9c_0_80)) (occupied seg_09r_0_80)
       (not (not_occupied seg_09r_0_80)) (blocked seg_09r_0_80 ?a)
       (not (not_blocked seg_09r_0_80 ?a)) (at-segment ?a seg_09r_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_08r_b6b9_0_420 ?a))
       (not_blocked seg_08r_b6b9_0_420 ?a) (blocked seg_08r_b9a_0_161_245 ?a)
       (not (not_blocked seg_08r_b9a_0_161_245 ?a))))
 (:action
  ugly30217ugly30440ugly29293ugly29483ugly29400ugly307ugly158ugly492ugly980startup_seg_n_a9a10e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10e_0_75)
       (not_occupied seg_n_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10f_0_75 ?a)
       (not (not_blocked seg_n_a9a10f_0_75 ?a))))
 (:action
  ugly30218ugly30405ugly29386ugly30210ugly30053ugly1234ugly722ugly582ugly345startup_seg_w1_153c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153c_0_34)
       (not_occupied seg_w1_154a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a))))
 (:action
  ugly30219ugly29230ugly29410ugly29258ugly29443ugly429ugly226ugly88ugly313startup_seg_o1_108b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108b_0_60)
       (not_occupied seg_p108_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p108_0_76 ?a)
       (not (not_blocked seg_p108_0_76 ?a))))
 (:action
  ugly30220ugly29262ugly29347ugly30337ugly30078ugly1350ugly1066ugly1290ugly1346startup_seg_t_b6a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6a_0_60)
       (not_occupied seg_s_b6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b_0_60 ?a)
       (not (not_blocked seg_s_b6b_0_60 ?a))))
 (:action
  ugly30221ugly30113ugly30229ugly30225ugly30161ugly890ugly52ugly460ugly499startup_seg_b10_1_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b10_1_0_80)
       (not_occupied seg_b10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b10_0_80 ?a)
       (not (not_blocked seg_b10_0_80 ?a))))
 (:action
  ugly30222ugly30152ugly29352ugly29354ugly29972ugly304ugly877ugly660ugly975startup_seg_n_a3b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3b_0_60)
       (not_occupied seg_n_a3a_0_60) (not_occupied seg_n_a3c_0_60)
       (not_occupied seg_n_a3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3a_0_60 ?a)
       (not (not_blocked seg_n_a3a_0_60 ?a)) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a)) (blocked seg_n_a3d_0_60 ?a)
       (not (not_blocked seg_n_a3d_0_60 ?a))))
 (:action
  ugly30223ugly29662ugly30031ugly29991ugly30488ugly430ugly1288ugly569ugly927startup_seg_t_b8b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b_0_60)
       (not_occupied seg_t_b8b9a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9a_0_115 ?a)
       (not (not_blocked seg_t_b8b9a_0_115 ?a))))
 (:action
  ugly30224ugly29471ugly29733ugly29266ugly30072ugly265ugly544ugly745ugly44move_seg_w1_c1b_0_60_seg_w1_c1c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1b_0_60) (not_occupied seg_w1_c1c_0_34)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_c1c_0_34 airplane_daew8)
       (not_blocked seg_w1_c1c_0_34 airplane_daew3)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbe2)
       (not_occupied seg_w1_c1a_0_60))
  :effect
  (and (not (occupied seg_w1_c1b_0_60)) (not_occupied seg_w1_c1b_0_60)
       (not (at-segment ?a seg_w1_c1b_0_60)) (occupied seg_w1_c1c_0_34)
       (not (not_occupied seg_w1_c1c_0_34)) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a)) (at-segment ?a seg_w1_c1c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_c1_n2c_0_60 ?a)) (not_blocked seg_c1_n2c_0_60 ?a)
       (blocked seg_w1_c1a_0_60 ?a) (not (not_blocked seg_w1_c1a_0_60 ?a))))
 (:action
  ugly30225ugly30161ugly30073ugly29649ugly29337ugly15ugly1212ugly1339ugly1201move_seg_o1_102c_0_34_seg_o1_103a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102c_0_34) (not_occupied seg_o1_103a_0_34)
       (not_blocked seg_o1_103a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_103a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_103a_0_34 airplane_daew8)
       (not_blocked seg_o1_103a_0_34 airplane_daew3)
       (not_blocked seg_o1_103a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_102c_0_34)) (not_occupied seg_o1_102c_0_34)
       (not (at-segment ?a seg_o1_102c_0_34)) (occupied seg_o1_103a_0_34)
       (not (not_occupied seg_o1_103a_0_34)) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (at-segment ?a seg_o1_103a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_102a_0_34 ?a)) (not_blocked seg_o1_102a_0_34 ?a)
       (not (blocked seg_o1_102b_0_60 ?a)) (not_blocked seg_o1_102b_0_60 ?a)))
 (:action
  ugly30226ugly30379ugly29771ugly29422ugly29779ugly634ugly1164ugly1192ugly1188startup_seg_n_a6a8c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8c_0_75)
       (not_occupied seg_n_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8d_0_75 ?a)
       (not (not_blocked seg_n_a6a8d_0_75 ?a))))
 (:action
  ugly30227ugly30204ugly29188ugly29906ugly30386ugly1064ugly136ugly1008ugly1020startup_seg_s_b6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6c_0_60)
       (not_occupied seg_s_b4b6c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6c_0_130 ?a)
       (not (not_blocked seg_s_b4b6c_0_130 ?a))))
 (:action
  ugly30228ugly29645ugly29388ugly29426ugly30037ugly469ugly1098ugly70ugly365move_seg_o1_109a_0_34_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_109c_0_34 airplane_daew8)
       (not_blocked seg_o1_109c_0_34 airplane_daew3)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe2)
       (not_occupied seg_o1_109b_0_60) (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (occupied seg_o1_109a_0_34)) (not_occupied seg_o1_109a_0_34)
       (not (at-segment ?a seg_o1_109a_0_34)) (occupied seg_o1_109c_0_34)
       (not (not_occupied seg_o1_109c_0_34)) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a)) (at-segment ?a seg_o1_109c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_108c_0_34 ?a)) (not_blocked seg_o1_108c_0_34 ?a)
       (blocked seg_o1_109b_0_60 ?a) (not (not_blocked seg_o1_109b_0_60 ?a))
       (blocked seg_o1_109d_0_45 ?a) (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action
  ugly30229ugly30225ugly30161ugly30073ugly29649ugly154ugly918ugly719ugly632startup_seg_n_a2a3f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3f_0_115)
       (not_occupied seg_n_a2a3e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3e_0_75 ?a)
       (not (not_blocked seg_n_a2a3e_0_75 ?a))))
 (:action
  ugly30230ugly30246ugly29429ugly29562ugly30363ugly61ugly368ugly840ugly56move_seg_w1_162b_0_45_seg_p162_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162b_0_45) (not_occupied seg_p162_0_75)
       (not_blocked seg_p162_0_75 airplane_cfbeg)
       (not_blocked seg_p162_0_75 airplane_cfbe1)
       (not_blocked seg_p162_0_75 airplane_cfbe3)
       (not_blocked seg_p162_0_75 airplane_daew8)
       (not_blocked seg_p162_0_75 airplane_daew3)
       (not_blocked seg_p162_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_162b_0_45)) (not_occupied seg_w1_162b_0_45)
       (not (at-segment ?a seg_w1_162b_0_45)) (occupied seg_p162_0_75)
       (not (not_occupied seg_p162_0_75)) (blocked seg_p162_0_75 ?a)
       (not (not_blocked seg_p162_0_75 ?a)) (at-segment ?a seg_p162_0_75)
       (not (blocked seg_w1_162a_0_34 ?a)) (not_blocked seg_w1_162a_0_34 ?a)
       (not (blocked seg_w1_162c_0_34 ?a)) (not_blocked seg_w1_162c_0_34 ?a)))
 (:action
  ugly30231ugly29753ugly30424ugly29948ugly29971ugly1360ugly1248ugly479ugly551pushback_seg_o1_c1b_0_34_seg_o1_102a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_102a_0_34 airplane_daew8)
       (not_blocked seg_o1_102a_0_34 airplane_daew3)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_c1b_0_34)) (not_occupied seg_o1_c1b_0_34)
       (not (blocked seg_o1_c1b_0_34 ?a)) (not_blocked seg_o1_c1b_0_34 ?a)
       (not (at-segment ?a seg_o1_c1b_0_34)) (occupied seg_o1_102a_0_34)
       (not (not_occupied seg_o1_102a_0_34)) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (at-segment ?a seg_o1_102a_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action
  ugly30232ugly29772ugly29325ugly29618ugly29326ugly244ugly1005ugly67ugly60startup_seg_t_b3b4a_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4a_0_140)
       (not_occupied seg_t_b3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b_0_60 ?a)
       (not (not_blocked seg_t_b3b_0_60 ?a))))
 (:action
  ugly30233ugly30390ugly29765ugly29980ugly30180ugly465ugly791ugly465ugly791startup_seg_08r_b4d_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b4d_0_161_245)
       (not_occupied seg_08r_b4a_0_161_245) (not_occupied seg_08r_b4c_0_80)
       (not_occupied seg_08r_b4b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b4a_0_161_245 ?a)
       (not (not_blocked seg_08r_b4a_0_161_245 ?a))
       (blocked seg_08r_b4c_0_80 ?a) (not (not_blocked seg_08r_b4c_0_80 ?a))
       (blocked seg_08r_b4b_0_80 ?a) (not (not_blocked seg_08r_b4b_0_80 ?a))))
 (:action
  ugly30234ugly29839ugly29213ugly29500ugly30501ugly147ugly667ugly897ugly919move_seg_w1_152a_0_34_seg_w1_152c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_152c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_152c_0_34 airplane_daew8)
       (not_blocked seg_w1_152c_0_34 airplane_daew3)
       (not_blocked seg_w1_152c_0_34 airplane_cfbe2)
       (not_occupied seg_w1_152b_0_45))
  :effect
  (and (not (occupied seg_w1_152a_0_34)) (not_occupied seg_w1_152a_0_34)
       (not (at-segment ?a seg_w1_152a_0_34)) (occupied seg_w1_152c_0_34)
       (not (not_occupied seg_w1_152c_0_34)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a)) (at-segment ?a seg_w1_152c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_151c_0_34 ?a)) (not_blocked seg_w1_151c_0_34 ?a)
       (blocked seg_w1_152b_0_45 ?a) (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action
  ugly30235ugly29343ugly29268ugly30354ugly30502ugly1228ugly411ugly1181ugly760move_seg_08l_a2b_0_80_seg_08l_a2a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a2b_0_80) (not_occupied seg_08l_a2a_0_80)
       (not_blocked seg_08l_a2a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a2a_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a2a_0_80 airplane_cfbe3)
       (not_blocked seg_08l_a2a_0_80 airplane_daew8)
       (not_blocked seg_08l_a2a_0_80 airplane_daew3)
       (not_blocked seg_08l_a2a_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_08l_a2b_0_80)) (not_occupied seg_08l_a2b_0_80)
       (not (at-segment ?a seg_08l_a2b_0_80)) (occupied seg_08l_a2a_0_80)
       (not (not_occupied seg_08l_a2a_0_80)) (blocked seg_08l_a2a_0_80 ?a)
       (not (not_blocked seg_08l_a2a_0_80 ?a)) (at-segment ?a seg_08l_a2a_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_a2_a_0_90 ?a)) (not_blocked seg_a2_a_0_90 ?a)))
 (:action
  ugly30236ugly29808ugly29523ugly29361ugly29320ugly69ugly334ugly644ugly1280startup_seg_s_b5b8c_0_130_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8c_0_130)
       (not_occupied seg_s_b5b8b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8b_0_135 ?a)
       (not (not_blocked seg_s_b5b8b_0_135 ?a))))
 (:action
  ugly30237ugly30367ugly29560ugly30185ugly30014ugly864ugly1059ugly142ugly205move_seg_w1_153b_0_45_seg_w1_153a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153b_0_45) (not_occupied seg_w1_153a_0_34)
       (not_blocked seg_w1_153a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_153a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_153a_0_34 airplane_daew8)
       (not_blocked seg_w1_153a_0_34 airplane_daew3)
       (not_blocked seg_w1_153a_0_34 airplane_cfbe2)
       (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (occupied seg_w1_153b_0_45)) (not_occupied seg_w1_153b_0_45)
       (not (at-segment ?a seg_w1_153b_0_45)) (occupied seg_w1_153a_0_34)
       (not (not_occupied seg_w1_153a_0_34)) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (at-segment ?a seg_w1_153a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p153_0_75 ?a)) (not_blocked seg_p153_0_75 ?a)
       (blocked seg_w1_153c_0_34 ?a) (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action
  ugly30238ugly30270ugly29989ugly29411ugly30010ugly575ugly329ugly1318ugly1333startup_seg_b6_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b6_b_0_159_512)
       (not_occupied seg_b6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b6_a_0_158_647 ?a)
       (not (not_blocked seg_b6_a_0_158_647 ?a))))
 (:action
  ugly30239ugly29616ugly29336ugly30235ugly29343ugly85ugly1327ugly520ugly688startup_seg_o1_111b_0_60_south_medium
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
  ugly30240ugly29812ugly30056ugly30490ugly29923ugly637ugly300ugly749ugly959startup_seg_o1_117a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117a_0_34)
       (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action
  ugly30241ugly30428ugly29349ugly29525ugly30420ugly1124ugly245ugly33ugly234startup_seg_m_a9a10f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10f_0_75)
       (not_occupied seg_m_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10e_0_75 ?a)
       (not (not_blocked seg_m_a9a10e_0_75 ?a))))
 (:action
  ugly30242ugly29313ugly30334ugly29611ugly30249ugly1281ugly87ugly400ugly246move_seg_w1_161c_0_34_seg_w1_161b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161c_0_34) (not_occupied seg_w1_161b_0_45)
       (not_blocked seg_w1_161b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_161b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_161b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_161b_0_45 airplane_daew8)
       (not_blocked seg_w1_161b_0_45 airplane_daew3)
       (not_blocked seg_w1_161b_0_45 airplane_cfbe2)
       (not_occupied seg_w1_161a_0_34))
  :effect
  (and (not (occupied seg_w1_161c_0_34)) (not_occupied seg_w1_161c_0_34)
       (not (at-segment ?a seg_w1_161c_0_34)) (occupied seg_w1_161b_0_45)
       (not (not_occupied seg_w1_161b_0_45)) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a)) (at-segment ?a seg_w1_161b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_162a_0_34 ?a)) (not_blocked seg_w1_162a_0_34 ?a)
       (blocked seg_w1_161a_0_34 ?a) (not (not_blocked seg_w1_161a_0_34 ?a))))
 (:action
  ugly30243ugly29797ugly29838ugly29913ugly30351ugly344ugly821ugly181ugly341startup_seg_p163_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p163_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly30244ugly29815ugly30518ugly29460ugly29899ugly1349ugly1269ugly999ugly1308startup_seg_t_b6d_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6d_0_60)
       (not_occupied seg_t_b6a_0_60) (not_occupied seg_t_b6b_0_60)
       (not_occupied seg_t_b6c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6a_0_60 ?a)
       (not (not_blocked seg_t_b6a_0_60 ?a)) (blocked seg_t_b6b_0_60 ?a)
       (not (not_blocked seg_t_b6b_0_60 ?a)) (blocked seg_t_b6c_0_120_934 ?a)
       (not (not_blocked seg_t_b6c_0_120_934 ?a))))
 (:action
  ugly30245ugly29370ugly30195ugly30435ugly30080ugly728ugly795ugly898ugly1013move_seg_s_b4b6b_0_135_seg_s_b4b6a_0_135_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b4b6b_0_135) (not_occupied seg_s_b4b6a_0_135)
       (not_blocked seg_s_b4b6a_0_135 airplane_cfbeg)
       (not_blocked seg_s_b4b6a_0_135 airplane_cfbe1)
       (not_blocked seg_s_b4b6a_0_135 airplane_cfbe3)
       (not_blocked seg_s_b4b6a_0_135 airplane_daew8)
       (not_blocked seg_s_b4b6a_0_135 airplane_daew3)
       (not_blocked seg_s_b4b6a_0_135 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b4b6b_0_135)) (not_occupied seg_s_b4b6b_0_135)
       (not (at-segment ?a seg_s_b4b6b_0_135)) (occupied seg_s_b4b6a_0_135)
       (not (not_occupied seg_s_b4b6a_0_135)) (blocked seg_s_b4b6a_0_135 ?a)
       (not (not_blocked seg_s_b4b6a_0_135 ?a))
       (at-segment ?a seg_s_b4b6a_0_135) (not (blocked seg_s_b4b6c_0_130 ?a))
       (not_blocked seg_s_b4b6c_0_130 ?a)))
 (:action
  ugly30246ugly29429ugly29562ugly30363ugly29244ugly1137ugly602ugly549ugly322move_seg_o1_115a_0_34_seg_o1_c3c_0_48_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_c3c_0_48)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbe1)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbe3)
       (not_blocked seg_o1_c3c_0_48 airplane_daew8)
       (not_blocked seg_o1_c3c_0_48 airplane_daew3)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_115a_0_34)) (not_occupied seg_o1_115a_0_34)
       (not (at-segment ?a seg_o1_115a_0_34)) (occupied seg_o1_c3c_0_48)
       (not (not_occupied seg_o1_c3c_0_48)) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a)) (at-segment ?a seg_o1_c3c_0_48)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_115b_0_60 ?a)) (not_blocked seg_o1_115b_0_60 ?a)
       (not (blocked seg_o1_115c_0_34 ?a)) (not_blocked seg_o1_115c_0_34 ?a)))
 (:action
  ugly30247ugly30331ugly30273ugly29894ugly29584ugly152ugly1014ugly502ugly677startup_seg_t_b8d_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8d_0_60)
       (not_occupied seg_t_b8a_0_60) (not_occupied seg_t_b8b_0_60)
       (not_occupied seg_t_b8c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8a_0_60 ?a)
       (not (not_blocked seg_t_b8a_0_60 ?a)) (blocked seg_t_b8b_0_60 ?a)
       (not (not_blocked seg_t_b8b_0_60 ?a)) (blocked seg_t_b8c_0_120_934 ?a)
       (not (not_blocked seg_t_b8c_0_120_934 ?a))))
 (:action
  ugly30248ugly29799ugly30287ugly29385ugly30012ugly746ugly453ugly73ugly1240move_seg_08r_0_80_seg_08r_b3a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08r_0_80) (not_occupied seg_08r_b3a_0_80)
       (not_blocked seg_08r_b3a_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b3a_0_80 airplane_cfbe1)
       (not_blocked seg_08r_b3a_0_80 airplane_cfbe3)
       (not_blocked seg_08r_b3a_0_80 airplane_daew8)
       (not_blocked seg_08r_b3a_0_80 airplane_daew3)
       (not_blocked seg_08r_b3a_0_80 airplane_cfbe2)
       (not_occupied seg_08r_b3c_0_161_245))
  :effect
  (and (not (occupied seg_08r_0_80)) (not_occupied seg_08r_0_80)
       (not (at-segment ?a seg_08r_0_80)) (occupied seg_08r_b3a_0_80)
       (not (not_occupied seg_08r_b3a_0_80)) (blocked seg_08r_b3a_0_80 ?a)
       (not (not_blocked seg_08r_b3a_0_80 ?a)) (at-segment ?a seg_08r_b3a_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_08r_b2b3_0_900 ?a))
       (not_blocked seg_08r_b2b3_0_900 ?a) (blocked seg_08r_b3c_0_161_245 ?a)
       (not (not_blocked seg_08r_b3c_0_161_245 ?a))))
 (:action
  ugly30249ugly30464ugly29507ugly29931ugly29849ugly1139ugly62ugly398ugly1120startup_seg_w1_c1a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1a_0_60)
       (not_occupied seg_w1_c1b_0_60) (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a)) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action
  ugly30250ugly29878ugly29225ugly29647ugly30201ugly919ugly15ugly1212ugly1339startup_seg_m_a8a9c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9c_0_75)
       (not_occupied seg_m_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9b_0_75 ?a)
       (not (not_blocked seg_m_a8a9b_0_75 ?a))))
 (:action
  ugly30251ugly30265ugly29614ugly29962ugly30038ugly313ugly928ugly708ugly1328startup_seg_08r_b6d_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b6d_0_161_245)
       (not_occupied seg_b6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b6_a_0_158_647 ?a)
       (not (not_blocked seg_b6_a_0_158_647 ?a))))
 (:action
  ugly30252ugly29224ugly30455ugly30129ugly30066ugly1333ugly553ugly539ugly367move_seg_c4_s6b_0_60_seg_c4_s6a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c4_s6b_0_60) (not_occupied seg_c4_s6a_0_80)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbeg)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbe1)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbe3)
       (not_blocked seg_c4_s6a_0_80 airplane_daew8)
       (not_blocked seg_c4_s6a_0_80 airplane_daew3)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbe2)
       (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (occupied seg_c4_s6b_0_60)) (not_occupied seg_c4_s6b_0_60)
       (not (at-segment ?a seg_c4_s6b_0_60)) (occupied seg_c4_s6a_0_80)
       (not (not_occupied seg_c4_s6a_0_80)) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a)) (at-segment ?a seg_c4_s6a_0_80)
       (not (facing ?a north)) (facing ?a south) (not (blocked seg_s6_0_94 ?a))
       (not_blocked seg_s6_0_94 ?a) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action
  ugly30253ugly30484ugly29994ugly29677ugly30074ugly922ugly1302ugly1046ugly113startup_seg_o1_118a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118a_0_34)
       (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action
  ugly30254ugly30184ugly29260ugly29953ugly29508ugly696ugly1082ugly940ugly1102park_seg_p108_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p108_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p108_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_108b_0_60 ?a)) (not_blocked seg_o1_108b_0_60 ?a)))
 (:action
  ugly30255ugly29206ugly30349ugly29378ugly29302ugly939ugly80ugly957ugly1203startup_seg_s_b9a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9a_0_60)
       (not_occupied seg_s_b9b10a_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10a_0_125 ?a)
       (not (not_blocked seg_s_b9b10a_0_125 ?a))))
 (:action
  ugly30256ugly30473ugly29456ugly29588ugly29551ugly365ugly268ugly1025ugly1208move_seg_o1_110d_0_45_seg_o1_110a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110d_0_45) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_110a_0_34 airplane_daew8)
       (not_blocked seg_o1_110a_0_34 airplane_daew3)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_110b_0_60) (not_occupied seg_o1_110c_0_34))
  :effect
  (and (not (occupied seg_o1_110d_0_45)) (not_occupied seg_o1_110d_0_45)
       (not (at-segment ?a seg_o1_110d_0_45)) (occupied seg_o1_110a_0_34)
       (not (not_occupied seg_o1_110a_0_34)) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a)) (at-segment ?a seg_o1_110a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p133_0_75 ?a)) (not_blocked seg_p133_0_75 ?a)
       (blocked seg_o1_110b_0_60 ?a) (not (not_blocked seg_o1_110b_0_60 ?a))
       (blocked seg_o1_110c_0_34 ?a) (not (not_blocked seg_o1_110c_0_34 ?a))))
 (:action
  ugly30257ugly30262ugly29397ugly29446ugly29249ugly968ugly1213ugly1106ugly25move_seg_o1_104c_0_60_seg_o1_c2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104c_0_60) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c2a_0_60 airplane_daew8)
       (not_blocked seg_o1_c2a_0_60 airplane_daew3)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_104c_0_60)) (not_occupied seg_o1_104c_0_60)
       (not (at-segment ?a seg_o1_104c_0_60)) (occupied seg_o1_c2a_0_60)
       (not (not_occupied seg_o1_c2a_0_60)) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a)) (at-segment ?a seg_o1_c2a_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_104a_0_34 ?a)) (not_blocked seg_o1_104a_0_34 ?a)
       (not (blocked seg_o1_104b_0_60 ?a)) (not_blocked seg_o1_104b_0_60 ?a)))
 (:action
  ugly30258ugly29860ugly29545ugly29818ugly30238ugly1087ugly6ugly1200ugly1265startup_seg_t_b8b9c_1_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9c_1_0_115)
       (not_occupied seg_t_b8b9c_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9c_0_115 ?a)
       (not (not_blocked seg_t_b8b9c_0_115 ?a))))
 (:action
  ugly30259ugly29278ugly30028ugly30045ugly30399ugly908ugly26ugly76ugly1146startup_seg_p112_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p112_0_76)
       (not_occupied seg_o1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a))))
 (:action
  ugly30260ugly29477ugly29615ugly30522ugly30343ugly724ugly291ugly1235ugly1184move_seg_o1_117c_0_34_seg_o1_117b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117c_0_34) (not_occupied seg_o1_117b_0_60)
       (not_blocked seg_o1_117b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_117b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_117b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_117b_0_60 airplane_daew8)
       (not_blocked seg_o1_117b_0_60 airplane_daew3)
       (not_blocked seg_o1_117b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_117a_0_34))
  :effect
  (and (not (occupied seg_o1_117c_0_34)) (not_occupied seg_o1_117c_0_34)
       (not (at-segment ?a seg_o1_117c_0_34)) (occupied seg_o1_117b_0_60)
       (not (not_occupied seg_o1_117b_0_60)) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a)) (at-segment ?a seg_o1_117b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_118a_0_34 ?a)) (not_blocked seg_o1_118a_0_34 ?a)
       (blocked seg_o1_117a_0_34 ?a) (not (not_blocked seg_o1_117a_0_34 ?a))))
 (:action
  ugly30261ugly30327ugly29430ugly29702ugly29362ugly72ugly1182ugly34ugly491startup_seg_b3_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_b_1_0_80_6226)
       (not_occupied seg_b3_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_b_0_80_6226 ?a)
       (not (not_blocked seg_b3_b_0_80_6226 ?a))))
 (:action
  ugly30262ugly29397ugly29446ugly29249ugly30151ugly1060ugly597ugly922ugly1302startup_seg_o1_c4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4b_0_60)
       (not_occupied seg_p119_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p119_0_76 ?a)
       (not (not_blocked seg_p119_0_76 ?a))))
 (:action
  ugly30263ugly30255ugly29206ugly30349ugly29378ugly119ugly703ugly842ugly827startup_seg_w1_c3a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3a_0_34)
       (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action
  ugly30264ugly29351ugly29996ugly30223ugly29662ugly848ugly1137ugly602ugly549move_seg_o1_c1b_0_34_seg_o1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c1a_0_60 airplane_daew8)
       (not_blocked seg_o1_c1a_0_60 airplane_daew3)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe2)
       (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (occupied seg_o1_c1b_0_34)) (not_occupied seg_o1_c1b_0_34)
       (not (at-segment ?a seg_o1_c1b_0_34)) (occupied seg_o1_c1a_0_60)
       (not (not_occupied seg_o1_c1a_0_60)) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (at-segment ?a seg_o1_c1a_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_102a_0_34 ?a)) (not_blocked seg_o1_102a_0_34 ?a)
       (blocked seg_o1_c1c_0_80 ?a) (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action
  ugly30265ugly29614ugly29962ugly30038ugly29496ugly844ugly501ugly969ugly1273move_seg_n_a6a8e_0_75_seg_n_a6a8d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8e_0_75) (not_occupied seg_n_a6a8d_0_75)
       (not_blocked seg_n_a6a8d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8d_0_75 airplane_cfbe1)
       (not_blocked seg_n_a6a8d_0_75 airplane_cfbe3)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew8)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew3)
       (not_blocked seg_n_a6a8d_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a6a8e_0_75)) (not_occupied seg_n_a6a8e_0_75)
       (not (at-segment ?a seg_n_a6a8e_0_75)) (occupied seg_n_a6a8d_0_75)
       (not (not_occupied seg_n_a6a8d_0_75)) (blocked seg_n_a6a8d_0_75 ?a)
       (not (not_blocked seg_n_a6a8d_0_75 ?a)) (at-segment ?a seg_n_a6a8d_0_75)
       (not (blocked seg_n_a6a8f_0_75 ?a)) (not_blocked seg_n_a6a8f_0_75 ?a)))
 (:action
  ugly30266ugly29243ugly29830ugly29294ugly29796ugly722ugly582ugly345ugly798startup_seg_t_b3b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b_0_60)
       (not_occupied seg_t_b3a_0_60) (not_occupied seg_t_b3c_0_120_934)
       (not_occupied seg_t_b3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3a_0_60 ?a)
       (not (not_blocked seg_t_b3a_0_60 ?a)) (blocked seg_t_b3c_0_120_934 ?a)
       (not (not_blocked seg_t_b3c_0_120_934 ?a)) (blocked seg_t_b3d_0_60 ?a)
       (not (not_blocked seg_t_b3d_0_60 ?a))))
 (:action
  ugly30267ugly29836ugly30290ugly29696ugly29399ugly850ugly27ugly1069ugly810move_seg_w1_c1c_0_34_seg_w1_141a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c1c_0_34) (not_occupied seg_w1_141a_0_34)
       (not_blocked seg_w1_141a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_141a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_141a_0_34 airplane_daew8)
       (not_blocked seg_w1_141a_0_34 airplane_daew3)
       (not_blocked seg_w1_141a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_c1c_0_34)) (not_occupied seg_w1_c1c_0_34)
       (not (at-segment ?a seg_w1_c1c_0_34)) (occupied seg_w1_141a_0_34)
       (not (not_occupied seg_w1_141a_0_34)) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (at-segment ?a seg_w1_141a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c1a_0_60 ?a)) (not_blocked seg_w1_c1a_0_60 ?a)
       (not (blocked seg_w1_c1b_0_60 ?a)) (not_blocked seg_w1_c1b_0_60 ?a)))
 (:action
  ugly30268ugly29999ugly29510ugly29605ugly29713ugly1068ugly1126ugly285ugly242move_seg_o1_110c_0_34_seg_o1_110d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_110d_0_45)
       (not_blocked seg_o1_110d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_110d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_110d_0_45 airplane_cfbe3)
       (not_blocked seg_o1_110d_0_45 airplane_daew8)
       (not_blocked seg_o1_110d_0_45 airplane_daew3)
       (not_blocked seg_o1_110d_0_45 airplane_cfbe2)
       (not_occupied seg_o1_110a_0_34) (not_occupied seg_o1_110b_0_60))
  :effect
  (and (not (occupied seg_o1_110c_0_34)) (not_occupied seg_o1_110c_0_34)
       (not (at-segment ?a seg_o1_110c_0_34)) (occupied seg_o1_110d_0_45)
       (not (not_occupied seg_o1_110d_0_45)) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a)) (at-segment ?a seg_o1_110d_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_111a_0_34 ?a)) (not_blocked seg_o1_111a_0_34 ?a)
       (blocked seg_o1_110a_0_34 ?a) (not (not_blocked seg_o1_110a_0_34 ?a))
       (blocked seg_o1_110b_0_60 ?a) (not (not_blocked seg_o1_110b_0_60 ?a))))
 (:action
  ugly30269ugly29694ugly29473ugly30186ugly30213ugly21ugly1121ugly839ugly203startup_seg_c3_b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_b_0_80)
       (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action
  ugly30270ugly29989ugly29411ugly30010ugly29758ugly759ugly1049ugly1037ugly192startup_seg_c1_n2c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2c_0_60)
       (not_occupied seg_c1_n2a_0_60) (not_occupied seg_c1_n2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a)) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a))))
 (:action
  ugly30271ugly30089ugly29299ugly30514ugly29463ugly642ugly970ugly1134ugly853startup_seg_08l_a2b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a2b_0_80)
       (not_occupied seg_08l_a2a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a2a_0_80 ?a)
       (not (not_blocked seg_08l_a2a_0_80 ?a))))
 (:action
  ugly30272ugly29310ugly29332ugly30032ugly29467ugly1315ugly1053ugly249ugly244startup_seg_c3_b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_b_0_80)
       (not_occupied seg_c3_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_a_0_80 ?a)
       (not (not_blocked seg_c3_a_0_80 ?a))))
 (:action
  ugly30273ugly29894ugly29584ugly29335ugly29485ugly336ugly85ugly1327ugly520startup_seg_s_b5b8b_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8b_0_135)
       (not_occupied seg_s_b5b8c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8c_0_130 ?a)
       (not (not_blocked seg_s_b5b8c_0_130 ?a))))
 (:action
  ugly30274ugly29284ugly29465ugly29393ugly29434ugly826ugly66ugly1214ugly413startup_seg_m_a8a9d_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9d_0_85)
       (not_occupied seg_m_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9c_0_60 ?a)
       (not (not_blocked seg_m_a9c_0_60 ?a))))
 (:action
  ugly30275ugly29757ugly29919ugly30524ugly29184ugly559ugly170ugly40ugly1294startup_seg_n_a4a7e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7e_0_75)
       (not_occupied seg_n_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7d_0_75 ?a)
       (not (not_blocked seg_n_a4a7d_0_75 ?a))))
 (:action
  ugly30276ugly29190ugly30272ugly29310ugly29332ugly849ugly1360ugly1248ugly479startup_seg_t_b6b7a_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b7a_0_140)
       (not_occupied seg_t_b6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b_0_60 ?a)
       (not (not_blocked seg_t_b6b_0_60 ?a))))
 (:action
  ugly30277ugly29958ugly29189ugly30398ugly30535ugly212ugly1296ugly455ugly1232startup_seg_o1_c3a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3a_0_34)
       (not_occupied seg_o1_111c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a))))
 (:action
  ugly30278ugly30521ugly30264ugly29351ugly29996ugly1040ugly5ugly316ugly559move_seg_n_a7b_0_60_seg_n_a7c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7b_0_60) (not_occupied seg_n_a7c_0_60)
       (not_blocked seg_n_a7c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a7c_0_60 airplane_cfbe1)
       (not_blocked seg_n_a7c_0_60 airplane_cfbe3)
       (not_blocked seg_n_a7c_0_60 airplane_daew8)
       (not_blocked seg_n_a7c_0_60 airplane_daew3)
       (not_blocked seg_n_a7c_0_60 airplane_cfbe2)
       (not_occupied seg_n_a7a_0_60))
  :effect
  (and (not (occupied seg_n_a7b_0_60)) (not_occupied seg_n_a7b_0_60)
       (not (at-segment ?a seg_n_a7b_0_60)) (occupied seg_n_a7c_0_60)
       (not (not_occupied seg_n_a7c_0_60)) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a)) (at-segment ?a seg_n_a7c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n_a7a6a_0_85 ?a)) (not_blocked seg_n_a7a6a_0_85 ?a)
       (blocked seg_n_a7a_0_60 ?a) (not (not_blocked seg_n_a7a_0_60 ?a))))
 (:action
  ugly30279ugly30361ugly29720ugly30057ugly29903ugly201ugly963ugly847ugly388park_seg_p104_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p104_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p104_0_76) (not (is-moving ?a))))
 (:action
  ugly30280ugly30140ugly29543ugly29778ugly29401ugly495ugly462ugly923ugly1042startup_seg_o1_102a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102a_0_34)
       (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action
  ugly30281ugly30096ugly29784ugly30323ugly30116ugly665ugly628ugly949ugly10startup_seg_a8_a_0_157_785_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_a_0_157_785)
       (not_occupied seg_08l_a7b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a7b_0_161_245 ?a)
       (not (not_blocked seg_08l_a7b_0_161_245 ?a))))
 (:action
  ugly30282ugly29693ugly29237ugly29704ugly29756ugly751ugly1107ugly289ugly1329startup_seg_m_a9a10c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10c_0_75)
       (not_occupied seg_m_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10d_0_75 ?a)
       (not (not_blocked seg_m_a9a10d_0_75 ?a))))
 (:action
  ugly30283ugly29202ugly29634ugly30492ugly29876ugly1231ugly454ugly361ugly57move_seg_n_a6c_0_60_seg_n_a7a6d_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a6c_0_60) (not_occupied seg_n_a7a6d_0_75)
       (not_blocked seg_n_a7a6d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6d_0_75 airplane_cfbe1)
       (not_blocked seg_n_a7a6d_0_75 airplane_cfbe3)
       (not_blocked seg_n_a7a6d_0_75 airplane_daew8)
       (not_blocked seg_n_a7a6d_0_75 airplane_daew3)
       (not_blocked seg_n_a7a6d_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a6c_0_60)) (not_occupied seg_n_a6c_0_60)
       (not (at-segment ?a seg_n_a6c_0_60)) (occupied seg_n_a7a6d_0_75)
       (not (not_occupied seg_n_a7a6d_0_75)) (blocked seg_n_a7a6d_0_75 ?a)
       (not (not_blocked seg_n_a7a6d_0_75 ?a)) (at-segment ?a seg_n_a7a6d_0_75)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_n_a6a_0_60 ?a)) (not_blocked seg_n_a6a_0_60 ?a)
       (not (blocked seg_n_a6b_0_60 ?a)) (not_blocked seg_n_a6b_0_60 ?a)))
 (:action
  ugly30284ugly29654ugly30469ugly30124ugly29211ugly1102ugly935ugly239ugly151startup_seg_p116_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p116_0_76)
       (not_occupied seg_o1_116b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action
  ugly30285ugly29478ugly30384ugly29807ugly29451ugly64ugly1224ugly1219ugly1050startup_seg_p163_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p163_0_75)
       (not_occupied seg_w1_163b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action
  ugly30286ugly30308ugly30389ugly30444ugly30077ugly986ugly219ugly1065ugly946startup_seg_w1_c4c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4c_0_60)
       (not_occupied seg_s5_0_94))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s5_0_94 ?a)
       (not (not_blocked seg_s5_0_94 ?a))))
 (:action
  ugly30287ugly29385ugly30012ugly29929ugly29571ugly237ugly968ugly1213ugly1106move_seg_w1_162a_0_34_seg_w1_162c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_162c_0_34 airplane_daew8)
       (not_blocked seg_w1_162c_0_34 airplane_daew3)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe2)
       (not_occupied seg_w1_162b_0_45))
  :effect
  (and (not (occupied seg_w1_162a_0_34)) (not_occupied seg_w1_162a_0_34)
       (not (at-segment ?a seg_w1_162a_0_34)) (occupied seg_w1_162c_0_34)
       (not (not_occupied seg_w1_162c_0_34)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a)) (at-segment ?a seg_w1_162c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_161c_0_34 ?a)) (not_blocked seg_w1_161c_0_34 ?a)
       (blocked seg_w1_162b_0_45 ?a) (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action
  ugly30288ugly30209ugly29766ugly30120ugly30309ugly953ugly1189ugly458ugly1241startup_seg_m_a9b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9b_0_60)
       (not_occupied seg_n_a9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a))))
 (:action
  ugly30289ugly29265ugly29387ugly30025ugly29390ugly1020ugly664ugly944ugly674move_seg_w1_143c_0_60_seg_w1_143b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143c_0_60) (not_occupied seg_w1_143b_0_45)
       (not_blocked seg_w1_143b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_143b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_143b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_143b_0_45 airplane_daew8)
       (not_blocked seg_w1_143b_0_45 airplane_daew3)
       (not_blocked seg_w1_143b_0_45 airplane_cfbe2)
       (not_occupied seg_w1_143a_0_34))
  :effect
  (and (not (occupied seg_w1_143c_0_60)) (not_occupied seg_w1_143c_0_60)
       (not (at-segment ?a seg_w1_143c_0_60)) (occupied seg_w1_143b_0_45)
       (not (not_occupied seg_w1_143b_0_45)) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a)) (at-segment ?a seg_w1_143b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c2a_0_60 ?a)) (not_blocked seg_w1_c2a_0_60 ?a)
       (blocked seg_w1_143a_0_34 ?a) (not (not_blocked seg_w1_143a_0_34 ?a))))
 (:action
  ugly30290ugly29696ugly29399ugly30033ugly29926ugly1287ugly214ugly35ugly189startup_seg_p116_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p116_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly30291ugly30438ugly29373ugly30234ugly29839ugly30ugly846ugly761ugly493startup_seg_s_b5a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5a_0_60)
       (not_occupied seg_s_b5b_0_60) (not_occupied seg_s_b5c_0_60)
       (not_occupied seg_s_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b_0_60 ?a)
       (not (not_blocked seg_s_b5b_0_60 ?a)) (blocked seg_s_b5c_0_60 ?a)
       (not (not_blocked seg_s_b5c_0_60 ?a)) (blocked seg_s_b5d_0_60 ?a)
       (not (not_blocked seg_s_b5d_0_60 ?a))))
 (:action
  ugly30292ugly29992ugly30221ugly30113ugly30229ugly1042ugly880ugly1100ugly277startup_seg_m_a7a6b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6b_0_75)
       (not_occupied seg_m_a7a6a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6a_0_75 ?a)
       (not (not_blocked seg_m_a7a6a_0_75 ?a))))
 (:action
  ugly30293ugly30388ugly29447ugly29340ugly30190ugly856ugly251ugly394ugly1115move_seg_n_a4a7f_0_75_seg_n_a4a7e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7f_0_75) (not_occupied seg_n_a4a7e_0_75)
       (not_blocked seg_n_a4a7e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7e_0_75 airplane_cfbe1)
       (not_blocked seg_n_a4a7e_0_75 airplane_cfbe3)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew8)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew3)
       (not_blocked seg_n_a4a7e_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a4a7f_0_75)) (not_occupied seg_n_a4a7f_0_75)
       (not (at-segment ?a seg_n_a4a7f_0_75)) (occupied seg_n_a4a7e_0_75)
       (not (not_occupied seg_n_a4a7e_0_75)) (blocked seg_n_a4a7e_0_75 ?a)
       (not (not_blocked seg_n_a4a7e_0_75 ?a)) (at-segment ?a seg_n_a4a7e_0_75)
       (not (blocked seg_n_a7c_0_60 ?a)) (not_blocked seg_n_a7c_0_60 ?a)))
 (:action
  ugly30294ugly29291ugly29350ugly29870ugly29828ugly396ugly731ugly1133ugly1317startup_seg_w1_151a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151a_0_34)
       (not_occupied seg_w1_151b_0_45) (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action
  ugly30295ugly30423ugly30207ugly29344ugly30431ugly1175ugly212ugly1296ugly455startup_seg_m_a10b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10b_0_60)
       (not_occupied seg_n_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10a_0_60 ?a)
       (not (not_blocked seg_n_a10a_0_60 ?a))))
 (:action
  ugly30296ugly29718ugly30321ugly29770ugly29627ugly255ugly1262ugly639ugly376startup_seg_w1_c1b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1b_0_60)
       (not_occupied seg_w1_c1a_0_60) (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a)) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action
  ugly30297ugly30084ugly29493ugly29419ugly30412ugly308ugly105ugly414ugly786startup_seg_t_b9d_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9d_0_60)
       (not_occupied seg_t_b9a_0_60) (not_occupied seg_t_b9b_0_60)
       (not_occupied seg_t_b9c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9a_0_60 ?a)
       (not (not_blocked seg_t_b9a_0_60 ?a)) (blocked seg_t_b9b_0_60 ?a)
       (not (not_blocked seg_t_b9b_0_60 ?a)) (blocked seg_t_b9c_0_120_934 ?a)
       (not (not_blocked seg_t_b9c_0_120_934 ?a))))
 (:action
  ugly30298ugly30003ugly30495ugly29515ugly29800ugly460ugly499ugly484ugly439startup_seg_m_a9a10g_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10g_0_80)
       (not_occupied seg_m_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10f_0_75 ?a)
       (not (not_blocked seg_m_a9a10f_0_75 ?a))))
 (:action
  ugly30299ugly29890ugly30148ugly30507ugly30005ugly1008ugly1020ugly664ugly944startup_seg_s_b7d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7d_0_60)
       (not_occupied seg_s_b6b7b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b7b_0_140 ?a)
       (not (not_blocked seg_s_b6b7b_0_140 ?a))))
 (:action
  ugly30300ugly29590ugly30312ugly30131ugly29823ugly1101ugly433ugly457ugly1136startup_seg_n_a9a10c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10c_0_75)
       (not_occupied seg_n_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10d_0_75 ?a)
       (not (not_blocked seg_n_a9a10d_0_75 ?a))))
 (:action
  ugly30301ugly29650ugly30236ugly29808ugly29523ugly178ugly482ugly592ugly1268startup_seg_t_b2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b_0_60)
       (not_occupied seg_t_b2a_0_60) (not_occupied seg_t_b2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2a_0_60 ?a)
       (not (not_blocked seg_t_b2a_0_60 ?a)) (blocked seg_t_b2c_0_60 ?a)
       (not (not_blocked seg_t_b2c_0_60 ?a))))
 (:action
  ugly30302ugly30044ugly30544ugly29432ugly30199ugly581ugly1195ugly1225ugly742move_seg_08r_b3a_0_80_seg_08r_b3b4_0_520_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b3a_0_80) (not_occupied seg_08r_b3b4_0_520)
       (not_blocked seg_08r_b3b4_0_520 airplane_cfbeg)
       (not_blocked seg_08r_b3b4_0_520 airplane_cfbe1)
       (not_blocked seg_08r_b3b4_0_520 airplane_cfbe3)
       (not_blocked seg_08r_b3b4_0_520 airplane_daew8)
       (not_blocked seg_08r_b3b4_0_520 airplane_daew3)
       (not_blocked seg_08r_b3b4_0_520 airplane_cfbe2)
       (not_occupied seg_08r_b2b_0_80) (not_occupied seg_08r_0_80))
  :effect
  (and (not (occupied seg_08r_b3a_0_80)) (not_occupied seg_08r_b3a_0_80)
       (not (at-segment ?a seg_08r_b3a_0_80)) (occupied seg_08r_b3b4_0_520)
       (not (not_occupied seg_08r_b3b4_0_520)) (blocked seg_08r_b3b4_0_520 ?a)
       (not (not_blocked seg_08r_b3b4_0_520 ?a))
       (at-segment ?a seg_08r_b3b4_0_520)
       (not (blocked seg_08r_b3c_0_161_245 ?a))
       (not_blocked seg_08r_b3c_0_161_245 ?a) (blocked seg_08r_b2b_0_80 ?a)
       (not (not_blocked seg_08r_b2b_0_80 ?a))))
 (:action
  ugly30303ugly29513ugly30020ugly29468ugly30415ugly131ugly480ugly570ugly942move_seg_o1_c2a_0_60_seg_o1_c2b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c2b_0_60 airplane_daew8)
       (not_blocked seg_o1_c2b_0_60 airplane_daew3)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_c2c_0_34) (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (not (occupied seg_o1_c2a_0_60)) (not_occupied seg_o1_c2a_0_60)
       (not (at-segment ?a seg_o1_c2a_0_60)) (occupied seg_o1_c2b_0_60)
       (not (not_occupied seg_o1_c2b_0_60)) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a)) (at-segment ?a seg_o1_c2b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_104c_0_60 ?a)) (not_blocked seg_o1_104c_0_60 ?a)
       (blocked seg_o1_c2c_0_34 ?a) (not (not_blocked seg_o1_c2c_0_34 ?a))
       (blocked seg_o1_c2d_0_60 ?a) (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action
  ugly30304ugly29502ugly29681ugly30051ugly30099ugly1289ugly1040ugly5ugly316startup_seg_t_b7b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7b_0_60)
       (not_occupied seg_t_b7a_0_60) (not_occupied seg_t_b7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7a_0_60 ?a)
       (not (not_blocked seg_t_b7a_0_60 ?a)) (blocked seg_t_b7c_0_60 ?a)
       (not (not_blocked seg_t_b7c_0_60 ?a))))
 (:action
  ugly30305ugly30527ugly29289ugly29631ugly30528ugly929ugly1236ugly1125ugly353startup_seg_t_b4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b_0_60)
       (not_occupied seg_t_b4b6a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6a_0_135 ?a)
       (not (not_blocked seg_t_b4b6a_0_135 ?a))))
 (:action
  ugly30306ugly29671ugly30338ugly29687ugly30174ugly1346ugly540ugly910ugly427startup_seg_o1_104c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104c_0_60)
       (not_occupied seg_o1_104a_0_34) (not_occupied seg_o1_104b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action
  ugly30307ugly29342ugly29967ugly29829ugly30317ugly252ugly335ugly1199ugly1029startup_seg_m_a7a6d_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6d_0_85)
       (not_occupied seg_m_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6c_0_60 ?a)
       (not (not_blocked seg_m_a6c_0_60 ?a))))
 (:action
  ugly30308ugly30389ugly30444ugly30077ugly30169ugly321ugly208ugly500ugly668move_seg_n_a3c_0_60_seg_n_a3d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a3c_0_60) (not_occupied seg_n_a3d_0_60)
       (not_blocked seg_n_a3d_0_60 airplane_cfbeg)
       (not_blocked seg_n_a3d_0_60 airplane_cfbe1)
       (not_blocked seg_n_a3d_0_60 airplane_cfbe3)
       (not_blocked seg_n_a3d_0_60 airplane_daew8)
       (not_blocked seg_n_a3d_0_60 airplane_daew3)
       (not_blocked seg_n_a3d_0_60 airplane_cfbe2)
       (not_occupied seg_n_a3a_0_60) (not_occupied seg_n_a3b_0_60))
  :effect
  (and (not (occupied seg_n_a3c_0_60)) (not_occupied seg_n_a3c_0_60)
       (not (at-segment ?a seg_n_a3c_0_60)) (occupied seg_n_a3d_0_60)
       (not (not_occupied seg_n_a3d_0_60)) (blocked seg_n_a3d_0_60 ?a)
       (not (not_blocked seg_n_a3d_0_60 ?a)) (at-segment ?a seg_n_a3d_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n1_0_108 ?a)) (not_blocked seg_n1_0_108 ?a)
       (blocked seg_n_a3a_0_60 ?a) (not (not_blocked seg_n_a3a_0_60 ?a))
       (blocked seg_n_a3b_0_60 ?a) (not (not_blocked seg_n_a3b_0_60 ?a))))
 (:action
  ugly30309ugly30136ugly29622ugly29852ugly29570ugly1117ugly114ugly1237ugly706move_seg_s_b2b3c_0_140_seg_s_b2b3b_0_140_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b2b3c_0_140) (not_occupied seg_s_b2b3b_0_140)
       (not_blocked seg_s_b2b3b_0_140 airplane_cfbeg)
       (not_blocked seg_s_b2b3b_0_140 airplane_cfbe1)
       (not_blocked seg_s_b2b3b_0_140 airplane_cfbe3)
       (not_blocked seg_s_b2b3b_0_140 airplane_daew8)
       (not_blocked seg_s_b2b3b_0_140 airplane_daew3)
       (not_blocked seg_s_b2b3b_0_140 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b2b3c_0_140)) (not_occupied seg_s_b2b3c_0_140)
       (not (at-segment ?a seg_s_b2b3c_0_140)) (occupied seg_s_b2b3b_0_140)
       (not (not_occupied seg_s_b2b3b_0_140)) (blocked seg_s_b2b3b_0_140 ?a)
       (not (not_blocked seg_s_b2b3b_0_140 ?a))
       (at-segment ?a seg_s_b2b3b_0_140) (not (blocked seg_s_b3c_0_60 ?a))
       (not_blocked seg_s_b3c_0_60 ?a)))
 (:action
  ugly30310ugly29233ugly30065ugly30121ugly30372ugly312ugly1306ugly182ugly535startup_seg_b4_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_b_0_80_6226)
       (not_occupied seg_t_b4c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4c_0_120_934 ?a)
       (not (not_blocked seg_t_b4c_0_120_934 ?a))))
 (:action
  ugly30311ugly29405ugly30404ugly30377ugly30476ugly188ugly94ugly733ugly448startup_seg_s_b5b8b_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8b_0_135)
       (not_occupied seg_s_b5b8a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8a_0_135 ?a)
       (not (not_blocked seg_s_b5b8a_0_135 ?a))))
 (:action
  ugly30312ugly30131ugly29823ugly30284ugly29654ugly1286ugly1073ugly586ugly1048move_seg_p141_0_75_seg_w1_141b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p141_0_75) (not_occupied seg_w1_141b_0_45)
       (not_blocked seg_w1_141b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_141b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_141b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_141b_0_45 airplane_daew8)
       (not_blocked seg_w1_141b_0_45 airplane_daew3)
       (not_blocked seg_w1_141b_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p141_0_75)) (not_occupied seg_p141_0_75)
       (not (at-segment ?a seg_p141_0_75)) (occupied seg_w1_141b_0_45)
       (not (not_occupied seg_w1_141b_0_45)) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))
       (at-segment ?a seg_w1_141b_0_45)))
 (:action
  ugly30313ugly29795ugly29768ugly30030ugly29685ugly24ugly474ugly1277ugly237startup_seg_p110_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p110_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly30314ugly29317ugly30101ugly29610ugly30119ugly931ugly1267ugly18ugly1228move_seg_o1_115b_0_60_seg_o1_115a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115b_0_60) (not_occupied seg_o1_115a_0_34)
       (not_blocked seg_o1_115a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_115a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_115a_0_34 airplane_daew8)
       (not_blocked seg_o1_115a_0_34 airplane_daew3)
       (not_blocked seg_o1_115a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (occupied seg_o1_115b_0_60)) (not_occupied seg_o1_115b_0_60)
       (not (at-segment ?a seg_o1_115b_0_60)) (occupied seg_o1_115a_0_34)
       (not (not_occupied seg_o1_115a_0_34)) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (at-segment ?a seg_o1_115a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p115_0_76 ?a)) (not_blocked seg_p115_0_76 ?a)
       (blocked seg_o1_115c_0_34 ?a) (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action
  ugly30315ugly29417ugly29532ugly29744ugly29798ugly279ugly29ugly671ugly833move_seg_w1_c4a_0_34_seg_w1_c4c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c4a_0_34) (not_occupied seg_w1_c4c_0_60)
       (not_blocked seg_w1_c4c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c4c_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c4c_0_60 airplane_cfbe3)
       (not_blocked seg_w1_c4c_0_60 airplane_daew8)
       (not_blocked seg_w1_c4c_0_60 airplane_daew3)
       (not_blocked seg_w1_c4c_0_60 airplane_cfbe2)
       (not_occupied seg_w1_c4b_0_60))
  :effect
  (and (not (occupied seg_w1_c4a_0_34)) (not_occupied seg_w1_c4a_0_34)
       (not (at-segment ?a seg_w1_c4a_0_34)) (occupied seg_w1_c4c_0_60)
       (not (not_occupied seg_w1_c4c_0_60)) (blocked seg_w1_c4c_0_60 ?a)
       (not (not_blocked seg_w1_c4c_0_60 ?a)) (at-segment ?a seg_w1_c4c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_164c_0_34 ?a)) (not_blocked seg_w1_164c_0_34 ?a)
       (blocked seg_w1_c4b_0_60 ?a) (not (not_blocked seg_w1_c4b_0_60 ?a))))
 (:action
  ugly30316ugly30268ugly29999ugly29510ugly29605ugly530ugly1140ugly133ugly545startup_seg_n_a10a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10a_0_60)
       (not_occupied seg_m_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a))))
 (:action
  ugly30317ugly29435ugly30483ugly30013ugly30197ugly416ugly50ugly357ugly604startup_seg_w1_c2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2a_0_60)
       (not_occupied seg_w1_c2b_0_60) (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a)) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action
  ugly30318ugly29985ugly29439ugly30454ugly30060ugly952ugly112ugly894ugly623move_seg_o1_116c_0_34_seg_o1_116b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116c_0_34) (not_occupied seg_o1_116b_0_60)
       (not_blocked seg_o1_116b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_116b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_116b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_116b_0_60 airplane_daew8)
       (not_blocked seg_o1_116b_0_60 airplane_daew3)
       (not_blocked seg_o1_116b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_116a_0_34))
  :effect
  (and (not (occupied seg_o1_116c_0_34)) (not_occupied seg_o1_116c_0_34)
       (not (at-segment ?a seg_o1_116c_0_34)) (occupied seg_o1_116b_0_60)
       (not (not_occupied seg_o1_116b_0_60)) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a)) (at-segment ?a seg_o1_116b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_117a_0_34 ?a)) (not_blocked seg_o1_117a_0_34 ?a)
       (blocked seg_o1_116a_0_34 ?a) (not (not_blocked seg_o1_116a_0_34 ?a))))
 (:action
  ugly30319ugly29973ugly29712ugly30090ugly30448ugly459ugly306ugly102ugly325startup_seg_b6_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b6_a_0_158_647)
       (not_occupied seg_08r_b6d_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b6d_0_161_245 ?a)
       (not (not_blocked seg_08r_b6d_0_161_245 ?a))))
 (:action
  ugly30320ugly29479ugly29927ugly30017ugly30137ugly229ugly180ugly680ugly554startup_seg_m_a4a_0_120_934_south_medium
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
  ugly30321ugly29770ugly29627ugly29438ugly29296ugly810ugly4ugly1207ugly284move_seg_08l_a7a9_0_270_seg_08l_a9c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7a9_0_270) (not_occupied seg_08l_a9c_0_80)
       (not_blocked seg_08l_a9c_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a9c_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a9c_0_80 airplane_cfbe3)
       (not_blocked seg_08l_a9c_0_80 airplane_daew8)
       (not_blocked seg_08l_a9c_0_80 airplane_daew3)
       (not_blocked seg_08l_a9c_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_08l_a7a9_0_270)) (not_occupied seg_08l_a7a9_0_270)
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
  ugly30322ugly29480ugly29461ugly30355ugly30297ugly901ugly1221ugly440ugly1331startup_seg_n_n2a4e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4e_0_75)
       (not_occupied seg_n_n2a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4d_0_75 ?a)
       (not (not_blocked seg_n_n2a4d_0_75 ?a))))
 (:action
  ugly30323ugly30116ugly29848ugly29932ugly29960ugly1086ugly141ugly1119ugly997startup_seg_a10_1_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_1_0_80)
       (not_occupied seg_08l_a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a10a_0_80 ?a)
       (not (not_blocked seg_08l_a10a_0_80 ?a))))
 (:action
  ugly30324ugly29935ugly29239ugly30220ugly29262ugly164ugly640ugly630ugly1143startup_seg_t_b5a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5a_0_60)
       (not_occupied seg_s_b5c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5c_0_60 ?a)
       (not (not_blocked seg_s_b5c_0_60 ?a))))
 (:action
  ugly30325ugly29355ugly29861ugly29394ugly30145ugly49ugly828ugly890ugly52startup_seg_b3_a_0_156_924_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_a_0_156_924)
       (not_occupied seg_b3_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b3_b_1_0_80_6226 ?a))))
 (:action
  ugly30326ugly29353ugly30157ugly29727ugly30133ugly977ugly199ugly1261ugly1347startup_seg_w1_c1c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1c_0_34)
       (not_occupied seg_w1_141a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a))))
 (:action
  ugly30327ugly29430ugly29702ugly29362ugly29255ugly985ugly315ugly616ugly1246move_seg_o1_104b_0_60_seg_o1_104c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104b_0_60) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_cfbe1)
       (not_blocked seg_o1_104c_0_60 airplane_cfbe3)
       (not_blocked seg_o1_104c_0_60 airplane_daew8)
       (not_blocked seg_o1_104c_0_60 airplane_daew3)
       (not_blocked seg_o1_104c_0_60 airplane_cfbe2)
       (not_occupied seg_o1_104a_0_34))
  :effect
  (and (not (occupied seg_o1_104b_0_60)) (not_occupied seg_o1_104b_0_60)
       (not (at-segment ?a seg_o1_104b_0_60)) (occupied seg_o1_104c_0_60)
       (not (not_occupied seg_o1_104c_0_60)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a)) (at-segment ?a seg_o1_104c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p104_0_76 ?a)) (not_blocked seg_p104_0_76 ?a)
       (blocked seg_o1_104a_0_34 ?a) (not (not_blocked seg_o1_104a_0_34 ?a))))
 (:action
  ugly30328ugly29437ugly29637ugly29908ugly29366ugly525ugly1343ugly1131ugly16startup_seg_o1_110a_0_34_south_medium
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
  ugly30329ugly29813ugly29587ugly30347ugly29715ugly1355ugly530ugly1140ugly133startup_seg_t_b6c_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6c_0_120_934)
       (not_occupied seg_t_b6a_0_60) (not_occupied seg_t_b6b_0_60)
       (not_occupied seg_t_b6d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6a_0_60 ?a)
       (not (not_blocked seg_t_b6a_0_60 ?a)) (blocked seg_t_b6b_0_60 ?a)
       (not (not_blocked seg_t_b6b_0_60 ?a)) (blocked seg_t_b6d_0_60 ?a)
       (not (not_blocked seg_t_b6d_0_60 ?a))))
 (:action
  ugly30330ugly29414ugly29917ugly30126ugly29566ugly841ugly197ugly303ugly811startup_seg_w1_c4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4b_0_60)
       (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action
  ugly30331ugly30273ugly29894ugly29584ugly29335ugly302ugly752ugly1170ugly153startup_seg_w1_143a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143a_0_34)
       (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action
  ugly30332ugly29333ugly29195ugly30189ugly30486ugly702ugly1003ugly1309ugly1006startup_seg_m_a7c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7c_0_60)
       (not_occupied seg_n_a7a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a))))
 (:action
  ugly30333ugly30326ugly29353ugly30157ugly29727ugly950ugly765ugly397ugly697startup_seg_w1_c4c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4c_0_60)
       (not_occupied seg_w1_c4a_0_34) (not_occupied seg_w1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a)) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a))))
 (:action
  ugly30334ugly29611ugly30249ugly30464ugly29507ugly748ugly1183ugly272ugly872startup_seg_n_a4a7a_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7a_0_115)
       (not_occupied seg_n_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7b_0_75 ?a)
       (not (not_blocked seg_n_a4a7b_0_75 ?a))))
 (:action
  ugly30335ugly30456ugly29319ugly29734ugly30035ugly122ugly1305ugly925ugly771startup_seg_n_n2a4c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4c_0_75)
       (not_occupied seg_n_n2a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4d_0_75 ?a)
       (not (not_blocked seg_n_n2a4d_0_75 ?a))))
 (:action
  ugly30336ugly29824ugly29264ugly30283ugly29202ugly451ugly911ugly359ugly1077startup_seg_n_a6a8b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8b_0_75)
       (not_occupied seg_n_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8c_0_75 ?a)
       (not (not_blocked seg_n_a6a8c_0_75 ?a))))
 (:action
  ugly30337ugly30078ugly30533ugly29474ugly29998ugly1098ugly70ugly365ugly268startup_seg_o1_117a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117a_0_34)
       (not_occupied seg_o1_117b_0_60) (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action
  ugly30338ugly29687ugly30174ugly30529ugly30465ugly1295ugly406ugly543ugly1247startup_seg_n_a7a6d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6d_0_75)
       (not_occupied seg_n_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6c_0_75 ?a)
       (not (not_blocked seg_n_a7a6c_0_75 ?a))))
 (:action
  ugly30339ugly29827ugly29583ugly29658ugly29476ugly390ugly1159ugly441ugly1056startup_seg_p142_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p142_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly30340ugly29737ugly30059ugly30452ugly29944ugly440ugly1331ugly1279ugly1342move_seg_n_n2a4a_0_70_seg_n_n2a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4a_0_70) (not_occupied seg_n_n2a_0_60)
       (not_blocked seg_n_n2a_0_60 airplane_cfbeg)
       (not_blocked seg_n_n2a_0_60 airplane_cfbe1)
       (not_blocked seg_n_n2a_0_60 airplane_cfbe3)
       (not_blocked seg_n_n2a_0_60 airplane_daew8)
       (not_blocked seg_n_n2a_0_60 airplane_daew3)
       (not_blocked seg_n_n2a_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_n2a4a_0_70)) (not_occupied seg_n_n2a4a_0_70)
       (not (at-segment ?a seg_n_n2a4a_0_70)) (occupied seg_n_n2a_0_60)
       (not (not_occupied seg_n_n2a_0_60)) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a)) (at-segment ?a seg_n_n2a_0_60)
       (not (blocked seg_n_n2a4b_0_75 ?a)) (not_blocked seg_n_n2a4b_0_75 ?a)))
 (:action
  ugly30341ugly30506ugly29450ugly30107ugly30250ugly695ugly1031ugly967ugly862startup_seg_w1_152a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152a_0_34)
       (not_occupied seg_w1_152b_0_45) (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action
  ugly30342ugly30376ugly29595ugly29526ugly30474ugly729ugly74ugly1012ugly262move_seg_o1_118a_0_34_seg_o1_117c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_117c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_117c_0_34 airplane_daew8)
       (not_blocked seg_o1_117c_0_34 airplane_daew3)
       (not_blocked seg_o1_117c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_118a_0_34)) (not_occupied seg_o1_118a_0_34)
       (not (at-segment ?a seg_o1_118a_0_34)) (occupied seg_o1_117c_0_34)
       (not (not_occupied seg_o1_117c_0_34)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a)) (at-segment ?a seg_o1_117c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_118b_0_60 ?a)) (not_blocked seg_o1_118b_0_60 ?a)
       (not (blocked seg_o1_118c_0_34 ?a)) (not_blocked seg_o1_118c_0_34 ?a)))
 (:action
  ugly30343ugly29907ugly30407ugly29688ugly30194ugly76ugly1146ugly1001ugly1242startup_seg_o1_102b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102b_0_60)
       (not_occupied seg_o1_102a_0_34) (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action
  ugly30344ugly30240ugly29812ugly30056ugly30490ugly740ugly886ugly564ugly976move_seg_w1_162a_0_34_seg_w1_161c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_161c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_161c_0_34 airplane_daew8)
       (not_blocked seg_w1_161c_0_34 airplane_daew3)
       (not_blocked seg_w1_161c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_162a_0_34)) (not_occupied seg_w1_162a_0_34)
       (not (at-segment ?a seg_w1_162a_0_34)) (occupied seg_w1_161c_0_34)
       (not (not_occupied seg_w1_161c_0_34)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a)) (at-segment ?a seg_w1_161c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_162b_0_45 ?a)) (not_blocked seg_w1_162b_0_45 ?a)
       (not (blocked seg_w1_162c_0_34 ?a)) (not_blocked seg_w1_162c_0_34 ?a)))
 (:action
  ugly30345ugly29341ugly29360ugly29966ugly29231ugly667ugly897ugly919ugly15startup_seg_m_a9a10a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10a_0_75)
       (not_occupied seg_m_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10b_0_75 ?a)
       (not (not_blocked seg_m_a9a10b_0_75 ?a))))
 (:action
  ugly30346ugly29975ugly30022ugly30232ugly29772ugly142ugly205ugly217ugly176startup_seg_n_a3a_0_60_south_medium
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
  ugly30347ugly29715ugly30538ugly29674ugly29529ugly989ugly1260ugly399ugly690move_seg_o1_118b_0_60_seg_p118_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118b_0_60) (not_occupied seg_p118_0_76)
       (not_blocked seg_p118_0_76 airplane_cfbeg)
       (not_blocked seg_p118_0_76 airplane_cfbe1)
       (not_blocked seg_p118_0_76 airplane_cfbe3)
       (not_blocked seg_p118_0_76 airplane_daew8)
       (not_blocked seg_p118_0_76 airplane_daew3)
       (not_blocked seg_p118_0_76 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_118b_0_60)) (not_occupied seg_o1_118b_0_60)
       (not (at-segment ?a seg_o1_118b_0_60)) (occupied seg_p118_0_76)
       (not (not_occupied seg_p118_0_76)) (blocked seg_p118_0_76 ?a)
       (not (not_blocked seg_p118_0_76 ?a)) (at-segment ?a seg_p118_0_76)
       (not (blocked seg_o1_118a_0_34 ?a)) (not_blocked seg_o1_118a_0_34 ?a)
       (not (blocked seg_o1_118c_0_34 ?a)) (not_blocked seg_o1_118c_0_34 ?a)))
 (:action
  ugly30348ugly30540ugly29914ugly30165ugly30141ugly500ugly668ugly79ugly593startup_seg_b9_a_0_156_924_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_a_0_156_924)
       (not_occupied seg_08r_b9a_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b9a_0_161_245 ?a)
       (not (not_blocked seg_08r_b9a_0_161_245 ?a))))
 (:action
  ugly30349ugly29378ugly29302ugly30122ugly29498ugly685ugly587ugly533ugly606startup_seg_n_a7b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7b_0_60)
       (not_occupied seg_n_a7a_0_60) (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a)) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action
  ugly30350ugly30402ugly29655ugly29846ugly30134ugly902ugly140ugly297ugly1222startup_seg_n_a8c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8c_0_60)
       (not_occupied seg_n_a6a8f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8f_0_75 ?a)
       (not (not_blocked seg_n_a6a8f_0_75 ?a))))
 (:action
  ugly30351ugly29527ugly29656ugly29497ugly30215ugly715ugly717ugly1095ugly344startup_seg_c3_a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_a_0_80)
       (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action
  ugly30352ugly30436ugly30208ugly30353ugly29692ugly174ugly68ugly521ugly333startup_seg_o1_115c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115c_0_34)
       (not_occupied seg_o1_115a_0_34) (not_occupied seg_o1_115b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action
  ugly30353ugly29692ugly29357ugly30451ugly30475ugly118ugly611ugly221ugly804startup_seg_c4_s6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6b_0_60)
       (not_occupied seg_s6_0_94))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s6_0_94 ?a)
       (not (not_blocked seg_s6_0_94 ?a))))
 (:action
  ugly30354ugly30502ugly30411ugly29946ugly29939ugly987ugly868ugly618ugly377move_seg_m_a8b_0_60_seg_n_a8a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_m_a8b_0_60) (not_occupied seg_n_a8a_0_60)
       (not_blocked seg_n_a8a_0_60 airplane_cfbeg)
       (not_blocked seg_n_a8a_0_60 airplane_cfbe1)
       (not_blocked seg_n_a8a_0_60 airplane_cfbe3)
       (not_blocked seg_n_a8a_0_60 airplane_daew8)
       (not_blocked seg_n_a8a_0_60 airplane_daew3)
       (not_blocked seg_n_a8a_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_m_a8b_0_60)) (not_occupied seg_m_a8b_0_60)
       (not (at-segment ?a seg_m_a8b_0_60)) (occupied seg_n_a8a_0_60)
       (not (not_occupied seg_n_a8a_0_60)) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a)) (at-segment ?a seg_n_a8a_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_m_a8a_0_60 ?a)) (not_blocked seg_m_a8a_0_60 ?a)
       (not (blocked seg_m_a8c_0_60 ?a)) (not_blocked seg_m_a8c_0_60 ?a)
       (not (blocked seg_m_a8d_0_120_934 ?a))
       (not_blocked seg_m_a8d_0_120_934 ?a)))
 (:action
  ugly30355ugly30297ugly30084ugly29493ugly29419ugly1229ugly1217ugly888ugly1061startup_seg_n_a7a6a_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6a_0_85)
       (not_occupied seg_n_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a))))
 (:action
  ugly30356ugly29565ugly30216ugly29968ugly30178ugly470ugly37ugly620ugly435startup_seg_s_b5b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b_0_60)
       (not_occupied seg_s_b5b8a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8a_0_135 ?a)
       (not (not_blocked seg_s_b5b8a_0_135 ?a))))
 (:action
  ugly30357ugly29686ugly30034ugly29937ugly29842ugly1274ugly896ugly339ugly410startup_seg_b5_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b5_a_0_158_647)
       (not_occupied seg_08r_b4a_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b4a_0_161_245 ?a)
       (not (not_blocked seg_08r_b4a_0_161_245 ?a))))
 (:action
  ugly30358ugly30546ugly29269ugly30092ugly30442ugly880ugly1100ugly277ugly1155startup_seg_08l_a9b_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a9b_0_161_245)
       (not_occupied seg_09l_0_80) (not_occupied seg_08l_a9c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_09l_0_80 ?a)
       (not (not_blocked seg_09l_0_80 ?a)) (blocked seg_08l_a9c_0_80 ?a)
       (not (not_blocked seg_08l_a9c_0_80 ?a))))
 (:action
  ugly30359ugly30106ugly30076ugly29751ugly29229ugly1141ugly777ugly903ugly225startup_seg_t_b3b4c_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4c_0_140)
       (not_occupied seg_t_b3b4d_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4d_0_140 ?a)
       (not (not_blocked seg_t_b3b4d_0_140 ?a))))
 (:action
  ugly30360ugly30192ugly30403ugly29241ugly29416ugly900ugly98ugly1062ugly241move_seg_p163_0_75_seg_w1_163b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p163_0_75) (not_occupied seg_w1_163b_0_45)
       (not_blocked seg_w1_163b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_163b_0_45 airplane_daew8)
       (not_blocked seg_w1_163b_0_45 airplane_daew3)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p163_0_75)) (not_occupied seg_p163_0_75)
       (not (at-segment ?a seg_p163_0_75)) (occupied seg_w1_163b_0_45)
       (not (not_occupied seg_w1_163b_0_45)) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))
       (at-segment ?a seg_w1_163b_0_45)))
 (:action
  ugly30361ugly29720ugly30057ugly29903ugly29384ugly121ugly617ugly209ugly1196startup_seg_w1_c3c_0_48_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3c_0_48)
       (not_occupied seg_w1_161a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a))))
 (:action
  ugly30362ugly29568ugly30496ugly30305ugly30527ugly106ugly346ugly323ugly686move_seg_s_b6c_0_60_seg_s_b4b6c_0_130_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b6c_0_60) (not_occupied seg_s_b4b6c_0_130)
       (not_blocked seg_s_b4b6c_0_130 airplane_cfbeg)
       (not_blocked seg_s_b4b6c_0_130 airplane_cfbe1)
       (not_blocked seg_s_b4b6c_0_130 airplane_cfbe3)
       (not_blocked seg_s_b4b6c_0_130 airplane_daew8)
       (not_blocked seg_s_b4b6c_0_130 airplane_daew3)
       (not_blocked seg_s_b4b6c_0_130 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b6c_0_60)) (not_occupied seg_s_b6c_0_60)
       (not (at-segment ?a seg_s_b6c_0_60)) (occupied seg_s_b4b6c_0_130)
       (not (not_occupied seg_s_b4b6c_0_130)) (blocked seg_s_b4b6c_0_130 ?a)
       (not (not_blocked seg_s_b4b6c_0_130 ?a))
       (at-segment ?a seg_s_b4b6c_0_130) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_s_b6a_0_60 ?a))
       (not_blocked seg_s_b6a_0_60 ?a) (not (blocked seg_s_b6b_0_60 ?a))
       (not_blocked seg_s_b6b_0_60 ?a)))
 (:action
  ugly30363ugly29244ugly30320ugly29479ugly29927ugly834ugly782ugly107ugly849startup_seg_a7_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_1_0_80_6226)
       (not_occupied seg_a7_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_0_80_6226 ?a))))
 (:action
  ugly30364ugly29983ugly30278ugly30521ugly30264ugly168ugly49ugly828ugly890move_seg_s_b2b3b_0_140_seg_s_b2b3a_0_140_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b2b3b_0_140) (not_occupied seg_s_b2b3a_0_140)
       (not_blocked seg_s_b2b3a_0_140 airplane_cfbeg)
       (not_blocked seg_s_b2b3a_0_140 airplane_cfbe1)
       (not_blocked seg_s_b2b3a_0_140 airplane_cfbe3)
       (not_blocked seg_s_b2b3a_0_140 airplane_daew8)
       (not_blocked seg_s_b2b3a_0_140 airplane_daew3)
       (not_blocked seg_s_b2b3a_0_140 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b2b3b_0_140)) (not_occupied seg_s_b2b3b_0_140)
       (not (at-segment ?a seg_s_b2b3b_0_140)) (occupied seg_s_b2b3a_0_140)
       (not (not_occupied seg_s_b2b3a_0_140)) (blocked seg_s_b2b3a_0_140 ?a)
       (not (not_blocked seg_s_b2b3a_0_140 ?a))
       (at-segment ?a seg_s_b2b3a_0_140) (not (blocked seg_s_b2b3c_0_140 ?a))
       (not_blocked seg_s_b2b3c_0_140 ?a)))
 (:action
  ugly30365ugly29210ugly29556ugly29530ugly30217ugly1257ugly659ugly1270ugly625startup_seg_n_a2a3d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3d_0_75)
       (not_occupied seg_n_a2a3e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3e_0_75 ?a)
       (not (not_blocked seg_n_a2a3e_0_75 ?a))))
 (:action
  ugly30366ugly30254ugly30184ugly29260ugly29953ugly325ugly477ugly198ugly929startup_seg_a10_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_0_80)
       (not_occupied seg_m_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a))))
 (:action
  ugly30367ugly29560ugly30185ugly30014ugly30047ugly1115ugly172ugly1198ugly1298startup_seg_o1_c3b_0_60_south_medium
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
  ugly30368ugly30103ugly29391ugly30446ugly30406ugly449ugly865ugly1021ugly22startup_seg_a7_a_0_156_924_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_a_0_156_924)
       (not_occupied seg_a7_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_1_0_80_6226 ?a))))
 (:action
  ugly30369ugly30071ugly29482ugly29794ugly29884ugly975ugly1259ugly78ugly536startup_seg_w1_153c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153c_0_34)
       (not_occupied seg_w1_153a_0_34) (not_occupied seg_w1_153b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action
  ugly30370ugly30008ugly30202ugly30453ugly29533ugly129ugly572ugly230ugly591move_seg_n_a2a3c_0_75_seg_n_a2a3b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3c_0_75) (not_occupied seg_n_a2a3b_0_75)
       (not_blocked seg_n_a2a3b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3b_0_75 airplane_cfbe1)
       (not_blocked seg_n_a2a3b_0_75 airplane_cfbe3)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew8)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew3)
       (not_blocked seg_n_a2a3b_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a2a3c_0_75)) (not_occupied seg_n_a2a3c_0_75)
       (not (at-segment ?a seg_n_a2a3c_0_75)) (occupied seg_n_a2a3b_0_75)
       (not (not_occupied seg_n_a2a3b_0_75)) (blocked seg_n_a2a3b_0_75 ?a)
       (not (not_blocked seg_n_a2a3b_0_75 ?a)) (at-segment ?a seg_n_a2a3b_0_75)
       (not (blocked seg_n_a2a3d_0_75 ?a)) (not_blocked seg_n_a2a3d_0_75 ?a)))
 (:action
  ugly30371ugly30443ugly30497ugly29193ugly29528ugly1337ugly118ugly611ugly221startup_seg_w1_154a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154a_0_34)
       (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action
  ugly30372ugly29495ugly30143ugly29396ugly29755ugly37ugly620ugly435ugly682park_seg_p143_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p143_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p143_0_75) (not (is-moving ?a))))
 (:action
  ugly30373ugly29695ugly30328ugly29437ugly29637ugly725ugly1283ugly434ugly257startup_seg_a3_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_a_0_158_647)
       (not_occupied seg_a3_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_b_0_159_512 ?a)
       (not (not_blocked seg_a3_b_0_159_512 ?a))))
 (:action
  ugly30374ugly30447ugly30046ugly29806ugly30064ugly1023ugly220ugly757ugly687startup_seg_n_a8a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a_0_60)
       (not_occupied seg_m_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8b_0_60 ?a)
       (not (not_blocked seg_m_a8b_0_60 ?a))))
 (:action
  ugly30375ugly30366ugly30254ugly30184ugly29260ugly770ugly848ugly1137ugly602startup_seg_s_b6b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b_0_60)
       (not_occupied seg_s_b6a_0_60) (not_occupied seg_s_b6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6a_0_60 ?a)
       (not (not_blocked seg_s_b6a_0_60 ?a)) (blocked seg_s_b6c_0_60 ?a)
       (not (not_blocked seg_s_b6c_0_60 ?a))))
 (:action
  ugly30376ugly29595ugly29526ugly30474ugly29912ugly1249ugly1057ugly396ugly731startup_seg_m_a4a7c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7c_0_75)
       (not_occupied seg_m_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7b_0_75 ?a)
       (not (not_blocked seg_m_a4a7b_0_75 ?a))))
 (:action
  ugly30377ugly30476ugly29371ugly29275ugly29235ugly322ugly304ugly877ugly660startup_seg_p133_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p133_0_75)
       (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action
  ugly30378ugly29872ugly30360ugly30192ugly30403ugly58ugly21ugly1121ugly839move_seg_w1_143a_0_34_seg_w1_143b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_143b_0_45)
       (not_blocked seg_w1_143b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_143b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_143b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_143b_0_45 airplane_daew8)
       (not_blocked seg_w1_143b_0_45 airplane_daew3)
       (not_blocked seg_w1_143b_0_45 airplane_cfbe2)
       (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (occupied seg_w1_143a_0_34)) (not_occupied seg_w1_143a_0_34)
       (not (at-segment ?a seg_w1_143a_0_34)) (occupied seg_w1_143b_0_45)
       (not (not_occupied seg_w1_143b_0_45)) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a)) (at-segment ?a seg_w1_143b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_142c_0_34 ?a)) (not_blocked seg_w1_142c_0_34 ?a)
       (blocked seg_w1_143c_0_60 ?a) (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action
  ugly30379ugly29771ugly29422ugly29779ugly29817ugly184ugly924ugly1320ugly700move_seg_c1_n2a_0_60_seg_c1_n2b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2a_0_60) (not_occupied seg_c1_n2b_0_80)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbeg)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbe1)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbe3)
       (not_blocked seg_c1_n2b_0_80 airplane_daew8)
       (not_blocked seg_c1_n2b_0_80 airplane_daew3)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbe2)
       (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (occupied seg_c1_n2a_0_60)) (not_occupied seg_c1_n2a_0_60)
       (not (at-segment ?a seg_c1_n2a_0_60)) (occupied seg_c1_n2b_0_80)
       (not (not_occupied seg_c1_n2b_0_80)) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a)) (at-segment ?a seg_c1_n2b_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n2_0_108 ?a)) (not_blocked seg_n2_0_108 ?a)
       (blocked seg_c1_n2c_0_60 ?a) (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action
  ugly30380ugly29844ugly30333ugly30326ugly29353ugly974ugly665ugly628ugly949move_seg_w1_143c_0_60_seg_w1_c2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143c_0_60) (not_occupied seg_w1_c2a_0_60)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbe3)
       (not_blocked seg_w1_c2a_0_60 airplane_daew8)
       (not_blocked seg_w1_c2a_0_60 airplane_daew3)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_143c_0_60)) (not_occupied seg_w1_143c_0_60)
       (not (at-segment ?a seg_w1_143c_0_60)) (occupied seg_w1_c2a_0_60)
       (not (not_occupied seg_w1_c2a_0_60)) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a)) (at-segment ?a seg_w1_c2a_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_143a_0_34 ?a)) (not_blocked seg_w1_143a_0_34 ?a)
       (not (blocked seg_w1_143b_0_45 ?a)) (not_blocked seg_w1_143b_0_45 ?a)))
 (:action
  ugly30381ugly30061ugly30460ugly29236ugly29781ugly1191ugly1032ugly137ugly1209move_seg_o1_110b_0_60_seg_p110_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110b_0_60) (not_occupied seg_p110_0_76)
       (not_blocked seg_p110_0_76 airplane_cfbeg)
       (not_blocked seg_p110_0_76 airplane_cfbe1)
       (not_blocked seg_p110_0_76 airplane_cfbe3)
       (not_blocked seg_p110_0_76 airplane_daew8)
       (not_blocked seg_p110_0_76 airplane_daew3)
       (not_blocked seg_p110_0_76 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_110b_0_60)) (not_occupied seg_o1_110b_0_60)
       (not (at-segment ?a seg_o1_110b_0_60)) (occupied seg_p110_0_76)
       (not (not_occupied seg_p110_0_76)) (blocked seg_p110_0_76 ?a)
       (not (not_blocked seg_p110_0_76 ?a)) (at-segment ?a seg_p110_0_76)
       (not (blocked seg_o1_110a_0_34 ?a)) (not_blocked seg_o1_110a_0_34 ?a)
       (not (blocked seg_o1_110c_0_34 ?a)) (not_blocked seg_o1_110c_0_34 ?a)
       (not (blocked seg_o1_110d_0_45 ?a)) (not_blocked seg_o1_110d_0_45 ?a)))
 (:action
  ugly30382ugly30395ugly30274ugly29284ugly29465ugly210ugly631ugly1156ugly769startup_seg_08l_a4b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a4b_0_161_245)
       (not_occupied seg_a6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_a_0_158_647 ?a)
       (not (not_blocked seg_a6_a_0_158_647 ?a))))
 (:action
  ugly30383ugly29783ugly29676ugly30173ugly30043ugly1127ugly194ugly36ugly517move_seg_o1_108c_0_34_seg_o1_108b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_108b_0_60)
       (not_blocked seg_o1_108b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_108b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_108b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_108b_0_60 airplane_daew8)
       (not_blocked seg_o1_108b_0_60 airplane_daew3)
       (not_blocked seg_o1_108b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_108a_0_34) (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (occupied seg_o1_108c_0_34)) (not_occupied seg_o1_108c_0_34)
       (not (at-segment ?a seg_o1_108c_0_34)) (occupied seg_o1_108b_0_60)
       (not (not_occupied seg_o1_108b_0_60)) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a)) (at-segment ?a seg_o1_108b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_109a_0_34 ?a)) (not_blocked seg_o1_109a_0_34 ?a)
       (blocked seg_o1_108a_0_34 ?a) (not (not_blocked seg_o1_108a_0_34 ?a))
       (blocked seg_o1_108d_0_45 ?a) (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action
  ugly30384ugly29807ugly29451ugly29247ugly29217ugly780ugly615ugly186ugly126startup_seg_t_b3c_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3c_0_120_934)
       (not_occupied seg_b3_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_b_0_80_6226 ?a)
       (not (not_blocked seg_b3_b_0_80_6226 ?a))))
 (:action
  ugly30385ugly29682ugly29369ugly30391ugly29281ugly520ugly688ugly977ugly199startup_seg_n_a3c_0_60_south_medium
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
  ugly30386ugly30247ugly30331ugly30273ugly29894ugly401ugly328ugly331ugly183move_seg_n_a6a8a_0_115_seg_n_a6b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8a_0_115) (not_occupied seg_n_a6b_0_60)
       (not_blocked seg_n_a6b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a6b_0_60 airplane_cfbe1)
       (not_blocked seg_n_a6b_0_60 airplane_cfbe3)
       (not_blocked seg_n_a6b_0_60 airplane_daew8)
       (not_blocked seg_n_a6b_0_60 airplane_daew3)
       (not_blocked seg_n_a6b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a6a8a_0_115)) (not_occupied seg_n_a6a8a_0_115)
       (not (at-segment ?a seg_n_a6a8a_0_115)) (occupied seg_n_a6b_0_60)
       (not (not_occupied seg_n_a6b_0_60)) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a)) (at-segment ?a seg_n_a6b_0_60)
       (not (blocked seg_n_a6a8b_0_75 ?a)) (not_blocked seg_n_a6a8b_0_75 ?a)))
 (:action
  ugly30387ugly29444ugly30378ugly29872ugly30360ugly1009ugly279ugly29ugly671startup_seg_w1_162a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162a_0_34)
       (not_occupied seg_w1_162b_0_45) (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action
  ugly30388ugly29447ugly29340ugly30190ugly30039ugly1278ugly261ugly960ugly320move_seg_o1_118b_0_60_seg_o1_118c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118b_0_60) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_118c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_118c_0_34 airplane_daew8)
       (not_blocked seg_o1_118c_0_34 airplane_daew3)
       (not_blocked seg_o1_118c_0_34 airplane_cfbe2)
       (not_occupied seg_o1_118a_0_34))
  :effect
  (and (not (occupied seg_o1_118b_0_60)) (not_occupied seg_o1_118b_0_60)
       (not (at-segment ?a seg_o1_118b_0_60)) (occupied seg_o1_118c_0_34)
       (not (not_occupied seg_o1_118c_0_34)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a)) (at-segment ?a seg_o1_118c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p118_0_76 ?a)) (not_blocked seg_p118_0_76 ?a)
       (blocked seg_o1_118a_0_34 ?a) (not (not_blocked seg_o1_118a_0_34 ?a))))
 (:action
  ugly30389ugly30444ugly30077ugly30169ugly29504ugly654ugly1190ugly412ugly1128startup_seg_m_a9d_0_120_934_south_medium
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
  ugly30390ugly29765ugly29980ugly30180ugly29648ugly737ugly805ugly531ugly309park_seg_p104_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p104_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p104_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_104b_0_60 ?a)) (not_blocked seg_o1_104b_0_60 ?a)))
 (:action
  ugly30391ugly29281ugly29703ugly30504ugly29598ugly1120ugly727ugly716ugly641startup_seg_m_a6a8b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8b_0_75)
       (not_occupied seg_m_a6a8a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8a_0_75 ?a)
       (not (not_blocked seg_m_a6a8a_0_75 ?a))))
 (:action
  ugly30392ugly30508ugly29748ugly30449ugly29486ugly526ugly280ugly110ugly1223startup_seg_p109_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p109_0_76)
       (not_occupied seg_o1_109b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a))))
 (:action
  ugly30393ugly30154ugly29472ugly29200ugly29196ugly994ugly726ugly601ugly1197move_seg_o1_109a_0_34_seg_o1_109b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109b_0_60)
       (not_blocked seg_o1_109b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_109b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_109b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_109b_0_60 airplane_daew8)
       (not_blocked seg_o1_109b_0_60 airplane_daew3)
       (not_blocked seg_o1_109b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_109c_0_34) (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (occupied seg_o1_109a_0_34)) (not_occupied seg_o1_109a_0_34)
       (not (at-segment ?a seg_o1_109a_0_34)) (occupied seg_o1_109b_0_60)
       (not (not_occupied seg_o1_109b_0_60)) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a)) (at-segment ?a seg_o1_109b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_108c_0_34 ?a)) (not_blocked seg_o1_108c_0_34 ?a)
       (blocked seg_o1_109c_0_34 ?a) (not (not_blocked seg_o1_109c_0_34 ?a))
       (blocked seg_o1_109d_0_45 ?a) (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action
  ugly30394ugly29536ugly29950ugly30196ugly30144ugly738ugly743ugly442ugly758startup_seg_a2_b_0_90_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_b_0_90)
       (not_occupied seg_a2_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_c_0_100 ?a)
       (not (not_blocked seg_a2_c_0_100 ?a))))
 (:action
  ugly30395ugly30274ugly29284ugly29465ugly29393ugly251ugly394ugly1115ugly172startup_seg_m_a8a9b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9b_0_75)
       (not_occupied seg_m_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9c_0_75 ?a)
       (not (not_blocked seg_m_a8a9c_0_75 ?a))))
 (:action
  ugly30396ugly29723ugly30350ugly30402ugly29655ugly663ugly125ugly705ugly169move_seg_o1_104c_0_60_seg_o1_104a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104c_0_60) (not_occupied seg_o1_104a_0_34)
       (not_blocked seg_o1_104a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_104a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_104a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_104a_0_34 airplane_daew8)
       (not_blocked seg_o1_104a_0_34 airplane_daew3)
       (not_blocked seg_o1_104a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_104b_0_60))
  :effect
  (and (not (occupied seg_o1_104c_0_60)) (not_occupied seg_o1_104c_0_60)
       (not (at-segment ?a seg_o1_104c_0_60)) (occupied seg_o1_104a_0_34)
       (not (not_occupied seg_o1_104a_0_34)) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (at-segment ?a seg_o1_104a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c2a_0_60 ?a)) (not_blocked seg_o1_c2a_0_60 ?a)
       (blocked seg_o1_104b_0_60 ?a) (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action
  ugly30397ugly29226ugly29559ugly30159ugly29577ugly735ugly951ugly1086ugly141startup_seg_m_a4b_0_60_south_medium
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
  ugly30398ugly30535ugly29395ugly30228ugly29645ugly205ugly217ugly176ugly1105startup_seg_w1_162b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162b_0_45)
       (not_occupied seg_p162_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p162_0_75 ?a)
       (not (not_blocked seg_p162_0_75 ?a))))
 (:action
  ugly30399ugly30091ugly29801ugly30115ugly29767ugly484ugly439ugly1229ugly1217park_seg_p102_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p102_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p102_0_76) (not (is-moving ?a))))
 (:action
  ugly30400ugly30042ugly29670ugly29809ugly29788ugly597ugly922ugly1302ugly1046move_seg_s_b8c_0_60_seg_s_b5b8c_0_130_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b8c_0_60) (not_occupied seg_s_b5b8c_0_130)
       (not_blocked seg_s_b5b8c_0_130 airplane_cfbeg)
       (not_blocked seg_s_b5b8c_0_130 airplane_cfbe1)
       (not_blocked seg_s_b5b8c_0_130 airplane_cfbe3)
       (not_blocked seg_s_b5b8c_0_130 airplane_daew8)
       (not_blocked seg_s_b5b8c_0_130 airplane_daew3)
       (not_blocked seg_s_b5b8c_0_130 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b8c_0_60)) (not_occupied seg_s_b8c_0_60)
       (not (at-segment ?a seg_s_b8c_0_60)) (occupied seg_s_b5b8c_0_130)
       (not (not_occupied seg_s_b5b8c_0_130)) (blocked seg_s_b5b8c_0_130 ?a)
       (not (not_blocked seg_s_b5b8c_0_130 ?a))
       (at-segment ?a seg_s_b5b8c_0_130) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_s_b8a_0_60 ?a))
       (not_blocked seg_s_b8a_0_60 ?a) (not (blocked seg_s_b8b_0_60 ?a))
       (not_blocked seg_s_b8b_0_60 ?a)))
 (:action
  ugly30401ugly30422ugly29267ugly29925ugly29805ugly591ugly84ugly195ugly637move_seg_o1_117a_0_34_seg_o1_116c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_116c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_116c_0_34 airplane_daew8)
       (not_blocked seg_o1_116c_0_34 airplane_daew3)
       (not_blocked seg_o1_116c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_117a_0_34)) (not_occupied seg_o1_117a_0_34)
       (not (at-segment ?a seg_o1_117a_0_34)) (occupied seg_o1_116c_0_34)
       (not (not_occupied seg_o1_116c_0_34)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a)) (at-segment ?a seg_o1_116c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_117b_0_60 ?a)) (not_blocked seg_o1_117b_0_60 ?a)
       (not (blocked seg_o1_117c_0_34 ?a)) (not_blocked seg_o1_117c_0_34 ?a)))
 (:action
  ugly30402ugly29655ugly29846ugly30134ugly30085ugly836ugly905ugly233ugly470move_seg_s_b6b7a_0_140_seg_s_b6a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b6b7a_0_140) (not_occupied seg_s_b6a_0_60)
       (not_blocked seg_s_b6a_0_60 airplane_cfbeg)
       (not_blocked seg_s_b6a_0_60 airplane_cfbe1)
       (not_blocked seg_s_b6a_0_60 airplane_cfbe3)
       (not_blocked seg_s_b6a_0_60 airplane_daew8)
       (not_blocked seg_s_b6a_0_60 airplane_daew3)
       (not_blocked seg_s_b6a_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b6b7a_0_140)) (not_occupied seg_s_b6b7a_0_140)
       (not (at-segment ?a seg_s_b6b7a_0_140)) (occupied seg_s_b6a_0_60)
       (not (not_occupied seg_s_b6a_0_60)) (blocked seg_s_b6a_0_60 ?a)
       (not (not_blocked seg_s_b6a_0_60 ?a)) (at-segment ?a seg_s_b6a_0_60)
       (not (blocked seg_s_b6b7b_0_140 ?a))
       (not_blocked seg_s_b6b7b_0_140 ?a)))
 (:action
  ugly30403ugly29241ugly29416ugly30083ugly29886ugly993ugly121ugly617ugly209startup_seg_a8_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_0_80_6226)
       (not_occupied seg_m_a8d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))))
 (:action
  ugly30404ugly30377ugly30476ugly29371ugly29275ugly52ugly460ugly499ugly484move_seg_o1_c4a_0_34_seg_o1_c4b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4a_0_34) (not_occupied seg_o1_c4b_0_60)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c4b_0_60 airplane_daew8)
       (not_blocked seg_o1_c4b_0_60 airplane_daew3)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (occupied seg_o1_c4a_0_34)) (not_occupied seg_o1_c4a_0_34)
       (not (at-segment ?a seg_o1_c4a_0_34)) (occupied seg_o1_c4b_0_60)
       (not (not_occupied seg_o1_c4b_0_60)) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a)) (at-segment ?a seg_o1_c4b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_118c_0_34 ?a)) (not_blocked seg_o1_118c_0_34 ?a)
       (blocked seg_o1_c4c_0_80 ?a) (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action
  ugly30405ugly29386ugly30210ugly30053ugly30417ugly468ugly1313ugly1101ugly433startup_seg_b2_1_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b2_1_0_80)
       (not_occupied seg_08r_b2a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b2a_0_80 ?a)
       (not (not_blocked seg_08r_b2a_0_80 ?a))))
 (:action
  ugly30406ugly29632ugly29762ugly29697ugly29873ugly1069ugly810ugly4ugly1207move_seg_o1_c4a_0_34_seg_o1_c4c_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4a_0_34) (not_occupied seg_o1_c4c_0_80)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbe1)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbe3)
       (not_blocked seg_o1_c4c_0_80 airplane_daew8)
       (not_blocked seg_o1_c4c_0_80 airplane_daew3)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbe2)
       (not_occupied seg_o1_c4b_0_60))
  :effect
  (and (not (occupied seg_o1_c4a_0_34)) (not_occupied seg_o1_c4a_0_34)
       (not (at-segment ?a seg_o1_c4a_0_34)) (occupied seg_o1_c4c_0_80)
       (not (not_occupied seg_o1_c4c_0_80)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a)) (at-segment ?a seg_o1_c4c_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_118c_0_34 ?a)) (not_blocked seg_o1_118c_0_34 ?a)
       (blocked seg_o1_c4b_0_60 ?a) (not (not_blocked seg_o1_c4b_0_60 ?a))))
 (:action
  ugly30407ugly29688ugly30194ugly29259ugly29592ugly1294ugly1293ugly1147ugly655startup_seg_m_a6a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a_0_60)
       (not_occupied seg_m_a6a8a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8a_0_75 ?a)
       (not (not_blocked seg_m_a6a8a_0_75 ?a))))
 (:action
  ugly30408ugly29466ugly29512ugly30142ugly29499ugly445ugly1007ugly815ugly634startup_seg_m_a6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6c_0_60)
       (not_occupied seg_m_a7a6d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6d_0_85 ?a)
       (not (not_blocked seg_m_a7a6d_0_85 ?a))))
 (:action
  ugly30409ugly29822ugly30362ugly29568ugly30496ugly1122ugly971ugly258ugly511move_seg_o1_116c_0_34_seg_o1_116a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116c_0_34) (not_occupied seg_o1_116a_0_34)
       (not_blocked seg_o1_116a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_116a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_116a_0_34 airplane_daew8)
       (not_blocked seg_o1_116a_0_34 airplane_daew3)
       (not_blocked seg_o1_116a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_116b_0_60))
  :effect
  (and (not (occupied seg_o1_116c_0_34)) (not_occupied seg_o1_116c_0_34)
       (not (at-segment ?a seg_o1_116c_0_34)) (occupied seg_o1_116a_0_34)
       (not (not_occupied seg_o1_116a_0_34)) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (at-segment ?a seg_o1_116a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_117a_0_34 ?a)) (not_blocked seg_o1_117a_0_34 ?a)
       (blocked seg_o1_116b_0_60 ?a) (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action
  ugly30410ugly29569ugly30193ugly30357ugly29686ugly851ugly504ugly302ugly752startup_seg_n_a6a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a_0_60)
       (not_occupied seg_m_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6b_0_60 ?a)
       (not (not_blocked seg_m_a6b_0_60 ?a))))
 (:action
  ugly30411ugly29946ugly29939ugly30170ugly29883ugly940ugly1102ugly935ugly239move_seg_a8_a_0_157_785_seg_a8_b_1_0_79_7559_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_a_0_157_785) (not_occupied seg_a8_b_1_0_79_7559)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_cfbeg)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_cfbe1)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_cfbe3)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daew8)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daew3)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_cfbe2))
  :effect
  (and (not (occupied seg_a8_a_0_157_785)) (not_occupied seg_a8_a_0_157_785)
       (not (at-segment ?a seg_a8_a_0_157_785)) (occupied seg_a8_b_1_0_79_7559)
       (not (not_occupied seg_a8_b_1_0_79_7559))
       (blocked seg_a8_b_1_0_79_7559 ?a)
       (not (not_blocked seg_a8_b_1_0_79_7559 ?a))
       (at-segment ?a seg_a8_b_1_0_79_7559)
       (not (blocked seg_08l_a7b_0_161_245 ?a))
       (not_blocked seg_08l_a7b_0_161_245 ?a)))
 (:action
  ugly30412ugly29491ugly29238ugly29392ugly29621ugly983ugly330ugly613ugly1321startup_seg_m_a8d_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8d_0_120_934)
       (not_occupied seg_m_a8a_0_60) (not_occupied seg_m_a8b_0_60)
       (not_occupied seg_m_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a)) (blocked seg_m_a8b_0_60 ?a)
       (not (not_blocked seg_m_a8b_0_60 ?a)) (blocked seg_m_a8c_0_60 ?a)
       (not (not_blocked seg_m_a8c_0_60 ?a))))
 (:action
  ugly30413ugly30016ugly29398ugly29909ugly29406ugly1329ugly1220ugly550ugly223startup_seg_m_a4a_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a_0_120_934)
       (not_occupied seg_a4_b_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_0_79_7559 ?a)
       (not (not_blocked seg_a4_b_0_79_7559 ?a))))
 (:action
  ugly30414ugly29893ugly29214ugly30280ugly30140ugly360ugly1266ugly1350ugly1066startup_seg_n_a4a7d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7d_0_75)
       (not_occupied seg_n_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7e_0_75 ?a)
       (not (not_blocked seg_n_a4a7e_0_75 ?a))))
 (:action
  ugly30415ugly29314ugly29987ugly29759ugly29402ugly306ugly102ugly325ugly477move_seg_p143_0_75_seg_w1_143b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p143_0_75) (not_occupied seg_w1_143b_0_45)
       (not_blocked seg_w1_143b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_143b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_143b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_143b_0_45 airplane_daew8)
       (not_blocked seg_w1_143b_0_45 airplane_daew3)
       (not_blocked seg_w1_143b_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p143_0_75)) (not_occupied seg_p143_0_75)
       (not (at-segment ?a seg_p143_0_75)) (occupied seg_w1_143b_0_45)
       (not (not_occupied seg_w1_143b_0_45)) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a))
       (at-segment ?a seg_w1_143b_0_45)))
 (:action
  ugly30416ugly29617ugly30421ugly29253ugly29699ugly984ugly294ugly585ugly338park_seg_p102_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p102_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p102_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_102b_0_60 ?a)) (not_blocked seg_o1_102b_0_60 ?a)))
 (:action
  ugly30417ugly29651ugly29494ugly30295ugly30423ugly1024ugly53ugly892ugly46move_seg_c1_n2a_0_60_seg_c1_n2c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2a_0_60) (not_occupied seg_c1_n2c_0_60)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbe1)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbe3)
       (not_blocked seg_c1_n2c_0_60 airplane_daew8)
       (not_blocked seg_c1_n2c_0_60 airplane_daew3)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbe2)
       (not_occupied seg_c1_n2b_0_80))
  :effect
  (and (not (occupied seg_c1_n2a_0_60)) (not_occupied seg_c1_n2a_0_60)
       (not (at-segment ?a seg_c1_n2a_0_60)) (occupied seg_c1_n2c_0_60)
       (not (not_occupied seg_c1_n2c_0_60)) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a)) (at-segment ?a seg_c1_n2c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n2_0_108 ?a)) (not_blocked seg_n2_0_108 ?a)
       (blocked seg_c1_n2b_0_80 ?a) (not (not_blocked seg_c1_n2b_0_80 ?a))))
 (:action
  ugly30418ugly30079ugly29475ugly29951ugly29880ugly420ugly738ugly743ugly442startup_seg_w1_143b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143b_0_45)
       (not_occupied seg_p143_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p143_0_75 ?a)
       (not (not_blocked seg_p143_0_75 ?a))))
 (:action
  ugly30419ugly29209ugly29380ugly30248ugly29799ugly1104ugly408ugly852ugly495startup_seg_08r_b4a_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b4a_0_161_245)
       (not_occupied seg_b5_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b5_a_0_158_647 ?a)
       (not (not_blocked seg_b5_a_0_158_647 ?a))))
 (:action
  ugly30420ugly30307ugly29342ugly29967ugly29829ugly1134ugly853ugly1063ugly529move_seg_w1_154a_0_34_seg_w1_154b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_154b_0_45)
       (not_blocked seg_w1_154b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_154b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_154b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_154b_0_45 airplane_daew8)
       (not_blocked seg_w1_154b_0_45 airplane_daew3)
       (not_blocked seg_w1_154b_0_45 airplane_cfbe2)
       (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (occupied seg_w1_154a_0_34)) (not_occupied seg_w1_154a_0_34)
       (not (at-segment ?a seg_w1_154a_0_34)) (occupied seg_w1_154b_0_45)
       (not (not_occupied seg_w1_154b_0_45)) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a)) (at-segment ?a seg_w1_154b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_153c_0_34 ?a)) (not_blocked seg_w1_153c_0_34 ?a)
       (blocked seg_w1_154c_0_34 ?a) (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action
  ugly30421ugly29253ugly29699ugly30167ugly29308ugly518ugly831ugly228ugly243startup_seg_w1_c2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2a_0_60)
       (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action
  ugly30422ugly29267ugly29925ugly29805ugly29774ugly1096ugly1122ugly971ugly258startup_seg_s_b3b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b_0_60)
       (not_occupied seg_s_b3a_0_60) (not_occupied seg_s_b3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3a_0_60 ?a)
       (not (not_blocked seg_s_b3a_0_60 ?a)) (blocked seg_s_b3c_0_60 ?a)
       (not (not_blocked seg_s_b3c_0_60 ?a))))
 (:action
  ugly30423ugly30207ugly29344ugly30431ugly30358ugly1363ugly264ugly150ugly583startup_seg_b9_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_b_1_0_80_6226)
       (not_occupied seg_b9_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_b_0_80_6226 ?a)
       (not (not_blocked seg_b9_b_0_80_6226 ?a))))
 (:action
  ugly30424ugly29948ugly29971ugly30543ugly29372ugly455ugly1232ugly990ugly160startup_seg_o1_c2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2a_0_60)
       (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action
  ugly30425ugly29964ugly30130ugly29819ugly29541ugly1225ugly742ugly64ugly1224startup_seg_m_a9a10b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10b_0_75)
       (not_occupied seg_m_a9a10a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10a_0_75 ?a)
       (not (not_blocked seg_m_a9a10a_0_75 ?a))))
 (:action
  ugly30426ugly29348ugly29874ugly30011ugly30515ugly97ugly985ugly315ugly616startup_seg_n_a2a3a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3a_0_75)
       (not_occupied seg_n_a2a3b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3b_0_75 ?a)
       (not (not_blocked seg_n_a2a3b_0_75 ?a))))
 (:action
  ugly30427ugly30550ugly30149ugly29503ugly29853ugly546ugly1072ugly863ugly692move_seg_o1_c1a_0_60_seg_o1_c1b_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c1b_0_34 airplane_daew8)
       (not_blocked seg_o1_c1b_0_34 airplane_daew3)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe2)
       (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (occupied seg_o1_c1a_0_60)) (not_occupied seg_o1_c1a_0_60)
       (not (at-segment ?a seg_o1_c1a_0_60)) (occupied seg_o1_c1b_0_34)
       (not (not_occupied seg_o1_c1b_0_34)) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a)) (at-segment ?a seg_o1_c1b_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p101_0_76 ?a)) (not_blocked seg_p101_0_76 ?a)
       (blocked seg_o1_c1c_0_80 ?a) (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action
  ugly30428ugly29349ugly29525ugly30420ugly30307ugly159ugly661ugly808ugly266startup_seg_m_a3a4d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4d_0_75)
       (not_occupied seg_m_a3a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4c_0_75 ?a)
       (not (not_blocked seg_m_a3a4c_0_75 ?a))))
 (:action
  ugly30429ugly29212ugly30489ugly29285ugly29585ugly14ugly375ugly45ugly1334startup_seg_s_b3b4c_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4c_0_140)
       (not_occupied seg_s_b3b4d_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4d_0_140 ?a)
       (not (not_blocked seg_s_b3b4d_0_140 ?a))))
 (:action
  ugly30430ugly29669ugly30224ugly29471ugly29733ugly83ugly1271ugly405ugly1094startup_seg_08l_a10a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a10a_0_80)
       (not_occupied seg_08l_a10b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a10b_0_80 ?a)
       (not (not_blocked seg_08l_a10b_0_80 ?a))))
 (:action
  ugly30431ugly30358ugly30546ugly29269ugly30092ugly1259ugly78ugly536ugly799startup_seg_m_a3b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3b_0_60)
       (not_occupied seg_m_a3a_0_120_934) (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a)) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action
  ugly30432ugly29509ugly30352ugly30436ugly30208ugly1170ugly153ugly756ugly466startup_seg_w1_153b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153b_0_45)
       (not_occupied seg_p153_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p153_0_75 ?a)
       (not (not_blocked seg_p153_0_75 ?a))))
 (:action
  ugly30433ugly29710ugly29575ugly29995ugly29665ugly533ugly606ugly1297ugly111startup_seg_m_a6a8a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8a_0_75)
       (not_occupied seg_m_a6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a_0_60 ?a)
       (not (not_blocked seg_m_a6a_0_60 ?a))))
 (:action
  ugly30434ugly29785ugly29576ugly29539ugly29865ugly1135ugly1138ugly672ugly401move_seg_o1_102b_0_60_seg_o1_102c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102b_0_60) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_102c_0_34 airplane_daew8)
       (not_blocked seg_o1_102c_0_34 airplane_daew3)
       (not_blocked seg_o1_102c_0_34 airplane_cfbe2)
       (not_occupied seg_o1_102a_0_34))
  :effect
  (and (not (occupied seg_o1_102b_0_60)) (not_occupied seg_o1_102b_0_60)
       (not (at-segment ?a seg_o1_102b_0_60)) (occupied seg_o1_102c_0_34)
       (not (not_occupied seg_o1_102c_0_34)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a)) (at-segment ?a seg_o1_102c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p102_0_76 ?a)) (not_blocked seg_p102_0_76 ?a)
       (blocked seg_o1_102a_0_34 ?a) (not (not_blocked seg_o1_102a_0_34 ?a))))
 (:action
  ugly30435ugly30080ugly29911ugly29282ugly29445ugly182ugly535ugly534ugly321move_seg_w1_151b_0_45_seg_p151_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151b_0_45) (not_occupied seg_p151_0_75)
       (not_blocked seg_p151_0_75 airplane_cfbeg)
       (not_blocked seg_p151_0_75 airplane_cfbe1)
       (not_blocked seg_p151_0_75 airplane_cfbe3)
       (not_blocked seg_p151_0_75 airplane_daew8)
       (not_blocked seg_p151_0_75 airplane_daew3)
       (not_blocked seg_p151_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_151b_0_45)) (not_occupied seg_w1_151b_0_45)
       (not (at-segment ?a seg_w1_151b_0_45)) (occupied seg_p151_0_75)
       (not (not_occupied seg_p151_0_75)) (blocked seg_p151_0_75 ?a)
       (not (not_blocked seg_p151_0_75 ?a)) (at-segment ?a seg_p151_0_75)
       (not (blocked seg_w1_151a_0_34 ?a)) (not_blocked seg_w1_151a_0_34 ?a)
       (not (blocked seg_w1_151c_0_34 ?a)) (not_blocked seg_w1_151c_0_34 ?a)))
 (:action
  ugly30436ugly30208ugly30353ugly29692ugly29357ugly1268ugly489ugly120ugly781pushback_seg_o1_c1a_0_60_seg_o1_c1b_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c1b_0_34 airplane_daew8)
       (not_blocked seg_o1_c1b_0_34 airplane_daew3)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_c1a_0_60)) (not_occupied seg_o1_c1a_0_60)
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)
       (not (at-segment ?a seg_o1_c1a_0_60)) (occupied seg_o1_c1b_0_34)
       (not (not_occupied seg_o1_c1b_0_34)) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a)) (at-segment ?a seg_o1_c1b_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly30437ugly30480ugly29889ugly30075ugly29389ugly371ugly1230ugly1075ugly424startup_seg_08l_a3b_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a3b_0_161_245)
       (not_occupied seg_08l_a3a_0_80) (not_occupied seg_08l_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a3a_0_80 ?a)
       (not (not_blocked seg_08l_a3a_0_80 ?a)) (blocked seg_08l_0_80 ?a)
       (not (not_blocked seg_08l_0_80 ?a))))
 (:action
  ugly30438ugly29373ugly30234ugly29839ugly29213ugly317ugly93ugly773ugly447startup_seg_t_b7c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7c_0_60)
       (not_occupied seg_t_b6b7b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b7b_0_140 ?a)
       (not (not_blocked seg_t_b6b7b_0_140 ?a))))
 (:action
  ugly30439ugly29736ugly29840ugly30100ugly29857ugly899ugly1295ugly406ugly543startup_seg_n_a2a3a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3a_0_75)
       (not_occupied seg_n_a2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2b_0_60 ?a)
       (not (not_blocked seg_n_a2b_0_60 ?a))))
 (:action
  ugly30440ugly29293ugly29483ugly29400ugly29490ugly40ugly1294ugly1293ugly1147startup_seg_s_b4c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4c_0_60)
       (not_occupied seg_s_b4a_0_60) (not_occupied seg_s_b4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4a_0_60 ?a)
       (not (not_blocked seg_s_b4a_0_60 ?a)) (blocked seg_s_b4b_0_60 ?a)
       (not (not_blocked seg_s_b4b_0_60 ?a))))
 (:action
  ugly30441ugly30260ugly29477ugly29615ugly30522ugly1160ugly563ugly96ugly162move_seg_p152_0_75_seg_w1_152b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p152_0_75) (not_occupied seg_w1_152b_0_45)
       (not_blocked seg_w1_152b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_152b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_152b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_152b_0_45 airplane_daew8)
       (not_blocked seg_w1_152b_0_45 airplane_daew3)
       (not_blocked seg_w1_152b_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p152_0_75)) (not_occupied seg_p152_0_75)
       (not (at-segment ?a seg_p152_0_75)) (occupied seg_w1_152b_0_45)
       (not (not_occupied seg_w1_152b_0_45)) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a))
       (at-segment ?a seg_w1_152b_0_45)))
 (:action
  ugly30442ugly30063ugly30147ugly30179ugly30117ugly741ugly936ugly148ugly568park_seg_p152_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p152_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p152_0_75) (not (is-moving ?a))))
 (:action
  ugly30443ugly30497ugly29193ugly29528ugly30520ugly133ugly545ugly1238ugly1250startup_seg_w1_142c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142c_0_34)
       (not_occupied seg_w1_143a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a))))
 (:action
  ugly30444ugly30077ugly30169ugly29504ugly29837ugly1254ugly122ugly1305ugly925startup_seg_w1_c2c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2c_0_34)
       (not_occupied seg_w1_c2a_0_60) (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a)) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action
  ugly30445ugly29185ugly30155ugly29773ugly29521ugly1246ugly340ugly947ugly287startup_seg_t_b7b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7b_0_60)
       (not_occupied seg_t_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5d_0_60 ?a)
       (not (not_blocked seg_t_b5d_0_60 ?a))))
 (:action
  ugly30446ugly30406ugly29632ugly29762ugly29697ugly690ugly432ugly838ugly456move_seg_o1_108b_0_60_seg_o1_108a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108b_0_60) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_108a_0_34 airplane_daew8)
       (not_blocked seg_o1_108a_0_34 airplane_daew3)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_108c_0_34) (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (occupied seg_o1_108b_0_60)) (not_occupied seg_o1_108b_0_60)
       (not (at-segment ?a seg_o1_108b_0_60)) (occupied seg_o1_108a_0_34)
       (not (not_occupied seg_o1_108a_0_34)) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a)) (at-segment ?a seg_o1_108a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p108_0_76 ?a)) (not_blocked seg_p108_0_76 ?a)
       (blocked seg_o1_108c_0_34 ?a) (not (not_blocked seg_o1_108c_0_34 ?a))
       (blocked seg_o1_108d_0_45 ?a) (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action
  ugly30447ugly30046ugly29806ugly30064ugly30206ugly398ugly1120ugly727ugly716startup_seg_s_b3a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3a_0_60)
       (not_occupied seg_s_b3b_0_60) (not_occupied seg_s_b3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b_0_60 ?a)
       (not (not_blocked seg_s_b3b_0_60 ?a)) (blocked seg_s_b3c_0_60 ?a)
       (not (not_blocked seg_s_b3c_0_60 ?a))))
 (:action
  ugly30448ugly29642ugly30531ugly30062ugly29644ugly1105ugly834ugly782ugly107park_seg_p163_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p163_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p163_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_163b_0_45 ?a)) (not_blocked seg_w1_163b_0_45 ?a)))
 (:action
  ugly30449ugly29486ugly29709ugly29423ugly29250ugly51ugly1330ugly1349ugly1269park_seg_p112_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p112_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p112_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c3b_0_60 ?a)) (not_blocked seg_o1_c3b_0_60 ?a)))
 (:action
  ugly30450ugly30239ugly29616ugly29336ugly30235ugly160ugly912ugly1253ugly1151startup_seg_w1_143b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143b_0_45)
       (not_occupied seg_w1_143a_0_34) (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action
  ugly30451ugly30475ugly29301ugly29719ugly29574ugly865ugly1021ugly22ugly1084startup_seg_w1_141a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141a_0_34)
       (not_occupied seg_w1_141b_0_45) (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly30452ugly29944ugly29623ugly29549ugly29254ugly708ugly1328ugly472ugly973startup_seg_t_b6d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6d_0_60)
       (not_occupied seg_t_b4b6c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6c_0_130 ?a)
       (not (not_blocked seg_t_b4b6c_0_130 ?a))))
 (:action
  ugly30453ugly29533ugly29312ugly29833ugly29578ugly793ugly332ugly525ugly1343startup_seg_m_a4a7b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7b_0_75)
       (not_occupied seg_m_a4a7a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7a_0_75 ?a)
       (not (not_blocked seg_m_a4a7a_0_75 ?a))))
 (:action
  ugly30454ugly30060ugly30135ugly29403ugly30482ugly1113ugly1324ugly97ugly985move_seg_o1_c2c_0_34_seg_o1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2c_0_34) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c2a_0_60 airplane_daew8)
       (not_blocked seg_o1_c2a_0_60 airplane_daew3)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbe2)
       (not_occupied seg_o1_c2b_0_60) (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (not (occupied seg_o1_c2c_0_34)) (not_occupied seg_o1_c2c_0_34)
       (not (at-segment ?a seg_o1_c2c_0_34)) (occupied seg_o1_c2a_0_60)
       (not (not_occupied seg_o1_c2a_0_60)) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a)) (at-segment ?a seg_o1_c2a_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_108a_0_34 ?a)) (not_blocked seg_o1_108a_0_34 ?a)
       (blocked seg_o1_c2b_0_60 ?a) (not (not_blocked seg_o1_c2b_0_60 ?a))
       (blocked seg_o1_c2d_0_60 ?a) (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action
  ugly30455ugly30129ugly30066ugly30516ugly30410ugly386ugly81ugly187ugly307move_seg_n_a6a8f_0_75_seg_n_a6a8e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8f_0_75) (not_occupied seg_n_a6a8e_0_75)
       (not_blocked seg_n_a6a8e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8e_0_75 airplane_cfbe1)
       (not_blocked seg_n_a6a8e_0_75 airplane_cfbe3)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew8)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew3)
       (not_blocked seg_n_a6a8e_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a6a8f_0_75)) (not_occupied seg_n_a6a8f_0_75)
       (not (at-segment ?a seg_n_a6a8f_0_75)) (occupied seg_n_a6a8e_0_75)
       (not (not_occupied seg_n_a6a8e_0_75)) (blocked seg_n_a6a8e_0_75 ?a)
       (not (not_blocked seg_n_a6a8e_0_75 ?a)) (at-segment ?a seg_n_a6a8e_0_75)
       (not (blocked seg_n_a8c_0_60 ?a)) (not_blocked seg_n_a8c_0_60 ?a)))
 (:action
  ugly30456ugly29319ugly29734ugly30035ugly29305ugly694ugly883ugly95ugly1176startup_seg_s_b3b4b_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4b_0_140)
       (not_occupied seg_s_b3b4a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4a_0_140 ?a)
       (not (not_blocked seg_s_b3b4a_0_140 ?a))))
 (:action
  ugly30457ugly30198ugly30364ugly29983ugly30278ugly1338ugly2ugly1187ugly275move_seg_p134_0_75_seg_o1_111d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p134_0_75) (not_occupied seg_o1_111d_0_45)
       (not_blocked seg_o1_111d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_111d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_111d_0_45 airplane_cfbe3)
       (not_blocked seg_o1_111d_0_45 airplane_daew8)
       (not_blocked seg_o1_111d_0_45 airplane_daew3)
       (not_blocked seg_o1_111d_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p134_0_75)) (not_occupied seg_p134_0_75)
       (not (at-segment ?a seg_p134_0_75)) (occupied seg_o1_111d_0_45)
       (not (not_occupied seg_o1_111d_0_45)) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))
       (at-segment ?a seg_o1_111d_0_45)))
 (:action
  ugly30458ugly29782ugly30301ugly29650ugly30236ugly625ugly1252ugly326ugly676startup_seg_p131_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p131_0_75)
       (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action
  ugly30459ugly29970ugly29608ugly29413ugly29251ugly1317ugly775ugly215ugly292move_seg_n_a2a3e_0_75_seg_n_a2a3d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3e_0_75) (not_occupied seg_n_a2a3d_0_75)
       (not_blocked seg_n_a2a3d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3d_0_75 airplane_cfbe1)
       (not_blocked seg_n_a2a3d_0_75 airplane_cfbe3)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew8)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew3)
       (not_blocked seg_n_a2a3d_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a2a3e_0_75)) (not_occupied seg_n_a2a3e_0_75)
       (not (at-segment ?a seg_n_a2a3e_0_75)) (occupied seg_n_a2a3d_0_75)
       (not (not_occupied seg_n_a2a3d_0_75)) (blocked seg_n_a2a3d_0_75 ?a)
       (not (not_blocked seg_n_a2a3d_0_75 ?a)) (at-segment ?a seg_n_a2a3d_0_75)
       (not (blocked seg_n_a2a3f_0_115 ?a))
       (not_blocked seg_n_a2a3f_0_115 ?a)))
 (:action
  ugly30460ugly29236ugly29781ugly30374ugly30447ugly863ugly692ugly288ugly1351startup_seg_p162_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p162_0_75)
       (not_occupied seg_w1_162b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action
  ugly30461ugly30086ugly29297ugly29789ugly29286ugly413ugly1202ugly882ugly124startup_seg_p134_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p134_0_75)
       (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action
  ugly30462ugly29520ugly30163ugly29272ugly29943ugly541ugly1028ugly633ugly1145startup_seg_n_a2a3c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3c_0_75)
       (not_occupied seg_n_a2a3b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3b_0_75 ?a)
       (not (not_blocked seg_n_a2a3b_0_75 ?a))))
 (:action
  ugly30463ugly30226ugly30379ugly29771ugly29422ugly596ugly270ugly933ugly869startup_seg_b8_a_0_156_924_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_a_0_156_924)
       (not_occupied seg_08r_b6a_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b6a_0_161_245 ?a)
       (not (not_blocked seg_08r_b6a_0_161_245 ?a))))
 (:action
  ugly30464ugly29507ugly29931ugly29849ugly30322ugly297ugly1222ugly1326ugly710startup_seg_w1_161a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161a_0_34)
       (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action
  ugly30465ugly30478ugly30286ugly30308ugly30389ugly1261ugly1347ugly730ugly819move_seg_b2_0_80_seg_b2_1_0_80_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b2_0_80) (not_occupied seg_b2_1_0_80)
       (not_blocked seg_b2_1_0_80 airplane_cfbeg)
       (not_blocked seg_b2_1_0_80 airplane_cfbe1)
       (not_blocked seg_b2_1_0_80 airplane_cfbe3)
       (not_blocked seg_b2_1_0_80 airplane_daew8)
       (not_blocked seg_b2_1_0_80 airplane_daew3)
       (not_blocked seg_b2_1_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_b2_0_80)) (not_occupied seg_b2_0_80)
       (not (at-segment ?a seg_b2_0_80)) (occupied seg_b2_1_0_80)
       (not (not_occupied seg_b2_1_0_80)) (blocked seg_b2_1_0_80 ?a)
       (not (not_blocked seg_b2_1_0_80 ?a)) (at-segment ?a seg_b2_1_0_80)
       (not (blocked seg_t_b2c_0_60 ?a)) (not_blocked seg_t_b2c_0_60 ?a)))
 (:action
  ugly30466ugly29892ugly29979ugly30214ugly29956ugly370ugly130ugly751ugly1107move_seg_o1_102a_0_34_seg_o1_c1b_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c1b_0_34 airplane_daew8)
       (not_blocked seg_o1_c1b_0_34 airplane_daew3)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_102a_0_34)) (not_occupied seg_o1_102a_0_34)
       (not (at-segment ?a seg_o1_102a_0_34)) (occupied seg_o1_c1b_0_34)
       (not (not_occupied seg_o1_c1b_0_34)) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a)) (at-segment ?a seg_o1_c1b_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_102b_0_60 ?a)) (not_blocked seg_o1_102b_0_60 ?a)
       (not (blocked seg_o1_102c_0_34 ?a)) (not_blocked seg_o1_102c_0_34 ?a)))
 (:action
  ugly30467ugly30519ugly29339ugly30493ugly29263ugly673ugly59ugly75ugly383startup_seg_s_b4b6b_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6b_0_135)
       (not_occupied seg_s_b4b6c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6c_0_130 ?a)
       (not (not_blocked seg_s_b4b6c_0_130 ?a))))
 (:action
  ugly30468ugly29668ugly29981ugly30110ugly29760ugly1226ugly146ugly254ugly1332move_seg_o1_117c_0_34_seg_o1_117a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117c_0_34) (not_occupied seg_o1_117a_0_34)
       (not_blocked seg_o1_117a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_117a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_117a_0_34 airplane_daew8)
       (not_blocked seg_o1_117a_0_34 airplane_daew3)
       (not_blocked seg_o1_117a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_117b_0_60))
  :effect
  (and (not (occupied seg_o1_117c_0_34)) (not_occupied seg_o1_117c_0_34)
       (not (at-segment ?a seg_o1_117c_0_34)) (occupied seg_o1_117a_0_34)
       (not (not_occupied seg_o1_117a_0_34)) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a)) (at-segment ?a seg_o1_117a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_118a_0_34 ?a)) (not_blocked seg_o1_118a_0_34 ?a)
       (blocked seg_o1_117b_0_60 ?a) (not (not_blocked seg_o1_117b_0_60 ?a))))
 (:action
  ugly30469ugly30124ugly29211ugly30285ugly29478ugly1201ugly259ugly663ugly125startup_seg_s_b9c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9c_0_60)
       (not_occupied seg_s_b9a_0_60) (not_occupied seg_s_b9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9a_0_60 ?a)
       (not (not_blocked seg_s_b9a_0_60 ?a)) (blocked seg_s_b9b_0_60 ?a)
       (not (not_blocked seg_s_b9b_0_60 ?a))))
 (:action
  ugly30470ugly29205ugly29555ugly30258ugly29860ugly362ugly857ugly1287ugly214move_seg_s_b7d_0_60_seg_s_b6b7b_0_140_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b7d_0_60) (not_occupied seg_s_b6b7b_0_140)
       (not_blocked seg_s_b6b7b_0_140 airplane_cfbeg)
       (not_blocked seg_s_b6b7b_0_140 airplane_cfbe1)
       (not_blocked seg_s_b6b7b_0_140 airplane_cfbe3)
       (not_blocked seg_s_b6b7b_0_140 airplane_daew8)
       (not_blocked seg_s_b6b7b_0_140 airplane_daew3)
       (not_blocked seg_s_b6b7b_0_140 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b7d_0_60)) (not_occupied seg_s_b7d_0_60)
       (not (at-segment ?a seg_s_b7d_0_60)) (occupied seg_s_b6b7b_0_140)
       (not (not_occupied seg_s_b6b7b_0_140)) (blocked seg_s_b6b7b_0_140 ?a)
       (not (not_blocked seg_s_b6b7b_0_140 ?a))
       (at-segment ?a seg_s_b6b7b_0_140) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_s_b7a_0_60 ?a))
       (not_blocked seg_s_b7a_0_60 ?a) (not (blocked seg_s_b7b_0_60 ?a))
       (not_blocked seg_s_b7b_0_60 ?a) (not (blocked seg_s_b7c_0_60 ?a))
       (not_blocked seg_s_b7c_0_60 ?a)))
 (:action
  ugly30471ugly29746ugly29675ugly29287ugly29915ugly1029ugly1158ugly956ugly770park_seg_p163_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p163_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p163_0_75) (not (is-moving ?a))))
 (:action
  ugly30472ugly29300ugly29728ugly29219ugly29747ugly885ugly542ugly61ugly368startup_seg_p162_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p162_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly30473ugly29456ugly29588ugly29551ugly29548ugly191ugly1018ugly211ugly164startup_seg_s_b3a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3a_0_60)
       (not_occupied seg_s_b3b4a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4a_0_140 ?a)
       (not (not_blocked seg_s_b3b4a_0_140 ?a))))
 (:action
  ugly30474ugly29912ugly30432ugly29509ugly30352ugly1253ugly1151ugly759ugly1049startup_seg_o1_118b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118b_0_60)
       (not_occupied seg_o1_118a_0_34) (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action
  ugly30475ugly29301ugly29719ugly29574ugly30048ugly633ugly1145ugly1251ugly469startup_seg_m_a3c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3c_0_60)
       (not_occupied seg_n_a3a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3a_0_60 ?a)
       (not (not_blocked seg_n_a3a_0_60 ?a))))
 (:action
  ugly30476ugly29371ugly29275ugly29235ugly29505ugly94ugly733ugly448ugly689move_seg_o1_111c_0_34_seg_o1_111b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_111b_0_60)
       (not_blocked seg_o1_111b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_111b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_111b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_111b_0_60 airplane_daew8)
       (not_blocked seg_o1_111b_0_60 airplane_daew3)
       (not_blocked seg_o1_111b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_111a_0_34) (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (occupied seg_o1_111c_0_34)) (not_occupied seg_o1_111c_0_34)
       (not (at-segment ?a seg_o1_111c_0_34)) (occupied seg_o1_111b_0_60)
       (not (not_occupied seg_o1_111b_0_60)) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a)) (at-segment ?a seg_o1_111b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c3a_0_34 ?a)) (not_blocked seg_o1_c3a_0_34 ?a)
       (blocked seg_o1_111a_0_34 ?a) (not (not_blocked seg_o1_111a_0_34 ?a))
       (blocked seg_o1_111d_0_45 ?a) (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action
  ugly30477ugly29881ugly29186ugly29731ugly30081ugly73ugly1240ugly63ugly1299move_seg_b8_b_0_80_6226_seg_t_b8c_0_120_934_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_b8_b_0_80_6226) (not_occupied seg_t_b8c_0_120_934)
       (not_blocked seg_t_b8c_0_120_934 airplane_cfbeg)
       (not_blocked seg_t_b8c_0_120_934 airplane_cfbe1)
       (not_blocked seg_t_b8c_0_120_934 airplane_cfbe3)
       (not_blocked seg_t_b8c_0_120_934 airplane_daew8)
       (not_blocked seg_t_b8c_0_120_934 airplane_daew3)
       (not_blocked seg_t_b8c_0_120_934 airplane_cfbe2))
  :effect
  (and (not (occupied seg_b8_b_0_80_6226)) (not_occupied seg_b8_b_0_80_6226)
       (not (at-segment ?a seg_b8_b_0_80_6226)) (occupied seg_t_b8c_0_120_934)
       (not (not_occupied seg_t_b8c_0_120_934))
       (blocked seg_t_b8c_0_120_934 ?a)
       (not (not_blocked seg_t_b8c_0_120_934 ?a))
       (at-segment ?a seg_t_b8c_0_120_934) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_b8_b_1_0_80_6226 ?a))
       (not_blocked seg_b8_b_1_0_80_6226 ?a)))
 (:action
  ugly30478ugly30286ugly30308ugly30389ugly30444ugly894ugly623ugly419ugly1110startup_seg_w1_c3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3b_0_60)
       (not_occupied seg_c3_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_a_0_80 ?a)
       (not (not_blocked seg_c3_a_0_80 ?a))))
 (:action
  ugly30479ugly29318ugly29199ugly30026ugly30275ugly574ugly89ugly99ugly740startup_seg_o1_102c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102c_0_34)
       (not_occupied seg_o1_103a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a))))
 (:action
  ugly30480ugly29889ugly30075ugly29389ugly29554ugly928ugly708ugly1328ugly472park_seg_p133_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p133_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p133_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_110d_0_45 ?a)) (not_blocked seg_o1_110d_0_45 ?a)))
 (:action
  ugly30481ugly30292ugly29992ugly30221ugly30113ugly1046ugly113ugly1034ugly514startup_seg_b5_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b5_b_0_159_512)
       (not_occupied seg_b5_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b5_a_0_158_647 ?a)
       (not (not_blocked seg_b5_a_0_158_647 ?a))))
 (:action
  ugly30482ugly30296ugly29718ugly30321ugly29770ugly444ugly926ugly387ugly510startup_seg_s_b6a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6a_0_60)
       (not_occupied seg_s_b6b7a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b7a_0_140 ?a)
       (not (not_blocked seg_s_b6b7a_0_140 ?a))))
 (:action
  ugly30483ugly30013ugly30197ugly29599ugly29306ugly1190ugly412ugly1128ugly1211startup_seg_a9_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_b_0_159_512)
       (not_occupied seg_m_a9d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9d_0_120_934 ?a)
       (not (not_blocked seg_m_a9d_0_120_934 ?a))))
 (:action
  ugly30484ugly29994ugly29677ugly30074ugly30105ugly609ugly950ugly765ugly397startup_seg_s_b8b9a_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9a_0_115)
       (not_occupied seg_s_b8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8a_0_60 ?a)
       (not (not_blocked seg_s_b8a_0_60 ?a))))
 (:action
  ugly30485ugly29324ugly30040ugly29949ugly29835ugly547ugly1130ugly196ugly86move_seg_w1_162b_0_45_seg_w1_162a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162b_0_45) (not_occupied seg_w1_162a_0_34)
       (not_blocked seg_w1_162a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_162a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_162a_0_34 airplane_daew8)
       (not_blocked seg_w1_162a_0_34 airplane_daew3)
       (not_blocked seg_w1_162a_0_34 airplane_cfbe2)
       (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (occupied seg_w1_162b_0_45)) (not_occupied seg_w1_162b_0_45)
       (not (at-segment ?a seg_w1_162b_0_45)) (occupied seg_w1_162a_0_34)
       (not (not_occupied seg_w1_162a_0_34)) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (at-segment ?a seg_w1_162a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p162_0_75 ?a)) (not_blocked seg_p162_0_75 ?a)
       (blocked seg_w1_162c_0_34 ?a) (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action
  ugly30486ugly29885ugly29863ugly29535ugly30427ugly1367ugly1076ugly832ugly1167startup_seg_t_b8b9b_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9b_0_115)
       (not_occupied seg_t_b8b9c_1_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9c_1_0_115 ?a)
       (not (not_blocked seg_t_b8b9c_1_0_115 ?a))))
 (:action
  ugly30487ugly30093ugly29895ugly30445ugly29185ugly972ugly776ugly218ugly817move_seg_n_a4a7d_0_75_seg_n_a4a7c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7d_0_75) (not_occupied seg_n_a4a7c_0_75)
       (not_blocked seg_n_a4a7c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7c_0_75 airplane_cfbe1)
       (not_blocked seg_n_a4a7c_0_75 airplane_cfbe3)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew8)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew3)
       (not_blocked seg_n_a4a7c_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a4a7d_0_75)) (not_occupied seg_n_a4a7d_0_75)
       (not (at-segment ?a seg_n_a4a7d_0_75)) (occupied seg_n_a4a7c_0_75)
       (not (not_occupied seg_n_a4a7c_0_75)) (blocked seg_n_a4a7c_0_75 ?a)
       (not (not_blocked seg_n_a4a7c_0_75 ?a)) (at-segment ?a seg_n_a4a7c_0_75)
       (not (blocked seg_n_a4a7e_0_75 ?a)) (not_blocked seg_n_a4a7e_0_75 ?a)))
 (:action
  ugly30488ugly29613ugly30335ugly30456ugly29319ugly551ugly444ugly926ugly387startup_seg_s_b3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b_0_60)
       (not_occupied seg_t_b3a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3a_0_60 ?a)
       (not (not_blocked seg_t_b3a_0_60 ?a))))
 (:action
  ugly30489ugly29285ugly29585ugly29197ugly30387ugly261ugly960ugly320ugly430startup_seg_n_a4a7c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7c_0_75)
       (not_occupied seg_n_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7d_0_75 ?a)
       (not (not_blocked seg_n_a4a7d_0_75 ?a))))
 (:action
  ugly30490ugly29923ugly29820ugly29303ugly29841ugly662ugly459ugly306ugly102move_seg_o1_c1c_0_80_seg_o1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c1a_0_60 airplane_daew8)
       (not_blocked seg_o1_c1a_0_60 airplane_daew3)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe2)
       (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (not (occupied seg_o1_c1c_0_80)) (not_occupied seg_o1_c1c_0_80)
       (not (at-segment ?a seg_o1_c1c_0_80)) (occupied seg_o1_c1a_0_60)
       (not (not_occupied seg_o1_c1a_0_60)) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (at-segment ?a seg_o1_c1a_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_c1_n2b_0_80 ?a)) (not_blocked seg_c1_n2b_0_80 ?a)
       (blocked seg_o1_c1b_0_34 ?a) (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action
  ugly30491ugly30098ugly29453ugly29831ugly30094ugly905ugly233ugly470ugly37startup_seg_t_b10a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10a_0_60)
       (not_occupied seg_s_b10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b10a_0_60 ?a)
       (not (not_blocked seg_s_b10a_0_60 ?a))))
 (:action
  ugly30492ugly29876ugly30414ugly29893ugly29214ugly1097ugly13ugly20ugly473move_seg_o1_110c_0_34_seg_o1_111a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_111a_0_34 airplane_daew8)
       (not_blocked seg_o1_111a_0_34 airplane_daew3)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_110c_0_34)) (not_occupied seg_o1_110c_0_34)
       (not (at-segment ?a seg_o1_110c_0_34)) (occupied seg_o1_111a_0_34)
       (not (not_occupied seg_o1_111a_0_34)) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a)) (at-segment ?a seg_o1_111a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_110a_0_34 ?a)) (not_blocked seg_o1_110a_0_34 ?a)
       (not (blocked seg_o1_110b_0_60 ?a)) (not_blocked seg_o1_110b_0_60 ?a)
       (not (blocked seg_o1_110d_0_45 ?a)) (not_blocked seg_o1_110d_0_45 ?a)))
 (:action
  ugly30493ugly29263ugly29856ugly30545ugly29270ugly355ugly1355ugly530ugly1140move_seg_w1_c3a_0_34_seg_w1_154c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c3a_0_34) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_154c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_154c_0_34 airplane_daew8)
       (not_blocked seg_w1_154c_0_34 airplane_daew3)
       (not_blocked seg_w1_154c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_c3a_0_34)) (not_occupied seg_w1_c3a_0_34)
       (not (at-segment ?a seg_w1_c3a_0_34)) (occupied seg_w1_154c_0_34)
       (not (not_occupied seg_w1_154c_0_34)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a)) (at-segment ?a seg_w1_154c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c3b_0_60 ?a)) (not_blocked seg_w1_c3b_0_60 ?a)
       (not (blocked seg_w1_c3c_0_48 ?a)) (not_blocked seg_w1_c3c_0_48 ?a)))
 (:action
  ugly30494ugly29382ugly29358ugly29208ugly30325ugly172ugly1198ugly1298ugly993move_seg_c4_s6c_0_60_seg_w1_c4b_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_s6c_0_60) (not_occupied seg_w1_c4b_0_60)
       (not_blocked seg_w1_c4b_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c4b_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c4b_0_60 airplane_cfbe3)
       (not_blocked seg_w1_c4b_0_60 airplane_daew8)
       (not_blocked seg_w1_c4b_0_60 airplane_daew3)
       (not_blocked seg_w1_c4b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_c4_s6c_0_60)) (not_occupied seg_c4_s6c_0_60)
       (not (at-segment ?a seg_c4_s6c_0_60)) (occupied seg_w1_c4b_0_60)
       (not (not_occupied seg_w1_c4b_0_60)) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a)) (at-segment ?a seg_w1_c4b_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_c4_s6a_0_80 ?a)) (not_blocked seg_c4_s6a_0_80 ?a)
       (not (blocked seg_c4_s6b_0_60 ?a)) (not_blocked seg_c4_s6b_0_60 ?a)))
 (:action
  ugly30495ugly29515ugly29800ugly29643ugly29309ugly769ugly1070ugly11ugly389move_seg_o1_104b_0_60_seg_p104_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104b_0_60) (not_occupied seg_p104_0_76)
       (not_blocked seg_p104_0_76 airplane_cfbeg)
       (not_blocked seg_p104_0_76 airplane_cfbe1)
       (not_blocked seg_p104_0_76 airplane_cfbe3)
       (not_blocked seg_p104_0_76 airplane_daew8)
       (not_blocked seg_p104_0_76 airplane_daew3)
       (not_blocked seg_p104_0_76 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_104b_0_60)) (not_occupied seg_o1_104b_0_60)
       (not (at-segment ?a seg_o1_104b_0_60)) (occupied seg_p104_0_76)
       (not (not_occupied seg_p104_0_76)) (blocked seg_p104_0_76 ?a)
       (not (not_blocked seg_p104_0_76 ?a)) (at-segment ?a seg_p104_0_76)
       (not (blocked seg_o1_104a_0_34 ?a)) (not_blocked seg_o1_104a_0_34 ?a)
       (not (blocked seg_o1_104c_0_60 ?a)) (not_blocked seg_o1_104c_0_60 ?a)))
 (:action
  ugly30496ugly30305ugly30527ugly29289ugly29631ugly1345ugly12ugly1210ugly981move_seg_o1_117c_0_34_seg_o1_118a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117c_0_34) (not_occupied seg_o1_118a_0_34)
       (not_blocked seg_o1_118a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_118a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_118a_0_34 airplane_daew8)
       (not_blocked seg_o1_118a_0_34 airplane_daew3)
       (not_blocked seg_o1_118a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_117c_0_34)) (not_occupied seg_o1_117c_0_34)
       (not (at-segment ?a seg_o1_117c_0_34)) (occupied seg_o1_118a_0_34)
       (not (not_occupied seg_o1_118a_0_34)) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (at-segment ?a seg_o1_118a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_117a_0_34 ?a)) (not_blocked seg_o1_117a_0_34 ?a)
       (not (blocked seg_o1_117b_0_60 ?a)) (not_blocked seg_o1_117b_0_60 ?a)))
 (:action
  ugly30497ugly29193ugly29528ugly30520ugly29316ugly823ugly1353ugly175ugly104startup_seg_o1_104a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104a_0_34)
       (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action
  ugly30498ugly29707ugly30162ugly29501ugly30029ugly1119ugly997ugly1093ugly14move_seg_o1_109d_0_45_seg_p132_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109d_0_45) (not_occupied seg_p132_0_75)
       (not_blocked seg_p132_0_75 airplane_cfbeg)
       (not_blocked seg_p132_0_75 airplane_cfbe1)
       (not_blocked seg_p132_0_75 airplane_cfbe3)
       (not_blocked seg_p132_0_75 airplane_daew8)
       (not_blocked seg_p132_0_75 airplane_daew3)
       (not_blocked seg_p132_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_109d_0_45)) (not_occupied seg_o1_109d_0_45)
       (not (at-segment ?a seg_o1_109d_0_45)) (occupied seg_p132_0_75)
       (not (not_occupied seg_p132_0_75)) (blocked seg_p132_0_75 ?a)
       (not (not_blocked seg_p132_0_75 ?a)) (at-segment ?a seg_p132_0_75)
       (not (blocked seg_o1_109a_0_34 ?a)) (not_blocked seg_o1_109a_0_34 ?a)
       (not (blocked seg_o1_109b_0_60 ?a)) (not_blocked seg_o1_109b_0_60 ?a)
       (not (blocked seg_o1_109c_0_34 ?a)) (not_blocked seg_o1_109c_0_34 ?a)))
 (:action
  ugly30499ugly29636ugly29726ugly29639ugly29858ugly1235ugly1184ugly425ugly463startup_seg_m_a8a9a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9a_0_75)
       (not_occupied seg_m_a8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a))))
 (:action
  ugly30500ugly29242ugly29215ugly30227ugly30204ugly5ugly316ugly559ugly170move_seg_s_b4b6c_0_130_seg_s_b4b6b_0_135_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b4b6c_0_130) (not_occupied seg_s_b4b6b_0_135)
       (not_blocked seg_s_b4b6b_0_135 airplane_cfbeg)
       (not_blocked seg_s_b4b6b_0_135 airplane_cfbe1)
       (not_blocked seg_s_b4b6b_0_135 airplane_cfbe3)
       (not_blocked seg_s_b4b6b_0_135 airplane_daew8)
       (not_blocked seg_s_b4b6b_0_135 airplane_daew3)
       (not_blocked seg_s_b4b6b_0_135 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b4b6c_0_130)) (not_occupied seg_s_b4b6c_0_130)
       (not (at-segment ?a seg_s_b4b6c_0_130)) (occupied seg_s_b4b6b_0_135)
       (not (not_occupied seg_s_b4b6b_0_135)) (blocked seg_s_b4b6b_0_135 ?a)
       (not (not_blocked seg_s_b4b6b_0_135 ?a))
       (at-segment ?a seg_s_b4b6b_0_135) (not (blocked seg_s_b6c_0_60 ?a))
       (not_blocked seg_s_b6c_0_60 ?a)))
 (:action
  ugly30501ugly29330ugly30539ugly29974ugly29745ugly772ugly787ugly984ugly294startup_seg_t_b8b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b_0_60)
       (not_occupied seg_t_b8a_0_60) (not_occupied seg_t_b8c_0_120_934)
       (not_occupied seg_t_b8d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8a_0_60 ?a)
       (not (not_blocked seg_t_b8a_0_60 ?a)) (blocked seg_t_b8c_0_120_934 ?a)
       (not (not_blocked seg_t_b8c_0_120_934 ?a)) (blocked seg_t_b8d_0_60 ?a)
       (not (not_blocked seg_t_b8d_0_60 ?a))))
 (:action
  ugly30502ugly30411ugly29946ugly29939ugly30170ugly700ugly324ugly503ugly204startup_seg_n_a9a10c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10c_0_75)
       (not_occupied seg_n_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10b_0_75 ?a)
       (not (not_blocked seg_n_a9a10b_0_75 ?a))))
 (:action
  ugly30503ugly30018ugly29984ugly29363ugly29814ugly1022ugly610ugly1304ugly698startup_seg_c2_a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_a_0_80)
       (not_occupied seg_c2_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a))))
 (:action
  ugly30504ugly29598ugly30303ugly29513ugly30020ugly285ugly242ugly386ugly81move_seg_n2_0_108_seg_c1_n2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n2_0_108) (not_occupied seg_c1_n2a_0_60)
       (not_blocked seg_c1_n2a_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2a_0_60 airplane_cfbe1)
       (not_blocked seg_c1_n2a_0_60 airplane_cfbe3)
       (not_blocked seg_c1_n2a_0_60 airplane_daew8)
       (not_blocked seg_c1_n2a_0_60 airplane_daew3)
       (not_blocked seg_c1_n2a_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n2_0_108)) (not_occupied seg_n2_0_108)
       (not (at-segment ?a seg_n2_0_108)) (occupied seg_c1_n2a_0_60)
       (not (not_occupied seg_c1_n2a_0_60)) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a)) (at-segment ?a seg_c1_n2a_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_n_n2b_0_60 ?a)) (not_blocked seg_n_n2b_0_60 ?a)))
 (:action
  ugly30505ugly30257ugly30262ugly29397ugly29446ugly66ugly1214ugly413ugly1202startup_seg_c1_n2b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2b_0_80)
       (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action
  ugly30506ugly29450ugly30107ugly30250ugly29878ugly42ugly213ugly343ugly873park_seg_p103_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p103_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p103_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_103b_0_60 ?a)) (not_blocked seg_o1_103b_0_60 ?a)))
 (:action
  ugly30507ugly30005ugly30191ugly30171ugly30007ugly437ugly498ugly1218ugly670startup_seg_m_a10c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10c_0_60)
       (not_occupied seg_m_a9a10g_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10g_0_80 ?a)
       (not (not_blocked seg_m_a9a10g_0_80 ?a))))
 (:action
  ugly30508ugly29748ugly30449ugly29486ugly29709ugly240ugly71ugly904ugly1141startup_seg_w1_151b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151b_0_45)
       (not_occupied seg_w1_151a_0_34) (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action
  ugly30509ugly29882ugly29404ugly29274ugly30481ugly1109ugly626ugly487ugly523startup_seg_p134_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p134_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly30510ugly30530ugly29725ugly29368ugly30425ugly781ugly443ugly1354ugly1312startup_seg_t_b4c_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4c_0_120_934)
       (not_occupied seg_t_b4a_0_60) (not_occupied seg_t_b4b_0_60)
       (not_occupied seg_t_b4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4a_0_60 ?a)
       (not (not_blocked seg_t_b4a_0_60 ?a)) (blocked seg_t_b4b_0_60 ?a)
       (not (not_blocked seg_t_b4b_0_60 ?a)) (blocked seg_t_b4d_0_60 ?a)
       (not (not_blocked seg_t_b4d_0_60 ?a))))
 (:action
  ugly30511ugly30183ugly30054ugly29544ugly29641ugly1202ugly882ugly124ugly989startup_seg_n_a3c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3c_0_60)
       (not_occupied seg_n1_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_0_108 ?a)
       (not (not_blocked seg_n1_0_108 ?a))))
 (:action
  ugly30512ugly30052ugly29537ugly29246ugly30263ugly1072ugly863ugly692ugly288startup_seg_n_a9a10f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10f_0_75)
       (not_occupied seg_n_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10e_0_75 ?a)
       (not (not_blocked seg_n_a9a10e_0_75 ?a))))
 (:action
  ugly30513ugly30332ugly29333ugly29195ugly30189ugly1303ugly1162ugly1233ugly1114startup_seg_w1_163a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163a_0_34)
       (not_occupied seg_w1_163b_0_45) (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action
  ugly30514ugly29463ugly29825ugly29441ugly29717ugly410ugly467ugly471ugly875startup_seg_b4_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_b_1_0_80_6226)
       (not_occupied seg_b4_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_b_0_80_6226 ?a)
       (not (not_blocked seg_b4_b_0_80_6226 ?a))))
 (:action
  ugly30515ugly29280ugly30118ugly30441ugly30260ugly294ugly585ugly338ugly889startup_seg_o1_103a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103a_0_34)
       (not_occupied seg_o1_103b_0_60) (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action
  ugly30516ugly30410ugly29569ugly30193ugly30357ugly503ugly204ugly1345ugly12startup_seg_m_a9d_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9d_0_120_934)
       (not_occupied seg_a9_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_b_0_159_512 ?a)
       (not (not_blocked seg_a9_b_0_159_512 ?a))))
 (:action
  ugly30517ugly29600ugly29741ugly30231ugly29753ugly1241ugly1206ugly704ugly147startup_seg_s_b6b7a_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b7a_0_140)
       (not_occupied seg_s_b6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6a_0_60 ?a)
       (not (not_blocked seg_s_b6a_0_60 ?a))))
 (:action
  ugly30518ugly29460ugly29899ugly30532ugly30002ugly162ugly210ugly631ugly1156startup_seg_w1_c2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2b_0_60)
       (not_occupied seg_w1_c2a_0_60) (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a)) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action
  ugly30519ugly29339ugly30493ugly29263ugly29856ugly1362ugly1336ugly193ugly932move_seg_o1_103c_0_34_seg_o1_103a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103c_0_34) (not_occupied seg_o1_103a_0_34)
       (not_blocked seg_o1_103a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_103a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_103a_0_34 airplane_daew8)
       (not_blocked seg_o1_103a_0_34 airplane_daew3)
       (not_blocked seg_o1_103a_0_34 airplane_cfbe2)
       (not_occupied seg_o1_103b_0_60))
  :effect
  (and (not (occupied seg_o1_103c_0_34)) (not_occupied seg_o1_103c_0_34)
       (not (at-segment ?a seg_o1_103c_0_34)) (occupied seg_o1_103a_0_34)
       (not (not_occupied seg_o1_103a_0_34)) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (at-segment ?a seg_o1_103a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_104a_0_34 ?a)) (not_blocked seg_o1_104a_0_34 ?a)
       (blocked seg_o1_103b_0_60 ?a) (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action
  ugly30520ugly29316ugly30006ugly29684ugly30345ugly158ugly492ugly980ugly1348startup_seg_p102_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p102_0_76)
       (not_occupied seg_o1_102b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action
  ugly30521ugly30264ugly29351ugly29996ugly30223ugly479ugly551ugly444ugly926move_seg_o1_110d_0_45_seg_p133_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110d_0_45) (not_occupied seg_p133_0_75)
       (not_blocked seg_p133_0_75 airplane_cfbeg)
       (not_blocked seg_p133_0_75 airplane_cfbe1)
       (not_blocked seg_p133_0_75 airplane_cfbe3)
       (not_blocked seg_p133_0_75 airplane_daew8)
       (not_blocked seg_p133_0_75 airplane_daew3)
       (not_blocked seg_p133_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_110d_0_45)) (not_occupied seg_o1_110d_0_45)
       (not (at-segment ?a seg_o1_110d_0_45)) (occupied seg_p133_0_75)
       (not (not_occupied seg_p133_0_75)) (blocked seg_p133_0_75 ?a)
       (not (not_blocked seg_p133_0_75 ?a)) (at-segment ?a seg_p133_0_75)
       (not (blocked seg_o1_110a_0_34 ?a)) (not_blocked seg_o1_110a_0_34 ?a)
       (not (blocked seg_o1_110b_0_60 ?a)) (not_blocked seg_o1_110b_0_60 ?a)
       (not (blocked seg_o1_110c_0_34 ?a)) (not_blocked seg_o1_110c_0_34 ?a)))
 (:action
  ugly30522ugly30343ugly29907ugly30407ugly29688ugly1011ugly508ugly404ugly1026startup_seg_t_b4d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4d_0_60)
       (not_occupied seg_t_b3b4d_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4d_0_140 ?a)
       (not (not_blocked seg_t_b3b4d_0_140 ?a))))
 (:action
  ugly30523ugly30541ugly30127ugly29315ugly29910ugly450ugly1204ugly90ugly119startup_seg_s_b9a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9a_0_60)
       (not_occupied seg_s_b9b_0_60) (not_occupied seg_s_b9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b_0_60 ?a)
       (not (not_blocked seg_s_b9b_0_60 ?a)) (blocked seg_s_b9c_0_60 ?a)
       (not (not_blocked seg_s_b9c_0_60 ?a))))
 (:action
  ugly30524ugly29184ugly29742ugly29457ugly30370ugly825ugly1185ugly1325ugly1090startup_seg_o1_c1a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1a_0_60)
       (not_occupied seg_o1_c1b_0_34) (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action
  ugly30525ugly29227ugly30259ugly29278ugly30028ugly862ugly785ugly1010ugly91startup_seg_w1_141a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141a_0_34)
       (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action
  ugly30526ugly29194ugly30181ugly29875ugly29803ugly333ugly1009ugly279ugly29startup_seg_s_b7a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7a_0_60)
       (not_occupied seg_s_b7b_0_60) (not_occupied seg_s_b7c_0_60)
       (not_occupied seg_s_b7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7b_0_60 ?a)
       (not (not_blocked seg_s_b7b_0_60 ?a)) (blocked seg_s_b7c_0_60 ?a)
       (not (not_blocked seg_s_b7c_0_60 ?a)) (blocked seg_s_b7d_0_60 ?a)
       (not (not_blocked seg_s_b7d_0_60 ?a))))
 (:action
  ugly30527ugly29289ugly29631ugly30528ugly30112ugly443ugly1354ugly1312ugly527park_seg_p164_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p164_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p164_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_164b_0_45 ?a)) (not_blocked seg_w1_164b_0_45 ?a)))
 (:action
  ugly30528ugly30112ugly29626ugly29594ugly30237ugly1184ugly425ugly463ugly1193park_seg_p134_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p134_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p134_0_75) (not (is-moving ?a))))
 (:action
  ugly30529ugly30465ugly30478ugly30286ugly30308ugly1206ugly704ugly147ugly667startup_seg_o1_103c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103c_0_34)
       (not_occupied seg_o1_103a_0_34) (not_occupied seg_o1_103b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action
  ugly30530ugly29725ugly29368ugly30425ugly29964ugly947ugly287ugly558ugly1092takeoff_seg_09l_0_80_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_09l_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_09l_0_80)) (not_occupied seg_09l_0_80)
       (not (blocked seg_09l_0_80 ?a)) (not_blocked seg_09l_0_80 ?a)
       (not (at-segment ?a seg_09l_0_80)) (airborne ?a seg_09l_0_80)
       (not (is-moving ?a)) (not (blocked seg_08l_a9a10_0_1010 ?a))
       (not_blocked seg_08l_a9a10_0_1010 ?a)))
 (:action
  ugly30531ugly30062ugly29644ugly30288ugly30209ugly583ugly724ugly291ugly1235startup_seg_m_a8a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a_0_60)
       (not_occupied seg_m_a8a9a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9a_0_75 ?a)
       (not (not_blocked seg_m_a8a9a_0_75 ?a))))
 (:action
  ugly30532ugly30002ugly29345ugly29957ugly29273ugly476ugly286ugly1157ugly1367startup_seg_a4_a_0_157_785_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_a_0_157_785)
       (not_occupied seg_a4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a4_b_1_0_80_6226 ?a))))
 (:action
  ugly30533ugly29474ugly29998ugly30281ugly30096ugly601ugly1197ugly370ugly130startup_seg_w1_142c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142c_0_34)
       (not_occupied seg_w1_142a_0_34) (not_occupied seg_w1_142b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a))))
 (:action
  ugly30534ugly29542ugly30542ugly29428ugly30253ugly1301ugly38ugly167ugly747startup_seg_n_a9a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a_0_60)
       (not_occupied seg_n_a9b_0_60) (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a)) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action
  ugly30535ugly29395ugly30228ugly29645ugly29388ugly243ugly766ugly108ugly429move_seg_w1_154b_0_45_seg_p154_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154b_0_45) (not_occupied seg_p154_0_75)
       (not_blocked seg_p154_0_75 airplane_cfbeg)
       (not_blocked seg_p154_0_75 airplane_cfbe1)
       (not_blocked seg_p154_0_75 airplane_cfbe3)
       (not_blocked seg_p154_0_75 airplane_daew8)
       (not_blocked seg_p154_0_75 airplane_daew3)
       (not_blocked seg_p154_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_154b_0_45)) (not_occupied seg_w1_154b_0_45)
       (not (at-segment ?a seg_w1_154b_0_45)) (occupied seg_p154_0_75)
       (not (not_occupied seg_p154_0_75)) (blocked seg_p154_0_75 ?a)
       (not (not_blocked seg_p154_0_75 ?a)) (at-segment ?a seg_p154_0_75)
       (not (blocked seg_w1_154a_0_34 ?a)) (not_blocked seg_w1_154a_0_34 ?a)
       (not (blocked seg_w1_154c_0_34 ?a)) (not_blocked seg_w1_154c_0_34 ?a)))
 (:action
  ugly30536ugly30534ugly29542ugly30542ugly29428ugly1070ugly11ugly389ugly342startup_seg_w1_c1b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1b_0_60)
       (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action
  ugly30537ugly30503ugly30018ugly29984ugly29363ugly631ugly1156ugly769ugly1070move_seg_w1_c2a_0_60_seg_w1_c2c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c2a_0_60) (not_occupied seg_w1_c2c_0_34)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_c2c_0_34 airplane_daew8)
       (not_blocked seg_w1_c2c_0_34 airplane_daew3)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbe2)
       (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (not (occupied seg_w1_c2a_0_60)) (not_occupied seg_w1_c2a_0_60)
       (not (at-segment ?a seg_w1_c2a_0_60)) (occupied seg_w1_c2c_0_34)
       (not (not_occupied seg_w1_c2c_0_34)) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a)) (at-segment ?a seg_w1_c2c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_143c_0_60 ?a)) (not_blocked seg_w1_143c_0_60 ?a)
       (blocked seg_w1_c2b_0_60 ?a) (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action
  ugly30538ugly29674ugly29529ugly30172ugly30356ugly382ugly1064ugly136ugly1008park_seg_p116_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p116_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p116_0_76) (not (is-moving ?a))))
 (:action
  ugly30539ugly29974ugly29745ugly29955ugly29902ugly1083ugly19ugly915ugly311move_seg_o1_115a_0_34_seg_o1_115b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_115b_0_60)
       (not_blocked seg_o1_115b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_115b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_115b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_115b_0_60 airplane_daew8)
       (not_blocked seg_o1_115b_0_60 airplane_daew3)
       (not_blocked seg_o1_115b_0_60 airplane_cfbe2)
       (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (occupied seg_o1_115a_0_34)) (not_occupied seg_o1_115a_0_34)
       (not (at-segment ?a seg_o1_115a_0_34)) (occupied seg_o1_115b_0_60)
       (not (not_occupied seg_o1_115b_0_60)) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a)) (at-segment ?a seg_o1_115b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c3c_0_48 ?a)) (not_blocked seg_o1_c3c_0_48 ?a)
       (blocked seg_o1_115c_0_34 ?a) (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action
  ugly30540ugly29914ugly30165ugly30141ugly29683ugly840ugly56ugly238ugly695park_seg_p117_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p117_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p117_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_117b_0_60 ?a)) (not_blocked seg_o1_117b_0_60 ?a)))
 (:action
  ugly30541ugly30127ugly29315ugly29910ugly29633ugly999ugly1308ugly547ugly1130move_seg_w1_142b_0_45_seg_p142_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142b_0_45) (not_occupied seg_p142_0_75)
       (not_blocked seg_p142_0_75 airplane_cfbeg)
       (not_blocked seg_p142_0_75 airplane_cfbe1)
       (not_blocked seg_p142_0_75 airplane_cfbe3)
       (not_blocked seg_p142_0_75 airplane_daew8)
       (not_blocked seg_p142_0_75 airplane_daew3)
       (not_blocked seg_p142_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_142b_0_45)) (not_occupied seg_w1_142b_0_45)
       (not (at-segment ?a seg_w1_142b_0_45)) (occupied seg_p142_0_75)
       (not (not_occupied seg_p142_0_75)) (blocked seg_p142_0_75 ?a)
       (not (not_blocked seg_p142_0_75 ?a)) (at-segment ?a seg_p142_0_75)
       (not (blocked seg_w1_142a_0_34 ?a)) (not_blocked seg_w1_142a_0_34 ?a)
       (not (blocked seg_w1_142c_0_34 ?a)) (not_blocked seg_w1_142c_0_34 ?a)))
 (:action
  ugly30542ugly29428ugly30253ugly30484ugly29994ugly494ugly793ugly332ugly525startup_seg_n_a9a10b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10b_0_75)
       (not_occupied seg_n_a9a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10a_0_80 ?a)
       (not (not_blocked seg_n_a9a10a_0_80 ?a))))
 (:action
  ugly30543ugly29372ugly29638ugly29298ugly29311ugly226ugly88ugly313ugly928startup_seg_s_b8b9c_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9c_0_115)
       (not_occupied seg_s_b9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9c_0_60 ?a)
       (not (not_blocked seg_s_b9c_0_60 ?a))))
 (:action
  ugly30544ugly29432ugly30199ugly29764ugly30426ugly165ugly792ugly416ugly50move_seg_o1_108b_0_60_seg_p108_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108b_0_60) (not_occupied seg_p108_0_76)
       (not_blocked seg_p108_0_76 airplane_cfbeg)
       (not_blocked seg_p108_0_76 airplane_cfbe1)
       (not_blocked seg_p108_0_76 airplane_cfbe3)
       (not_blocked seg_p108_0_76 airplane_daew8)
       (not_blocked seg_p108_0_76 airplane_daew3)
       (not_blocked seg_p108_0_76 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_108b_0_60)) (not_occupied seg_o1_108b_0_60)
       (not (at-segment ?a seg_o1_108b_0_60)) (occupied seg_p108_0_76)
       (not (not_occupied seg_p108_0_76)) (blocked seg_p108_0_76 ?a)
       (not (not_blocked seg_p108_0_76 ?a)) (at-segment ?a seg_p108_0_76)
       (not (blocked seg_o1_108a_0_34 ?a)) (not_blocked seg_o1_108a_0_34 ?a)
       (not (blocked seg_o1_108c_0_34 ?a)) (not_blocked seg_o1_108c_0_34 ?a)
       (not (blocked seg_o1_108d_0_45 ?a)) (not_blocked seg_o1_108d_0_45 ?a)))
 (:action
  ugly30545ugly29270ugly29538ugly29484ugly29629ugly778ugly134ugly101ugly696startup_seg_a8_a_0_157_785_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_a_0_157_785)
       (not_occupied seg_a8_b_1_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_1_0_79_7559 ?a)
       (not (not_blocked seg_a8_b_1_0_79_7559 ?a))))
 (:action
  ugly30546ugly29269ugly30092ugly30442ugly30063ugly964ugly701ugly794ugly887startup_seg_t_b7a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7a_0_60)
       (not_occupied seg_s_b7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7c_0_60 ?a)
       (not (not_blocked seg_s_b7c_0_60 ?a))))
 (:action
  ugly30547ugly30439ugly29736ugly29840ugly30100ugly674ugly201ugly963ugly847move_seg_o1_110a_0_34_seg_o1_110d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110d_0_45)
       (not_blocked seg_o1_110d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_110d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_110d_0_45 airplane_cfbe3)
       (not_blocked seg_o1_110d_0_45 airplane_daew8)
       (not_blocked seg_o1_110d_0_45 airplane_daew3)
       (not_blocked seg_o1_110d_0_45 airplane_cfbe2)
       (not_occupied seg_o1_110b_0_60) (not_occupied seg_o1_110c_0_34))
  :effect
  (and (not (occupied seg_o1_110a_0_34)) (not_occupied seg_o1_110a_0_34)
       (not (at-segment ?a seg_o1_110a_0_34)) (occupied seg_o1_110d_0_45)
       (not (not_occupied seg_o1_110d_0_45)) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a)) (at-segment ?a seg_o1_110d_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_109c_0_34 ?a)) (not_blocked seg_o1_109c_0_34 ?a)
       (blocked seg_o1_110b_0_60 ?a) (not (not_blocked seg_o1_110b_0_60 ?a))
       (blocked seg_o1_110c_0_34 ?a) (not (not_blocked seg_o1_110c_0_34 ?a))))
 (:action
  ugly30548ugly29511ugly30267ugly29836ugly30290ugly513ugly725ugly1283ugly434move_seg_o1_c1b_0_34_seg_o1_102a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_102a_0_34 airplane_daew8)
       (not_blocked seg_o1_102a_0_34 airplane_daew3)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_c1b_0_34)) (not_occupied seg_o1_c1b_0_34)
       (not (at-segment ?a seg_o1_c1b_0_34)) (occupied seg_o1_102a_0_34)
       (not (not_occupied seg_o1_102a_0_34)) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (at-segment ?a seg_o1_102a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)
       (not (blocked seg_o1_c1c_0_80 ?a)) (not_blocked seg_o1_c1c_0_80 ?a)))
 (:action
  ugly30549ugly30505ugly30257ugly30262ugly29397ugly263ugly920ugly1019ugly541startup_seg_o1_117c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117c_0_34)
       (not_occupied seg_o1_118a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a))))
 (:action
  ugly30550ugly30149ugly29503ugly29853ugly29729ugly795ugly898ugly1013ugly41startup_seg_p154_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p154_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))) 